uint64_t sub_1B943CFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB10, type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B943D06C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD9F0, type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B943D0DC()
{
  sub_1B8CD3068(&qword_1EBACD9F0, type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B943D1E4()
{
  v0 = *(type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection(0) + 20);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  return sub_1B964C580();
}

void Searchfoundation_RFReferenceItemButtonCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_211_4(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_227();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_156();
  v12 = type metadata accessor for Searchfoundation_ButtonItem(v11);
  v13 = OUTLINED_FUNCTION_163_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_87_6();
  v17 = type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection(v16);
  OUTLINED_FUNCTION_517_1(v17);
  OUTLINED_FUNCTION_179_5();
  if (v18)
  {
    sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
LABEL_5:
    OUTLINED_FUNCTION_649_1();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_867_0();
  sub_1B944B02C();
  OUTLINED_FUNCTION_30_26();
  sub_1B8CD3068(v19, v20);
  OUTLINED_FUNCTION_128_8();
  OUTLINED_FUNCTION_16_27();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B943D6D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB08, type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B943D754(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACDA08, type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B943D7C4()
{
  sub_1B8CD3068(&qword_1EBACDA08, type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection);

  return sub_1B964C5D0();
}

void sub_1B943D870()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B964C780();
  __swift_allocate_value_buffer(v8, v7);
  v9 = OUTLINED_FUNCTION_311();
  __swift_project_value_buffer(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B964D050;
  v15 = v14 + v13 + v11[14];
  *(v14 + v13) = 1;
  *v15 = v5;
  *(v15 + 8) = v3;
  *(v15 + 16) = 2;
  v16 = *v1;
  v17 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v17);
  (*(v18 + 104))(v15, v16);
  sub_1B964C760();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B943DA1C()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_691_1();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_1B943DA74()
{
  v0 = *(type metadata accessor for Searchfoundation_RFButtonCardSection(0) + 20);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  return sub_1B964C580();
}

void Searchfoundation_RFButtonCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_211_4(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_227();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_156();
  v12 = type metadata accessor for Searchfoundation_ButtonItem(v11);
  v13 = OUTLINED_FUNCTION_163_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_87_6();
  v17 = type metadata accessor for Searchfoundation_RFButtonCardSection(v16);
  OUTLINED_FUNCTION_517_1(v17);
  OUTLINED_FUNCTION_179_5();
  if (v18)
  {
    sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
LABEL_5:
    OUTLINED_FUNCTION_649_1();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_867_0();
  sub_1B944B02C();
  OUTLINED_FUNCTION_30_26();
  sub_1B8CD3068(v19, v20);
  OUTLINED_FUNCTION_128_8();
  OUTLINED_FUNCTION_16_27();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B943DF64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDB00, type metadata accessor for Searchfoundation_RFButtonCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B943DFE4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACDA20, type metadata accessor for Searchfoundation_RFButtonCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B943E054()
{
  sub_1B8CD3068(&qword_1EBACDA20, type metadata accessor for Searchfoundation_RFButtonCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B943E0E0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC130);
  __swift_project_value_buffer(v0, qword_1EBACC130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "primary_button";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "secondary_button";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B943E30C()
{
  v0 = *(type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(0) + 20);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  return sub_1B964C580();
}

uint64_t sub_1B943E3C0()
{
  v0 = *(type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(0) + 24);
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  return sub_1B964C580();
}

void Searchfoundation_RFBinaryButtonCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1206(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_275();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_183(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_720_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_211();
  v13 = type metadata accessor for Searchfoundation_ButtonItem(0);
  v14 = OUTLINED_FUNCTION_163_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_447_0();
  v18 = type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(0);
  v19 = *(v18 + 20);
  OUTLINED_FUNCTION_862_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_90(v1);
  if (v20)
  {
    sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_257();
    sub_1B944B02C();
    OUTLINED_FUNCTION_30_26();
    sub_1B8CD3068(v21, v22);
    OUTLINED_FUNCTION_771_0();
    OUTLINED_FUNCTION_151_3();
    OUTLINED_FUNCTION_1396();
    OUTLINED_FUNCTION_16_27();
    sub_1B944B0D4();
    if (v0)
    {
      goto LABEL_10;
    }
  }

  v23 = *(v18 + 24);
  OUTLINED_FUNCTION_1315();
  OUTLINED_FUNCTION_179_5();
  if (v20)
  {
    sub_1B8D9207C(v2, &qword_1EBACC580, &qword_1B96B98B8);
LABEL_9:
    OUTLINED_FUNCTION_650_1();
    OUTLINED_FUNCTION_270_2();
    sub_1B964C290();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_35();
  sub_1B944B02C();
  OUTLINED_FUNCTION_30_26();
  sub_1B8CD3068(v24, v25);
  OUTLINED_FUNCTION_272_2();
  OUTLINED_FUNCTION_175_1();
  OUTLINED_FUNCTION_151_3();
  sub_1B964C740();
  OUTLINED_FUNCTION_16_27();
  sub_1B944B0D4();
  if (!v0)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B943EC24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDAF8, type metadata accessor for Searchfoundation_RFBinaryButtonCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B943ECA4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACDA38, type metadata accessor for Searchfoundation_RFBinaryButtonCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B943ED14()
{
  sub_1B8CD3068(&qword_1EBACDA38, type metadata accessor for Searchfoundation_RFBinaryButtonCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B943EDA0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC148);
  __swift_project_value_buffer(v0, qword_1EBACC148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "buttons";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "layoutType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFMultiButtonCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B943F040();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B944A84C();
    }
  }
}

uint64_t Searchfoundation_RFMultiButtonCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v2 || (type metadata accessor for Searchfoundation_ButtonItem(0), OUTLINED_FUNCTION_30_26(), sub_1B8CD3068(v3, v4), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
  {
    if (!*(v1 + 8) || (v6 = *(v1 + 16), OUTLINED_FUNCTION_94_4(), v7 = sub_1B944C9C0(), OUTLINED_FUNCTION_703_0(v7, v8, &type metadata for Searchfoundation_RFMultiButtonLayoutType, v7, v9, v10, v11, v12, v14), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
    {
      v13 = *(type metadata accessor for Searchfoundation_RFMultiButtonCardSection(0) + 24);
      OUTLINED_FUNCTION_163_6();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Searchfoundation_RFMultiButtonCardSection.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  v4 = *v3;
  sub_1B8D6B7F8();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16);
  if (!sub_1B8D92198(*(v2 + 8), *(v2 + 16), *(v1 + 8)))
  {
    return 0;
  }

  v7 = type metadata accessor for Searchfoundation_RFMultiButtonCardSection(0);
  OUTLINED_FUNCTION_188_1(v7);
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B943F2C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDAF0, type metadata accessor for Searchfoundation_RFMultiButtonCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B943F340(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACDA50, type metadata accessor for Searchfoundation_RFMultiButtonCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B943F3B0()
{
  sub_1B8CD3068(&qword_1EBACDA50, type metadata accessor for Searchfoundation_RFMultiButtonCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B943F43C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC160);
  __swift_project_value_buffer(v0, qword_1EBACC160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1B96B94B0;
  v4 = v84 + v3 + v1[14];
  *(v84 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v84 + v3 + v2 + v1[14];
  *(v84 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v84 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v84 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v84 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v84 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v84 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v84 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v84 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v84 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v84 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v84 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 101;
  *v28 = "contentAdvisory";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  v29 = (v84 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 102;
  *v30 = "titleImage";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v7();
  v31 = (v84 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 103;
  *v32 = "isCentered";
  *(v32 + 1) = 10;
  v32[16] = 2;
  v7();
  v33 = (v84 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 104;
  *v34 = "descriptionText";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v84 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 105;
  *v36 = "rating";
  *(v36 + 1) = 6;
  v36[16] = 2;
  v7();
  v37 = (v84 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 106;
  *v38 = "ratingText";
  *(v38 + 1) = 10;
  v38[16] = 2;
  v7();
  v39 = (v84 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 107;
  *v40 = "reviewGlyph";
  *(v40 + 1) = 11;
  v40[16] = 2;
  v7();
  v41 = (v84 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 108;
  *v42 = "reviewText";
  *(v42 + 1) = 10;
  v42[16] = 2;
  v7();
  v43 = (v84 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 109;
  *v44 = "reviewNewLine";
  *(v44 + 1) = 13;
  v44[16] = 2;
  v7();
  v45 = (v84 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 110;
  *v46 = "moreGlyphs";
  *(v46 + 1) = 10;
  v46[16] = 2;
  v7();
  v47 = (v84 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 111;
  *v48 = "auxiliaryTopText";
  *(v48 + 1) = 16;
  v48[16] = 2;
  v7();
  v49 = (v84 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 112;
  *v50 = "auxiliaryMiddleText";
  *(v50 + 1) = 19;
  v50[16] = 2;
  v7();
  v51 = (v84 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 113;
  *v52 = "auxiliaryBottomText";
  *(v52 + 1) = 19;
  v52[16] = 2;
  v7();
  v53 = (v84 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 114;
  *v54 = "auxiliaryBottomTextColor";
  *(v54 + 1) = 24;
  v54[16] = 2;
  v7();
  v55 = (v84 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 115;
  *v56 = "auxiliaryAlignment";
  *(v56 + 1) = 18;
  v56[16] = 2;
  v7();
  v57 = (v84 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 116;
  *v58 = "hideVerticalDivider";
  *(v58 + 1) = 19;
  v58[16] = 2;
  v7();
  v59 = (v84 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 117;
  *v60 = "titleAlign";
  *(v60 + 1) = 10;
  v60[16] = 2;
  v7();
  v61 = (v84 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 118;
  *v62 = "titleWeight";
  *(v62 + 1) = 11;
  v62[16] = 2;
  v7();
  v63 = (v84 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 119;
  *v64 = "titleNoWrap";
  *(v64 + 1) = 11;
  v64[16] = 2;
  v7();
  v65 = (v84 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 120;
  *v66 = "thumbnailCropCircle";
  *(v66 + 1) = 19;
  v66[16] = 2;
  v7();
  v67 = (v84 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 121;
  *v68 = "imageOverlay";
  *(v68 + 1) = 12;
  v68[16] = 2;
  v7();
  v69 = (v84 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 122;
  *v70 = "playAction";
  *(v70 + 1) = 10;
  v70[16] = 2;
  v7();
  v71 = (v84 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 123;
  *v72 = "playActionAlign";
  *(v72 + 1) = 15;
  v72[16] = 2;
  v7();
  v73 = (v84 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 124;
  *v74 = "offers";
  *(v74 + 1) = 6;
  v74[16] = 2;
  v7();
  v75 = (v84 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 125;
  *v76 = "footnote";
  *(v76 + 1) = 8;
  v76[16] = 2;
  v7();
  v77 = (v84 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 126;
  *v78 = "richSubtitle";
  *(v78 + 1) = 12;
  v78[16] = 2;
  v7();
  v79 = (v84 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 127;
  *v80 = "subtitleIsEmphasized";
  *(v80 + 1) = 20;
  v80[16] = 2;
  v7();
  v81 = (v84 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 128;
  *v82 = "buttonItems";
  *(v82 + 1) = 11;
  v82[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B943FF74()
{
  v1 = MEMORY[0x1E69E7CC0];
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
  v2 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v3 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__contentAdvisory);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleImage;
  v8 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isCentered) = 0;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptionText);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__rating) = 0;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__ratingText);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewGlyph, 1, 1, v8);
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewText);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewNewLine) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__moreGlyphs) = v1;
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryTopText);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryMiddleText);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomText);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomTextColor;
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryAlignment) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hideVerticalDivider) = 0;
  v16 = v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleAlign;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleWeight) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleNoWrap) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnailCropCircle) = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__imageOverlay, 1, 1, v8);
  v17 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__playAction;
  v18 = type metadata accessor for Searchfoundation_ActionItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v17, 1, 1, v18);
  v19 = v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__playActionAlign;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__offers) = v1;
  v20 = (v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richSubtitle;
  v22 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v0 + v21, 1, 1, v22);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitleIsEmphasized) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems) = v1;
  return v0;
}

uint64_t sub_1B944020C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v179 = &v141 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v178 = &v141 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v154 = &v141 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v147 = &v141 - v14;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  v142 = (v1 + 56);
  *(v1 + 58) = 0;
  v143 = (v1 + 58);
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  v144 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v145 = (v1 + 80);
  *(v1 + 88) = 1;
  v15 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v146 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v16 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  v148 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__contentAdvisory);
  v149 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__contentAdvisory);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleImage;
  v150 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleImage;
  v21 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v151 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isCentered;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isCentered) = 0;
  v22 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptionText);
  v152 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptionText);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v153 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__rating);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__rating) = 0;
  v23 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__ratingText);
  v155 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__ratingText);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v156 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewGlyph;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewGlyph, 1, 1, v21);
  v24 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewText);
  v157 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewText);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v158 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewNewLine;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewNewLine) = 0;
  v159 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__moreGlyphs;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__moreGlyphs) = MEMORY[0x1E69E7CC0];
  v25 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryTopText);
  v160 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryTopText);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryMiddleText);
  v161 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryMiddleText);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomText);
  v162 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomText);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v28 = v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomTextColor;
  v163 = v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomTextColor;
  *v28 = 0;
  *(v28 + 8) = 1;
  v164 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryAlignment;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryAlignment) = 0;
  v165 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hideVerticalDivider;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hideVerticalDivider) = 0;
  v29 = v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleAlign;
  v166 = v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleAlign;
  *v29 = 0;
  *(v29 + 8) = 1;
  v167 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleWeight;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleWeight) = 0;
  v168 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleNoWrap;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleNoWrap) = 0;
  v169 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnailCropCircle;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnailCropCircle) = 0;
  v170 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__imageOverlay;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__imageOverlay, 1, 1, v21);
  v30 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__playAction;
  v171 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__playAction;
  v31 = type metadata accessor for Searchfoundation_ActionItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
  v32 = v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__playActionAlign;
  v172 = v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__playActionAlign;
  *v32 = 0;
  *(v32 + 8) = 1;
  v173 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__offers;
  v33 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__offers) = MEMORY[0x1E69E7CC0];
  v34 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote);
  v174 = (v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richSubtitle;
  v175 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richSubtitle;
  v36 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v1 + v35, 1, 1, v36);
  v176 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitleIsEmphasized;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitleIsEmphasized) = 0;
  v177 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems) = v33;
  swift_beginAccess();
  v37 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v37;
  swift_beginAccess();
  v38 = *(a1 + 24);
  v39 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v38;
  *(v1 + 32) = v39;

  swift_beginAccess();
  v40 = *(a1 + 40);
  v41 = *(a1 + 48);
  swift_beginAccess();
  v42 = *(v1 + 48);
  *(v1 + 40) = v40;
  *(v1 + 48) = v41;

  swift_beginAccess();
  LOBYTE(v40) = *(a1 + 56);
  v43 = v142;
  swift_beginAccess();
  *v43 = v40;
  swift_beginAccess();
  LOBYTE(v40) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v40;
  swift_beginAccess();
  LOBYTE(v40) = *(a1 + 58);
  v44 = v143;
  swift_beginAccess();
  *v44 = v40;
  swift_beginAccess();
  v45 = *(a1 + 64);
  v46 = *(a1 + 72);
  v47 = v144;
  swift_beginAccess();
  v48 = *(v1 + 72);
  *v47 = v45;
  *(v1 + 72) = v46;

  swift_beginAccess();
  v49 = *(a1 + 80);
  LOBYTE(v46) = *(a1 + 88);
  v50 = v145;
  swift_beginAccess();
  *v50 = v49;
  *(v1 + 88) = v46;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v51 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  swift_beginAccess();
  v54 = v17[1];
  *v17 = v52;
  v17[1] = v53;

  v55 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  swift_beginAccess();
  v56 = *v55;
  v57 = v55[1];
  v58 = v148;
  swift_beginAccess();
  v59 = v58[1];
  *v58 = v56;
  v58[1] = v57;

  v60 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__contentAdvisory);
  swift_beginAccess();
  v62 = *v60;
  v61 = v60[1];
  v63 = v149;
  swift_beginAccess();
  v64 = v63[1];
  *v63 = v62;
  v63[1] = v61;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v65 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isCentered;
  swift_beginAccess();
  LOBYTE(v65) = *(a1 + v65);
  v66 = v151;
  swift_beginAccess();
  *(v1 + v66) = v65;
  v67 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptionText);
  swift_beginAccess();
  v69 = *v67;
  v68 = v67[1];
  v70 = v152;
  swift_beginAccess();
  v71 = v70[1];
  *v70 = v69;
  v70[1] = v68;

  v72 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__rating);
  swift_beginAccess();
  v73 = *v72;
  v74 = v153;
  swift_beginAccess();
  *v74 = v73;
  v75 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__ratingText);
  swift_beginAccess();
  v77 = *v75;
  v76 = v75[1];
  v78 = v155;
  swift_beginAccess();
  v79 = v78[1];
  *v78 = v77;
  v78[1] = v76;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v80 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewText);
  swift_beginAccess();
  v82 = *v80;
  v81 = v80[1];
  v83 = v157;
  swift_beginAccess();
  v84 = v83[1];
  *v83 = v82;
  v83[1] = v81;

  v85 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewNewLine;
  swift_beginAccess();
  LOBYTE(v85) = *(a1 + v85);
  v86 = v158;
  swift_beginAccess();
  *(v1 + v86) = v85;
  v87 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__moreGlyphs;
  swift_beginAccess();
  v88 = *(a1 + v87);
  v89 = v159;
  swift_beginAccess();
  v90 = *(v1 + v89);
  *(v1 + v89) = v88;

  v91 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryTopText);
  swift_beginAccess();
  v93 = *v91;
  v92 = v91[1];
  v94 = v160;
  swift_beginAccess();
  v95 = v94[1];
  *v94 = v93;
  v94[1] = v92;

  v96 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryMiddleText);
  swift_beginAccess();
  v98 = *v96;
  v97 = v96[1];
  v99 = v161;
  swift_beginAccess();
  v100 = v99[1];
  *v99 = v98;
  v99[1] = v97;

  v101 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomText);
  swift_beginAccess();
  v103 = *v101;
  v102 = v101[1];
  v104 = v162;
  swift_beginAccess();
  v105 = v104[1];
  *v104 = v103;
  v104[1] = v102;

  v106 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomTextColor);
  swift_beginAccess();
  v107 = *v106;
  LOBYTE(v106) = *(v106 + 8);
  v108 = v163;
  swift_beginAccess();
  *v108 = v107;
  *(v108 + 8) = v106;
  v109 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryAlignment;
  swift_beginAccess();
  LODWORD(v109) = *(a1 + v109);
  v110 = v164;
  swift_beginAccess();
  *(v1 + v110) = v109;
  v111 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hideVerticalDivider;
  swift_beginAccess();
  LOBYTE(v111) = *(a1 + v111);
  v112 = v165;
  swift_beginAccess();
  *(v1 + v112) = v111;
  v113 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleAlign);
  swift_beginAccess();
  v114 = *v113;
  LOBYTE(v113) = *(v113 + 8);
  v115 = v166;
  swift_beginAccess();
  *v115 = v114;
  *(v115 + 8) = v113;
  v116 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleWeight;
  swift_beginAccess();
  LODWORD(v116) = *(a1 + v116);
  v117 = v167;
  swift_beginAccess();
  *(v1 + v117) = v116;
  v118 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleNoWrap;
  swift_beginAccess();
  LOBYTE(v118) = *(a1 + v118);
  v119 = v168;
  swift_beginAccess();
  *(v1 + v119) = v118;
  v120 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnailCropCircle;
  swift_beginAccess();
  LOBYTE(v120) = *(a1 + v120);
  v121 = v169;
  swift_beginAccess();
  *(v1 + v121) = v120;
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
  v122 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__playActionAlign);
  swift_beginAccess();
  v123 = *v122;
  LOBYTE(v122) = *(v122 + 8);
  v124 = v172;
  swift_beginAccess();
  *v124 = v123;
  *(v124 + 8) = v122;
  v125 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__offers;
  swift_beginAccess();
  v126 = *(a1 + v125);
  v127 = v173;
  swift_beginAccess();
  v128 = *(v1 + v127);
  *(v1 + v127) = v126;

  v129 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote);
  swift_beginAccess();
  v131 = *v129;
  v130 = v129[1];
  v132 = v174;
  swift_beginAccess();
  v133 = v132[1];
  *v132 = v131;
  v132[1] = v130;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v134 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitleIsEmphasized;
  swift_beginAccess();
  LOBYTE(v134) = *(a1 + v134);
  v135 = v176;
  swift_beginAccess();
  *(v1 + v135) = v134;
  v136 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  swift_beginAccess();
  v137 = *(a1 + v136);

  v138 = v177;
  swift_beginAccess();
  v139 = *(v1 + v138);
  *(v1 + v138) = v137;

  return v1;
}

void *sub_1B944128C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle + 8);

  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__contentAdvisory + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleImage, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptionText + 8);

  v9 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__ratingText + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewGlyph, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v10 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewText + 8);

  v11 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__moreGlyphs);

  v12 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryTopText + 8);

  v13 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryMiddleText + 8);

  v14 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomText + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__imageOverlay, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__playAction, &qword_1EBACAFA8, &qword_1B96B9880);
  v15 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__offers);

  v16 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__richSubtitle, &qword_1EBACB1D0, &qword_1B96B9870);
  v17 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems);

  return v0;
}

void sub_1B94414F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 101:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__contentAdvisory;
        goto LABEL_37;
      case 102:
        sub_1B9441A9C();
        continue;
      case 103:
      case 109:
      case 116:
      case 119:
      case 120:
      case 127:
        sub_1B9442234();
        continue;
      case 104:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptionText;
        goto LABEL_37;
      case 105:
        v19 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__rating;
        v20 = MEMORY[0x1E69AAC88];
        goto LABEL_26;
      case 106:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__ratingText;
        goto LABEL_37;
      case 107:
        sub_1B9441B78();
        continue;
      case 108:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewText;
        goto LABEL_37;
      case 110:
        sub_1B9441C54();
        continue;
      case 111:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryTopText;
        goto LABEL_37;
      case 112:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryMiddleText;
        goto LABEL_37;
      case 113:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomText;
        goto LABEL_37;
      case 114:
        v17 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomTextColor;
        v18 = sub_1B9463458;
        goto LABEL_43;
      case 115:
        v19 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryAlignment;
        goto LABEL_25;
      case 117:
        v17 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleAlign;
        v18 = sub_1B94634AC;
        goto LABEL_43;
      case 118:
        v19 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleWeight;
LABEL_25:
        v20 = MEMORY[0x1E69AAC98];
LABEL_26:
        sub_1B9441D30(a2, a1, a3, a4, v19, v20);
        break;
      case 121:
        sub_1B9441DB0();
        break;
      case 122:
        sub_1B9441E8C();
        break;
      case 123:
        v17 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__playActionAlign;
        v18 = sub_1B9463260;
LABEL_43:
        sub_1B9441F68(a2, a1, a3, a4, v17, v18);
        break;
      case 124:
        sub_1B9441FFC();
        break;
      case 125:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote;
LABEL_37:
        v12 = MEMORY[0x1E69AACE0];
        v13 = a2;
        v14 = a1;
        v15 = a3;
        v16 = a4;
LABEL_38:
        sub_1B94420D8(v13, v14, v15, v16, v11, v12);
        break;
      case 126:
        sub_1B9442158();
        break;
      case 128:
        sub_1B9442290();
        break;
      default:
        switch(v9)
        {
          case 1:
            sub_1B944724C();
            break;
          case 2:
            sub_1B94472E0();
            break;
          case 3:
            sub_1B9447330();
            break;
          case 4:
            sub_1B9447380();
            break;
          case 5:
            sub_1B94473D0();
            break;
          case 6:
            sub_1B9447420();
            break;
          case 7:
            sub_1B9447470();
            break;
          case 8:
            sub_1B94474C0();
            break;
          case 9:
            sub_1B94419C0();
            break;
          default:
            if (v9 == 51)
            {
              v12 = MEMORY[0x1E69AACE0];
              v13 = a2;
              v14 = a1;
              v15 = a3;
              v16 = a4;
              v11 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
              goto LABEL_38;
            }

            if (v9 == 52)
            {
              v12 = MEMORY[0x1E69AACE0];
              v13 = a2;
              v14 = a1;
              v15 = a3;
              v16 = a4;
              v11 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle;
              goto LABEL_38;
            }

            break;
        }

        break;
    }
  }
}

uint64_t sub_1B94419C0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9441A9C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9441B78()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9441C54()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9441D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_134_2();
  v8 = *v7;
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_318_1();
  a6();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B9441DB0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9441E8C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ActionItem(0);
  sub_1B8CD3068(&unk_1EBACAFB8, type metadata accessor for Searchfoundation_ActionItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9441F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_134_2();
  v8 = *v7;
  OUTLINED_FUNCTION_438_0();
  v9 = swift_beginAccess();
  a6(v9);
  sub_1B964C420();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B9441FFC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaOffer(0);
  sub_1B8CD3068(&qword_1EBACAFE8, type metadata accessor for Searchfoundation_MediaOffer);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B94420D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  OUTLINED_FUNCTION_134_2();
  v8 = *v7;
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_318_1();
  a6();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B9442158()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9442234()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C400();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B9442290()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B944239C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v117 = v115 - v10;
  v11 = type metadata accessor for Searchfoundation_RichText();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v121 = v115 - v17;
  v120 = type metadata accessor for Searchfoundation_ActionItem(0);
  v18 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v118 = v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v122 = v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v124 = v115 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v138 = v115 - v26;
  v126 = type metadata accessor for Searchfoundation_Image(0);
  v27 = *(*(v126 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v126);
  v119 = v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v123 = v115 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v125 = v115 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v128 = v115 - v35;
  v129 = type metadata accessor for Searchfoundation_Color(0);
  v36 = *(*(v129 - 1) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v127 = v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v116 = v11;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    v4 = v3;
    if (v3)
    {
    }

    v11 = v116;
  }

  swift_beginAccess();
  v38 = *(a1 + 32);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v40 = *(a1 + 32);

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v41 = *(a1 + 48);
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v43 = *(a1 + 48);

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
        v45 = *(a1 + 72);
        v46 = HIBYTE(v45) & 0xF;
        if ((v45 & 0x2000000000000000) == 0)
        {
          v46 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v46)
        {
          v47 = *(a1 + 72);

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (!*(a1 + 80) || (v48 = *(a1 + 88), v136 = *(a1 + 80), v137 = v48, sub_1B92C8A2C(), result = sub_1B964C680(), !v4))
        {
          v116 = a2;
          swift_beginAccess();
          v49 = v128;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v49, 1, v129) == 1)
          {
            v129 = v14;
            sub_1B8D9207C(v49, &qword_1EBACB050, &unk_1B96B7BD0);
            v50 = v138;
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
            sub_1B964C740();
            v51 = v138;
            if (v4)
            {
              return sub_1B944B0D4();
            }

            v129 = v14;
            sub_1B944B0D4();
            v50 = v51;
          }

          v52 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
          swift_beginAccess();
          v53 = *v52;
          v54 = v52[1];
          v55 = HIBYTE(v54) & 0xF;
          if ((v54 & 0x2000000000000000) == 0)
          {
            v55 = v53 & 0xFFFFFFFFFFFFLL;
          }

          if (v55)
          {

            sub_1B964C700();
            if (v4)
            {
            }
          }

          v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
          swift_beginAccess();
          v57 = *v56;
          v58 = v56[1];
          v59 = HIBYTE(v58) & 0xF;
          if ((v58 & 0x2000000000000000) == 0)
          {
            v59 = v57 & 0xFFFFFFFFFFFFLL;
          }

          if (v59)
          {

            sub_1B964C700();
            if (v4)
            {
            }
          }

          v60 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__contentAdvisory);
          swift_beginAccess();
          v61 = *v60;
          v62 = v60[1];
          v63 = HIBYTE(v62) & 0xF;
          if ((v62 & 0x2000000000000000) == 0)
          {
            v63 = v61 & 0xFFFFFFFFFFFFLL;
          }

          if (v63)
          {

            sub_1B964C700();
            if (v4)
            {
            }
          }

          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v50, 1, v126) == 1)
          {
            sub_1B8D9207C(v50, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
            sub_1B964C740();
            if (v4)
            {
              return sub_1B944B0D4();
            }

            sub_1B944B0D4();
          }

          v64 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isCentered;
          swift_beginAccess();
          if (*(a1 + v64) == 1)
          {
            result = sub_1B964C670();
            if (v4)
            {
              return result;
            }
          }

          v65 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptionText);
          swift_beginAccess();
          v66 = *v65;
          v67 = v65[1];
          v68 = HIBYTE(v67) & 0xF;
          if ((v67 & 0x2000000000000000) == 0)
          {
            v68 = v66 & 0xFFFFFFFFFFFFLL;
          }

          if (v68)
          {

            sub_1B964C700();
            if (v4)
            {
            }
          }

          v69 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__rating);
          swift_beginAccess();
          if (*v69 != 0.0)
          {
            result = sub_1B964C6B0();
            if (v4)
            {
              return result;
            }
          }

          v70 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__ratingText);
          swift_beginAccess();
          v71 = *v70;
          v72 = v70[1];
          v73 = HIBYTE(v72) & 0xF;
          if ((v72 & 0x2000000000000000) == 0)
          {
            v73 = v71 & 0xFFFFFFFFFFFFLL;
          }

          if (v73)
          {

            sub_1B964C700();
            if (v4)
            {
            }
          }

          swift_beginAccess();
          v74 = v124;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v74, 1, v126) == 1)
          {
            sub_1B8D9207C(v74, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
            sub_1B964C740();
            if (v4)
            {
              return sub_1B944B0D4();
            }

            sub_1B944B0D4();
          }

          v75 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewText);
          swift_beginAccess();
          v76 = *v75;
          v77 = v75[1];
          v78 = HIBYTE(v77) & 0xF;
          if ((v77 & 0x2000000000000000) == 0)
          {
            v78 = v76 & 0xFFFFFFFFFFFFLL;
          }

          if (v78)
          {

            sub_1B964C700();
            if (v4)
            {
            }

            v116 = v11;
          }

          else
          {
            v116 = v11;
          }

          v79 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewNewLine;
          swift_beginAccess();
          v80 = *(a1 + v79);
          v115[1] = a3;
          if (v80 == 1)
          {
            result = sub_1B964C670();
            if (v4)
            {
              return result;
            }
          }

          v81 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__moreGlyphs;
          swift_beginAccess();
          if (*(*(a1 + v81) + 16))
          {
            sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);

            sub_1B964C730();
            if (v4)
            {
            }
          }

          v82 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryTopText);
          swift_beginAccess();
          v83 = *v82;
          v84 = v82[1];
          v85 = HIBYTE(v84) & 0xF;
          if ((v84 & 0x2000000000000000) == 0)
          {
            v85 = v83 & 0xFFFFFFFFFFFFLL;
          }

          if (v85)
          {

            sub_1B964C700();
            if (v4)
            {
            }
          }

          v86 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryMiddleText);
          swift_beginAccess();
          v87 = *v86;
          v88 = v86[1];
          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v87 & 0xFFFFFFFFFFFFLL;
          }

          if (v89)
          {

            sub_1B964C700();
            if (v4)
            {
            }
          }

          v90 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomText);
          swift_beginAccess();
          v91 = *v90;
          v92 = v90[1];
          v93 = HIBYTE(v92) & 0xF;
          if ((v92 & 0x2000000000000000) == 0)
          {
            v93 = v91 & 0xFFFFFFFFFFFFLL;
          }

          if (v93)
          {

            sub_1B964C700();
            if (v4)
            {
            }
          }

          v94 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomTextColor);
          swift_beginAccess();
          if (*v94)
          {
            v95 = *(v94 + 8);
            v134 = *v94;
            v135 = v95;
            sub_1B9463458();
            result = sub_1B964C680();
            if (v4)
            {
              return result;
            }
          }

          v96 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryAlignment;
          swift_beginAccess();
          if (*(a1 + v96))
          {
            result = sub_1B964C6C0();
            if (v4)
            {
              return result;
            }
          }

          v97 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hideVerticalDivider;
          swift_beginAccess();
          if (*(a1 + v97) == 1)
          {
            result = sub_1B964C670();
            if (v4)
            {
              return result;
            }
          }

          v98 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleAlign);
          swift_beginAccess();
          if (*v98)
          {
            v99 = *(v98 + 8);
            v132 = *v98;
            v133 = v99;
            sub_1B94634AC();
            result = sub_1B964C680();
            if (v4)
            {
              return result;
            }
          }

          v100 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleWeight;
          swift_beginAccess();
          if (*(a1 + v100))
          {
            result = sub_1B964C6C0();
            if (v4)
            {
              return result;
            }
          }

          v101 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleNoWrap;
          swift_beginAccess();
          if (*(a1 + v101) == 1)
          {
            result = sub_1B964C670();
            if (v4)
            {
              return result;
            }
          }

          v102 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnailCropCircle;
          swift_beginAccess();
          if (*(a1 + v102) == 1)
          {
            result = sub_1B964C670();
            if (v4)
            {
              return result;
            }
          }

          swift_beginAccess();
          v103 = v122;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v103, 1, v126) == 1)
          {
            sub_1B8D9207C(v122, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
            sub_1B964C740();
            if (v4)
            {
              return sub_1B944B0D4();
            }

            sub_1B944B0D4();
          }

          swift_beginAccess();
          v104 = v121;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v104, 1, v120) == 1)
          {
            sub_1B8D9207C(v121, &qword_1EBACAFA8, &qword_1B96B9880);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&unk_1EBACAFB8, type metadata accessor for Searchfoundation_ActionItem);
            sub_1B964C740();
            if (v4)
            {
              return sub_1B944B0D4();
            }

            sub_1B944B0D4();
          }

          v105 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__playActionAlign);
          swift_beginAccess();
          if (*v105)
          {
            v106 = *(v105 + 8);
            v130 = *v105;
            v131 = v106;
            sub_1B9463260();
            result = sub_1B964C680();
            if (v4)
            {
              return result;
            }
          }

          v107 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__offers;
          swift_beginAccess();
          if (*(*(a1 + v107) + 16))
          {
            type metadata accessor for Searchfoundation_MediaOffer(0);
            sub_1B8CD3068(&qword_1EBACAFE8, type metadata accessor for Searchfoundation_MediaOffer);

            sub_1B964C730();
            if (v4)
            {
            }
          }

          v108 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote);
          swift_beginAccess();
          v109 = *v108;
          v110 = v108[1];
          v111 = HIBYTE(v110) & 0xF;
          if ((v110 & 0x2000000000000000) == 0)
          {
            v111 = v109 & 0xFFFFFFFFFFFFLL;
          }

          if (v111)
          {

            sub_1B964C700();
            if (v4)
            {
            }
          }

          swift_beginAccess();
          v112 = v117;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v112, 1, v116) == 1)
          {
            sub_1B8D9207C(v117, &qword_1EBACB1D0, &qword_1B96B9870);
            goto LABEL_136;
          }

          sub_1B944B02C();
          sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
          sub_1B964C740();
          if (!v4)
          {
            sub_1B944B0D4();
LABEL_136:
            v113 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitleIsEmphasized;
            swift_beginAccess();
            if (*(a1 + v113) != 1 || (result = sub_1B964C670(), !v4))
            {
              v114 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
              result = swift_beginAccess();
              if (*(*(a1 + v114) + 16))
              {
                type metadata accessor for Searchfoundation_ButtonItem(0);
                sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);

                sub_1B964C730();
              }
            }

            return result;
          }

          return sub_1B944B0D4();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B9443B74(uint64_t a1, uint64_t a2)
{
  v274 = type metadata accessor for Searchfoundation_RichText();
  v4 = *(*(v274 - 8) + 64);
  MEMORY[0x1EEE9AC00](v274);
  v275 = &v258 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v6 = *(*(v271 - 8) + 64);
  MEMORY[0x1EEE9AC00](v271);
  v276 = &v258 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v273 = (&v258 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v272 = &v258 - v12;
  v266 = type metadata accessor for Searchfoundation_ActionItem(0);
  v13 = *(*(v266 - 8) + 64);
  MEMORY[0x1EEE9AC00](v266);
  v269 = &v258 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFC0, &qword_1B96CA0E0);
  v15 = *(*(v265 - 8) + 64);
  MEMORY[0x1EEE9AC00](v265);
  v270 = &v258 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v268 = &v258 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v267 = &v258 - v21;
  v285 = type metadata accessor for Searchfoundation_Image(0);
  v22 = *(*(v285 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v285);
  v263 = &v258 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v277 = &v258 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v281 = &v258 - v27;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v28 = *(*(v286 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v286);
  v264 = &v258 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v279 = &v258 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v284 = &v258 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v262 = &v258 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v261 = &v258 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v278 = &v258 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v280 = &v258 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v282 = &v258 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v283 = &v258 - v46;
  v47 = type metadata accessor for Searchfoundation_Color(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v287 = &v258 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v288 = &v258 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x1EEE9AC00](v53 - 8);
  v57 = &v258 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v258 - v58;
  swift_beginAccess();
  v60 = *(a1 + 16);
  swift_beginAccess();
  v61 = *(a2 + 16);

  sub_1B8D67B1C();
  v63 = v62;

  if ((v63 & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v65 = *(a1 + 24);
  v64 = *(a1 + 32);
  swift_beginAccess();
  v66 = v65 == *(a2 + 24) && v64 == *(a2 + 32);
  if (!v66 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v67 = *(a1 + 40);
  v68 = *(a1 + 48);
  swift_beginAccess();
  v69 = v67 == *(a2 + 40) && v68 == *(a2 + 48);
  if (!v69 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v70 = *(a1 + 56);
  swift_beginAccess();
  if (v70 != *(a2 + 56))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v71 = *(a1 + 57);
  swift_beginAccess();
  if (v71 != *(a2 + 57))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v72 = *(a1 + 58);
  swift_beginAccess();
  if (v72 != *(a2 + 58))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v73 = *(a1 + 64);
  v74 = *(a1 + 72);
  swift_beginAccess();
  v75 = v73 == *(a2 + 64) && v74 == *(a2 + 72);
  if (!v75 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v76 = *(a1 + 80);
  v77 = *(a1 + 88);
  swift_beginAccess();
  v78 = *(a2 + 88);
  if (!sub_1B8D92198(v76, v77, *(a2 + 80)))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v260 = a1;
  sub_1B8D92024();
  swift_beginAccess();
  v79 = *(v50 + 48);
  v80 = v288;
  sub_1B8D92024();
  v259 = a2;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v80, 1, v47) == 1)
  {
    sub_1B8D9207C(v59, &qword_1EBACB050, &unk_1B96B7BD0);
    if (__swift_getEnumTagSinglePayload(v80 + v79, 1, v47) == 1)
    {
      sub_1B8D9207C(v80, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_35;
    }

LABEL_28:
    v83 = &qword_1EBACB058;
    v84 = &unk_1B96CA9D0;
LABEL_29:
    v85 = v80;
    goto LABEL_30;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v80 + v79, 1, v47) == 1)
  {
    sub_1B8D9207C(v59, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
    goto LABEL_28;
  }

  v86 = v287;
  sub_1B944B02C();
  v87 = *(v47 + 20);
  if (*&v57[v87] != *&v86[v87])
  {
    v88 = *&v57[v87];

    sub_1B947FDE4();
    v90 = v89;

    if ((v90 & 1) == 0)
    {
      sub_1B944B0D4();
      v111 = &qword_1EBACB050;
      v112 = &unk_1B96B7BD0;
      sub_1B8D9207C(v59, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v85 = v80;
      goto LABEL_54;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v91 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v59, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v80, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v91 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_35:
  v92 = (v260 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  swift_beginAccess();
  v93 = *v92;
  v94 = v92[1];
  v95 = (v259 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title);
  swift_beginAccess();
  v96 = v93 == *v95 && v94 == v95[1];
  if (!v96 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  v97 = (v260 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  swift_beginAccess();
  v98 = *v97;
  v99 = v97[1];
  v100 = (v259 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle);
  swift_beginAccess();
  v101 = v98 == *v100 && v99 == v100[1];
  if (!v101 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  v102 = (v260 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__contentAdvisory);
  swift_beginAccess();
  v103 = *v102;
  v104 = v102[1];
  v105 = (v259 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__contentAdvisory);
  swift_beginAccess();
  v106 = v103 == *v105 && v104 == v105[1];
  if (!v106 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v107 = v283;
  sub_1B8D92024();
  swift_beginAccess();
  v108 = *(v286 + 48);
  v80 = v284;
  sub_1B8D92024();
  sub_1B8D92024();
  v109 = v285;
  if (__swift_getEnumTagSinglePayload(v80, 1, v285) == 1)
  {
    sub_1B8D9207C(v107, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v80 + v108, 1, v109) == 1)
    {
      sub_1B8D9207C(v80, &qword_1EBAB8EA8, &unk_1B96B77D0);
      v110 = v259;
      goto LABEL_61;
    }

LABEL_57:
    v83 = &qword_1EBAB8EB0;
    v84 = &qword_1B964D6B0;
    goto LABEL_29;
  }

  v113 = v282;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v80 + v108, 1, v109) == 1)
  {
    sub_1B8D9207C(v107, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B944B0D4();
    goto LABEL_57;
  }

  v114 = v281;
  sub_1B944B02C();
  v115 = *(v109 + 20);
  if (*&v113[v115] != *&v114[v115])
  {
    v116 = *&v113[v115];

    sub_1B94C6890();
    v118 = v117;

    if ((v118 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v107, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B944B0D4();
      sub_1B8D9207C(v80, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_24;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v119 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v107, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B944B0D4();
  sub_1B8D9207C(v80, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v110 = v259;
  if (v119)
  {
LABEL_61:
    v120 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isCentered;
    v121 = v260;
    swift_beginAccess();
    LODWORD(v120) = *(v121 + v120);
    v122 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__isCentered;
    swift_beginAccess();
    if (v120 != *(v110 + v122))
    {
      goto LABEL_24;
    }

    v123 = (v121 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptionText);
    swift_beginAccess();
    v124 = *v123;
    v125 = v123[1];
    v126 = v259;
    v127 = (v259 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__descriptionText);
    swift_beginAccess();
    v128 = v124 == *v127 && v125 == v127[1];
    if (!v128 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_24;
    }

    v129 = v260;
    v130 = (v260 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__rating);
    swift_beginAccess();
    v131 = *v130;
    v132 = (v126 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__rating);
    swift_beginAccess();
    if (v131 != *v132)
    {
      goto LABEL_24;
    }

    v133 = (v129 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__ratingText);
    swift_beginAccess();
    v134 = *v133;
    v135 = v133[1];
    v136 = (v126 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__ratingText);
    swift_beginAccess();
    v137 = v134 == *v136 && v135 == v136[1];
    if (!v137 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_24;
    }

    swift_beginAccess();
    sub_1B8D92024();
    swift_beginAccess();
    v138 = *(v286 + 48);
    v80 = v279;
    sub_1B8D92024();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v80, 1, v109) == 1)
    {
      sub_1B8D9207C(v280, &qword_1EBAB8EA8, &unk_1B96B77D0);
      if (__swift_getEnumTagSinglePayload(v80 + v138, 1, v109) == 1)
      {
        sub_1B8D9207C(v80, &qword_1EBAB8EA8, &unk_1B96B77D0);
        goto LABEL_84;
      }
    }

    else
    {
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v80 + v138, 1, v109) != 1)
      {
        v139 = v277;
        sub_1B944B02C();
        v140 = *(v285 + 20);
        if (*&v278[v140] != *&v139[v140])
        {
          v141 = *&v278[v140];

          sub_1B94C6890();
          v143 = v142;

          if ((v143 & 1) == 0)
          {
            sub_1B944B0D4();
            v111 = &qword_1EBAB8EA8;
            v112 = &unk_1B96B77D0;
            sub_1B8D9207C(v280, &qword_1EBAB8EA8, &unk_1B96B77D0);
            sub_1B944B0D4();
            v85 = v279;
            goto LABEL_54;
          }
        }

        sub_1B964C2B0();
        sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
        v144 = sub_1B964C850();
        sub_1B944B0D4();
        sub_1B8D9207C(v280, &qword_1EBAB8EA8, &unk_1B96B77D0);
        sub_1B944B0D4();
        sub_1B8D9207C(v279, &qword_1EBAB8EA8, &unk_1B96B77D0);
        if ((v144 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_84:
        v145 = (v260 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewText);
        swift_beginAccess();
        v146 = *v145;
        v147 = v145[1];
        v148 = (v259 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewText);
        swift_beginAccess();
        v149 = v146 == *v148 && v147 == v148[1];
        if (!v149 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_24;
        }

        v150 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewNewLine;
        v151 = v260;
        swift_beginAccess();
        LODWORD(v150) = *(v151 + v150);
        v152 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__reviewNewLine;
        v153 = v259;
        swift_beginAccess();
        if (v150 != *(v153 + v152))
        {
          goto LABEL_24;
        }

        v154 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__moreGlyphs;
        v155 = v260;
        swift_beginAccess();
        v156 = *(v155 + v154);
        v157 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__moreGlyphs;
        v158 = v259;
        swift_beginAccess();
        v159 = *(v158 + v157);

        sub_1B8D75878();
        LOBYTE(v158) = v160;

        if ((v158 & 1) == 0)
        {
          goto LABEL_24;
        }

        v161 = (v260 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryTopText);
        swift_beginAccess();
        v162 = *v161;
        v163 = v161[1];
        v164 = (v259 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryTopText);
        swift_beginAccess();
        v165 = v162 == *v164 && v163 == v164[1];
        if (!v165 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_24;
        }

        v166 = (v260 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryMiddleText);
        swift_beginAccess();
        v167 = *v166;
        v168 = v166[1];
        v169 = (v259 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryMiddleText);
        swift_beginAccess();
        v170 = v167 == *v169 && v168 == v169[1];
        if (!v170 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_24;
        }

        v171 = (v260 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomText);
        swift_beginAccess();
        v172 = *v171;
        v173 = v171[1];
        v174 = (v259 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomText);
        swift_beginAccess();
        v175 = v172 == *v174 && v173 == v174[1];
        if (!v175 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_24;
        }

        v176 = v260 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomTextColor;
        swift_beginAccess();
        v177 = *v176;
        v178 = *(v176 + 8);
        v179 = v259 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryBottomTextColor;
        swift_beginAccess();
        v180 = *(v179 + 8);
        if (!sub_1B8D92198(v177, v178, *v179))
        {
          goto LABEL_24;
        }

        v181 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryAlignment;
        v182 = v260;
        swift_beginAccess();
        LODWORD(v181) = *(v182 + v181);
        v183 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryAlignment;
        v184 = v259;
        swift_beginAccess();
        if (v181 != *(v184 + v183))
        {
          goto LABEL_24;
        }

        v185 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hideVerticalDivider;
        v186 = v260;
        swift_beginAccess();
        LODWORD(v185) = *(v186 + v185);
        v187 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__hideVerticalDivider;
        v188 = v259;
        swift_beginAccess();
        if (v185 != *(v188 + v187))
        {
          goto LABEL_24;
        }

        v189 = v260 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleAlign;
        swift_beginAccess();
        v190 = *v189;
        v191 = *(v189 + 8);
        v192 = v259 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleAlign;
        swift_beginAccess();
        v193 = *(v192 + 8);
        if (!sub_1B8D92198(v190, v191, *v192))
        {
          goto LABEL_24;
        }

        v194 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleWeight;
        v195 = v260;
        swift_beginAccess();
        LODWORD(v194) = *(v195 + v194);
        v196 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleWeight;
        v197 = v259;
        swift_beginAccess();
        if (v194 != *(v197 + v196))
        {
          goto LABEL_24;
        }

        v198 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleNoWrap;
        v199 = v260;
        swift_beginAccess();
        LODWORD(v198) = *(v199 + v198);
        v200 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleNoWrap;
        v201 = v259;
        swift_beginAccess();
        if (v198 != *(v201 + v200))
        {
          goto LABEL_24;
        }

        v202 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnailCropCircle;
        v203 = v260;
        swift_beginAccess();
        LODWORD(v202) = *(v203 + v202);
        v204 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__thumbnailCropCircle;
        v205 = v259;
        swift_beginAccess();
        if (v202 != *(v205 + v204))
        {
          goto LABEL_24;
        }

        swift_beginAccess();
        sub_1B8D92024();
        swift_beginAccess();
        v206 = *(v286 + 48);
        v207 = v264;
        sub_1B8D92024();
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v207, 1, v285) == 1)
        {
          sub_1B8D9207C(v261, &qword_1EBAB8EA8, &unk_1B96B77D0);
          if (__swift_getEnumTagSinglePayload(v264 + v206, 1, v285) == 1)
          {
            sub_1B8D9207C(v264, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_123:
            swift_beginAccess();
            sub_1B8D92024();
            swift_beginAccess();
            v215 = *(v265 + 48);
            v216 = v270;
            sub_1B8D92024();
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v216, 1, v266) == 1)
            {
              sub_1B8D9207C(v267, &qword_1EBACAFA8, &qword_1B96B9880);
              if (__swift_getEnumTagSinglePayload(v270 + v215, 1, v266) == 1)
              {
                sub_1B8D9207C(v270, &qword_1EBACAFA8, &qword_1B96B9880);
LABEL_132:
                v224 = v260 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__playActionAlign;
                swift_beginAccess();
                v225 = *v224;
                v226 = *(v224 + 8);
                v227 = v259 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__playActionAlign;
                swift_beginAccess();
                v228 = *(v227 + 8);
                if (!sub_1B8D92198(v225, v226, *v227))
                {
                  goto LABEL_24;
                }

                v229 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__offers;
                v230 = v260;
                swift_beginAccess();
                v231 = *(v230 + v229);
                v232 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__offers;
                v233 = v259;
                swift_beginAccess();
                v234 = *(v233 + v232);

                sub_1B8D91510();
                LOBYTE(v233) = v235;

                if ((v233 & 1) == 0)
                {
                  goto LABEL_24;
                }

                v236 = (v260 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote);
                swift_beginAccess();
                v237 = *v236;
                v238 = v236[1];
                v239 = (v259 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__footnote);
                swift_beginAccess();
                v240 = v237 == *v239 && v238 == v239[1];
                if (!v240 && (sub_1B964C9F0() & 1) == 0)
                {
                  goto LABEL_24;
                }

                swift_beginAccess();
                sub_1B8D92024();
                swift_beginAccess();
                v241 = *(v271 + 48);
                v242 = v276;
                sub_1B8D92024();
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v242, 1, v274) == 1)
                {
                  sub_1B8D9207C(v272, &qword_1EBACB1D0, &qword_1B96B9870);
                  if (__swift_getEnumTagSinglePayload(v276 + v241, 1, v274) == 1)
                  {
                    sub_1B8D9207C(v276, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_148:
                    v247 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitleIsEmphasized;
                    v248 = v260;
                    swift_beginAccess();
                    LODWORD(v247) = *(v248 + v247);
                    v249 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitleIsEmphasized;
                    v250 = v259;
                    swift_beginAccess();
                    if (v247 == *(v250 + v249))
                    {
                      v251 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
                      v252 = v260;
                      swift_beginAccess();
                      v253 = *(v252 + v251);
                      v254 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
                      v255 = v259;
                      swift_beginAccess();
                      v256 = *(v255 + v254);

                      sub_1B8D6B7F8();
                      v81 = v257;

                      return v81 & 1;
                    }

                    goto LABEL_24;
                  }
                }

                else
                {
                  v243 = v276;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v243 + v241, 1, v274) != 1)
                  {
                    v244 = v276;
                    v245 = v275;
                    sub_1B944B02C();
                    v246 = static Searchfoundation_RichText.== infix(_:_:)(v273, v245);
                    sub_1B944B0D4();
                    sub_1B8D9207C(v272, &qword_1EBACB1D0, &qword_1B96B9870);
                    sub_1B944B0D4();
                    sub_1B8D9207C(v244, &qword_1EBACB1D0, &qword_1B96B9870);
                    if ((v246 & 1) == 0)
                    {
                      goto LABEL_24;
                    }

                    goto LABEL_148;
                  }

                  sub_1B8D9207C(v272, &qword_1EBACB1D0, &qword_1B96B9870);
                  sub_1B944B0D4();
                }

                v83 = &qword_1EBACB230;
                v84 = &unk_1B96B8870;
                v85 = v276;
LABEL_30:
                sub_1B8D9207C(v85, v83, v84);
                goto LABEL_24;
              }

LABEL_128:
              v83 = &qword_1EBACAFC0;
              v84 = &qword_1B96CA0E0;
              v85 = v270;
              goto LABEL_30;
            }

            v217 = v270;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v217 + v215, 1, v266) == 1)
            {
              sub_1B8D9207C(v267, &qword_1EBACAFA8, &qword_1B96B9880);
              sub_1B944B0D4();
              goto LABEL_128;
            }

            v218 = v269;
            sub_1B944B02C();
            v219 = *(v266 + 20);
            if (*&v268[v219] == *&v218[v219] || (v220 = *&v268[v219], , , sub_1B92C3040(), v222 = v221, , , (v222 & 1) != 0))
            {
              sub_1B964C2B0();
              sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
              v223 = sub_1B964C850();
              sub_1B944B0D4();
              sub_1B8D9207C(v267, &qword_1EBACAFA8, &qword_1B96B9880);
              sub_1B944B0D4();
              sub_1B8D9207C(v270, &qword_1EBACAFA8, &qword_1B96B9880);
              if ((v223 & 1) == 0)
              {
                goto LABEL_24;
              }

              goto LABEL_132;
            }

            sub_1B944B0D4();
            v111 = &qword_1EBACAFA8;
            v112 = &qword_1B96B9880;
            sub_1B8D9207C(v267, &qword_1EBACAFA8, &qword_1B96B9880);
            sub_1B944B0D4();
            v85 = v270;
LABEL_54:
            v83 = v111;
            v84 = v112;
            goto LABEL_30;
          }
        }

        else
        {
          v208 = v264;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v208 + v206, 1, v285) != 1)
          {
            v209 = v263;
            sub_1B944B02C();
            v210 = *(v285 + 20);
            if (*&v262[v210] != *&v209[v210])
            {
              v211 = *&v262[v210];

              sub_1B94C6890();
              v213 = v212;

              if ((v213 & 1) == 0)
              {
                sub_1B944B0D4();
                v111 = &qword_1EBAB8EA8;
                v112 = &unk_1B96B77D0;
                sub_1B8D9207C(v261, &qword_1EBAB8EA8, &unk_1B96B77D0);
                sub_1B944B0D4();
                v85 = v264;
                goto LABEL_54;
              }
            }

            sub_1B964C2B0();
            sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
            v214 = sub_1B964C850();
            sub_1B944B0D4();
            sub_1B8D9207C(v261, &qword_1EBAB8EA8, &unk_1B96B77D0);
            sub_1B944B0D4();
            sub_1B8D9207C(v264, &qword_1EBAB8EA8, &unk_1B96B77D0);
            if ((v214 & 1) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_123;
          }

          sub_1B8D9207C(v261, &qword_1EBAB8EA8, &unk_1B96B77D0);
          sub_1B944B0D4();
        }

        v83 = &qword_1EBAB8EB0;
        v84 = &qword_1B964D6B0;
        v85 = v264;
        goto LABEL_30;
      }

      sub_1B8D9207C(v280, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B944B0D4();
      v80 = v279;
    }

    goto LABEL_57;
  }

LABEL_24:

  v81 = 0;
  return v81 & 1;
}

uint64_t sub_1B9445F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDAE8, type metadata accessor for Searchfoundation_RichTitleCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9445FC0(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACDA68, type metadata accessor for Searchfoundation_RichTitleCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9446030()
{
  sub_1B8CD3068(&qword_1EBACDA68, type metadata accessor for Searchfoundation_RichTitleCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B94460BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB41F0);
  __swift_project_value_buffer(v0, qword_1EBAB41F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B9656D00;
  v4 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v34 + v3 + v2 + v1[14];
  *(v34 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v34 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v34 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v34 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v34 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v34 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v34 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v34 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "leadingAttribution";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v7();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "leadingAttributionPunchout";
  *(v26 + 1) = 26;
  v26[16] = 2;
  v7();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "trailingAttribution";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v7();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "trailingAttributionPunchout";
  *(v30 + 1) = 27;
  v30[16] = 2;
  v7();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 55;
  *v32 = "trailingAttributionCommand";
  *(v32 + 1) = 26;
  v32[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B94465C8()
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
  v1 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingAttribution;
  v4 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingAttributionPunchout;
  v6 = type metadata accessor for Searchfoundation_Punchout();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingAttribution, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingAttributionPunchout, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingAttributionCommand;
  v8 = type metadata accessor for Searchfoundation_Command(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  return v0;
}

uint64_t sub_1B94466F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v43 = &v37 - v14;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  v38 = (v1 + 58);
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v39 = (v1 + 64);
  v40 = (v1 + 80);
  *(v1 + 88) = 1;
  v15 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v41 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v16 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingAttribution;
  v42 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingAttribution;
  v18 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingAttributionPunchout;
  v44 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingAttributionPunchout;
  v20 = type metadata accessor for Searchfoundation_Punchout();
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v45 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingAttribution;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingAttribution, 1, 1, v18);
  v47 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingAttributionPunchout;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingAttributionPunchout, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingAttributionCommand;
  v48 = OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingAttributionCommand;
  v22 = type metadata accessor for Searchfoundation_Command(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  swift_beginAccess();
  v23 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v23;
  swift_beginAccess();
  v25 = *(a1 + 24);
  v24 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v25;
  *(v1 + 32) = v24;

  swift_beginAccess();
  v27 = *(a1 + 40);
  v26 = *(a1 + 48);
  swift_beginAccess();
  v28 = *(v1 + 48);
  *(v1 + 40) = v27;
  *(v1 + 48) = v26;

  swift_beginAccess();
  LOBYTE(v26) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v26;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v26;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + 58);
  v29 = v38;
  swift_beginAccess();
  *v29 = v26;
  swift_beginAccess();
  v31 = *(a1 + 64);
  v30 = *(a1 + 72);
  v32 = v39;
  swift_beginAccess();
  v33 = *(v1 + 72);
  *v32 = v31;
  *(v1 + 72) = v30;

  swift_beginAccess();
  v34 = *(a1 + 80);
  LOBYTE(v33) = *(a1 + 88);
  v35 = v40;
  swift_beginAccess();
  *v35 = v34;
  *(v1 + 88) = v33;
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
  return v1;
}

void *sub_1B9446E50()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingAttribution, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__leadingAttributionPunchout, &qword_1EBACAF90, &unk_1B96B77C0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingAttribution, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingAttributionPunchout, &qword_1EBACAF90, &unk_1B96B77C0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Searchfoundation_AttributionFooterCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingAttributionCommand, &qword_1EBAB8E98, &qword_1B964D698);
  return v0;
}

uint64_t sub_1B9446F78(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B9447028()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B9447524();
        break;
      default:
        switch(v1)
        {
          case '3':
            sub_1B9447600();
            break;
          case '4':
            sub_1B94476DC();
            break;
          case '5':
            sub_1B94477B8();
            break;
          case '6':
            sub_1B9447894();
            break;
          case '7':
            sub_1B9447970();
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B944724C()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout();
  OUTLINED_FUNCTION_71_9();
  sub_1B8CD3068(v0, v1);
  OUTLINED_FUNCTION_49_1();
  sub_1B964C570();
  return OUTLINED_FUNCTION_199_1();
}

void sub_1B94472E0()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C530();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B9447330()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C530();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B9447380()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C400();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B94473D0()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C400();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B9447420()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C400();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B9447470()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C530();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B94474C0()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_438_0();
  swift_beginAccess();
  sub_1B92C8A2C();
  OUTLINED_FUNCTION_49_1();
  sub_1B964C420();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B9447524()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9447600()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94476DC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94477B8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9447894()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9447970()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Command(0);
  sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9447A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = &v54 - v9;
  v59 = type metadata accessor for Searchfoundation_Command(0);
  v10 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v61 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v54 - v16;
  v17 = type metadata accessor for Searchfoundation_Punchout();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v57 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v54 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v63 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v67 = &v54 - v26;
  v68 = type metadata accessor for Searchfoundation_RichText();
  v27 = *(*(v68 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v68);
  v60 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v64 = &v54 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v54 - v33;
  v71 = type metadata accessor for Searchfoundation_Color(0);
  v35 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v66 = &v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 32);
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v39 = *(a1 + 32);

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v40 = *(a1 + 48);
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = *(a1 + 48);

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
        v44 = *(a1 + 72);
        v45 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v45 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v45)
        {
          v46 = *(a1 + 72);

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (*(a1 + 80))
        {
          v47 = *(a1 + 88);
          v69 = *(a1 + 80);
          v70 = v47;
          sub_1B92C8A2C();
          result = sub_1B964C680();
          if (v4)
          {
            return result;
          }

          v55 = a4;
        }

        else
        {
          v55 = a4;
        }

        swift_beginAccess();
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v34, 1, v71) == 1)
        {
          sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
        }

        else
        {
          sub_1B944B02C();
          sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
          sub_1B964C740();
          result = sub_1B944B0D4();
          if (v4)
          {
            return result;
          }
        }

        swift_beginAccess();
        v48 = v67;
        sub_1B8D92024();
        v49 = v68;
        if (__swift_getEnumTagSinglePayload(v48, 1, v68) == 1)
        {
          sub_1B8D9207C(v48, &qword_1EBACB1D0, &qword_1B96B9870);
        }

        else
        {
          sub_1B944B02C();
          sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
          sub_1B964C740();
          result = sub_1B944B0D4();
          if (v4)
          {
            return result;
          }
        }

        swift_beginAccess();
        v50 = v65;
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v50, 1, v17) == 1)
        {
          sub_1B8D9207C(v50, &qword_1EBACAF90, &unk_1B96B77C0);
        }

        else
        {
          sub_1B944B02C();
          sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
          sub_1B964C740();
          result = sub_1B944B0D4();
          if (v4)
          {
            return result;
          }
        }

        swift_beginAccess();
        v51 = v63;
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v51, 1, v49) == 1)
        {
          sub_1B8D9207C(v51, &qword_1EBACB1D0, &qword_1B96B9870);
        }

        else
        {
          sub_1B944B02C();
          sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
          sub_1B964C740();
          result = sub_1B944B0D4();
          if (v4)
          {
            return result;
          }
        }

        swift_beginAccess();
        v52 = v61;
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v52, 1, v17) == 1)
        {
          sub_1B8D9207C(v52, &qword_1EBACAF90, &unk_1B96B77C0);
        }

        else
        {
          sub_1B944B02C();
          sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
          sub_1B964C740();
          result = sub_1B944B0D4();
          if (v4)
          {
            return result;
          }
        }

        swift_beginAccess();
        v53 = v58;
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v53, 1, v59) == 1)
        {
          return sub_1B8D9207C(v53, &qword_1EBAB8E98, &qword_1B964D698);
        }

        else
        {
          sub_1B944B02C();
          sub_1B8CD3068(&qword_1ED9D3040, type metadata accessor for Searchfoundation_Command);
          sub_1B964C740();
          return sub_1B944B0D4();
        }
      }
    }
  }

  return result;
}

BOOL sub_1B9448750(uint64_t a1, uint64_t a2)
{
  v125 = type metadata accessor for Searchfoundation_Command(0);
  v4 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v122 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBAB8EA0, &unk_1B964D6A0);
  v6 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v128 = &v121 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v124 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v127 = &v121 - v12;
  v139 = type metadata accessor for Searchfoundation_Punchout();
  v13 = *(*(v139 - 8) + 64);
  MEMORY[0x1EEE9AC00](v139);
  v132 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB028, &unk_1B96B98F0);
  v15 = *(*(v138 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v138);
  v129 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v121 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v126 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v131 = &v121 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v134 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v146 = &v121 - v27;
  v145 = type metadata accessor for Searchfoundation_RichText();
  v28 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v136 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v30 = *(*(v144 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v144);
  v133 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v143 = &v121 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v130 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v135 = &v121 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v140 = &v121 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v142 = &v121 - v42;
  v43 = type metadata accessor for Searchfoundation_Color(0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v141 = &v121 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v147 = &v121 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8);
  v53 = &v121 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v121 - v54;
  swift_beginAccess();
  v56 = *(a1 + 16);
  swift_beginAccess();
  v57 = *(a2 + 16);

  sub_1B8D67B1C();
  v59 = v58;

  if ((v59 & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v61 = *(a1 + 24);
  v60 = *(a1 + 32);
  swift_beginAccess();
  v62 = v61 == *(a2 + 24) && v60 == *(a2 + 32);
  if (!v62 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v63 = *(a1 + 40);
  v64 = *(a1 + 48);
  swift_beginAccess();
  v65 = v63 == *(a2 + 40) && v64 == *(a2 + 48);
  if (!v65 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v66 = *(a1 + 56);
  swift_beginAccess();
  if (v66 != *(a2 + 56))
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v67 = *(a1 + 57);
  swift_beginAccess();
  if (v67 != *(a2 + 57))
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v68 = *(a1 + 58);
  swift_beginAccess();
  if (v68 != *(a2 + 58))
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v69 = *(a1 + 64);
  v70 = *(a1 + 72);
  swift_beginAccess();
  v71 = v69 == *(a2 + 64) && v70 == *(a2 + 72);
  if (!v71 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v72 = *(a1 + 80);
  v73 = *(a1 + 88);
  swift_beginAccess();
  v74 = *(a2 + 88);
  if (!sub_1B8D92198(v72, v73, *(a2 + 80)))
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v75 = *(v46 + 48);
  v76 = v147;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v76, 1, v43) == 1)
  {
    sub_1B8D9207C(v55, &qword_1EBACB050, &unk_1B96B7BD0);
    if (__swift_getEnumTagSinglePayload(v76 + v75, 1, v43) == 1)
    {
      sub_1B8D9207C(v76, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

LABEL_26:
    v77 = &qword_1EBACB058;
    v78 = &unk_1B96CA9D0;
LABEL_36:
    v92 = v76;
LABEL_37:
    sub_1B8D9207C(v92, v77, v78);
    goto LABEL_38;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v76 + v75, 1, v43) == 1)
  {
    sub_1B8D9207C(v55, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
    goto LABEL_26;
  }

  v79 = v141;
  sub_1B944B02C();
  v80 = *(v43 + 20);
  if (*&v53[v80] != *&v79[v80])
  {
    v81 = *&v53[v80];

    sub_1B947FDE4();
    v83 = v82;

    if ((v83 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v55, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v92 = v76;
      v77 = &qword_1EBACB050;
      v78 = &unk_1B96B7BD0;
      goto LABEL_37;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v84 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v55, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v76, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v84 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_30:
  swift_beginAccess();
  v85 = v142;
  sub_1B8D92024();
  swift_beginAccess();
  v76 = v143;
  v86 = *(v144 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v87 = v145;
  if (__swift_getEnumTagSinglePayload(v76, 1, v145) == 1)
  {
    sub_1B8D9207C(v85, &qword_1EBACB1D0, &qword_1B96B9870);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76 + v86, 1, v87);
    v89 = v146;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v76, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_42;
    }

    goto LABEL_35;
  }

  v90 = v140;
  sub_1B8D92024();
  v91 = __swift_getEnumTagSinglePayload(v76 + v86, 1, v87);
  v89 = v146;
  if (v91 == 1)
  {
    sub_1B8D9207C(v85, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
LABEL_35:
    v77 = &qword_1EBACB230;
    v78 = &unk_1B96B8870;
    goto LABEL_36;
  }

  v94 = v136;
  sub_1B944B02C();
  LODWORD(v147) = static Searchfoundation_RichText.== infix(_:_:)(v90, v94);
  sub_1B944B0D4();
  sub_1B8D9207C(v85, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v76, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v147 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_42:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v95 = *(v138 + 48);
  v96 = v89;
  v97 = v137;
  sub_1B8D92024();
  sub_1B8D92024();
  v98 = v139;
  if (__swift_getEnumTagSinglePayload(v97, 1, v139) == 1)
  {
    sub_1B8D9207C(v96, &qword_1EBACAF90, &unk_1B96B77C0);
    if (__swift_getEnumTagSinglePayload(v97 + v95, 1, v98) != 1)
    {
LABEL_49:
      v77 = &qword_1EBACB028;
      v78 = &unk_1B96B98F0;
LABEL_57:
      v92 = v97;
      goto LABEL_37;
    }

    sub_1B8D9207C(v97, &qword_1EBACAF90, &unk_1B96B77C0);
  }

  else
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v97 + v95, 1, v98) == 1)
    {
      sub_1B8D9207C(v146, &qword_1EBACAF90, &unk_1B96B77C0);
LABEL_48:
      sub_1B944B0D4();
      goto LABEL_49;
    }

    sub_1B944B02C();
    v99 = static Searchfoundation_Punchout.== infix(_:_:)();
    sub_1B944B0D4();
    sub_1B8D9207C(v146, &qword_1EBACAF90, &unk_1B96B77C0);
    sub_1B944B0D4();
    sub_1B8D9207C(v97, &qword_1EBACAF90, &unk_1B96B77C0);
    if ((v99 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  swift_beginAccess();
  v100 = v135;
  sub_1B8D92024();
  swift_beginAccess();
  v101 = *(v144 + 48);
  v97 = v133;
  sub_1B8D92024();
  sub_1B8D92024();
  v102 = v145;
  if (__swift_getEnumTagSinglePayload(v97, 1, v145) == 1)
  {
    sub_1B8D9207C(v100, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v97 + v101, 1, v102) == 1)
    {
      sub_1B8D9207C(v97, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_59;
    }

LABEL_56:
    v77 = &qword_1EBACB230;
    v78 = &unk_1B96B8870;
    goto LABEL_57;
  }

  v103 = v130;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v97 + v101, 1, v102) == 1)
  {
    sub_1B8D9207C(v135, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
    goto LABEL_56;
  }

  v104 = v136;
  sub_1B944B02C();
  v105 = static Searchfoundation_RichText.== infix(_:_:)(v103, v104);
  sub_1B944B0D4();
  sub_1B8D9207C(v135, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v97, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v105 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_59:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v106 = *(v138 + 48);
  v97 = v129;
  sub_1B8D92024();
  sub_1B8D92024();
  v107 = v139;
  if (__swift_getEnumTagSinglePayload(v97, 1, v139) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v97 + v106, 1, v107) == 1)
    {
      sub_1B8D9207C(v131, &qword_1EBACAF90, &unk_1B96B77C0);
      goto LABEL_48;
    }

    sub_1B944B02C();
    v108 = static Searchfoundation_Punchout.== infix(_:_:)();
    sub_1B944B0D4();
    sub_1B8D9207C(v131, &qword_1EBACAF90, &unk_1B96B77C0);
    sub_1B944B0D4();
    sub_1B8D9207C(v97, &qword_1EBACAF90, &unk_1B96B77C0);
    if (v108)
    {
      goto LABEL_65;
    }

LABEL_38:

    return 0;
  }

  sub_1B8D9207C(v131, &qword_1EBACAF90, &unk_1B96B77C0);
  if (__swift_getEnumTagSinglePayload(v97 + v106, 1, v107) != 1)
  {
    goto LABEL_49;
  }

  sub_1B8D9207C(v97, &qword_1EBACAF90, &unk_1B96B77C0);
LABEL_65:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v109 = *(v123 + 48);
  v110 = v128;
  sub_1B8D92024();
  sub_1B8D92024();
  v111 = v125;
  if (__swift_getEnumTagSinglePayload(v110, 1, v125) == 1)
  {

    sub_1B8D9207C(v127, &qword_1EBAB8E98, &qword_1B964D698);
    if (__swift_getEnumTagSinglePayload(v110 + v109, 1, v111) == 1)
    {
      sub_1B8D9207C(v128, &qword_1EBAB8E98, &qword_1B964D698);
      return 1;
    }

    goto LABEL_70;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v110 + v109, 1, v111) == 1)
  {

    sub_1B8D9207C(v127, &qword_1EBAB8E98, &qword_1B964D698);
    sub_1B944B0D4();
LABEL_70:
    v112 = &dword_1EBAB8EA0;
    v113 = &unk_1B964D6A0;
    v114 = v128;
LABEL_71:
    sub_1B8D9207C(v114, v112, v113);
    return 0;
  }

  v115 = v122;
  sub_1B944B02C();
  v116 = *(v125 + 20);
  if (*&v124[v116] != *&v115[v116])
  {
    v117 = *&v124[v116];

    sub_1B93EDA54();
    v119 = v118;

    if ((v119 & 1) == 0)
    {

      sub_1B944B0D4();
      sub_1B8D9207C(v127, &qword_1EBAB8E98, &qword_1B964D698);
      sub_1B944B0D4();
      v114 = v128;
      v112 = &qword_1EBAB8E98;
      v113 = &qword_1B964D698;
      goto LABEL_71;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v120 = sub_1B964C850();

  sub_1B944B0D4();
  sub_1B8D9207C(v127, &qword_1EBAB8E98, &qword_1B964D698);
  sub_1B944B0D4();
  sub_1B8D9207C(v128, &qword_1EBAB8E98, &qword_1B964D698);
  return (v120 & 1) != 0;
}

uint64_t sub_1B9449E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDAE0, type metadata accessor for Searchfoundation_AttributionFooterCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9449EEC(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1ED9C9BD8, type metadata accessor for Searchfoundation_AttributionFooterCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9449F5C()
{
  sub_1B8CD3068(&qword_1ED9C9BD8, type metadata accessor for Searchfoundation_AttributionFooterCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B9449FE8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC188);
  __swift_project_value_buffer(v0, qword_1EBACC188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "distributorBundleIdentifier";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "itemIdentifier";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "versionIdentifier";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RequestProductPageCommand.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C560();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Searchfoundation_RequestProductPageCommand.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_107_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v0))
    {
      if (!*(v1 + 24) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v0))
      {
        v4 = *(type metadata accessor for Searchfoundation_RequestProductPageCommand(0) + 28);
        OUTLINED_FUNCTION_163_6();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t sub_1B944A3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDAD8, type metadata accessor for Searchfoundation_RequestProductPageCommand);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B944A44C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACDA88, type metadata accessor for Searchfoundation_RequestProductPageCommand);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B944A4BC()
{
  sub_1B8CD3068(&qword_1EBACDA88, type metadata accessor for Searchfoundation_RequestProductPageCommand);

  return sub_1B964C5D0();
}

uint64_t sub_1B944A548()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACC1A0);
  __swift_project_value_buffer(v0, qword_1EBACC1A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "visual_elements";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_safe_for_logging";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "commandItem";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

void Searchfoundation_RFVisualPropertyWithAction.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B944A8A0();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B944A84C();
        break;
    }
  }
}

void sub_1B944A84C()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD3068(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B944A8A0()
{
  v0 = *(type metadata accessor for Searchfoundation_RFVisualPropertyWithAction(0) + 28);
  type metadata accessor for Searchfoundation_CommandButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem);
  return sub_1B964C580();
}

void Searchfoundation_RFVisualPropertyWithAction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_151();
  v8 = type metadata accessor for Searchfoundation_CommandButtonItem(v7);
  v9 = OUTLINED_FUNCTION_46(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_835();
  if (!v12 || (type metadata accessor for Searchfoundation_RFVisualElement(0), sub_1B8CD3068(&qword_1ED9D2AC0, type metadata accessor for Searchfoundation_RFVisualElement), OUTLINED_FUNCTION_423_1(), OUTLINED_FUNCTION_5_34(), sub_1B964C730(), !v0))
  {
    if (*(v1 + 8) != 1 || (OUTLINED_FUNCTION_1068(), OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
    {
      v13 = type metadata accessor for Searchfoundation_RFVisualPropertyWithAction(0);
      OUTLINED_FUNCTION_285_1(*(v13 + 28));
      sub_1B8D92024();
      OUTLINED_FUNCTION_243_1();
      if (v14)
      {
        sub_1B8D9207C(v2, &unk_1EBAC3D48, &qword_1B9689670);
LABEL_9:
        v17 = v1 + *(v13 + 24);
        OUTLINED_FUNCTION_220();
        sub_1B964C290();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_29_26();
      OUTLINED_FUNCTION_1277();
      OUTLINED_FUNCTION_997();
      sub_1B8CD3068(v15, v16);
      OUTLINED_FUNCTION_597_0();
      OUTLINED_FUNCTION_39_4();
      sub_1B964C740();
      OUTLINED_FUNCTION_342_1();
      sub_1B944B0D4();
      if (!v0)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_RFVisualPropertyWithAction.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_280();
  v5 = type metadata accessor for Searchfoundation_CommandButtonItem(v4);
  v6 = OUTLINED_FUNCTION_201_5(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3E68, &qword_1B968A570);
  OUTLINED_FUNCTION_163_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_88();
  v17 = *v1;
  v18 = *v0;
  sub_1B8D5D124();
  if ((v19 & 1) == 0 || *(v1 + 8) != *(v0 + 8))
  {
    goto LABEL_12;
  }

  v29 = type metadata accessor for Searchfoundation_RFVisualPropertyWithAction(0);
  v20 = *(v29 + 28);
  v21 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_50(v2);
  if (v22)
  {
    OUTLINED_FUNCTION_50(v2 + v21);
    if (v22)
    {
      sub_1B8D9207C(v2, &unk_1EBAC3D48, &qword_1B9689670);
LABEL_15:
      v26 = *(v29 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v27, v28);
      v23 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2 + v21);
  if (v22)
  {
    OUTLINED_FUNCTION_342_1();
    sub_1B944B0D4();
LABEL_11:
    sub_1B8D9207C(v2, &qword_1EBAC3E68, &qword_1B968A570);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_29_26();
  OUTLINED_FUNCTION_1233();
  OUTLINED_FUNCTION_246();
  static Searchfoundation_CommandButtonItem.== infix(_:_:)();
  v25 = v24;
  sub_1B944B0D4();
  OUTLINED_FUNCTION_253();
  sub_1B944B0D4();
  sub_1B8D9207C(v2, &unk_1EBAC3D48, &qword_1B9689670);
  if (v25)
  {
    goto LABEL_15;
  }

LABEL_12:
  v23 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v23);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B944ADE8()
{
  OUTLINED_FUNCTION_250_1();
  sub_1B964CA70();
  v0(0);
  v1 = OUTLINED_FUNCTION_461();
  sub_1B8CD3068(v1, v2);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B944AEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDAD0, type metadata accessor for Searchfoundation_RFVisualPropertyWithAction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B944AF3C(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACDAA0, type metadata accessor for Searchfoundation_RFVisualPropertyWithAction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B944AFAC()
{
  sub_1B8CD3068(&qword_1EBACDAA0, type metadata accessor for Searchfoundation_RFVisualPropertyWithAction);

  return sub_1B964C5D0();
}

uint64_t sub_1B944B02C()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B944B080()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B944B0D4()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1B944C528()
{
  result = qword_1ED9CCC30;
  if (!qword_1ED9CCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CCC30);
  }

  return result;
}

unint64_t sub_1B944C57C()
{
  result = qword_1EBACC7D8;
  if (!qword_1EBACC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACC7D8);
  }

  return result;
}

unint64_t sub_1B944C5D0()
{
  result = qword_1EBACC810;
  if (!qword_1EBACC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACC810);
  }

  return result;
}

unint64_t sub_1B944C624()
{
  result = qword_1EBACC8B8;
  if (!qword_1EBACC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACC8B8);
  }

  return result;
}

unint64_t sub_1B944C678()
{
  result = qword_1EBACC8C8;
  if (!qword_1EBACC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACC8C8);
  }

  return result;
}

unint64_t sub_1B944C6CC()
{
  result = qword_1EBACC8E0;
  if (!qword_1EBACC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACC8E0);
  }

  return result;
}

unint64_t sub_1B944C720()
{
  result = qword_1EBACC938;
  if (!qword_1EBACC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACC938);
  }

  return result;
}

unint64_t sub_1B944C774()
{
  result = qword_1EBACCA48;
  if (!qword_1EBACCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCA48);
  }

  return result;
}

unint64_t sub_1B944C7C8()
{
  result = qword_1EBACCAD8;
  if (!qword_1EBACCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCAD8);
  }

  return result;
}

unint64_t sub_1B944C81C()
{
  result = qword_1EBACCB50;
  if (!qword_1EBACCB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCB50);
  }

  return result;
}

unint64_t sub_1B944C870()
{
  result = qword_1EBACCB58;
  if (!qword_1EBACCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCB58);
  }

  return result;
}

unint64_t sub_1B944C8C4()
{
  result = qword_1EBACCB60;
  if (!qword_1EBACCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCB60);
  }

  return result;
}

unint64_t sub_1B944C918()
{
  result = qword_1EBACCBC0;
  if (!qword_1EBACCBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCBC0);
  }

  return result;
}

unint64_t sub_1B944C96C()
{
  result = qword_1EBACCBE0;
  if (!qword_1EBACCBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCBE0);
  }

  return result;
}

unint64_t sub_1B944C9C0()
{
  result = qword_1EBACCC58;
  if (!qword_1EBACCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCC58);
  }

  return result;
}

unint64_t sub_1B944CA18()
{
  result = qword_1EBAB5528;
  if (!qword_1EBAB5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5528);
  }

  return result;
}

unint64_t sub_1B944CA70()
{
  result = qword_1EBAB5518;
  if (!qword_1EBAB5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5518);
  }

  return result;
}

unint64_t sub_1B944CAC8()
{
  result = qword_1EBAB5520;
  if (!qword_1EBAB5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5520);
  }

  return result;
}

unint64_t sub_1B944CB50()
{
  result = qword_1ED9D2FC0;
  if (!qword_1ED9D2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9D2FC0);
  }

  return result;
}

unint64_t sub_1B944CBA8()
{
  result = qword_1ED9D2FB0;
  if (!qword_1ED9D2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9D2FB0);
  }

  return result;
}

unint64_t sub_1B944CC00()
{
  result = qword_1ED9D2FB8;
  if (!qword_1ED9D2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9D2FB8);
  }

  return result;
}

unint64_t sub_1B944CC88()
{
  result = qword_1EBACCCA8;
  if (!qword_1EBACCCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCCA8);
  }

  return result;
}

unint64_t sub_1B944CCE0()
{
  result = qword_1EBACCCB0;
  if (!qword_1EBACCCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCCB0);
  }

  return result;
}

unint64_t sub_1B944CD38()
{
  result = qword_1EBACCCB8;
  if (!qword_1EBACCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCCB8);
  }

  return result;
}

unint64_t sub_1B944CDC0()
{
  result = qword_1ED9CCC28;
  if (!qword_1ED9CCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CCC28);
  }

  return result;
}

unint64_t sub_1B944CE18()
{
  result = qword_1ED9CCC18;
  if (!qword_1ED9CCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CCC18);
  }

  return result;
}

unint64_t sub_1B944CE70()
{
  result = qword_1ED9CCC20;
  if (!qword_1ED9CCC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CCC20);
  }

  return result;
}

unint64_t sub_1B944CEF8()
{
  result = qword_1EBACCCE0;
  if (!qword_1EBACCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCCE0);
  }

  return result;
}

unint64_t sub_1B944CF50()
{
  result = qword_1EBACCCE8;
  if (!qword_1EBACCCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCCE8);
  }

  return result;
}

unint64_t sub_1B944CFA8()
{
  result = qword_1EBACCCF0;
  if (!qword_1EBACCCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCCF0);
  }

  return result;
}

unint64_t sub_1B944D030()
{
  result = qword_1EBACCD08;
  if (!qword_1EBACCD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCD08);
  }

  return result;
}

unint64_t sub_1B944D088()
{
  result = qword_1EBACCD10;
  if (!qword_1EBACCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCD10);
  }

  return result;
}

unint64_t sub_1B944D0E0()
{
  result = qword_1EBACCD18;
  if (!qword_1EBACCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCD18);
  }

  return result;
}

unint64_t sub_1B944D168()
{
  result = qword_1EBACCD30;
  if (!qword_1EBACCD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCD30);
  }

  return result;
}

unint64_t sub_1B944D1C0()
{
  result = qword_1EBACCD38;
  if (!qword_1EBACCD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCD38);
  }

  return result;
}

unint64_t sub_1B944D218()
{
  result = qword_1EBACCD40;
  if (!qword_1EBACCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCD40);
  }

  return result;
}

unint64_t sub_1B944D2A0()
{
  result = qword_1EBACCD58;
  if (!qword_1EBACCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCD58);
  }

  return result;
}

unint64_t sub_1B944D2F8()
{
  result = qword_1EBACCD60;
  if (!qword_1EBACCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCD60);
  }

  return result;
}

unint64_t sub_1B944D350()
{
  result = qword_1EBACCD68;
  if (!qword_1EBACCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCD68);
  }

  return result;
}

unint64_t sub_1B944D3D8()
{
  result = qword_1EBACCD80;
  if (!qword_1EBACCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCD80);
  }

  return result;
}

unint64_t sub_1B944D430()
{
  result = qword_1EBACCD88;
  if (!qword_1EBACCD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCD88);
  }

  return result;
}

unint64_t sub_1B944D488()
{
  result = qword_1EBACCD90;
  if (!qword_1EBACCD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCD90);
  }

  return result;
}

unint64_t sub_1B944D510()
{
  result = qword_1EBACCDA8;
  if (!qword_1EBACCDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCDA8);
  }

  return result;
}

unint64_t sub_1B944D568()
{
  result = qword_1EBACCDB0;
  if (!qword_1EBACCDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCDB0);
  }

  return result;
}

unint64_t sub_1B944D5C0()
{
  result = qword_1EBACCDB8;
  if (!qword_1EBACCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCDB8);
  }

  return result;
}

unint64_t sub_1B944D648()
{
  result = qword_1EBACCDD0;
  if (!qword_1EBACCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCDD0);
  }

  return result;
}

unint64_t sub_1B944D6A0()
{
  result = qword_1EBACCDD8;
  if (!qword_1EBACCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCDD8);
  }

  return result;
}

unint64_t sub_1B944D6F8()
{
  result = qword_1EBACCDE0;
  if (!qword_1EBACCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCDE0);
  }

  return result;
}

unint64_t sub_1B944D780()
{
  result = qword_1EBACCDF8;
  if (!qword_1EBACCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCDF8);
  }

  return result;
}

unint64_t sub_1B944D7D8()
{
  result = qword_1EBACCE00;
  if (!qword_1EBACCE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCE00);
  }

  return result;
}

unint64_t sub_1B944D830()
{
  result = qword_1EBACCE08;
  if (!qword_1EBACCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCE08);
  }

  return result;
}

unint64_t sub_1B944D8B8()
{
  result = qword_1EBACCE20;
  if (!qword_1EBACCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCE20);
  }

  return result;
}

unint64_t sub_1B944D910()
{
  result = qword_1EBACCE28;
  if (!qword_1EBACCE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCE28);
  }

  return result;
}

unint64_t sub_1B944D968()
{
  result = qword_1EBACCE30;
  if (!qword_1EBACCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCE30);
  }

  return result;
}

unint64_t sub_1B944D9F0()
{
  result = qword_1EBACCE48;
  if (!qword_1EBACCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCE48);
  }

  return result;
}

unint64_t sub_1B944DA48()
{
  result = qword_1EBACCE50;
  if (!qword_1EBACCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCE50);
  }

  return result;
}

unint64_t sub_1B944DAA0()
{
  result = qword_1EBACCE58;
  if (!qword_1EBACCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCE58);
  }

  return result;
}

unint64_t sub_1B944DB28()
{
  result = qword_1EBACCE70;
  if (!qword_1EBACCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCE70);
  }

  return result;
}

unint64_t sub_1B944DB80()
{
  result = qword_1EBACCE78;
  if (!qword_1EBACCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCE78);
  }

  return result;
}

unint64_t sub_1B944DBD8()
{
  result = qword_1EBACCE80;
  if (!qword_1EBACCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCE80);
  }

  return result;
}

unint64_t sub_1B944DC60()
{
  result = qword_1EBACCE98;
  if (!qword_1EBACCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCE98);
  }

  return result;
}

unint64_t sub_1B944DCB8()
{
  result = qword_1EBACCEA0;
  if (!qword_1EBACCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCEA0);
  }

  return result;
}

unint64_t sub_1B944DD10()
{
  result = qword_1EBACCEA8;
  if (!qword_1EBACCEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCEA8);
  }

  return result;
}

unint64_t sub_1B944DD98()
{
  result = qword_1EBACCEC0;
  if (!qword_1EBACCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCEC0);
  }

  return result;
}

unint64_t sub_1B944DDF0()
{
  result = qword_1EBACCEC8;
  if (!qword_1EBACCEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCEC8);
  }

  return result;
}

unint64_t sub_1B944DE48()
{
  result = qword_1EBACCED0;
  if (!qword_1EBACCED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCED0);
  }

  return result;
}

unint64_t sub_1B944DED0()
{
  result = qword_1EBACCEE8;
  if (!qword_1EBACCEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCEE8);
  }

  return result;
}

unint64_t sub_1B944DF28()
{
  result = qword_1EBACCEF0;
  if (!qword_1EBACCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCEF0);
  }

  return result;
}

unint64_t sub_1B944DF80()
{
  result = qword_1EBACCEF8;
  if (!qword_1EBACCEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCEF8);
  }

  return result;
}

unint64_t sub_1B944E008()
{
  result = qword_1EBACCF10;
  if (!qword_1EBACCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCF10);
  }

  return result;
}

unint64_t sub_1B944E060()
{
  result = qword_1EBACCF18;
  if (!qword_1EBACCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCF18);
  }

  return result;
}

unint64_t sub_1B944E0B8()
{
  result = qword_1EBACCF20;
  if (!qword_1EBACCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCF20);
  }

  return result;
}

unint64_t sub_1B944E140()
{
  result = qword_1EBACCF38;
  if (!qword_1EBACCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCF38);
  }

  return result;
}

unint64_t sub_1B944E198()
{
  result = qword_1EBACCF40;
  if (!qword_1EBACCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCF40);
  }

  return result;
}

unint64_t sub_1B944E1F0()
{
  result = qword_1EBACCF48;
  if (!qword_1EBACCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCF48);
  }

  return result;
}

unint64_t sub_1B944E278()
{
  result = qword_1EBACCF60;
  if (!qword_1EBACCF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCF60);
  }

  return result;
}

unint64_t sub_1B944E2D0()
{
  result = qword_1EBACCF68;
  if (!qword_1EBACCF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCF68);
  }

  return result;
}

unint64_t sub_1B944E328()
{
  result = qword_1EBACCF70;
  if (!qword_1EBACCF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACCF70);
  }

  return result;
}

void sub_1B9457DCC()
{
  sub_1B8DD7D14(319, qword_1EDA06FD0);
  if (v0 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9ED428, type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9457EC0()
{
  v0 = type metadata accessor for Searchfoundation_CardMetadata(319);
  if (v1 <= 0x3F)
  {
    v0 = type metadata accessor for Searchfoundation_EntitySearchMetadata(319);
    if (v2 <= 0x3F)
    {
      v3 = type metadata accessor for Searchfoundation_CardSearchMetadata(319);
      if (v4 > 0x3F)
      {
        return v3;
      }

      else
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

void sub_1B9458030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B94580BC()
{
  sub_1B9458030(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9C8F98, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1615Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 52);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
    OUTLINED_FUNCTION_1364();
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_1616Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 52);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      OUTLINED_FUNCTION_1378();
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_1B9458464()
{
  OUTLINED_FUNCTION_1026();
  sub_1B9458030(319, v0, v1, MEMORY[0x1E69E62F8]);
  if (v2 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1EBAC6D70, type metadata accessor for Searchfoundation_CardSection, MEMORY[0x1E69E62F8]);
    if (v3 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_1025();
        sub_1B9458030(319, v5, v6, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_123_1();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_180_1();
        }
      }
    }
  }
}

void sub_1B945864C()
{
  sub_1B9458030(319, &qword_1ED9D39C8, type metadata accessor for Searchfoundation_CommandButtonItem, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9458768()
{
  OUTLINED_FUNCTION_1026();
  sub_1B9458030(319, v0, v1, MEMORY[0x1E69E62F8]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_948();
    OUTLINED_FUNCTION_1057();
    sub_1B9458030(v3, v4, v5, v6);
    if (v7 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v8 <= 0x3F)
      {
        OUTLINED_FUNCTION_1025();
        sub_1B9458030(319, v9, v10, MEMORY[0x1E69E6720]);
        if (v11 <= 0x3F)
        {
          OUTLINED_FUNCTION_123_1();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_180_1();
        }
      }
    }
  }
}

void sub_1B94588FC()
{
  sub_1B9458030(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1EBAC6D70, type metadata accessor for Searchfoundation_CardSection, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B9458030(319, &qword_1ED9F8FC0, type metadata accessor for Searchfoundation_GraphicalFloat, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1642Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_1364();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
    v7 = *(v2 + 60);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_1643Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_1378();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
      v5 = *(v0 + 60);
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_1B9458DBC()
{
  sub_1B9458030(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9458F68()
{
  result = type metadata accessor for Searchfoundation_ShowContactCardCommand(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_ShowSFCardCommand(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Searchfoundation_ShowAppStoreSheetCommand(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Searchfoundation_OpenPunchoutCommand(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Searchfoundation_OpenFileProviderItemCommand(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Searchfoundation_OpenAppClipCommand(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Searchfoundation_OpenWebClipCommand(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Searchfoundation_RequestAppClipInstallCommand(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Searchfoundation_RequestUserReportCommand(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Searchfoundation_LaunchAppCommand(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Searchfoundation_RunVoiceShortcutCommand(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for Searchfoundation_IndexedUserActivityCommand(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for Searchfoundation_OpenCoreSpotlightItemCommand(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for Searchfoundation_PerformIntentCommand(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for Searchfoundation_SearchInAppCommand(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for Searchfoundation_UpdateSearchQueryCommand(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for Searchfoundation_SearchWebCommand(319);
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for Searchfoundation_InvokeSiriCommand(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for Searchfoundation_PerformContactQueryCommand(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for Searchfoundation_OpenCalculationCommand(319);
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for Searchfoundation_PlayVideoCommand(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for Searchfoundation_CallCommand(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for Searchfoundation_EmailCommand(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for Searchfoundation_BeginMapsRoutingCommand(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for Searchfoundation_ToggleAudioCommand(319);
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for Searchfoundation_PerformPersonEntityQueryCommand(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for Searchfoundation_ShowPurchaseRequestSheetCommand(319);
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for Searchfoundation_ShowScreenTimeRequestSheetCommand(319);
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for Searchfoundation_ShareCommand(319);
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for Searchfoundation_CopyCommand(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for Searchfoundation_ToggleWatchListStatusCommand(319);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(319);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for Searchfoundation_PlayMediaCommand(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for Searchfoundation_OpenMediaCommand(319);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for Searchfoundation_AddToPhotosLibraryCommand(319);
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for Searchfoundation_PerformContactActionCommand(319);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for Searchfoundation_ExpandInlineCommand(319);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand(319);
                                                                              if (v39 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for Searchfoundation_ViewEmailCommand(319);
                                                                                if (v40 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for Searchfoundation_RejectPeopleInPhotoCommand(319);
                                                                                  if (v41 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for Searchfoundation_ShowWrapperResponseViewCommand(319);
                                                                                    if (v42 <= 0x3F)
                                                                                    {
                                                                                      result = type metadata accessor for Searchfoundation_ClearProactiveCategoryCommand(319);
                                                                                      if (v43 <= 0x3F)
                                                                                      {
                                                                                        result = type metadata accessor for Searchfoundation_CreateContactCommand(319);
                                                                                        if (v44 <= 0x3F)
                                                                                        {
                                                                                          result = type metadata accessor for Searchfoundation_CreateCalendarEventCommand(319);
                                                                                          if (v45 <= 0x3F)
                                                                                          {
                                                                                            result = type metadata accessor for Searchfoundation_CreateReminderCommand(319);
                                                                                            if (v46 <= 0x3F)
                                                                                            {
                                                                                              result = type metadata accessor for Searchfoundation_ManageReservationCommand(319);
                                                                                              if (v47 <= 0x3F)
                                                                                              {
                                                                                                result = type metadata accessor for Searchfoundation_UpdateSportsFollowingStatusCommand(319);
                                                                                                if (v48 <= 0x3F)
                                                                                                {
                                                                                                  result = type metadata accessor for Searchfoundation_RequestProductPageCommand(319);
                                                                                                  if (v49 <= 0x3F)
                                                                                                  {
                                                                                                    result = type metadata accessor for Searchfoundation_FlightCheckinCommand(319);
                                                                                                    if (v50 <= 0x3F)
                                                                                                    {
                                                                                                      result = type metadata accessor for Searchfoundation_ExecuteToolCommand(319);
                                                                                                      if (v51 <= 0x3F)
                                                                                                      {
                                                                                                        result = type metadata accessor for Searchfoundation_ExecuteMenuItemCommand(319);
                                                                                                        if (v52 <= 0x3F)
                                                                                                        {
                                                                                                          result = type metadata accessor for Searchfoundation_FillToolParameterCommand(319);
                                                                                                          if (v53 <= 0x3F)
                                                                                                          {
                                                                                                            result = type metadata accessor for Searchfoundation_FillToolAppParameterCommand(319);
                                                                                                            if (v54 <= 0x3F)
                                                                                                            {
                                                                                                              result = type metadata accessor for Searchfoundation_FillToolFileParameterCommand(319);
                                                                                                              if (v55 <= 0x3F)
                                                                                                              {
                                                                                                                result = type metadata accessor for Searchfoundation_FillToolAppEntityParameterCommand(319);
                                                                                                                if (v56 <= 0x3F)
                                                                                                                {
                                                                                                                  result = type metadata accessor for Searchfoundation_FillToolPersonParameterCommand(319);
                                                                                                                  if (v57 <= 0x3F)
                                                                                                                  {
                                                                                                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                                                                    return 0;
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

void sub_1B9459450()
{
  sub_1B9458030(319, &qword_1ED9F9750, type metadata accessor for Searchfoundation_Topic.OneOf_Detail, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B9459564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return OUTLINED_FUNCTION_180_1();
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1759Tm()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 20);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_1760Tm()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B94599FC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B9459DD0()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9720, type metadata accessor for Searchfoundation_LatLng, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_2179Tm()
{
  OUTLINED_FUNCTION_1273();
  if (v0)
  {
    OUTLINED_FUNCTION_1242();
    v3 = (v1 + v2) & 0x7FFFFFFF;
    if (v4)
    {
      return (v3 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_194_1();
    v7 = OUTLINED_FUNCTION_699(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void __swift_store_extra_inhabitant_index_2180Tm()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_196_2();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t __swift_get_extra_inhabitant_index_2098Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_351_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_2099Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t __swift_get_extra_inhabitant_index_2260Tm(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    return OUTLINED_FUNCTION_450_0();
  }

  OUTLINED_FUNCTION_639_1();
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v2)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_266();
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_2261Tm(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 12)
  {
    OUTLINED_FUNCTION_536_1();
  }

  else
  {
    OUTLINED_FUNCTION_586();
    v6 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v6);
    if (*(v7 + 84) == v3)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
      OUTLINED_FUNCTION_258_0();
    }

    __swift_storeEnumTagSinglePayload(a1 + v9, a2, a2, v8);
  }
}

uint64_t sub_1B945A5A4()
{
  v0 = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9798, type metadata accessor for Searchfoundation_Date, MEMORY[0x1E69E6720]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F1808, type metadata accessor for Searchfoundation_StructuredLocation, MEMORY[0x1E69E6720]);
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F9660, type metadata accessor for Searchfoundation_TimeZone, MEMORY[0x1E69E6720]);
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          sub_1B9458030(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL, MEMORY[0x1E69E6720]);
          v0 = v8;
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

void sub_1B945A7A0()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9798, type metadata accessor for Searchfoundation_Date, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B945A91C()
{
  sub_1B9458030(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B8DD7D14(319, qword_1EDA06FD0);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1930Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_639_1();
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_266();
  }

  v8 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_1931Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_586();
    v2 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_258_0();
    }

    v7 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B945ACD0()
{
  result = type metadata accessor for Searchfoundation_TextCopyItem(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_CoreSpotlightCopyItem(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Searchfoundation_ImageCopyItem(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Searchfoundation_ContactCopyItem(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Searchfoundation_URLCopyItem(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1B945ADD0()
{
  sub_1B8DD7D14(319, qword_1EDA06FD0);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_2152Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  OUTLINED_FUNCTION_639_1();
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_266();
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void __swift_store_extra_inhabitant_index_2153Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_586();
    v2 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_258_0();
    }

    v7 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_1B945B0D0()
{
  OUTLINED_FUNCTION_734();
  v0 = OUTLINED_FUNCTION_948();
  sub_1B9458030(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_52_11();
      OUTLINED_FUNCTION_1057();
      sub_1B9458030(v6, v7, v8, v9);
      if (v10 <= 0x3F)
      {
        OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_180_1();
      }
    }
  }
}

uint64_t sub_1B945B1A4()
{
  result = type metadata accessor for Searchfoundation_URLShareItem(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_CoreSpotlightShareItem(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_2359Tm()
{
  OUTLINED_FUNCTION_761();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = OUTLINED_FUNCTION_753();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_194_1();
    v6 = v1 + v8;
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v7);
}

uint64_t __swift_store_extra_inhabitant_index_2360Tm()
{
  OUTLINED_FUNCTION_365_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_128_1(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_196_2();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_1B945B430()
{
  OUTLINED_FUNCTION_734();
  v0 = OUTLINED_FUNCTION_52_11();
  sub_1B9458030(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t sub_1B945B4A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_1903Tm_4);
}

uint64_t sub_1B945B500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_215Tm_1_4);
}

uint64_t sub_1B945B568(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_SportsSubscriptionRequestItem(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_2404Tm()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_1362();
  OUTLINED_FUNCTION_761();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_753();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_259();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      OUTLINED_FUNCTION_266();
    }
  }

  OUTLINED_FUNCTION_242();

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

uint64_t __swift_store_extra_inhabitant_index_2405Tm()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_1216();
  OUTLINED_FUNCTION_468();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_198();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      OUTLINED_FUNCTION_258_0();
    }
  }

  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_242();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void sub_1B945B844()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_1260();
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_52_11();
    OUTLINED_FUNCTION_12();
    sub_1B9458030(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_52_11();
      OUTLINED_FUNCTION_1057();
      sub_1B9458030(v6, v7, v8, v9);
      if (v10 <= 0x3F)
      {
        OUTLINED_FUNCTION_88_2();
        OUTLINED_FUNCTION_180_1();
      }
    }
  }

  OUTLINED_FUNCTION_192_1();
}

uint64_t __swift_get_extra_inhabitant_index_2143Tm()
{
  OUTLINED_FUNCTION_1273();
  if (v1)
  {
    OUTLINED_FUNCTION_1242();
    v4 = (v2 + v3) & 0x7FFFFFFF;
    if (v5)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_639_1();
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      v10 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
      OUTLINED_FUNCTION_266();
    }

    v12 = OUTLINED_FUNCTION_699(v9);

    return __swift_getEnumTagSinglePayload(v12, v13, v14);
  }
}

void __swift_store_extra_inhabitant_index_2144Tm()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_586();
    v4 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      OUTLINED_FUNCTION_258_0();
    }

    v9 = OUTLINED_FUNCTION_61_0(v6);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t __swift_get_extra_inhabitant_index_1858Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_1B945BB88()
{
  result = type metadata accessor for Searchfoundation_CommandButtonItem(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_ContactButtonItem(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Searchfoundation_CoreSpotlightButtonItem(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Searchfoundation_WatchListButtonItem(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Searchfoundation_AppAutoShortcutsButtonItem(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Searchfoundation_SportsFollowButtonItem(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Searchfoundation_PlayAudioButtonItem(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Searchfoundation_StoreButtonItem(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
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

void sub_1B945BCB0()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B945BDB8()
{
  sub_1B9458030(319, &qword_1ED9C8F98, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F96D8, type metadata accessor for Searchfoundation_Command, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B945BF4C()
{
  sub_1B8DD7D14(319, &qword_1ED9CF530);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F9708, type metadata accessor for Searchfoundation_Person, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_2386Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_622_0();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_2387Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_633_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B945C164()
{
  sub_1B8DD7D14(319, qword_1EDA06FD0);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B945C258()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_52_11();
    OUTLINED_FUNCTION_1057();
    sub_1B9458030(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_88_2();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1849Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_194_1();
  v3 = OUTLINED_FUNCTION_699(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1850Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_196_2();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t __swift_get_extra_inhabitant_index_2287Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_639_1();
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v3);
  if (*(v4 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_267_0();
  }

  v8 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_2288Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_586();
    v2 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_259_0();
    }

    v7 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_1B945C534()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1588Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_1589Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B945C758()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_88_2();
    return OUTLINED_FUNCTION_180_1();
  }

  return result;
}

void __swift_get_extra_inhabitant_index_2638Tm()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    OUTLINED_FUNCTION_7_8();
    OUTLINED_FUNCTION_242();
  }

  else
  {
    OUTLINED_FUNCTION_1362();
    v2 = OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_259();
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_128_1(v7);
      if (*(v8 + 84) == v0)
      {
        OUTLINED_FUNCTION_267_0();
      }

      else
      {
        v9 = OUTLINED_FUNCTION_186();
        __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
        OUTLINED_FUNCTION_622_0();
      }
    }

    OUTLINED_FUNCTION_699(v4);
    OUTLINED_FUNCTION_242();

    __swift_getEnumTagSinglePayload(v11, v12, v13);
  }
}

void __swift_store_extra_inhabitant_index_2639Tm()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
    OUTLINED_FUNCTION_242();
  }

  else
  {
    OUTLINED_FUNCTION_1216();
    v2 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v5 = OUTLINED_FUNCTION_198();
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
      OUTLINED_FUNCTION_128_1(v7);
      if (*(v8 + 84) == v0)
      {
        OUTLINED_FUNCTION_259_0();
      }

      else
      {
        v9 = OUTLINED_FUNCTION_186();
        __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
        OUTLINED_FUNCTION_633_0();
      }
    }

    OUTLINED_FUNCTION_61_0(v4);
    OUTLINED_FUNCTION_242();

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

void sub_1B945C9E0()
{
  OUTLINED_FUNCTION_1260();
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_52_11();
    OUTLINED_FUNCTION_12();
    sub_1B9458030(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_52_11();
      OUTLINED_FUNCTION_1057();
      sub_1B9458030(v6, v7, v8, v9);
      if (v10 <= 0x3F)
      {
        OUTLINED_FUNCTION_123_1();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_180_1();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1563Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_622_0();
  v3 = OUTLINED_FUNCTION_699(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B945CC00()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B945CD88()
{
  sub_1B9458030(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B945CEFC()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B945D06C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B945D190()
{
  sub_1B9458030(319, &qword_1ED9D39F0, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1B964C2B0();
    if (v3 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
      v1 = v4;
      if (v5 <= 0x3F)
      {
        sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          sub_1B9458030(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
          v1 = v8;
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1B945D3E0()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_52_11();
    OUTLINED_FUNCTION_1057();
    sub_1B9458030(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_1840Tm()
{
  OUTLINED_FUNCTION_639_1();
  v2 = v1;
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = OUTLINED_FUNCTION_753();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
    OUTLINED_FUNCTION_194_1();
    v5 = v2 + v9;
  }

  return __swift_getEnumTagSinglePayload(v5, v0, v6);
}

uint64_t __swift_store_extra_inhabitant_index_1841Tm()
{
  OUTLINED_FUNCTION_586();
  OUTLINED_FUNCTION_468();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_186();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    OUTLINED_FUNCTION_196_2();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_1B945D5BC()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B945D6D4()
{
  OUTLINED_FUNCTION_734();
  sub_1B9458030(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_88_2();
      OUTLINED_FUNCTION_180_1();
    }
  }
}

uint64_t sub_1B945D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_123_1();
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_180_1();
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_1903Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v2 = OUTLINED_FUNCTION_351_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

void sub_1B945D900()
{
  sub_1B9458030(319, &qword_1ED9D39D8, type metadata accessor for Searchfoundation_RFVisualElement, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9458030(319, &qword_1ED9F8C40, type metadata accessor for Searchfoundation_CommandButtonItem, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B945DA0C()
{
  sub_1B9458030(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_1B9458030(319, &qword_1ED9ED410, type metadata accessor for Searchfoundation_DrillDownMetadata, MEMORY[0x1E69E6720]);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B945DC80()
{
  sub_1B9458030(319, &qword_1ED9F1BD8, type metadata accessor for Searchfoundation_CardSectionValue, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v13 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F97B0, type metadata accessor for Searchfoundation_Card, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v14 = *(v2 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F8BD0, type metadata accessor for Searchfoundation_UserReportRequest, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v15 = *(v4 - 8) + 64;
        sub_1B9458030(319, &qword_1ED9F96D8, type metadata accessor for Searchfoundation_Command, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
          if (v10 <= 0x3F)
          {
            v16 = *(v9 - 8) + 64;
            sub_1B9458030(319, qword_1ED9ECB58, type metadata accessor for Searchfoundation_AppEntityAnnotation, MEMORY[0x1E69E6720]);
            if (v12 <= 0x3F)
            {
              v17 = *(v11 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1B945DFDC()
{
  sub_1B9458030(319, &qword_1ED9F1888, type metadata accessor for Searchfoundation_AppLinkCardSection, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v222 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F0A80, type metadata accessor for Searchfoundation_DescriptionCardSection, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v223 = *(v2 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F06E8, type metadata accessor for Searchfoundation_KeyValueDataCardSection, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v224 = *(v4 - 8) + 64;
        sub_1B9458030(319, &qword_1ED9F1E28, type metadata accessor for Searchfoundation_MapCardSection, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v225 = *(v6 - 8) + 64;
          sub_1B9458030(319, &qword_1ED9F0FD8, type metadata accessor for Searchfoundation_MediaInfoCardSection, MEMORY[0x1E69E6720]);
          if (v9 <= 0x3F)
          {
            v226 = *(v8 - 8) + 64;
            sub_1B9458030(319, &qword_1ED9F0A50, type metadata accessor for Searchfoundation_MediaPlayerCardSection, MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              v227 = *(v10 - 8) + 64;
              sub_1B9458030(319, &qword_1ED9F0BC0, type metadata accessor for Searchfoundation_NowPlayingCardSection, MEMORY[0x1E69E6720]);
              if (v13 <= 0x3F)
              {
                v228 = *(v12 - 8) + 64;
                sub_1B9458030(319, &qword_1ED9F0FC0, type metadata accessor for Searchfoundation_RichTitleCardSection, MEMORY[0x1E69E6720]);
                if (v15 <= 0x3F)
                {
                  v229 = *(v14 - 8) + 64;
                  sub_1B9458030(319, &qword_1ED9F1DE8, type metadata accessor for Searchfoundation_RowCardSection, MEMORY[0x1E69E6720]);
                  if (v17 <= 0x3F)
                  {
                    v230 = *(v16 - 8) + 64;
                    sub_1B9458030(319, &qword_1ED9F0BA8, type metadata accessor for Searchfoundation_ScoreboardCardSection, MEMORY[0x1E69E6720]);
                    if (v19 <= 0x3F)
                    {
                      v231 = *(v18 - 8) + 64;
                      sub_1B9458030(319, &qword_1ED9F0188, type metadata accessor for Searchfoundation_SocialMediaPostCardSection, MEMORY[0x1E69E6720]);
                      if (v21 <= 0x3F)
                      {
                        v232 = *(v20 - 8) + 64;
                        sub_1B9458030(319, &qword_1ED9F0B90, type metadata accessor for Searchfoundation_StockChartCardSection, MEMORY[0x1E69E6720]);
                        if (v23 <= 0x3F)
                        {
                          v233 = *(v22 - 8) + 64;
                          sub_1B9458030(319, &qword_1ED9F03C0, type metadata accessor for Searchfoundation_TableHeaderRowCardSection, MEMORY[0x1E69E6720]);
                          if (v25 <= 0x3F)
                          {
                            v234 = *(v24 - 8) + 64;
                            sub_1B9458030(319, &qword_1ED9F1280, type metadata accessor for Searchfoundation_TableRowCardSection, MEMORY[0x1E69E6720]);
                            if (v27 <= 0x3F)
                            {
                              v235 = *(v26 - 8) + 64;
                              sub_1B9458030(319, &qword_1ED9F0A38, type metadata accessor for Searchfoundation_TextColumnsCardSection, MEMORY[0x1E69E6720]);
                              if (v29 <= 0x3F)
                              {
                                v236 = *(v28 - 8) + 64;
                                sub_1B9458030(319, &qword_1ED9F1AC0, type metadata accessor for Searchfoundation_TitleCardSection, MEMORY[0x1E69E6720]);
                                if (v31 <= 0x3F)
                                {
                                  v237 = *(v30 - 8) + 64;
                                  sub_1B9458030(319, &qword_1ED9F0F90, type metadata accessor for Searchfoundation_TrackListCardSection, MEMORY[0x1E69E6720]);
                                  if (v33 <= 0x3F)
                                  {
                                    v238 = *(v32 - 8) + 64;
                                    sub_1B9458030(319, &qword_1ED9F0590, type metadata accessor for Searchfoundation_AudioPlaybackCardSection, MEMORY[0x1E69E6720]);
                                    if (v35 <= 0x3F)
                                    {
                                      v239 = *(v34 - 8) + 64;
                                      sub_1B9458030(319, &qword_1ED9F1A10, type metadata accessor for Searchfoundation_FlightCardSection, MEMORY[0x1E69E6720]);
                                      if (v37 <= 0x3F)
                                      {
                                        v240 = *(v36 - 8) + 64;
                                        sub_1B9458030(319, &qword_1ED9F0030, type metadata accessor for Searchfoundation_ActivityIndicatorCardSection, MEMORY[0x1E69E6720]);
                                        if (v39 <= 0x3F)
                                        {
                                          v241 = *(v38 - 8) + 64;
                                          sub_1B9458030(319, &qword_1ED9F1DD0, type metadata accessor for Searchfoundation_WebCardSection, MEMORY[0x1E69E6720]);
                                          if (v41 <= 0x3F)
                                          {
                                            v242 = *(v40 - 8) + 64;
                                            sub_1B9458030(319, &qword_1ED9F1860, type metadata accessor for Searchfoundation_MessageCardSection, MEMORY[0x1E69E6720]);
                                            if (v43 <= 0x3F)
                                            {
                                              v243 = *(v42 - 8) + 64;
                                              sub_1B9458030(319, &qword_1ED9F0A68, type metadata accessor for Searchfoundation_DetailedRowCardSection, MEMORY[0x1E69E6720]);
                                              if (v45 <= 0x3F)
                                              {
                                                v244 = *(v44 - 8) + 64;
                                                sub_1B9458030(319, &qword_1ED9F1978, type metadata accessor for Searchfoundation_ImagesCardSection, MEMORY[0x1E69E6720]);
                                                if (v47 <= 0x3F)
                                                {
                                                  v245 = *(v46 - 8) + 64;
                                                  sub_1B9458030(319, &qword_1ED9F0B78, type metadata accessor for Searchfoundation_SuggestionCardSection, MEMORY[0x1E69E6720]);
                                                  if (v49 <= 0x3F)
                                                  {
                                                    v246 = *(v48 - 8) + 64;
                                                    sub_1B9458030(319, &qword_1ED9F03D8, type metadata accessor for Searchfoundation_SelectableGridCardSection, MEMORY[0x1E69E6720]);
                                                    if (v51 <= 0x3F)
                                                    {
                                                      v247 = *(v50 - 8) + 64;
                                                      sub_1B9458030(319, &qword_1ED9F4138, type metadata accessor for Searchfoundation_SectionHeaderCardSection, MEMORY[0x1E69E6720]);
                                                      if (v53 <= 0x3F)
                                                      {
                                                        v248 = *(v52 - 8) + 64;
                                                        sub_1B9458030(319, &qword_1ED9F1298, type metadata accessor for Searchfoundation_MetaInfoCardSection, MEMORY[0x1E69E6720]);
                                                        if (v55 <= 0x3F)
                                                        {
                                                          v249 = *(v54 - 8) + 64;
                                                          sub_1B9458030(319, &qword_1ED9F0F78, type metadata accessor for Searchfoundation_WatchListCardSection, MEMORY[0x1E69E6720]);
                                                          if (v57 <= 0x3F)
                                                          {
                                                            v250 = *(v56 - 8) + 64;
                                                            sub_1B9458030(319, &qword_1ED9F01D0, type metadata accessor for Searchfoundation_MapsDetailedRowCardSection, MEMORY[0x1E69E6720]);
                                                            if (v59 <= 0x3F)
                                                            {
                                                              v251 = *(v58 - 8) + 64;
                                                              sub_1B9458030(319, &qword_1ED9F1A50, type metadata accessor for Searchfoundation_ButtonCardSection, MEMORY[0x1E69E6720]);
                                                              if (v61 <= 0x3F)
                                                              {
                                                                v252 = *(v60 - 8) + 64;
                                                                sub_1B9458030(319, &qword_1ED9F00E8, type metadata accessor for Searchfoundation_HorizontalButtonCardSection, MEMORY[0x1E69E6720]);
                                                                if (v63 <= 0x3F)
                                                                {
                                                                  v253 = *(v62 - 8) + 64;
                                                                  sub_1B9458030(319, &qword_1ED9F03A8, type metadata accessor for Searchfoundation_VerticalLayoutCardSection, MEMORY[0x1E69E6720]);
                                                                  if (v65 <= 0x3F)
                                                                  {
                                                                    v254 = *(v64 - 8) + 64;
                                                                    sub_1B9458030(319, &qword_1ED9F1848, type metadata accessor for Searchfoundation_ProductCardSection, MEMORY[0x1E69E6720]);
                                                                    if (v67 <= 0x3F)
                                                                    {
                                                                      v255 = *(v66 - 8) + 64;
                                                                      sub_1B9458030(319, &qword_1ED9F00D0, type metadata accessor for Searchfoundation_HorizontalScrollCardSection, MEMORY[0x1E69E6720]);
                                                                      if (v69 <= 0x3F)
                                                                      {
                                                                        v256 = *(v68 - 8) + 64;
                                                                        sub_1B9458030(319, &qword_1ED9EFE80, type metadata accessor for Searchfoundation_MediaRemoteControlCardSection, MEMORY[0x1E69E6720]);
                                                                        if (v71 <= 0x3F)
                                                                        {
                                                                          v257 = *(v70 - 8) + 64;
                                                                          sub_1B9458030(319, &qword_1ED9F12B0, type metadata accessor for Searchfoundation_MapPlaceCardSection, MEMORY[0x1E69E6720]);
                                                                          if (v73 <= 0x3F)
                                                                          {
                                                                            v258 = *(v72 - 8) + 64;
                                                                            sub_1B9458030(319, &qword_1ED9F0BE8, type metadata accessor for Searchfoundation_CompactRowCardSection, MEMORY[0x1E69E6720]);
                                                                            if (v75 <= 0x3F)
                                                                            {
                                                                              v259 = *(v74 - 8) + 64;
                                                                              sub_1B9458030(319, &qword_1ED9F1240, type metadata accessor for Searchfoundation_WorldMapCardSection, MEMORY[0x1E69E6720]);
                                                                              if (v77 <= 0x3F)
                                                                              {
                                                                                v260 = *(v76 - 8) + 64;
                                                                                sub_1B9458030(319, &qword_1ED9F0018, type metadata accessor for Searchfoundation_AttributionFooterCardSection, MEMORY[0x1E69E6720]);
                                                                                if (v79 <= 0x3F)
                                                                                {
                                                                                  v261 = *(v78 - 8) + 64;
                                                                                  sub_1B9458030(319, &qword_1ED9F1CD0, type metadata accessor for Searchfoundation_GridCardSection, MEMORY[0x1E69E6720]);
                                                                                  if (v81 <= 0x3F)
                                                                                  {
                                                                                    v262 = *(v80 - 8) + 64;
                                                                                    sub_1B9458030(319, &qword_1ED9F06D0, type metadata accessor for Searchfoundation_PersonHeaderCardSection, MEMORY[0x1E69E6720]);
                                                                                    if (v83 <= 0x3F)
                                                                                    {
                                                                                      v263 = *(v82 - 8) + 64;
                                                                                      sub_1B9458030(319, &qword_1ED9F12F8, type metadata accessor for Searchfoundation_ColorBarCardSection, MEMORY[0x1E69E6720]);
                                                                                      if (v85 <= 0x3F)
                                                                                      {
                                                                                        v264 = *(v84 - 8) + 64;
                                                                                        sub_1B9458030(319, &qword_1ED9F1AF0, type metadata accessor for Searchfoundation_SplitCardSection, MEMORY[0x1E69E6720]);
                                                                                        if (v87 <= 0x3F)
                                                                                        {
                                                                                          v265 = *(v86 - 8) + 64;
                                                                                          sub_1B9458030(319, &qword_1ED9F00B8, type metadata accessor for Searchfoundation_LinkPresentationCardSection, MEMORY[0x1E69E6720]);
                                                                                          if (v89 <= 0x3F)
                                                                                          {
                                                                                            v266 = *(v88 - 8) + 64;
                                                                                            sub_1B9458030(319, &qword_1ED9F1A28, type metadata accessor for Searchfoundation_FindMyCardSection, MEMORY[0x1E69E6720]);
                                                                                            if (v91 <= 0x3F)
                                                                                            {
                                                                                              v267 = *(v90 - 8) + 64;
                                                                                              sub_1B9458030(319, &qword_1ED9F1CB8, type metadata accessor for Searchfoundation_HeroCardSection, MEMORY[0x1E69E6720]);
                                                                                              if (v93 <= 0x3F)
                                                                                              {
                                                                                                v268 = *(v92 - 8) + 64;
                                                                                                sub_1B9458030(319, &qword_1ED9F1C70, type metadata accessor for Searchfoundation_NewsCardSection, MEMORY[0x1E69E6720]);
                                                                                                if (v95 <= 0x3F)
                                                                                                {
                                                                                                  v269 = *(v94 - 8) + 64;
                                                                                                  sub_1B9458030(319, &qword_1ED9F1C88, type metadata accessor for Searchfoundation_MiniCardSection, MEMORY[0x1E69E6720]);
                                                                                                  if (v97 <= 0x3F)
                                                                                                  {
                                                                                                    v270 = *(v96 - 8) + 64;
                                                                                                    sub_1B9458030(319, &qword_1ED9F1CA0, type metadata accessor for Searchfoundation_InfoCardSection, MEMORY[0x1E69E6720]);
                                                                                                    if (v99 <= 0x3F)
                                                                                                    {
                                                                                                      v271 = *(v98 - 8) + 64;
                                                                                                      sub_1B9458030(319, &qword_1ED9F0C18, type metadata accessor for Searchfoundation_CollectionCardSection, MEMORY[0x1E69E6720]);
                                                                                                      if (v101 <= 0x3F)
                                                                                                      {
                                                                                                        v272 = *(v100 - 8) + 64;
                                                                                                        sub_1B9458030(319, &qword_1ED9F12E0, type metadata accessor for Searchfoundation_CombinedCardSection, MEMORY[0x1E69E6720]);
                                                                                                        if (v103 <= 0x3F)
                                                                                                        {
                                                                                                          v273 = *(v102 - 8) + 64;
                                                                                                          sub_1B9458030(319, &qword_1ED9F01A0, type metadata accessor for Searchfoundation_ResponseWrapperCardSection, MEMORY[0x1E69E6720]);
                                                                                                          if (v105 <= 0x3F)
                                                                                                          {
                                                                                                            v274 = *(v104 - 8) + 64;
                                                                                                            sub_1B9458030(319, &qword_1ED9F12C8, type metadata accessor for Searchfoundation_ListenToCardSection, MEMORY[0x1E69E6720]);
                                                                                                            if (v107 <= 0x3F)
                                                                                                            {
                                                                                                              v275 = *(v106 - 8) + 64;
                                                                                                              sub_1B9458030(319, &qword_1ED9F1258, type metadata accessor for Searchfoundation_WatchNowCardSection, MEMORY[0x1E69E6720]);
                                                                                                              if (v109 <= 0x3F)
                                                                                                              {
                                                                                                                v276 = *(v108 - 8) + 64;
                                                                                                                sub_1B9458030(319, &qword_1ED9F0170, type metadata accessor for Searchfoundation_StrokeAnimationCardSection, MEMORY[0x1E69E6720]);
                                                                                                                if (v111 <= 0x3F)
                                                                                                                {
                                                                                                                  v277 = *(v110 - 8) + 64;
                                                                                                                  sub_1B9458030(319, &qword_1ED9F0C30, type metadata accessor for Searchfoundation_ButtonListCardSection, MEMORY[0x1E69E6720]);
                                                                                                                  if (v113 <= 0x3F)
                                                                                                                  {
                                                                                                                    v278 = *(v112 - 8) + 64;
                                                                                                                    sub_1B9458030(319, &qword_1ED9F0C00, type metadata accessor for Searchfoundation_CommandRowCardSection, MEMORY[0x1E69E6720]);
                                                                                                                    if (v115 <= 0x3F)
                                                                                                                    {
                                                                                                                      v279 = *(v114 - 8) + 64;
                                                                                                                      sub_1B9458030(319, &qword_1ED9F01E8, type metadata accessor for Searchfoundation_LeadingTrailingCardSection, MEMORY[0x1E69E6720]);
                                                                                                                      if (v117 <= 0x3F)
                                                                                                                      {
                                                                                                                        v280 = *(v116 - 8) + 64;
                                                                                                                        sub_1B9458030(319, &qword_1ED9F0FF0, type metadata accessor for Searchfoundation_HeroTitleCardSection, MEMORY[0x1E69E6720]);
                                                                                                                        if (v119 <= 0x3F)
                                                                                                                        {
                                                                                                                          v281 = *(v118 - 8) + 64;
                                                                                                                          sub_1B9458030(319, &qword_1ED9F0A98, type metadata accessor for Searchfoundation_ArchiveViewCardSection, MEMORY[0x1E69E6720]);
                                                                                                                          if (v121 <= 0x3F)
                                                                                                                          {
                                                                                                                            v282 = *(v120 - 8) + 64;
                                                                                                                            sub_1B9458030(319, &qword_1ED9F18A0, type metadata accessor for Searchfoundation_AppIconCardSection, MEMORY[0x1E69E6720]);
                                                                                                                            if (v123 <= 0x3F)
                                                                                                                            {
                                                                                                                              v283 = *(v122 - 8) + 64;
                                                                                                                              sub_1B9458030(319, &qword_1ED9EB508, type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection, MEMORY[0x1E69E6720]);
                                                                                                                              if (v125 <= 0x3F)
                                                                                                                              {
                                                                                                                                v284 = *(v124 - 8) + 64;
                                                                                                                                sub_1B9458030(319, qword_1ED9D5380, type metadata accessor for Searchfoundation_SafariTableOfContentsCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                if (v127 <= 0x3F)
                                                                                                                                {
                                                                                                                                  v285 = *(v126 - 8) + 64;
                                                                                                                                  sub_1B9458030(319, &qword_1ED9EF220, type metadata accessor for Searchfoundation_RFSummaryItemShortNumberCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                  if (v129 <= 0x3F)
                                                                                                                                  {
                                                                                                                                    v286 = *(v128 - 8) + 64;
                                                                                                                                    sub_1B9458030(319, &qword_1ED9F0000, type metadata accessor for Searchfoundation_RFSummaryItemTextCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                    if (v131 <= 0x3F)
                                                                                                                                    {
                                                                                                                                      v287 = *(v130 - 8) + 64;
                                                                                                                                      sub_1B9458030(319, &qword_1ED9EFAA8, type metadata accessor for Searchfoundation_RFSummaryItemStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                      if (v133 <= 0x3F)
                                                                                                                                      {
                                                                                                                                        v288 = *(v132 - 8) + 64;
                                                                                                                                        sub_1B9458030(319, &qword_1ED9EFAC0, type metadata accessor for Searchfoundation_RFFactItemShortNumberCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                        if (v135 <= 0x3F)
                                                                                                                                        {
                                                                                                                                          v289 = *(v134 - 8) + 64;
                                                                                                                                          sub_1B9458030(319, &qword_1ED9EFE68, type metadata accessor for Searchfoundation_RFFactItemStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                          if (v137 <= 0x3F)
                                                                                                                                          {
                                                                                                                                            v290 = *(v136 - 8) + 64;
                                                                                                                                            sub_1B9458030(319, &qword_1ED9EFE50, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                            if (v139 <= 0x3F)
                                                                                                                                            {
                                                                                                                                              v291 = *(v138 - 8) + 64;
                                                                                                                                              sub_1B9458030(319, &qword_1ED9EFD88, type metadata accessor for Searchfoundation_RFPrimaryHeaderRichCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                              if (v141 <= 0x3F)
                                                                                                                                              {
                                                                                                                                                v292 = *(v140 - 8) + 64;
                                                                                                                                                sub_1B9458030(319, &qword_1ED9EF238, type metadata accessor for Searchfoundation_RFPrimaryHeaderStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                if (v143 <= 0x3F)
                                                                                                                                                {
                                                                                                                                                  v293 = *(v142 - 8) + 64;
                                                                                                                                                  sub_1B9458030(319, &qword_1ED9EFD70, type metadata accessor for Searchfoundation_RFReferenceFootnoteCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                  if (v145 <= 0x3F)
                                                                                                                                                  {
                                                                                                                                                    v294 = *(v144 - 8) + 64;
                                                                                                                                                    sub_1B9458030(319, &qword_1ED9F01B8, type metadata accessor for Searchfoundation_RFReferenceRichCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                    if (v147 <= 0x3F)
                                                                                                                                                    {
                                                                                                                                                      v295 = *(v146 - 8) + 64;
                                                                                                                                                      sub_1B9458030(319, &qword_1ED9F00A0, type metadata accessor for Searchfoundation_RFSimpleItemRichCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                      if (v149 <= 0x3F)
                                                                                                                                                      {
                                                                                                                                                        v296 = *(v148 - 8) + 64;
                                                                                                                                                        sub_1B9458030(319, &qword_1ED9EFCC8, type metadata accessor for Searchfoundation_RFSimpleItemStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                        if (v151 <= 0x3F)
                                                                                                                                                        {
                                                                                                                                                          v297 = *(v150 - 8) + 64;
                                                                                                                                                          sub_1B9458030(319, &qword_1ED9EB3D0, type metadata accessor for Searchfoundation_RFSummaryItemAlignedTextCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                          if (v153 <= 0x3F)
                                                                                                                                                          {
                                                                                                                                                            v298 = *(v152 - 8) + 64;
                                                                                                                                                            sub_1B9458030(319, &qword_1ED9EB5D0, type metadata accessor for Searchfoundation_RFExpandableStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                            if (v155 <= 0x3F)
                                                                                                                                                            {
                                                                                                                                                              v299 = *(v154 - 8) + 64;
                                                                                                                                                              sub_1B9458030(319, &qword_1ED9D7138, type metadata accessor for Searchfoundation_RFFactItemButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                              if (v157 <= 0x3F)
                                                                                                                                                              {
                                                                                                                                                                v300 = *(v156 - 8) + 64;
                                                                                                                                                                sub_1B9458030(319, &qword_1ED9D5E98, type metadata accessor for Searchfoundation_RFFactItemHeroNumberCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                if (v159 <= 0x3F)
                                                                                                                                                                {
                                                                                                                                                                  v301 = *(v158 - 8) + 64;
                                                                                                                                                                  sub_1B9458030(319, &qword_1ED9D4F98, type metadata accessor for Searchfoundation_RFPrimaryHeaderMarqueeCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                  if (v161 <= 0x3F)
                                                                                                                                                                  {
                                                                                                                                                                    v302 = *(v160 - 8) + 64;
                                                                                                                                                                    sub_1B9458030(319, &qword_1ED9D4200, type metadata accessor for Searchfoundation_RFSummaryItemDetailedTextCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                    if (v163 <= 0x3F)
                                                                                                                                                                    {
                                                                                                                                                                      v303 = *(v162 - 8) + 64;
                                                                                                                                                                      sub_1B9458030(319, &qword_1ED9D65F8, type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                      if (v165 <= 0x3F)
                                                                                                                                                                      {
                                                                                                                                                                        v304 = *(v164 - 8) + 64;
                                                                                                                                                                        sub_1B9458030(319, &qword_1ED9D6C10, type metadata accessor for Searchfoundation_RFSummaryItemPairCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                        if (v167 <= 0x3F)
                                                                                                                                                                        {
                                                                                                                                                                          v305 = *(v166 - 8) + 64;
                                                                                                                                                                          sub_1B9458030(319, &qword_1ED9D4570, type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                          if (v169 <= 0x3F)
                                                                                                                                                                          {
                                                                                                                                                                            v306 = *(v168 - 8) + 64;
                                                                                                                                                                            sub_1B9458030(319, qword_1ED9D43B8, type metadata accessor for Searchfoundation_RFFactItemShortHeroNumberCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                            if (v171 <= 0x3F)
                                                                                                                                                                            {
                                                                                                                                                                              v307 = *(v170 - 8) + 64;
                                                                                                                                                                              sub_1B9458030(319, qword_1ED9D44F0, type metadata accessor for Searchfoundation_RFFactItemDetailedNumberCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                              if (v173 <= 0x3F)
                                                                                                                                                                              {
                                                                                                                                                                                v308 = *(v172 - 8) + 64;
                                                                                                                                                                                sub_1B9458030(319, qword_1ED9D5F08, type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                if (v175 <= 0x3F)
                                                                                                                                                                                {
                                                                                                                                                                                  v309 = *(v174 - 8) + 64;
                                                                                                                                                                                  sub_1B9458030(319, qword_1ED9D5E50, type metadata accessor for Searchfoundation_RFFactItemImageRightCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                  if (v177 <= 0x3F)
                                                                                                                                                                                  {
                                                                                                                                                                                    v310 = *(v176 - 8) + 64;
                                                                                                                                                                                    sub_1B9458030(319, qword_1ED9D5428, type metadata accessor for Searchfoundation_RFSummaryItemSwitchV2CardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                    if (v179 <= 0x3F)
                                                                                                                                                                                    {
                                                                                                                                                                                      v311 = *(v178 - 8) + 64;
                                                                                                                                                                                      sub_1B9458030(319, qword_1ED9D91E0, type metadata accessor for Searchfoundation_RFTableHeaderCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                      if (v181 <= 0x3F)
                                                                                                                                                                                      {
                                                                                                                                                                                        v312 = *(v180 - 8) + 64;
                                                                                                                                                                                        sub_1B9458030(319, qword_1ED9DB2F8, type metadata accessor for Searchfoundation_RFTableRowCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                        if (v183 <= 0x3F)
                                                                                                                                                                                        {
                                                                                                                                                                                          v313 = *(v182 - 8) + 64;
                                                                                                                                                                                          sub_1B9458030(319, qword_1ED9D4270, type metadata accessor for Searchfoundation_RFSimpleItemVisualElementCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                          if (v185 <= 0x3F)
                                                                                                                                                                                          {
                                                                                                                                                                                            v314 = *(v184 - 8) + 64;
                                                                                                                                                                                            sub_1B9458030(319, qword_1ED9D6150, type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                            if (v187 <= 0x3F)
                                                                                                                                                                                            {
                                                                                                                                                                                              v315 = *(v186 - 8) + 64;
                                                                                                                                                                                              sub_1B9458030(319, qword_1ED9D48E8, type metadata accessor for Searchfoundation_RFSummaryItemImageRightCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                              if (v189 <= 0x3F)
                                                                                                                                                                                              {
                                                                                                                                                                                                v316 = *(v188 - 8) + 64;
                                                                                                                                                                                                sub_1B9458030(319, qword_1ED9D6200, type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                if (v191 <= 0x3F)
                                                                                                                                                                                                {
                                                                                                                                                                                                  v317 = *(v190 - 8) + 64;
                                                                                                                                                                                                  sub_1B9458030(319, qword_1ED9D4998, type metadata accessor for Searchfoundation_RFSimpleItemReverseRichCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                  if (v193 <= 0x3F)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    v318 = *(v192 - 8) + 64;
                                                                                                                                                                                                    sub_1B9458030(319, qword_1ED9D3C18, type metadata accessor for Searchfoundation_RFSimpleItemRichSearchResultCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                    if (v195 <= 0x3F)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v319 = *(v194 - 8) + 64;
                                                                                                                                                                                                      sub_1B9458030(319, qword_1ED9D40B8, type metadata accessor for Searchfoundation_RFPrimaryHeaderStackedImageCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                      if (v197 <= 0x3F)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        v320 = *(v196 - 8) + 64;
                                                                                                                                                                                                        sub_1B9458030(319, qword_1ED9D62D0, type metadata accessor for Searchfoundation_RFReferenceItemLogoCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                        if (v199 <= 0x3F)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v321 = *(v198 - 8) + 64;
                                                                                                                                                                                                          sub_1B9458030(319, qword_1ED9D54D8, type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                          if (v201 <= 0x3F)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            v322 = *(v200 - 8) + 64;
                                                                                                                                                                                                            sub_1B9458030(319, qword_1ED9DD6C8, type metadata accessor for Searchfoundation_RFButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                            if (v203 <= 0x3F)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v323 = *(v202 - 8) + 64;
                                                                                                                                                                                                              sub_1B9458030(319, qword_1ED9D8A00, type metadata accessor for Searchfoundation_RFBinaryButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                              if (v205 <= 0x3F)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                v324 = *(v204 - 8) + 64;
                                                                                                                                                                                                                sub_1B9458030(319, qword_1ED9D6368, type metadata accessor for Searchfoundation_RFReferenceCenteredCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                if (v207 <= 0x3F)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v325 = *(v206 - 8) + 64;
                                                                                                                                                                                                                  sub_1B9458030(319, qword_1ED9D4320, type metadata accessor for Searchfoundation_RFSecondaryHeaderStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                  if (v209 <= 0x3F)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    v326 = *(v208 - 8) + 64;
                                                                                                                                                                                                                    sub_1B9458030(319, qword_1ED9D4020, type metadata accessor for Searchfoundation_RFSecondaryHeaderEmphasizedCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                    if (v211 <= 0x3F)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v327 = *(v210 - 8) + 64;
                                                                                                                                                                                                                      sub_1B9458030(319, qword_1ED9DEA40, type metadata accessor for Searchfoundation_RFMapCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                      if (v213 <= 0x3F)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        v328 = *(v212 - 8) + 64;
                                                                                                                                                                                                                        sub_1B9458030(319, &qword_1ED9D6260, type metadata accessor for Searchfoundation_RFReferenceStandardCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                        if (v215 <= 0x3F)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v329 = *(v214 - 8) + 64;
                                                                                                                                                                                                                          sub_1B9458030(319, qword_1ED9D9288, type metadata accessor for Searchfoundation_RFMultiButtonCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                          if (v217 <= 0x3F)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            v330 = *(v216 - 8) + 64;
                                                                                                                                                                                                                            sub_1B9458030(319, qword_1ED9D5570, type metadata accessor for Searchfoundation_RFDisambiguationTitleCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                            if (v219 <= 0x3F)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v331 = *(v218 - 8) + 64;
                                                                                                                                                                                                                              sub_1B9458030(319, qword_1ED9CFCB0, type metadata accessor for Searchfoundation_RFSummaryItemExpandableCardSection, MEMORY[0x1E69E6720]);
                                                                                                                                                                                                                              if (v221 <= 0x3F)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                v332 = *(v220 - 8) + 64;
                                                                                                                                                                                                                                swift_updateClassMetadata2();
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

void sub_1B9460F08()
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        v7 = *(v5 - 8) + 64;
        sub_1B9458030(319, &qword_1ED9F1F90, type metadata accessor for Searchfoundation_FormattedText, MEMORY[0x1E69E6720]);
        if (v9 <= 0x3F)
        {
          v15 = *(v8 - 8) + 64;
          sub_1B9458030(319, &qword_1ED9F2328, type metadata accessor for Searchfoundation_ActionItem, MEMORY[0x1E69E6720]);
          if (v11 <= 0x3F)
          {
            v16 = *(v10 - 8) + 64;
            sub_1B9458030(319, &qword_1ED9F2EA8, type metadata accessor for Searchfoundation_Button, MEMORY[0x1E69E6720]);
            if (v13 <= 0x3F)
            {
              v17 = *(v12 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1B9461250()
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9461430()
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B94615A8()
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v10 = *(v2 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F8C40, type metadata accessor for Searchfoundation_CommandButtonItem, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_1B9458030(319, &qword_1ED9F1CE8, type metadata accessor for Searchfoundation_CollectionStyle, MEMORY[0x1E69E6720]);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B94617E4()
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B94619B8()
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9461B8C()
{
  sub_1B9458030(319, &qword_1ED9F96F0, type metadata accessor for Searchfoundation_Command.OneOf_Value, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F9738, type metadata accessor for Searchfoundation_Topic, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B9458030(319, qword_1ED9ED650, type metadata accessor for Searchfoundation_CommandReference, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9461D38()
{
  sub_1B9458030(319, &qword_1ED9F9518, type metadata accessor for Searchfoundation_SymbolImage, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9ED410, type metadata accessor for Searchfoundation_DrillDownMetadata, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B9461F68()
{
  sub_1B9458030(319, &qword_1ED9F89D8, type metadata accessor for Searchfoundation_PhotosLibraryImage, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F9708, type metadata accessor for Searchfoundation_Person, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F9678, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9462114()
{
  sub_1B9458030(319, &qword_1ED9F9258, type metadata accessor for Searchfoundation_MediaMetadata, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B9458030(319, qword_1ED9EDDB8, type metadata accessor for Searchfoundation_AudioData, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9462258()
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F9258, type metadata accessor for Searchfoundation_MediaMetadata, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B9458030(319, qword_1ED9CC400, type metadata accessor for Searchfoundation_CardSection, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9462428()
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F9240, type metadata accessor for Searchfoundation_WatchListItem, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B946260C()
{
  OUTLINED_FUNCTION_734();
  v0 = OUTLINED_FUNCTION_52_11();
  sub_1B9458030(v0, v1, v2, v3);
  if (v5 <= 0x3F)
  {
    v12 = *(v4 - 8) + 64;
    OUTLINED_FUNCTION_52_11();
    OUTLINED_FUNCTION_1057();
    sub_1B9458030(v6, v7, v8, v9);
    if (v11 <= 0x3F)
    {
      v13 = *(v10 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9462700()
{
  sub_1B9458030(319, &qword_1ED9F9258, type metadata accessor for Searchfoundation_MediaMetadata, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9D85E0, type metadata accessor for Searchfoundation_ToggleButtonConfiguration, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B9458030(319, qword_1ED9EDDB8, type metadata accessor for Searchfoundation_AudioData, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B94628A8()
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F22C8, type metadata accessor for Searchfoundation_SportsTeam, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9462A14()
{
  sub_1B9458030(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9462BD4()
{
  sub_1B9458030(319, &qword_1ED9F1E00, type metadata accessor for Searchfoundation_RFTextProperty, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F1BC0, type metadata accessor for Searchfoundation_RFVisualProperty, MEMORY[0x1E69E6720]);
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F2318, type metadata accessor for Searchfoundation_ButtonItem, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9462D90()
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F2328, type metadata accessor for Searchfoundation_ActionItem, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B9463028()
{
  sub_1B9458030(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    sub_1B9458030(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_1B9458030(319, &qword_1ED9F9678, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_1B9458030(319, &qword_1ED9F96D8, type metadata accessor for Searchfoundation_Command, MEMORY[0x1E69E6720]);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1B9463260()
{
  result = qword_1EBACDF08;
  if (!qword_1EBACDF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACDF08);
  }

  return result;
}

unint64_t sub_1B94632B4()
{
  result = qword_1EBACDF10;
  if (!qword_1EBACDF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACDF10);
  }

  return result;
}

unint64_t sub_1B9463308()
{
  result = qword_1EBACDF18;
  if (!qword_1EBACDF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACDF18);
  }

  return result;
}

unint64_t sub_1B946335C()
{
  result = qword_1EBACDF20;
  if (!qword_1EBACDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACDF20);
  }

  return result;
}

unint64_t sub_1B94633B0()
{
  result = qword_1ED9D2FC8;
  if (!qword_1ED9D2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9D2FC8);
  }

  return result;
}

unint64_t sub_1B9463404()
{
  result = qword_1EBAB5530;
  if (!qword_1EBAB5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB5530);
  }

  return result;
}

unint64_t sub_1B9463458()
{
  result = qword_1EBACDF28;
  if (!qword_1EBACDF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACDF28);
  }

  return result;
}

unint64_t sub_1B94634AC()
{
  result = qword_1EBACDF30;
  if (!qword_1EBACDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACDF30);
  }

  return result;
}

unint64_t sub_1B9463500()
{
  result = qword_1EBACE790;
  if (!qword_1EBACE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACE790);
  }

  return result;
}

void OUTLINED_FUNCTION_37_12(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0xE000000000000000;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 40) = 0;
  *(v2 + 42) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  *(v2 + 64) = 0;
  *(v2 + 72) = v1;
}

uint64_t OUTLINED_FUNCTION_39_13(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = type metadata accessor for Searchfoundation_CardSectionValue(0);
  v4 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_56_10(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = type metadata accessor for Searchfoundation_Command(0);
  v4 = *(v1 + *(result + 20));
  return result;
}

void OUTLINED_FUNCTION_57_14(uint64_t a1@<X8>)
{
  *v2 = a1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0xE000000000000000;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 40) = 0;
  *(v2 + 42) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xE000000000000000;
  *(v2 + 64) = 0;
  *(v2 + 72) = v1;
}

uint64_t OUTLINED_FUNCTION_58_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_64_6(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + *(v3 + 32), 1, 1, v1);
  v4 = v2 + *(v3 + 36);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_65_9(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v3 + *(v2 + 32), 1, 1, v1);
  v4 = v3 + *(v2 + 36);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_81_9(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v2 + *(v3 + 28), 1, 1, v1);
  v4 = v2 + *(v3 + 32);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_82_6(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  __swift_storeEnumTagSinglePayload(v3 + *(v2 + 28), 1, 1, v1);
  v4 = v3 + *(v2 + 32);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_101_6(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  v4 = v2 + *(v3 + 32);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_102_11(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  v4 = v3 + *(v2 + 32);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_119_5(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Searchfoundation_RichTitleCardSection(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_121_4(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, a1);
  v5 = v1 + *(v2 + 28);

  return __swift_storeEnumTagSinglePayload(v5, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_122_4(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, a1);
  v5 = v2 + *(v1 + 28);

  return __swift_storeEnumTagSinglePayload(v5, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_125_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_127_4(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  v4 = v2 + *(v3 + 36);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_128_8()
{
  v2 = *(v0 - 72);

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_131_8(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
  v4 = v3 + *(v2 + 36);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_132_8(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = type metadata accessor for Searchfoundation_DetailedRowCardSection(0);
  v4 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_170_4(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(0);
  v4 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_206_4()
{
  result = type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_209_4()
{
  result = type metadata accessor for Searchfoundation_CardSection(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_216_5()
{
  result = type metadata accessor for Searchfoundation_Card(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_225_6(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_CardSectionValue(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_227_1(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v2 + 84) = v4;
  v5 = *(v1 + v4);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_228_2(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v2 + 72) = v4;
  v5 = *(v1 + v4);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_229_2(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v2 + 72) = v4;
  v5 = *(v1 + v4);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_230_3(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v2 + 72) = v4;
  v5 = *(v1 + v4);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_231_5(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v2 + 64) = v4;
  v5 = *(v1 + v4);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_232_2(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v2 + 80) = v4;
  v5 = *(v1 + v4);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_233_1(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v2 + 80) = v4;
  v5 = *(v1 + v4);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_234_5(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v2 + 80) = v4;
  v5 = *(v1 + v4);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_239_4()
{
  result = type metadata accessor for Searchfoundation_ButtonItem(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_252_1(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_Command(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_264_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_268_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

void OUTLINED_FUNCTION_337_0()
{
  v2 = *(v0 + 88);
  *(v1 + 72) = *(v0 + 80);
  *(v1 + 80) = v2;
}

uint64_t OUTLINED_FUNCTION_392_1(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_395_1(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_DetailedRowCardSection(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_411_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = a1;
  *(v2 + 96) = 0;
  *(v2 + 104) = a1;
  *(v2 + 112) = 0;
  *(v2 + 120) = a1;
  *(v2 + 128) = 0;
  *(v2 + 136) = a1;
  *(v2 + 144) = 0;
  *(v2 + 152) = a1;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 176) = v1;
  v5 = v2 + *(v3 + 64);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_424_1()
{
  v0 = type metadata accessor for Searchfoundation_CardSectionValue._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_429_1(uint64_t a1)
{
  v3 = *(a1 + 20);
  v4 = *(v1 + 56);

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_433_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_436_1(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_442_0(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_447_1()
{
  v0 = type metadata accessor for Searchfoundation_Command._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_449_0(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_CardSection(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

void OUTLINED_FUNCTION_450_1()
{
  v3 = *(v0 + 20);
  v4 = *(v2 + v3);
  v5 = *(v1 + v3);
}

uint64_t OUTLINED_FUNCTION_457_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_460_0()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 72);

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_462_1(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_Card(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_465_0@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  v4 = v1 + *(v2 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_469_0()
{
  v0 = type metadata accessor for Searchfoundation_DetailedRowCardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_473_1(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_ButtonItem(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_478_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  v5 = *(v4 + 36);
  return 0;
}

uint64_t OUTLINED_FUNCTION_480_1()
{
  v0 = type metadata accessor for Searchfoundation_Card._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_487_0()
{
  v0 = type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_488_0@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  v4 = v1 + *(v2 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_645_0()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_646_1(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_RichTitleCardSection(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_649_1()
{
  v2 = *(v0 - 88);

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_654_0()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_655_1()
{
  v4 = (v1 + v2[10]);
  *v4 = 0;
  v4[1] = v0;
  v5 = (v1 + v2[11]);
  *v5 = 0;
  v5[1] = v0;
  v6 = v1 + v2[12];

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_658_0()
{
  v0 = type metadata accessor for Searchfoundation_CardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_659_1()
{
  v0 = type metadata accessor for Searchfoundation_RFFactItemButtonCardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_660_1(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_AttributionFooterCardSection(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_661_1()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

void OUTLINED_FUNCTION_666_1()
{
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_669_1()
{
  v0 = type metadata accessor for Searchfoundation_RichTitleCardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_670_1(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_CommandRowCardSection(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_676_1@<X0>(uint64_t a1@<X8>)
{
  v2[4] = 0;
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = v1;
  v2[8] = 0;
  v2[9] = a1;
  v5 = v2 + *(v3 + 40);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_677_0(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_679_0()
{
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;
  *(v1 + 32) = v0;
  v4 = v1 + *(v2 + 32);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_681_1()
{

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_687_0(uint64_t a1)
{
  v4 = *(a1 + 24);
  *(v2 - 96) = v1;

  return sub_1B8D92024();
}

void OUTLINED_FUNCTION_692_1()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
}

void OUTLINED_FUNCTION_693_1()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
}

uint64_t OUTLINED_FUNCTION_695_1()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_696_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_741_0(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Searchfoundation_CardSectionValue(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_742_0(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Searchfoundation_CardSectionValue(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_749_0()
{
  v2 = *(v0 - 96);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_769@<X0>(uint64_t a1@<X8>)
{
  v1[2] = 0;
  v1[3] = a1;
  v1[4] = 0;
  v1[5] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_774_0(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Searchfoundation_Command(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_791_0()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_804_0()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_813_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
  v5 = *(v4 + 40);
  return 0;
}

uint64_t OUTLINED_FUNCTION_822_0()
{
  result = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_823_0()
{
  result = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_825_0(uint64_t a1)
{
  v2 = *(*a1 + 84);
  v3 = *(*(*a1 + 72) + *(*a1 + 80));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_835_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 - 72) = a3;
  *(v3 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_845_0()
{

  return sub_1B964C850();
}