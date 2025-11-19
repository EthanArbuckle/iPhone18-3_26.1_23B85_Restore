void static Apple_Parsec_Feedback_V2_ErrorFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_280();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(v6);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0760, &qword_1B966F9E8);
  v12 = OUTLINED_FUNCTION_183(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v41 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07A8, &qword_1B966FA48);
  v19 = OUTLINED_FUNCTION_163_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_512_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  OUTLINED_FUNCTION_426_0();
  if (!v27)
  {
    goto LABEL_23;
  }

  v41 = v4;
  v42 = v2;
  v43 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  v44 = v1;
  v25 = *(v43 + 28);
  v26 = *(v5 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_99_0(v24);
  if (v27)
  {
    OUTLINED_FUNCTION_99_0(&v24[v26]);
    if (v27)
    {
      sub_1B8D9207C(v24, &unk_1EBAC0760, &qword_1B966F9E8);
      goto LABEL_13;
    }

LABEL_11:
    v28 = v24;
LABEL_22:
    sub_1B8D9207C(v28, &qword_1EBAC07A8, &qword_1B966FA48);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_606();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_99_0(&v24[v26]);
  if (v27)
  {
    OUTLINED_FUNCTION_154_2();
    sub_1B8FAC5C8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_19();
  v29 = v42;
  sub_1B8FAC528();
  static Apple_Parsec_Feedback_V2_Error.== infix(_:_:)(v17, v29);
  OUTLINED_FUNCTION_544_0();
  sub_1B8FAC5C8();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v24, &unk_1EBAC0760, &qword_1B966F9E8);
  if ((&qword_1B966F9E8 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v30 = v43;
  v31 = *(v43 + 32);
  v32 = *(v5 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_99_0(v3);
  if (!v27)
  {
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_99_0(v3 + v32);
    if (!v33)
    {
      OUTLINED_FUNCTION_11_19();
      sub_1B8FAC528();
      v35 = OUTLINED_FUNCTION_74_7();
      static Apple_Parsec_Feedback_V2_Error.== infix(_:_:)(v35, v36);
      OUTLINED_FUNCTION_544_0();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_236();
      sub_1B8FAC5C8();
      sub_1B8D9207C(v3, &unk_1EBAC0760, &qword_1B966F9E8);
      if ((&unk_1EBAC0760 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    OUTLINED_FUNCTION_154_2();
    sub_1B8FAC5C8();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_99_0(v3 + v32);
  if (!v27)
  {
LABEL_21:
    v28 = v3;
    goto LABEL_22;
  }

  sub_1B8D9207C(v3, &unk_1EBAC0760, &qword_1B966F9E8);
LABEL_26:
  v37 = *(v44 + 8) == *(v0 + 8) && *(v44 + 16) == *(v0 + 16);
  if (v37 || (sub_1B964C9F0() & 1) != 0)
  {
    v38 = *(v30 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_40();
    sub_1B8CD2450(v39, v40);
    OUTLINED_FUNCTION_756();
    v34 = sub_1B964C850();
    goto LABEL_24;
  }

LABEL_23:
  v34 = 0;
LABEL_24:
  OUTLINED_FUNCTION_264(v34);
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Feedback_V2_CustomFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v5)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_295_0(v4);
  if ((MEMORY[0x1BFADC060](v6, *(v3 + 16), *(v2 + 8), *(v2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_491_0();
  if (!sub_1B8D92198(v7, v8, v9))
  {
    return 0;
  }

  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(0);
  OUTLINED_FUNCTION_736(v10);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

void static Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_280();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(v2);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0768, &qword_1B966F9F0);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_79();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07B0, &qword_1B966FA50);
  OUTLINED_FUNCTION_163_4(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_426_0();
  if (!v17)
  {
    goto LABEL_12;
  }

  v25 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0);
  v15 = *(v25 + 24);
  v16 = *(v1 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_50(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_50(v0 + v16);
    if (v17)
    {
      sub_1B8D9207C(v0, &unk_1EBAC0768, &qword_1B966F9F0);
LABEL_15:
      v22 = *(v25 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_40();
      sub_1B8CD2450(v23, v24);
      v18 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0 + v16);
  if (v17)
  {
    OUTLINED_FUNCTION_319_0();
    sub_1B8FAC5C8();
LABEL_11:
    sub_1B8D9207C(v0, &qword_1EBAC07B0, &qword_1B966FA50);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_870();
  v19 = OUTLINED_FUNCTION_246();
  v21 = static Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback.== infix(_:_:)(v19, v20);
  sub_1B8FAC5C8();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v0, &unk_1EBAC0768, &qword_1B966F9F0);
  if (v21)
  {
    goto LABEL_15;
  }

LABEL_12:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v18);
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_112();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v6);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_137();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07B8, &qword_1B966FA58);
  OUTLINED_FUNCTION_163_4(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_176_4();
  if (!v27)
  {
    goto LABEL_28;
  }

  v19 = *(v1 + 8);
  v20 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    switch(v20)
    {
      case 1:
        if (v19 != 1)
        {
          goto LABEL_28;
        }

        goto LABEL_8;
      case 2:
        if (v19 != 2)
        {
          goto LABEL_28;
        }

        goto LABEL_8;
      case 3:
        if (v19 != 3)
        {
          goto LABEL_28;
        }

        goto LABEL_8;
      case 4:
        if (v19 != 4)
        {
          goto LABEL_28;
        }

        goto LABEL_8;
      case 5:
        if (v19 != 5)
        {
          goto LABEL_28;
        }

        goto LABEL_8;
      case 6:
        if (v19 != 6)
        {
          goto LABEL_28;
        }

        goto LABEL_8;
      case 7:
        if (v19 != 7)
        {
          goto LABEL_28;
        }

        goto LABEL_8;
      default:
        if (!v19)
        {
          goto LABEL_8;
        }

        goto LABEL_28;
    }
  }

  if (v19 != v20)
  {
    goto LABEL_28;
  }

LABEL_8:
  v38 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
  v21 = *(v38 + 28);
  v22 = *(v5 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (v27)
  {
    OUTLINED_FUNCTION_37_0(v2 + v22);
    if (v27)
    {
      sub_1B8D9207C(v2, &qword_1EBAC06F0, &qword_1B966F978);
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2 + v22);
  if (v27)
  {
    OUTLINED_FUNCTION_31_12();
    sub_1B8FAC5C8();
LABEL_17:
    v28 = &qword_1EBAC07B8;
    v29 = &qword_1B966FA58;
LABEL_27:
    sub_1B8D9207C(v2, v28, v29);
LABEL_28:
    v26 = 0;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_829();
  v30 = *v4;
  v31 = *v3;
  sub_1B8D8050C();
  if ((v32 & 1) == 0 || (v4[1] == v3[1] ? (v33 = v4[2] == v3[2]) : (v33 = 0), !v33 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_554_0();
    sub_1B8FAC5C8();
    OUTLINED_FUNCTION_763();
    v28 = &qword_1EBAC06F0;
    v29 = &qword_1B966F978;
    goto LABEL_27;
  }

  v34 = *(v7 + 24);
  v35 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v36, v37);
  sub_1B964C850();
  OUTLINED_FUNCTION_157_5();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_730();
  sub_1B8D9207C(v2, &qword_1EBAC06F0, &qword_1B966F978);
  if ((v35 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_13:
  v23 = *(v38 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v24, v25);
  v26 = OUTLINED_FUNCTION_199_0();
LABEL_29:
  OUTLINED_FUNCTION_264(v26);
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Feedback_V2_ClearInputFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v4 = *(v3 + 8);
  v6 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    switch(v6)
    {
      case 1:
        if (v4 == 1)
        {
          goto LABEL_8;
        }

        return 0;
      case 2:
        if (v4 == 2)
        {
          goto LABEL_8;
        }

        return 0;
      case 3:
        if (v4 == 3)
        {
          goto LABEL_8;
        }

        return 0;
      default:
        if (v4)
        {
          return 0;
        }

        goto LABEL_8;
    }
  }

  if (v4 != v6)
  {
    return 0;
  }

LABEL_8:
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(0);
  OUTLINED_FUNCTION_188_1(v8);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

void static Apple_Parsec_Feedback_V2_SectionEngagementFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB9178, &unk_1B964D960);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9180, &unk_1B966FA10);
  OUTLINED_FUNCTION_163_4(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_426_0();
  if (!v18)
  {
    goto LABEL_15;
  }

  v29 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
  v16 = *(v29 + 28);
  v17 = *(v2 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_99_0(v1);
  if (v18)
  {
    OUTLINED_FUNCTION_99_0(v1 + v17);
    if (v18)
    {
      sub_1B8D9207C(v1, &unk_1EBAB9178, &unk_1B964D960);
      goto LABEL_13;
    }

LABEL_11:
    sub_1B8D9207C(v1, &qword_1EBAB9180, &unk_1B966FA10);
LABEL_15:
    v28 = 0;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_99_0(v1 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_156_5();
    sub_1B8FAC5C8();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_196();
  static Apple_Parsec_Feedback_V2_ResultSectionForFeedback.== infix(_:_:)();
  v20 = v19;
  OUTLINED_FUNCTION_579_0();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_730();
  sub_1B8D9207C(v1, &unk_1EBAB9178, &unk_1B964D960);
  if ((v20 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v21 = *(v0 + 8);
  OUTLINED_FUNCTION_641_0();
  if (!sub_1B8D92198(v22, v23, v24))
  {
    goto LABEL_15;
  }

  v25 = *(v29 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v26, v27);
  v28 = OUTLINED_FUNCTION_634();
LABEL_16:
  OUTLINED_FUNCTION_264(v28);
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_227_0(a1, a2);
  if (v8)
  {
    OUTLINED_FUNCTION_468();
    v3 = *(v2 + 8);
    v5 = *(v4 + 8);
    if (*(v4 + 16) == 1)
    {
      switch(v5)
      {
        case 1:
          if (v3 != 1)
          {
            return 0;
          }

          goto LABEL_8;
        case 2:
          if (v3 != 2)
          {
            return 0;
          }

          goto LABEL_8;
        case 3:
          if (v3 != 3)
          {
            return 0;
          }

          goto LABEL_8;
        default:
          if (!v3)
          {
            goto LABEL_8;
          }

          return 0;
      }
    }

    if (v3 == v5)
    {
LABEL_8:
      OUTLINED_FUNCTION_226_0();
      v8 = v8 && v6 == v7;
      if (v8 || (sub_1B964C9F0() & 1) != 0)
      {
        v9 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(0);
        OUTLINED_FUNCTION_736(v9);
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v10, v11);
        return OUTLINED_FUNCTION_634() & 1;
      }
    }
  }

  return 0;
}

uint64_t static Apple_Parsec_Feedback_V2_DidGoToSiteFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_142_2(v2, v3);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_491_0();
  if (!sub_1B8D92198(v7, v8, v9))
  {
    return 0;
  }

  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(0);
  OUTLINED_FUNCTION_736(v10);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_142_2(v2, v3);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_491_0();
  if (!sub_1B8D92198(v7, v8, v9))
  {
    return 0;
  }

  v10 = OUTLINED_FUNCTION_625_0();
  if (!sub_1B8D92198(v10, v11, v12))
  {
    return 0;
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  OUTLINED_FUNCTION_764(v13);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v14, v15);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F87394(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = OUTLINED_FUNCTION_295_0(v2);
  if ((v8(v6, *(v7 + 8)) & 1) == 0)
  {
    return 0;
  }

  v9 = v5(0);
  OUTLINED_FUNCTION_188_1(v9);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

void static Apple_Parsec_Feedback_V2_ResultGradingFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_112();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_173();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9170, &qword_1B964D958);
  OUTLINED_FUNCTION_163_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_340_0();
  if (!v19)
  {
    goto LABEL_23;
  }

  v17 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0) + 32);
  v18 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v19)
  {
    OUTLINED_FUNCTION_467();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_37_0(v2 + v18);
    if (!v19)
    {
      OUTLINED_FUNCTION_2_21();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_853();
      if (v22 || (, , v23 = OUTLINED_FUNCTION_616(), sub_1B8FB7DA4(v23, v24), OUTLINED_FUNCTION_813(), , (&qword_1B964D950 & 1) != 0))
      {
        v25 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v26, v27);
        OUTLINED_FUNCTION_259();
        sub_1B964C850();
        OUTLINED_FUNCTION_146_2();
        sub_1B8FAC5C8();
        OUTLINED_FUNCTION_686();
        sub_1B8FAC5C8();
        sub_1B8D9207C(v2, &qword_1EBAB9168, &qword_1B964D950);
        if (v25)
        {
          goto LABEL_16;
        }

LABEL_23:
        v32 = 0;
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_155_3();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_197();
      sub_1B8FAC5C8();
      v20 = &qword_1EBAB9168;
      v21 = &qword_1B964D950;
LABEL_12:
      sub_1B8D9207C(v2, v20, v21);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_13_13();
    sub_1B8FAC5C8();
LABEL_11:
    v20 = &qword_1EBAB9170;
    v21 = &qword_1B964D958;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_37_0(v2 + v18);
  if (!v19)
  {
    goto LABEL_11;
  }

  sub_1B8D9207C(v2, &qword_1EBAB9168, &qword_1B964D950);
LABEL_16:
  v28 = *(v0 + 16);
  if (!sub_1B8D92198(*(v1 + 8), *(v1 + 16), *(v0 + 8)))
  {
    goto LABEL_23;
  }

  v29 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v29 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_628();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v30, v31);
  v32 = OUTLINED_FUNCTION_199_0();
LABEL_24:
  OUTLINED_FUNCTION_264(v32);
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_112();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Range(v6);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0770, &unk_1B966F9F8);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_173();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07C0, &qword_1B966FA60);
  OUTLINED_FUNCTION_163_4(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_340_0();
  if (!v37)
  {
    goto LABEL_31;
  }

  v19 = *(type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0) + 40);
  v20 = *(v5 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2);
  if (v37)
  {
    OUTLINED_FUNCTION_37_0(v2 + v20);
    if (v37)
    {
      sub_1B8D9207C(v2, &qword_1EBAC0770, &unk_1B966F9F8);
      goto LABEL_8;
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_467();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2 + v20);
  if (v37)
  {
    OUTLINED_FUNCTION_317_0();
    sub_1B8FAC5C8();
LABEL_24:
    v38 = &qword_1EBAC07C0;
    v39 = &qword_1B966FA60;
LABEL_30:
    sub_1B8D9207C(v2, v38, v39);
LABEL_31:
    v36 = 0;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_43_5();
  sub_1B8FAC528();
  if (*v4 != *v3 || v4[1] != v3[1])
  {
    sub_1B8FAC5C8();
    OUTLINED_FUNCTION_197();
    sub_1B8FAC5C8();
    v38 = &qword_1EBAC0770;
    v39 = &unk_1B966F9F8;
    goto LABEL_30;
  }

  v40 = *(v7 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v41, v42);
  v43 = sub_1B964C850();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_686();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v2, &qword_1EBAC0770, &unk_1B966F9F8);
  if ((v43 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_8:
  v21 = *(v1 + 8);
  v22 = *(v1 + 16);
  OUTLINED_FUNCTION_524_0();
  if (v37)
  {
    v25 = v23 == v24;
  }

  else
  {
    v25 = 0;
  }

  if (!v25 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_31;
  }

  if (*(v1 + 24) != *(v0 + 24))
  {
    goto LABEL_31;
  }

  v26 = OUTLINED_FUNCTION_851();
  if (!sub_1B8D92198(v26, v27, v28))
  {
    goto LABEL_31;
  }

  v29 = *(v1 + 48);
  v30 = *(v1 + 56);
  OUTLINED_FUNCTION_850();
  v33 = v37 && v31 == v32;
  if (!v33 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_814();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v34, v35);
  v36 = OUTLINED_FUNCTION_199_0();
LABEL_32:
  OUTLINED_FUNCTION_264(v36);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8F87A6C(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_280();
  v5 = v4(v3);
  OUTLINED_FUNCTION_871(v5);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Feedback_V2_SessionEndFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v4 = *(v3 + 8);
  v6 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    switch(v6)
    {
      case 1:
        if (v4 == 1)
        {
          goto LABEL_8;
        }

        return 0;
      case 2:
        if (v4 == 2)
        {
          goto LABEL_8;
        }

        return 0;
      case 3:
        if (v4 == 3)
        {
          goto LABEL_8;
        }

        return 0;
      case 4:
        if (v4 == 4)
        {
          goto LABEL_8;
        }

        return 0;
      case 5:
        if (v4 == 5)
        {
          goto LABEL_8;
        }

        return 0;
      case 6:
        if (v4 == 6)
        {
          goto LABEL_8;
        }

        return 0;
      case 7:
        if (v4 == 7)
        {
          goto LABEL_8;
        }

        return 0;
      case 8:
        if (v4 == 8)
        {
          goto LABEL_8;
        }

        return 0;
      default:
        if (v4)
        {
          return 0;
        }

        goto LABEL_8;
    }
  }

  if (v4 != v6)
  {
    return 0;
  }

LABEL_8:
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(0);
  OUTLINED_FUNCTION_188_1(v8);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

void static Apple_Parsec_Feedback_V2_CardViewAppearFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_112();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v6);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_173();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07B8, &qword_1B966FA58);
  OUTLINED_FUNCTION_163_4(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_176_4();
  if (!v29)
  {
    goto LABEL_29;
  }

  v19 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0) + 32);
  v20 = *(v5 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2);
  if (v29)
  {
    OUTLINED_FUNCTION_37_0(v2 + v20);
    if (v29)
    {
      sub_1B8D9207C(v2, &qword_1EBAC06F0, &qword_1B966F978);
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2 + v20);
  if (v29)
  {
    OUTLINED_FUNCTION_31_12();
    sub_1B8FAC5C8();
LABEL_18:
    v30 = &qword_1EBAC07B8;
    v31 = &qword_1B966FA58;
LABEL_28:
    sub_1B8D9207C(v2, v30, v31);
LABEL_29:
    v28 = 0;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_6_13();
  sub_1B8FAC528();
  v32 = *v4;
  v33 = *v3;
  sub_1B8D8050C();
  if ((v34 & 1) == 0 || (v4[1] == v3[1] ? (v35 = v4[2] == v3[2]) : (v35 = 0), !v35 && (sub_1B964C9F0() & 1) == 0))
  {
    OUTLINED_FUNCTION_554_0();
    sub_1B8FAC5C8();
    OUTLINED_FUNCTION_197();
    sub_1B8FAC5C8();
    v30 = &qword_1EBAC06F0;
    v31 = &qword_1B966F978;
    goto LABEL_28;
  }

  v36 = *(v7 + 24);
  v37 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v38, v39);
  sub_1B964C850();
  OUTLINED_FUNCTION_157_5();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_686();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v2, &qword_1EBAC06F0, &qword_1B966F978);
  if ((v37 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  if (*(v1 + 8) != *(v0 + 8))
  {
    goto LABEL_29;
  }

  v21 = *(v1 + 16);
  v22 = *(v1 + 24);
  OUTLINED_FUNCTION_265_0();
  v25 = v29 && v23 == v24;
  if (!v25 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_628();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v26, v27);
  v28 = OUTLINED_FUNCTION_199_0();
LABEL_30:
  OUTLINED_FUNCTION_264(v28);
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Feedback_V2_SkipSearchFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_227_0(a1, a2);
  if (v8)
  {
    OUTLINED_FUNCTION_142_2(v4, v5);
    v8 = v8 && v6 == v7;
    if (v8 || (sub_1B964C9F0() & 1) != 0)
    {
      v9 = v3[3];
      v10 = *(v2 + 24);
      if (*(v2 + 32) == 1)
      {
        switch(v10)
        {
          case 1:
            if (v9 != 1)
            {
              return 0;
            }

            goto LABEL_13;
          case 2:
            if (v9 != 2)
            {
              return 0;
            }

            goto LABEL_13;
          case 3:
            if (v9 != 3)
            {
              return 0;
            }

            goto LABEL_13;
          case 4:
            if (v9 != 4)
            {
              return 0;
            }

            goto LABEL_13;
          case 5:
            if (v9 != 5)
            {
              return 0;
            }

            goto LABEL_13;
          case 6:
            if (v9 != 6)
            {
              return 0;
            }

            goto LABEL_13;
          default:
            if (!v9)
            {
              goto LABEL_13;
            }

            return 0;
        }
      }

      if (v9 == v10)
      {
LABEL_13:
        OUTLINED_FUNCTION_727();
        v13 = v8 && v11 == v12;
        if (v13 || (sub_1B964C9F0() & 1) != 0)
        {
          v14 = v3[7] == *(v2 + 56) && v3[8] == *(v2 + 64);
          if (v14 || (sub_1B964C9F0() & 1) != 0)
          {
            OUTLINED_FUNCTION_737();
            v17 = v8 && v15 == v16;
            if (v17 || (sub_1B964C9F0() & 1) != 0)
            {
              v18 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0);
              OUTLINED_FUNCTION_868(v18);
              OUTLINED_FUNCTION_0_40();
              sub_1B8CD2450(v19, v20);
              return OUTLINED_FUNCTION_634() & 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t static Apple_Parsec_Feedback_V2_CacheHitFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_227_0(a1, a2);
  if (v8)
  {
    OUTLINED_FUNCTION_142_2(v4, v5);
    v8 = v8 && v6 == v7;
    if (v8 || (sub_1B964C9F0() & 1) != 0)
    {
      v9 = *(v3 + 24);
      v10 = *(v2 + 24);
      if (*(v2 + 32) == 1)
      {
        switch(v10)
        {
          case 1:
            if (v9 != 1)
            {
              return 0;
            }

            goto LABEL_13;
          case 2:
            if (v9 != 2)
            {
              return 0;
            }

            goto LABEL_13;
          case 3:
            if (v9 != 3)
            {
              return 0;
            }

            goto LABEL_13;
          case 4:
            if (v9 != 4)
            {
              return 0;
            }

            goto LABEL_13;
          case 5:
            if (v9 != 5)
            {
              return 0;
            }

            goto LABEL_13;
          case 6:
            if (v9 != 6)
            {
              return 0;
            }

            goto LABEL_13;
          default:
            if (!v9)
            {
              goto LABEL_13;
            }

            return 0;
        }
      }

      if (v9 == v10)
      {
LABEL_13:
        OUTLINED_FUNCTION_727();
        v13 = v8 && v11 == v12;
        if (v13 || (sub_1B964C9F0() & 1) != 0)
        {
          v14 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
          OUTLINED_FUNCTION_764(v14);
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v15, v16);
          return OUTLINED_FUNCTION_634() & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t static Apple_Parsec_Feedback_V2_CBAEngagementFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_227_0(a1, a2);
  if (v10)
  {
    OUTLINED_FUNCTION_468();
    if (*(v4 + 8) == *(v5 + 8))
    {
      v6 = *(v3 + 16);
      v7 = *(v2 + 16);
      if (*(v2 + 24) == 1)
      {
        switch(v7)
        {
          case 1:
            if (v6 != 1)
            {
              return 0;
            }

            goto LABEL_9;
          case 2:
            if (v6 != 2)
            {
              return 0;
            }

            goto LABEL_9;
          case 3:
            if (v6 != 3)
            {
              return 0;
            }

            goto LABEL_9;
          default:
            if (!v6)
            {
              goto LABEL_9;
            }

            return 0;
        }
      }

      if (v6 == v7)
      {
LABEL_9:
        OUTLINED_FUNCTION_40_5();
        v10 = v10 && v8 == v9;
        if (v10 || (sub_1B964C9F0() & 1) != 0)
        {
          v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
          OUTLINED_FUNCTION_764(v11);
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v12, v13);
          return OUTLINED_FUNCTION_634() & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t static Apple_Parsec_Feedback_V2_ClientTimingFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_142_2(v4, v5);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_226_0();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_726();
  if (!v8 || *(v3 + 48) != *(v2 + 48))
  {
    return 0;
  }

  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(0);
  OUTLINED_FUNCTION_830(v12);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v13, v14);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_142_2(v4, v5);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v3 + 24);
  v10 = *(v2 + 24);
  sub_1B8D7F7FC();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  OUTLINED_FUNCTION_736(v12);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v13, v14);
  return OUTLINED_FUNCTION_634() & 1;
}

void static Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_280();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0728, &qword_1B966F9B0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07C8, &qword_1B966FA68);
  OUTLINED_FUNCTION_163_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_426_0();
  if (!v19 || *(v1 + 8) != *(v0 + 8))
  {
    goto LABEL_13;
  }

  v17 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0) + 32);
  v18 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_99_0(v2);
  if (!v19)
  {
    OUTLINED_FUNCTION_690();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_99_0(v2 + v18);
    if (!v19)
    {
      OUTLINED_FUNCTION_50_6();
      sub_1B8FAC528();
      v21 = OUTLINED_FUNCTION_541_0();
      v23 = static Apple_Parsec_Feedback_V2_CounterfactualInfo.== infix(_:_:)(v21, v22);
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_730();
      sub_1B8D9207C(v2, &qword_1EBAC0728, &qword_1B966F9B0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_333_0();
    sub_1B8FAC5C8();
LABEL_12:
    sub_1B8D9207C(v2, &qword_1EBAC07C8, &qword_1B966FA68);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_99_0(v2 + v18);
  if (!v19)
  {
    goto LABEL_12;
  }

  sub_1B8D9207C(v2, &qword_1EBAC0728, &qword_1B966F9B0);
LABEL_16:
  OUTLINED_FUNCTION_84_1();
  if (v19)
  {
    v26 = v24 == v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_628();
    OUTLINED_FUNCTION_0_40();
    sub_1B8CD2450(v27, v28);
    v20 = OUTLINED_FUNCTION_634();
    goto LABEL_14;
  }

LABEL_13:
  v20 = 0;
LABEL_14:
  OUTLINED_FUNCTION_264(v20);
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(v1);
  OUTLINED_FUNCTION_274_1(v2);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(0);
  *(v0 + *(v3 + 20)) = 0;
  return OUTLINED_FUNCTION_279(v3);
}

uint64_t Apple_Parsec_Feedback_V2_SkipSearchFeedback.treatmentID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_SkipSearchFeedback.treatmentID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SkipSearchFeedback.experimentNamespaceID.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_SkipSearchFeedback.experimentNamespaceID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SkipSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CacheHitFeedback.uuid.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_CacheHitFeedback.uuid.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CacheHitFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentInfo.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  *(a1 + 48) = 0;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0);
  return OUTLINED_FUNCTION_694_0(v2);
}

void sub_1B8F88B2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_ClientSession.agent.setter();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.agent.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v4) + 20);
  *(v1 + 72) = v5;
  OUTLINED_FUNCTION_249_1(v5);
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F88C58()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v7);
  if (v9)
  {
    v10 = v8;
    OUTLINED_FUNCTION_191();
    v11 = OUTLINED_FUNCTION_461();
    v10(v11);
    v12 = *(v0 + 56);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_151_1();
    v14 = *(v6 + v1);
    if ((v13 & 1) == 0)
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 64);
      v17 = v5(0);
      OUTLINED_FUNCTION_57_0(v17);
      swift_allocObject();
      v18 = OUTLINED_FUNCTION_40_0();
      v19 = v4(v18);
      OUTLINED_FUNCTION_228_1(v19);
    }

    OUTLINED_FUNCTION_59_3();
    v20 = *(v14 + 24);
    *(v14 + 16) = v3;
    *(v14 + 24) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v21);
}

uint64_t sub_1B8F88D20()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F88D6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_ClientSession.userGuidString.setter();
}

void sub_1B8F88DEC()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_11_13();
  v10 = v9(v8);
  v11 = OUTLINED_FUNCTION_216_1(v10);
  v12 = *(v1 + v3);
  if ((v11 & 1) == 0)
  {
    v13 = v7(0);
    OUTLINED_FUNCTION_57_0(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = v5(v14);
    OUTLINED_FUNCTION_192_2(v15);
  }

  OUTLINED_FUNCTION_9_3();
  v16 = *(v12 + 40);
  *(v12 + 32) = v2;
  *(v12 + 40) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.userGuidString.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_374_0();
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F88F18()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v7);
  if (v9)
  {
    v10 = v8;
    OUTLINED_FUNCTION_191();
    v11 = OUTLINED_FUNCTION_461();
    v10(v11);
    v12 = *(v0 + 56);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_151_1();
    v14 = *(v6 + v1);
    if ((v13 & 1) == 0)
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 64);
      v17 = v5(0);
      OUTLINED_FUNCTION_57_0(v17);
      swift_allocObject();
      v18 = OUTLINED_FUNCTION_40_0();
      v19 = v4(v18);
      OUTLINED_FUNCTION_228_1(v19);
    }

    OUTLINED_FUNCTION_59_3();
    v20 = *(v14 + 40);
    *(v14 + 32) = v3;
    *(v14 + 40) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v21);
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.resourceVersions.getter()
{
  OUTLINED_FUNCTION_258_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 48);
}

uint64_t sub_1B8F89004(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Feedback_V2_ClientSession.resourceVersions.setter();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.resourceVersions.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_342_0();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FFC7AC(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 48);
  *(v6 + 48) = v0;
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.resourceVersions.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_258_1();
  *(v1 + 64) = v4;
  OUTLINED_FUNCTION_346_0(v4);
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F89100(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Apple_Parsec_Feedback_V2_ClientSession.resourceVersions.setter();
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
      OUTLINED_FUNCTION_342_0();
      v14 = OUTLINED_FUNCTION_40_0();
      v15 = sub_1B8FFC7AC(v14);
      OUTLINED_FUNCTION_15(v15);
    }

    OUTLINED_FUNCTION_59_3();
    v16 = *(v11 + 48);
    *(v11 + 48) = v3;
  }

  free(v2);
}

double Apple_Parsec_Feedback_V2_ClientSession.sessionStart.getter()
{
  OUTLINED_FUNCTION_258_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 56);
}

void Apple_Parsec_Feedback_V2_ClientSession.sessionStart.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = v2;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(0);
  v5 = OUTLINED_FUNCTION_728(v4);
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_342_0();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FFC7AC(v7);
    OUTLINED_FUNCTION_16_3(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 56) = v3;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.sessionStart.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v4);
  OUTLINED_FUNCTION_225_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F892AC()
{
  OUTLINED_FUNCTION_32_3();
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_342_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8FFC7AC(v10);
    OUTLINED_FUNCTION_15(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 56) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v12);
}

void Apple_Parsec_Feedback_V2_ClientSession.previousSessionEndReason.getter()
{
  OUTLINED_FUNCTION_258_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_66_2(*(v2 + 64));
}

void Apple_Parsec_Feedback_V2_ClientSession.previousSessionEndReason.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_275_1(v4);
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v5);
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_342_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FFC7AC(v9);
    OUTLINED_FUNCTION_72_2(v10);
  }

  OUTLINED_FUNCTION_9_3();
  *(v8 + 64) = v1;
  *(v8 + 72) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.previousSessionEndReason.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v3);
  OUTLINED_FUNCTION_21_8(v4);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v0 + 72);
  OUTLINED_FUNCTION_71_2(*(v0 + 64));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F89454()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_7_14(v5);
  v6 = OUTLINED_FUNCTION_459_0();
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_342_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8FFC7AC(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 64) = v2;
  *(v7 + 72) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

uint64_t sub_1B8F894F4()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 73);
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.removeTimestamps.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_342_0();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FFC7AC(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 73) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.removeTimestamps.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v4);
  OUTLINED_FUNCTION_124_0(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 73);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F895F8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_232_0();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FFC7AC(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 73) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.parsecDeveloperID.getter()
{
  OUTLINED_FUNCTION_258_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F896C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_ClientSession.parsecDeveloperID.setter();
}

void Apple_Parsec_Feedback_V2_ClientSession.parsecDeveloperID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_342_0();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FFC7AC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v7 + 88);
  *(v7 + 80) = v2;
  *(v7 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.parsecDeveloperID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F897D0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_ClientSession.parsecDeveloperID.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_342_0();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8FFC7AC(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 88);
    *(v9 + 80) = v4;
    *(v9 + 88) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.duEnabled.getter()
{
  OUTLINED_FUNCTION_258_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 96);
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.duEnabled.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_342_0();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FFC7AC(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 96) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.duEnabled.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v4);
  OUTLINED_FUNCTION_124_0(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F89960(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_232_0();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FFC7AC(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 96) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.countryCode.getter()
{
  OUTLINED_FUNCTION_258_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 104);
  v4 = *(v2 + 112);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F89A28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_ClientSession.countryCode.setter();
}

void Apple_Parsec_Feedback_V2_ClientSession.countryCode.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_342_0();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FFC7AC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v7 + 112);
  *(v7 + 104) = v2;
  *(v7 + 112) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.countryCode.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 112);
  *(v1 + 48) = *(v0 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F89B38(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_ClientSession.countryCode.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_342_0();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8FFC7AC(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 112);
    *(v9 + 104) = v4;
    *(v9 + 112) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.locale.getter()
{
  OUTLINED_FUNCTION_258_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 120);
  v4 = *(v2 + 128);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F89C10(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_ClientSession.locale.setter();
}

void Apple_Parsec_Feedback_V2_ClientSession.locale.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_342_0();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FFC7AC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v7 + 128);
  *(v7 + 120) = v2;
  *(v7 + 128) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.locale.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 128);
  *(v1 + 48) = *(v0 + 120);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F89D20(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_ClientSession.locale.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_342_0();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8FFC7AC(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 128);
    *(v9 + 120) = v4;
    *(v9 + 128) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.usageSinceLookback.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6E40 != -1)
    {
      OUTLINED_FUNCTION_263_1();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC07D0, &qword_1B966FA70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_13();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.usageSinceLookback.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D0, &qword_1B966FA70);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_342_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8FFC7AC(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  OUTLINED_FUNCTION_65_1(v12);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_ClientSession.usageSinceLookback.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v15);
  OUTLINED_FUNCTION_77_0(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB6E40 != -1)
    {
      OUTLINED_FUNCTION_263_1();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC07D0, &qword_1B966FA70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_13();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.hasUsageSinceLookback.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_ClientSession.clearUsageSinceLookback()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D0, &qword_1B966FA70);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_342_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8FFC7AC(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.cohortsFeedback.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_31_2();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_864();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
    OUTLINED_FUNCTION_709_0();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    *(a1 + v11[5]) = 0;
    *(a1 + v11[6]) = 0;
    *(a1 + v11[7]) = 0;
    *(a1 + v11[8]) = 0;
    *(a1 + v11[9]) = xmmword_1B9652FE0;
    v17 = a1 + v11[10];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = v11[11];
    type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC07D8, &unk_1B966FA78);
    }
  }

  else
  {
    OUTLINED_FUNCTION_332_0();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.cohortsFeedback.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D8, &unk_1B966FA78);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_342_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8FFC7AC(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_332_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  OUTLINED_FUNCTION_65_1(v12);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(v1);
  OUTLINED_FUNCTION_274_1(v2);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  *(v0 + v3[5]) = 0;
  *(v0 + v3[6]) = 0;
  *(v0 + v3[7]) = 0;
  *(v0 + v3[8]) = 0;
  *(v0 + v3[9]) = xmmword_1B9652FE0;
  OUTLINED_FUNCTION_723_0(v3);
  v4 = v3[11];
  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Feedback_V2_ClientSession.cohortsFeedback.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_224_2(v15);
  v17 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v16);
  OUTLINED_FUNCTION_77_0(v17);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    *(v12 + v0[5]) = 0;
    *(v12 + v0[6]) = 0;
    *(v12 + v0[7]) = 0;
    *(v12 + v0[8]) = 0;
    *(v12 + v0[9]) = xmmword_1B9652FE0;
    v23 = v12 + v0[10];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v24 = v0[11];
    type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
    OUTLINED_FUNCTION_756();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    OUTLINED_FUNCTION_17_2();
    if (!v18)
    {
      sub_1B8D9207C(v1, &qword_1EBAC07D8, &unk_1B966FA78);
    }
  }

  else
  {
    OUTLINED_FUNCTION_332_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.hasCohortsFeedback.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_ClientSession.clearCohortsFeedback()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D8, &unk_1B966FA78);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_342_0();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8FFC7AC(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.devicePersistentD20.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.privateRelayStatus.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.isInternalCarry.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F8AB84(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Feedback_V2_ClientSession.experimentInfo.setter();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.experimentInfo.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_258_1();
  *(v1 + 64) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v5 + v6);

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.searchOptOut.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F8ADD8()
{
  v0 = OUTLINED_FUNCTION_428_0();
  v2 = v1(v0);
  OUTLINED_FUNCTION_478_0(v2);
  v5 = (v3 + v4);
  OUTLINED_FUNCTION_6_2();
  v7 = *v5;
  v6 = v5[1];
  v8 = OUTLINED_FUNCTION_288();
  sub_1B8D91FCC(v8, v9);
  return OUTLINED_FUNCTION_288();
}

void sub_1B8F8AEB0()
{
  OUTLINED_FUNCTION_184_0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v11 = OUTLINED_FUNCTION_112();
  v13 = v12(v11);
  OUTLINED_FUNCTION_704_0(v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = v9(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v15 = v7(v17);
    *(v10 + v3) = v15;
  }

  v18 = (v15 + *v5);
  OUTLINED_FUNCTION_211_0();
  v19 = *v18;
  v20 = v18[1];
  *v18 = v2;
  v18[1] = v0;
  sub_1B8D538A0(v19, v20);
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.jsonFeedback.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession(v4);
  OUTLINED_FUNCTION_254_1(v5);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F8B020()
{
  v2 = OUTLINED_FUNCTION_428_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_308_0(v4);
  v5 = *(v1 + v0);
}

void sub_1B8F8B05C(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Feedback_V2_ClientSession.feedback.setter();
}

void sub_1B8F8B0D0()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_353_0();
  v6 = OUTLINED_FUNCTION_313();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v10 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v11 = v4(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  v14 = *(v10 + v2);
  *(v10 + v2) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_ClientSession.feedback.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_258_1();
  *(v1 + 64) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v5 + v6);

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_Struct.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_Struct(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Feedback_V2_Value.nullValue.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v7);
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    if (!swift_getEnumCaseMultiPayload())
    {
      v10 = *v0;
      v11 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_1B8FAC5C8();
  }

  v10 = 0;
LABEL_7:
  OUTLINED_FUNCTION_66_2(v10);
}

uint64_t Apple_Parsec_Feedback_V2_Value.nullValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1B8D9207C(v1, &qword_1EBAB9158, &qword_1B964D940);
  *v1 = v2;
  *(v1 + 8) = v3;
  type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v4 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Feedback_V2_Value.nullValue.modify()
{
  v1 = OUTLINED_FUNCTION_738();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_739(v2);
  v3 = OUTLINED_FUNCTION_690();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 24) = v7;
  OUTLINED_FUNCTION_461();
  OUTLINED_FUNCTION_593_0();
  sub_1B8F1B8B8();
  *(v0 + 32) = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_117(v7);
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    if (!swift_getEnumCaseMultiPayload())
    {
      v10 = *v7;
      v11 = v7[8];
      goto LABEL_7;
    }

    sub_1B8FAC5C8();
  }

  v10 = 0;
  v11 = 1;
LABEL_7:
  *v0 = v10;
  *(v0 + 8) = v11;
  return OUTLINED_FUNCTION_19_2();
}

void sub_1B8F8B5F8(uint64_t **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = (*a1)[2];
  v5 = **a1;
  v6 = *(*a1 + 8);
  sub_1B8D9207C(v4, &qword_1EBAB9158, &qword_1B964D940);
  *v4 = v5;
  *(v4 + 8) = v6;
  OUTLINED_FUNCTION_128();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
  free(v3);

  free(v1);
}

double Apple_Parsec_Feedback_V2_Value.numberValue.getter()
{
  v1 = OUTLINED_FUNCTION_303();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_867();
  OUTLINED_FUNCTION_759();
  OUTLINED_FUNCTION_37_0(v0);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    OUTLINED_FUNCTION_432();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return *v0;
    }

    sub_1B8FAC5C8();
  }

  return 0.0;
}

uint64_t Apple_Parsec_Feedback_V2_Value.numberValue.setter(double a1)
{
  sub_1B8D9207C(v1, &qword_1EBAB9158, &qword_1B964D940);
  *v1 = a1;
  type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Feedback_V2_Value.numberValue.modify(void *a1)
{
  a1[1] = v1;
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  a1[2] = v7;
  OUTLINED_FUNCTION_198_1();
  sub_1B8F1B8B8();
  a1[3] = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBAB9158, &qword_1B964D940);
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  v10 = *v7;
LABEL_8:
  *a1 = v10;
  return OUTLINED_FUNCTION_542_0();
}

void sub_1B8F8B8D8(uint64_t *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[1];
  v4 = *a1;
  sub_1B8D9207C(v3, &qword_1EBAB9158, &qword_1B964D940);
  *v3 = v4;
  OUTLINED_FUNCTION_294();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);

  free(v2);
}

uint64_t Apple_Parsec_Feedback_V2_Value.stringValue.getter()
{
  v1 = OUTLINED_FUNCTION_303();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_867();
  OUTLINED_FUNCTION_759();
  OUTLINED_FUNCTION_37_0(v0);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    OUTLINED_FUNCTION_432();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      result = *v0;
      v10 = v0[1];
      return result;
    }

    sub_1B8FAC5C8();
  }

  return 0;
}

uint64_t sub_1B8F8BA34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Feedback_V2_Value.stringValue.setter(v1, v2);
}

uint64_t Apple_Parsec_Feedback_V2_Value.stringValue.modify()
{
  v1 = OUTLINED_FUNCTION_738();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_739(v2);
  v3 = OUTLINED_FUNCTION_690();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[3] = v7;
  OUTLINED_FUNCTION_461();
  OUTLINED_FUNCTION_593_0();
  sub_1B8F1B8B8();
  v0[4] = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_117(v7);
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBAB9158, &qword_1B964D940);
LABEL_7:
    v10 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_303();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  v10 = *v7;
  v11 = v7[1];
LABEL_8:
  *v0 = v10;
  v0[1] = v11;
  return OUTLINED_FUNCTION_19_2();
}

void sub_1B8F8BB8C(uint64_t **a1)
{
  OUTLINED_FUNCTION_846(a1);
  if (v7)
  {

    sub_1B8D9207C(v4, &qword_1EBAB9158, &qword_1B964D940);
    *v4 = v6;
    v4[1] = v5;
    OUTLINED_FUNCTION_461();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    v11 = v1[1];
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9158, &qword_1B964D940);
    *v4 = v6;
    v4[1] = v5;
    OUTLINED_FUNCTION_461();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v3);
  }

  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_Value.BOOLValue.getter()
{
  v1 = OUTLINED_FUNCTION_303();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_867();
  OUTLINED_FUNCTION_759();
  OUTLINED_FUNCTION_37_0(v0);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    OUTLINED_FUNCTION_432();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      return *v0;
    }

    sub_1B8FAC5C8();
  }

  return 0;
}

uint64_t Apple_Parsec_Feedback_V2_Value.BOOLValue.setter(char a1)
{
  sub_1B8D9207C(v1, &qword_1EBAB9158, &qword_1B964D940);
  *v1 = a1;
  type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Feedback_V2_Value.BOOLValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(a1 + 8) = v7;
  OUTLINED_FUNCTION_198_1();
  sub_1B8F1B8B8();
  *(a1 + 16) = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBAB9158, &qword_1B964D940);
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_543();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  v10 = *v7;
LABEL_8:
  *(a1 + 24) = v10;
  return sub_1B8F8BEA4;
}

void sub_1B8F8BEA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 24);
  sub_1B8D9207C(*a1, &qword_1EBAB9158, &qword_1B964D940);
  *v3 = v4;
  OUTLINED_FUNCTION_294();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);

  free(v2);
}

uint64_t Apple_Parsec_Feedback_V2_Value.structValue.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_21_10();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  *v0 = OUTLINED_FUNCTION_869();
  v0[1] = OUTLINED_FUNCTION_869();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  return OUTLINED_FUNCTION_279(v12);
}

uint64_t Apple_Parsec_Feedback_V2_Value.structValue.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9158, &qword_1B964D940);
  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_Value.structValue.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_8_22(v15);
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9158, &qword_1B964D940);
LABEL_7:
    type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
    *v11 = sub_1B964C7B0();
    v11[1] = sub_1B964C7B0();
    OUTLINED_FUNCTION_689_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F8C234(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9158, &qword_1B964D940);
    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAB9158, &qword_1B964D940);
    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_Value.listValue.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_123_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = MEMORY[0x1E69E7CC0];
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(0);
  return OUTLINED_FUNCTION_163_2(v12);
}

uint64_t Apple_Parsec_Feedback_V2_Value.listValue.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9158, &qword_1B964D940);
  OUTLINED_FUNCTION_123_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_Value.listValue.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_8_22(v16);
  if (v17)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9158, &qword_1B964D940);
LABEL_7:
    *v12 = MEMORY[0x1E69E7CC0];
    v19 = v12 + *(v0 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_123_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F8C5F0(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9158, &qword_1B964D940);
    OUTLINED_FUNCTION_123_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAB9158, &qword_1B964D940);
    OUTLINED_FUNCTION_123_4();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_Value.bytesValue.getter()
{
  v1 = OUTLINED_FUNCTION_303();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_867();
  OUTLINED_FUNCTION_759();
  OUTLINED_FUNCTION_37_0(v0);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    OUTLINED_FUNCTION_432();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      result = *v0;
      v10 = v0[1];
      return result;
    }

    sub_1B8FAC5C8();
  }

  return 0;
}

uint64_t sub_1B8F8C7C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B8D91FCC(*a1, v2);
  return Apple_Parsec_Feedback_V2_Value.bytesValue.setter(v1, v2);
}

uint64_t sub_1B8F8C814(uint64_t a1, uint64_t a2)
{
  sub_1B8D9207C(v2, &qword_1EBAB9158, &qword_1B964D940);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
}

uint64_t Apple_Parsec_Feedback_V2_Value.bytesValue.modify()
{
  v1 = OUTLINED_FUNCTION_738();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_739(v2);
  v3 = OUTLINED_FUNCTION_690();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 24) = v7;
  OUTLINED_FUNCTION_461();
  OUTLINED_FUNCTION_593_0();
  sub_1B8F1B8B8();
  *(v0 + 32) = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  OUTLINED_FUNCTION_117(v7);
  if (v8)
  {
    sub_1B8D9207C(v7, &qword_1EBAB9158, &qword_1B964D940);
LABEL_7:
    v10 = xmmword_1B9652FE0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_303();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  v10 = *v7;
LABEL_8:
  *v0 = v10;
  return OUTLINED_FUNCTION_19_2();
}

void sub_1B8F8C9A4(uint64_t **a1)
{
  OUTLINED_FUNCTION_846(a1);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_257();
    sub_1B8D91FCC(v8, v9);
    sub_1B8D9207C(v4, &qword_1EBAB9158, &qword_1B964D940);
    *v4 = v6;
    v4[1] = v5;
    OUTLINED_FUNCTION_461();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
    sub_1B8D538A0(*v1, *(v1 + 8));
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9158, &qword_1B964D940);
    *v4 = v6;
    v4[1] = v5;
    OUTLINED_FUNCTION_461();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v3);
  }

  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_Value.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_Value(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Feedback_V2_Value.OneOf_Kind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v75 = v4;
  v70 = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(0);
  v5 = OUTLINED_FUNCTION_59_1(v70);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v72 = v8;
  v9 = OUTLINED_FUNCTION_201();
  v69 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(v9);
  v10 = OUTLINED_FUNCTION_59_1(v69);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21();
  v71 = v13;
  v14 = OUTLINED_FUNCTION_201();
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(v14);
  v16 = OUTLINED_FUNCTION_59_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_682();
  v73 = v20;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_682();
  v74 = v22;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_512_0();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = (&v68 - v26);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_720_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v68 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07E8, &qword_1B966FA88);
  OUTLINED_FUNCTION_183(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_139();
  v36 = (v0 + *(v35 + 56));
  sub_1B8FAC578();
  sub_1B8FAC578();
  OUTLINED_FUNCTION_432();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_37_5();
      sub_1B8FAC578();
      OUTLINED_FUNCTION_200();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_29;
      }

      v48 = *v3 == *v36;
      goto LABEL_31;
    case 2u:
      OUTLINED_FUNCTION_37_5();
      sub_1B8FAC578();
      v45 = *v27;
      v44 = v27[1];
      OUTLINED_FUNCTION_200();
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        goto LABEL_29;
      }

      if (v45 == *v36 && v44 == *(v36 + 1))
      {
        v67 = *(v36 + 1);
      }

      else
      {
        OUTLINED_FUNCTION_461();
        sub_1B964C9F0();
      }

      goto LABEL_31;
    case 3u:
      OUTLINED_FUNCTION_37_5();
      sub_1B8FAC578();
      OUTLINED_FUNCTION_200();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_29;
      }

      v47 = *v1 ^ *v36;
      OUTLINED_FUNCTION_32_9();
      sub_1B8FAC5C8();
      goto LABEL_32;
    case 4u:
      OUTLINED_FUNCTION_37_5();
      v38 = v74;
      sub_1B8FAC578();
      OUTLINED_FUNCTION_200();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_21_10();
      v39 = v71;
      sub_1B8FAC528();
      if (sub_1B8DB1280(*v38, *v39))
      {
        OUTLINED_FUNCTION_695_0();
        sub_1B8DB17CC();
        if (v40)
        {
          v41 = *(v69 + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v42, v43);
          OUTLINED_FUNCTION_731();
        }
      }

      goto LABEL_30;
    case 5u:
      OUTLINED_FUNCTION_37_5();
      v49 = v73;
      sub_1B8FAC578();
      OUTLINED_FUNCTION_200();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
LABEL_27:
        sub_1B8FAC5C8();
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_123_4();
      v50 = v72;
      sub_1B8FAC528();
      v51 = *v49;
      v52 = *v50;
      sub_1B8D75B18();
      if (v53)
      {
        v54 = *(v70 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v55, v56);
        OUTLINED_FUNCTION_731();
      }

LABEL_30:
      sub_1B8FAC5C8();
      sub_1B8FAC5C8();
      goto LABEL_31;
    case 6u:
      OUTLINED_FUNCTION_37_5();
      sub_1B8FAC578();
      v57 = *v2;
      v58 = v2[1];
      OUTLINED_FUNCTION_200();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v59 = *v36;
        v60 = *(v36 + 1);
        OUTLINED_FUNCTION_466();
        MEMORY[0x1BFADC060]();
        v61 = OUTLINED_FUNCTION_690();
        sub_1B8D538A0(v61, v62);
        v63 = OUTLINED_FUNCTION_303();
        sub_1B8D538A0(v63, v64);
LABEL_31:
        OUTLINED_FUNCTION_32_9();
        sub_1B8FAC5C8();
      }

      else
      {
        v65 = OUTLINED_FUNCTION_303();
        sub_1B8D538A0(v65, v66);
LABEL_29:
        sub_1B8D9207C(v0, &qword_1EBAC07E8, &qword_1B966FA88);
      }

LABEL_32:
      OUTLINED_FUNCTION_283();
      return;
    default:
      OUTLINED_FUNCTION_37_5();
      sub_1B8FAC578();
      OUTLINED_FUNCTION_200();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_29;
      }

      v37 = *v30;
      v30[8];
      if (v36[8] != 1)
      {
        *v36;
      }

      goto LABEL_31;
  }
}

uint64_t static Apple_Parsec_Feedback_V2_Struct.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  v4 = *v3;
  sub_1B8DB1280();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 8);
  v7 = *(v1 + 8);
  sub_1B8DB17CC();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  OUTLINED_FUNCTION_188_1(v9);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Feedback_V2_ListValue.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  v2 = *v1;
  sub_1B8D75B18();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(0);
  OUTLINED_FUNCTION_871(v4);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v5, v6);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t Apple_Parsec_Feedback_V2_Value.init()()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(v0);
  OUTLINED_FUNCTION_274_1(v1);
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  return OUTLINED_FUNCTION_163_2(v2);
}

uint64_t Apple_Parsec_Feedback_V2_ListValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Feedback_V2_CBAEngagementFeedback.cbaType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Feedback_V2_CBAEngagementFeedback.cbaType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CBAEngagementFeedback.url.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_CBAEngagementFeedback.url.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CBAEngagementFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_755();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.result.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B900334C(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_UserReportFeedback.result.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v15);
  OUTLINED_FUNCTION_77_0(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.hasResult.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_UserReportFeedback.clearResult()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B900334C(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

void sub_1B8F8D9C8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_522_0();
  v2 = OUTLINED_FUNCTION_491();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  v8 = v0(0);
  OUTLINED_FUNCTION_309_0(v8);
  OUTLINED_FUNCTION_433_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_532_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      sub_1B8D9207C(v1, &qword_1EBAC06D8, &qword_1B966F960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_202();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.userSelection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B900334C(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_UserReportFeedback.userSelection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v14);
  OUTLINED_FUNCTION_77_0(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_310_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.hasUserSelection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_UserReportFeedback.clearUserSelection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B900334C(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.cardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B900334C(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_UserReportFeedback.cardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v14);
  OUTLINED_FUNCTION_77_0(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_241_1();
    OUTLINED_FUNCTION_607_0(v17);
    OUTLINED_FUNCTION_368_0(v18);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0730, &qword_1B966F9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.hasCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_UserReportFeedback.clearCardSection()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B900334C(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.uuidBytes.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v4);
  OUTLINED_FUNCTION_254_1(v5);
  OUTLINED_FUNCTION_41();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_1B8D91FCC(v6, v7);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F8E394()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_58_0(v8);
  if (v10)
  {
    v11 = v9;
    v12 = *(v0 + 64);
    v13 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v13, v14);
    v15 = OUTLINED_FUNCTION_461();
    v11(v15);
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_742();
    v19 = *(v7 + v1);
    if ((v18 & 1) == 0)
    {
      v20 = *(v0 + 72);
      v21 = *(v0 + 64);
      v22 = v6(0);
      OUTLINED_FUNCTION_57_0(v22);
      swift_allocObject();
      v23 = OUTLINED_FUNCTION_40_0();
      v24 = v5(v23);
      OUTLINED_FUNCTION_529_0(v24);
    }

    v25 = (v19 + *v4);
    OUTLINED_FUNCTION_211_0();
    v16 = *v25;
    v17 = v25[1];
    *v25 = v3;
    v25[1] = v2;
  }

  sub_1B8D538A0(v16, v17);
  OUTLINED_FUNCTION_283();

  free(v26);
}

void sub_1B8F8E474(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Feedback_V2_UserReportFeedback.sections.setter();
}

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.sections.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  v4 = *(type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(0) + 20);
  *(v1 + 64) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v5 + v6);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F8E5B0()
{
  OUTLINED_FUNCTION_243();
  v5 = *v3;
  v6 = *(*v3 + 48);
  if (v7)
  {
    v8 = v4;
    v9 = *(v5 + 56);
    v10 = *(*v3 + 48);

    v8(v11);
    v12 = *(v5 + 48);
  }

  else
  {
    OUTLINED_FUNCTION_271_1();
    v13 = *(v5 + 64);
    v14 = *(v5 + 56);
    v15 = *(v14 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = *(v5 + 64);
      v19 = *(v5 + 56);
      v20 = v2(0);
      OUTLINED_FUNCTION_57_0(v20);
      swift_allocObject();
      v21 = OUTLINED_FUNCTION_40_0();
      v22 = v1(v21);
      OUTLINED_FUNCTION_228_1(v22);
    }

    v23 = *v0;
    OUTLINED_FUNCTION_59_3();
    v24 = *(v17 + v23);
    *(v17 + v23) = v6;
  }

  OUTLINED_FUNCTION_242();

  free(v25);
}

void sub_1B8F8E6A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_UserReportFeedback.uploadedDataIdentifier.setter();
}

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.uploadedDataIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F8E7DC()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_58_0(v8);
  if (v10)
  {
    v11 = v9;
    OUTLINED_FUNCTION_191();
    v12 = OUTLINED_FUNCTION_461();
    v11(v12);
    v13 = *(v0 + 56);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_742();
    v15 = *(v7 + v1);
    if ((v14 & 1) == 0)
    {
      v16 = *(v0 + 72);
      v17 = *(v0 + 64);
      v18 = v6(0);
      OUTLINED_FUNCTION_57_0(v18);
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_40_0();
      v20 = v5(v19);
      OUTLINED_FUNCTION_529_0(v20);
    }

    v21 = (v15 + *v4);
    OUTLINED_FUNCTION_211_0();
    v22 = v21[1];
    *v21 = v3;
    v21[1] = v2;
  }

  OUTLINED_FUNCTION_283();

  free(v23);
}

uint64_t Apple_Parsec_Feedback_V2_UserReportFeedback.reportType.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UserReportFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_DeviceContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_DeviceContext.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  return OUTLINED_FUNCTION_690_0(v3);
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.collectionStartTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_755();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.collectionEndTimestamp.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90064C4(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.collectionEndTimestamp.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v4);
  OUTLINED_FUNCTION_225_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v0 + 24);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F8ECC4(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v5 = OUTLINED_FUNCTION_500_0();
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_278_1();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B90064C4(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 24) = v3;

  free(v1);
}

void sub_1B8F8ED64()
{
  v1 = OUTLINED_FUNCTION_338_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 40);
  OUTLINED_FUNCTION_66_2(*(v0 + 32));
}

uint64_t sub_1B8F8EDF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  OUTLINED_FUNCTION_94_4();
  return v3(&v5);
}

void sub_1B8F8EE70()
{
  OUTLINED_FUNCTION_184_0();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = *v7;
  v9 = *(v7 + 8);
  v11 = v10(0);
  v12 = OUTLINED_FUNCTION_216_1(v11);
  v13 = *(v0 + v1);
  if ((v12 & 1) == 0)
  {
    v14 = v5(0);
    OUTLINED_FUNCTION_57_0(v14);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v15);
    *(v6 + v1) = v13;
  }

  OUTLINED_FUNCTION_9_3();
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.client.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v3);
  OUTLINED_FUNCTION_21_8(v4);
  OUTLINED_FUNCTION_374_0();
  v5 = *(v0 + 40);
  OUTLINED_FUNCTION_71_2(*(v0 + 32));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F8EF90()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_60_5(v3);
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
    v14 = v2(0);
    OUTLINED_FUNCTION_57_0(v14);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v16 = v1(v15);
    OUTLINED_FUNCTION_529_0(v16);
  }

  OUTLINED_FUNCTION_11_4();
  *(v11 + 32) = v5;
  *(v11 + 40) = v8;
  OUTLINED_FUNCTION_283();

  free(v17);
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.totalUsagesInCollectionPeriod.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90064C4(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 44) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.totalUsagesInCollectionPeriod.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F8F124(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_28_11();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B90064C4(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 44) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    OUTLINED_FUNCTION_276_1();
    *(a1 + 48) = 0;
    *(a1 + 56) = v13;
    OUTLINED_FUNCTION_762();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC07F0, &qword_1B966FA90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.context.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B90064C4(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_UsageSinceLookback.context.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_224_2(v15);
  v17 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v16);
  OUTLINED_FUNCTION_77_0(v17);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    OUTLINED_FUNCTION_241_1();
    v19 = v12 + *(v0 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v18)
    {
      sub_1B8D9207C(v1, &qword_1EBAC07F0, &qword_1B966FA90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.hasContext.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_UsageSinceLookback.clearContext()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B90064C4(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.configuredLookbackTimeInDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.activeDaysInCollectionPeriod.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.totalEngagements.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.isDiagnosticsAndUsageEnabled.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.invokedDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.zkwEngagedDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.searchedDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.suggestionOrAppleResultEngagedDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.webEngagedDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.voiceSearchDays.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_UsageSinceLookback.numSearchEngagements.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v2);
  OUTLINED_FUNCTION_21_8(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.localGoto.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_344_0();
  *(v1 + 80) = *(v0 + 16);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.localTap.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 20);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecGoto.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 24);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecTap.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 28);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.thirdPartyGoto.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_374_0();
  *(v1 + 80) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.thirdPartyTap.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 36);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.thirdPartyCompletionOrRecentSearch.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.goToSite.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_105_0();
}

float Apple_Parsec_Feedback_V2_SafariUsagePropensity.other.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0);
  OUTLINED_FUNCTION_354_0(v1);
  return *(v0 + 48);
}

void Apple_Parsec_Feedback_V2_SafariUsagePropensity.other.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90087DC(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 48) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.other.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F90938()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_52_4(v3);
  v4 = OUTLINED_FUNCTION_744();
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_72_4();
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(v6);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90087DC(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 48) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecWeb.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 52);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecAppStore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecMaps.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 60);
  return OUTLINED_FUNCTION_105_0();
}

float sub_1B8F90C78()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 64);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecWiki.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

float sub_1B8F90D98()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 68);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecNews.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 68);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecStocks.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 72);
  return OUTLINED_FUNCTION_105_0();
}

float sub_1B8F90F98()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 76);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecWeather.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 76);
  return OUTLINED_FUNCTION_105_0();
}

float sub_1B8F910B8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 80);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.parsecOther.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 80);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F911D8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 84);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.totalEngagements.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B90087DC(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 84) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.totalEngagements.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_11(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 84);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F912DC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_28_11();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B90087DC(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 84) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.topHitTriggerRatio.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B90087DC(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_EngagementTriggerRatio.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_581_0(a1);
  *(v1 + 8) = 0;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  return OUTLINED_FUNCTION_101_2(v2);
}

void Apple_Parsec_Feedback_V2_SafariUsagePropensity.topHitTriggerRatio.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v14);
  OUTLINED_FUNCTION_77_0(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_133_2();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC07F8, &qword_1B966FA98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_122_2();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.hasTopHitTriggerRatio.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SafariUsagePropensity.clearTopHitTriggerRatio()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B90087DC(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.totalTopHitEngagements.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_11(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.engagementShareRatio.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B90087DC(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_210_2();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_EngagementShareRatio.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_581_0(a1);
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  return OUTLINED_FUNCTION_279(v1);
}

void Apple_Parsec_Feedback_V2_SafariUsagePropensity.engagementShareRatio.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v15);
  OUTLINED_FUNCTION_77_0(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    *v11 = 0;
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0800, &qword_1B966FAA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_210_2();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SafariUsagePropensity.hasEngagementShareRatio.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SafariUsagePropensity.clearEngagementShareRatio()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B90087DC(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

float sub_1B8F91C98()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 16);
}

void sub_1B8F91D18()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 16) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.appLaunch.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_344_0();
  *(v1 + 80) = *(v0 + 16);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F91E10()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 16) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

float sub_1B8F91EBC()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 20);
}

void sub_1B8F91F3C()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 20) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.onDeviceAddressBookData.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 20);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F92038()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 20) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

float sub_1B8F920E4()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 24);
}

void sub_1B8F92164()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 24) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.onDeviceOtherPersonalData.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 24);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F92260()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 24) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

float sub_1B8F9230C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 28);
}

void sub_1B8F9238C()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 28) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.punchout.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 28);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F92488()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 28) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

float sub_1B8F92534()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 32);
}

void sub_1B8F925B4()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 32) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.thirdPartyInAppContent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_374_0();
  *(v1 + 80) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F926AC()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 32) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

float sub_1B8F92758()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 36);
}

void sub_1B8F927D8()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 36) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsec.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 36);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F928D4()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 36) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

float sub_1B8F92980()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 40);
}

void sub_1B8F92A00()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 40) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.querySuggestion.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F92AFC()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 40) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

float sub_1B8F92BA8()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 44);
}

void sub_1B8F92C28()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 44) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.other.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F92D24()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 44) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.totalEngagements.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B900B3DC(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.totalEngagements.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F92E94(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_28_11();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B900B3DC(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 48) = v3;

  free(v1);
}

float sub_1B8F92F30()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 52);
}

void sub_1B8F92FB0()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 52) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.siriSuggestions.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 52);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F930AC()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 52) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

float sub_1B8F93158()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 56);
}

void sub_1B8F931D8()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 56) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecWeb.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F932D4()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 56) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

float sub_1B8F93380()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 60);
}

void sub_1B8F93400()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 60) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecAppStore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 60);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F934FC()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 60) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

void sub_1B8F935E8()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 64) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecMaps.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F936E4()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 64) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

void sub_1B8F937D0()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 68) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecWiki.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 68);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F938CC()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 68) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

float sub_1B8F93978()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_402_0(v3);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 72);
}

void sub_1B8F939F8()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 72) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecNews.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F93AF4()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 72) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

void sub_1B8F93BE0()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 76) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecStocks.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 76);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F93CDC()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 76) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

void sub_1B8F93DC8()
{
  OUTLINED_FUNCTION_652_0();
  v5 = OUTLINED_FUNCTION_38_4();
  v7 = v6(v5);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v3);
  if ((v8 & 1) == 0)
  {
    v10 = v2(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = v1(v11);
    OUTLINED_FUNCTION_72_2(v12);
  }

  OUTLINED_FUNCTION_9_3();
  *(v9 + 80) = v4;
  OUTLINED_FUNCTION_651_0();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecWeather.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F93EC4()
{
  OUTLINED_FUNCTION_649_0();
  OUTLINED_FUNCTION_451_0();
  OUTLINED_FUNCTION_52_4(v5);
  v6 = OUTLINED_FUNCTION_686_0();
  v7 = *(v3 + v0);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_265_1();
    v9 = v2(v8);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = v1(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 80) = v4;
  OUTLINED_FUNCTION_650_0();

  free(v12);
}

float Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecOther.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  OUTLINED_FUNCTION_402_0(v1);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 84);
}

void Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecOther.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B900B3DC(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 84) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.parsecOther.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 84);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F94058()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_52_4(v3);
  v4 = OUTLINED_FUNCTION_744();
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_72_4();
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(v6);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B900B3DC(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 84) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

float Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.webSuggestions.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0);
  OUTLINED_FUNCTION_402_0(v1);
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 88);
}

void Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.webSuggestions.setter()
{
  OUTLINED_FUNCTION_30_5();
  v3 = OUTLINED_FUNCTION_235_2();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v3);
  v5 = OUTLINED_FUNCTION_728(v4);
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B900B3DC(v8);
    OUTLINED_FUNCTION_16_3(v9);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 88) = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.webSuggestions.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_17_12(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 88);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F941E0()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_52_4(v3);
  v4 = OUTLINED_FUNCTION_744();
  v5 = *(v1 + v0);
  if ((v4 & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_72_4();
    v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(v6);
    OUTLINED_FUNCTION_57_0(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B900B3DC(v8);
    OUTLINED_FUNCTION_15(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 88) = v2;
  OUTLINED_FUNCTION_31_4();

  free(v10);
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.topHitTriggerRatio.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B900B3DC(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.topHitTriggerRatio.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v14);
  OUTLINED_FUNCTION_77_0(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_133_2();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC07F8, &qword_1B966FA98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_122_2();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.hasTopHitTriggerRatio.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.clearTopHitTriggerRatio()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B900B3DC(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

void sub_1B8F94640()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_522_0();
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_79();
  v9 = v1(0);
  OUTLINED_FUNCTION_309_0(v9);
  OUTLINED_FUNCTION_433_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_57(v2);
  if (v10)
  {
    *v0 = 0;
    *(v0 + 8) = 0;
    OUTLINED_FUNCTION_826();
    OUTLINED_FUNCTION_57(v2);
    if (!v10)
    {
      sub_1B8D9207C(v2, &qword_1EBAC07F8, &qword_1B966FA98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_202();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.querySuggestionTriggerRatio.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B900B3DC(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.querySuggestionTriggerRatio.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v14);
  OUTLINED_FUNCTION_77_0(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_133_2();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC07F8, &qword_1B966FA98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_122_2();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.hasQuerySuggestionTriggerRatio.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.clearQuerySuggestionTriggerRatio()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F8, &qword_1B966FA98);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B900B3DC(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.totalTopHitEngagements.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_17_12(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F94BE8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_522_0();
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_79();
  v9 = v1(0);
  OUTLINED_FUNCTION_309_0(v9);
  OUTLINED_FUNCTION_433_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_57(v2);
  if (v10)
  {
    *v0 = 0;
    OUTLINED_FUNCTION_251_0();
    OUTLINED_FUNCTION_57(v2);
    if (!v10)
    {
      sub_1B8D9207C(v2, &qword_1EBAC0800, &qword_1B966FAA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_202();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.engagementShareRatio.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B900B3DC(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_210_2();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_65_1(v13);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.engagementShareRatio.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v15);
  OUTLINED_FUNCTION_77_0(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    *v11 = 0;
    OUTLINED_FUNCTION_280_0();
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0800, &qword_1B966FAA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_210_2();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.hasEngagementShareRatio.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.clearEngagementShareRatio()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0800, &qword_1B966FAA0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B900B3DC(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_ImagesUsagePropensity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ImagesUsagePropensity.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(v1);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  return OUTLINED_FUNCTION_723_0(v2);
}

uint64_t Apple_Parsec_Feedback_V2_NewsUsagePropensity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_NewsUsagePropensity.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_581_0(a1);
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
  return OUTLINED_FUNCTION_279(v1);
}

uint64_t Apple_Parsec_Feedback_V2_EngagementTriggerRatio.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_EngagementTriggerRatio(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_EngagementShareRatio.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_EngagementShareRatio(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.usageSinceLookback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_22_13();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0) + 20);
  if (qword_1EBAB6E40 != -1)
  {
    OUTLINED_FUNCTION_263_1();
  }

  *(v0 + v11) = qword_1EBAC0610;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.usageSinceLookback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
  OUTLINED_FUNCTION_22_13();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.usageSinceLookback.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_8_22(v16);
  if (v17)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_22_13();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_9;
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v19 = *(v0 + 20);
  if (qword_1EBAB6E40 != -1)
  {
    OUTLINED_FUNCTION_263_1();
  }

  *(v12 + v19) = qword_1EBAC0610;

LABEL_9:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F957E4(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_22_13();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_22_13();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.safariUsagePropensity.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_121_1();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(0) + 20);
  if (qword_1EBAB6E50 != -1)
  {
    OUTLINED_FUNCTION_615_0();
  }

  *(v0 + v12) = qword_1EBAC0630;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.safariUsagePropensity.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.safariUsagePropensity.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_8_22(v16);
  if (v17)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_121_1();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_10;
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v19 = *(v0 + 20);
  if (qword_1EBAB6E50 != -1)
  {
    OUTLINED_FUNCTION_615_0();
  }

  *(v12 + v19) = qword_1EBAC0630;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F95BD0(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.spotlightUsagePropensity.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_120_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(0) + 20);
  if (qword_1EBAB6E60 != -1)
  {
    OUTLINED_FUNCTION_614_0();
  }

  *(v0 + v12) = qword_1EBAC0650;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.spotlightUsagePropensity.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
  OUTLINED_FUNCTION_120_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.spotlightUsagePropensity.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_8_22(v16);
  if (v17)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_120_3();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_10;
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v19 = *(v0 + 20);
  if (qword_1EBAB6E60 != -1)
  {
    OUTLINED_FUNCTION_614_0();
  }

  *(v12 + v19) = qword_1EBAC0650;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F95FBC(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_120_3();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_120_3();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.imagesUsagePropensity.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_118_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  return OUTLINED_FUNCTION_723_0(v12);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.imagesUsagePropensity.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
  OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.imagesUsagePropensity.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_8_22(v16);
  if (v17)
  {
    sub_1B8D9207C(v1, &qword_1EBAC0808, &qword_1B966FAA8);
LABEL_7:
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0;
    v19 = v12 + *(v0 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_118_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F96350(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_118_2();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_118_2();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.newsUsagePropensity.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_15_15(v7);
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_117_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v11 = OUTLINED_FUNCTION_751();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(v11);
  return OUTLINED_FUNCTION_279(v12);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.newsUsagePropensity.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
  OUTLINED_FUNCTION_117_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.newsUsagePropensity.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(0);
  OUTLINED_FUNCTION_8_22(v15);
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAC0808, &qword_1B966FAA8);
LABEL_7:
    *v11 = 0;
    OUTLINED_FUNCTION_689_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_117_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F966D0(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_117_2();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_116_2();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAC0808, &qword_1B966FAA8);
    OUTLINED_FUNCTION_117_2();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.collectionStartTimestamp.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  result = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.collectionStartTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.collectionEndTimestamp.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  result = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.collectionEndTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.configuredLookbackTimeInDays.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  result = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.configuredLookbackTimeInDays.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.totalSessions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  result = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.totalSessions.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.context.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v9) + 44);
  OUTLINED_FUNCTION_100_3();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    OUTLINED_FUNCTION_276_1();
    *(a1 + 48) = 0;
    *(a1 + 56) = v13;
    OUTLINED_FUNCTION_762();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC07F0, &qword_1B966FA90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.context.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBAC07F0, &qword_1B966FA90);
  OUTLINED_FUNCTION_16_15();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_UsageEnvelope.context.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_DeviceContext(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v15);
  OUTLINED_FUNCTION_68_4(*(v16 + 44));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_241_1();
    v18 = v11 + *(v9 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC07F0, &qword_1B966FA90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F96C4C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC07F0, &qword_1B966FA90);
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_324_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC07F0, &qword_1B966FA90);
    OUTLINED_FUNCTION_16_15();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B8F96D5C()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  v8 = *(v1(0) + 44);
  OUTLINED_FUNCTION_225_0();
  sub_1B8F1B8B8();
  v9 = v0(0);
  OUTLINED_FUNCTION_220_2(v9);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B8F96E24()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v3 = *(v2(v1) + 44);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.uuidBytes.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0) + 36));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v4, v5);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.uuidBytes.setter()
{
  v3 = OUTLINED_FUNCTION_112();
  v4 = v1 + *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v3) + 36);
  result = sub_1B8D538A0(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.uuidBytes.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_UsageEnvelope.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v89 = v3;
  v90 = v4;
  v81 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
  v5 = OUTLINED_FUNCTION_59_1(v81);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v88 = v8;
  v9 = OUTLINED_FUNCTION_201();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(v9);
  v11 = OUTLINED_FUNCTION_183(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21();
  v85 = v14;
  v15 = OUTLINED_FUNCTION_201();
  v84 = type metadata accessor for Apple_Parsec_Feedback_V2_SpotlightUsagePropensity(v15);
  v16 = OUTLINED_FUNCTION_59_1(v84);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_21();
  v87 = v19;
  v20 = OUTLINED_FUNCTION_201();
  v83 = type metadata accessor for Apple_Parsec_Feedback_V2_SafariUsagePropensity(v20);
  v21 = OUTLINED_FUNCTION_59_1(v83);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_21();
  v86 = v24;
  v25 = OUTLINED_FUNCTION_201();
  v26 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(v25);
  v27 = OUTLINED_FUNCTION_59_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_21();
  v82 = v30;
  v31 = OUTLINED_FUNCTION_201();
  v32 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope.OneOf_Kind(v31);
  v33 = OUTLINED_FUNCTION_59_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_720_0();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = (&v81 - v38);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v81 - v41;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_512_0();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v81 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0810, &qword_1B966FAB0);
  OUTLINED_FUNCTION_183(v46);
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_139();
  v51 = *(v50 + 56);
  sub_1B8FAC578();
  sub_1B8FAC578();
  OUTLINED_FUNCTION_432();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_144_4();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_828() != 1)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_121_1();
      v65 = v86;
      sub_1B8FAC528();
      v66 = *(v83 + 20);
      if (*(v1 + v66) == *(v65 + v66) || (v67 = *(v1 + v66), , , v68 = OUTLINED_FUNCTION_543(), v70 = sub_1B9009C9C(v68, v69), , , v70))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v71, v72);
        OUTLINED_FUNCTION_1_0();
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_563_0();
      sub_1B8FAC5C8();
      goto LABEL_30;
    case 2u:
      OUTLINED_FUNCTION_144_4();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_828() != 2)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_120_3();
      v56 = v87;
      sub_1B8FAC528();
      v57 = *(v84 + 20);
      if (*&v42[v57] == *(v56 + v57) || (v58 = *&v42[v57], , , v59 = OUTLINED_FUNCTION_113_0(), v61 = sub_1B900D340(v59, v60), , , v61))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v62, v63);
        OUTLINED_FUNCTION_439_0();
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_562_0();
      sub_1B8FAC5C8();
      goto LABEL_30;
    case 3u:
      OUTLINED_FUNCTION_144_4();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_828() != 3)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_118_2();
      v64 = v85;
      sub_1B8FAC528();
      static Apple_Parsec_Feedback_V2_ImagesUsagePropensity.== infix(_:_:)(v39, v64);
      sub_1B8FAC5C8();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_47_4();
      sub_1B8FAC5C8();
      goto LABEL_31;
    case 4u:
      OUTLINED_FUNCTION_144_4();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_828() == 4)
      {
        OUTLINED_FUNCTION_117_2();
        v52 = v88;
        sub_1B8FAC528();
        if (*v2 == *v52 && *(v2 + 4) == *(v52 + 4))
        {
          v53 = *(v81 + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v54, v55);
          OUTLINED_FUNCTION_731();
          OUTLINED_FUNCTION_116_2();
          sub_1B8FAC5C8();
        }

        else
        {
          OUTLINED_FUNCTION_116_2();
          sub_1B8FAC5C8();
        }

        OUTLINED_FUNCTION_116_2();
LABEL_30:
        sub_1B8FAC5C8();
        OUTLINED_FUNCTION_47_4();
        sub_1B8FAC5C8();
      }

      else
      {
        OUTLINED_FUNCTION_116_2();
LABEL_22:
        sub_1B8FAC5C8();
        sub_1B8D9207C(v0, &qword_1EBAC0810, &qword_1B966FAB0);
      }

LABEL_31:
      OUTLINED_FUNCTION_283();
      return;
    default:
      OUTLINED_FUNCTION_144_4();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_828())
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_22_13();
      v73 = v82;
      sub_1B8FAC528();
      v74 = *(v26 + 20);
      if (*&v45[v74] == *(v73 + v74) || (v75 = *&v45[v74], , , v76 = OUTLINED_FUNCTION_543(), v78 = sub_1B90076F8(v76, v77), , , v78))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v79, v80);
        OUTLINED_FUNCTION_597_0();
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_564_0();
      sub_1B8FAC5C8();
      goto LABEL_30;
  }
}

uint64_t static Apple_Parsec_Feedback_V2_ImagesUsagePropensity.== infix(_:_:)(float *a1, int *a2)
{
  OUTLINED_FUNCTION_516_0(a1, a2);
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_375_0(v4, v5);
  if (!v6)
  {
    return 0;
  }

  if (*(v3 + 8) != *(v2 + 8))
  {
    return 0;
  }

  OUTLINED_FUNCTION_722_0();
  if (!v6 || *(v3 + 16) != *(v2 + 16) || *(v3 + 20) != *(v2 + 20))
  {
    return 0;
  }

  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ImagesUsagePropensity(0);
  OUTLINED_FUNCTION_868(v7);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Feedback_V2_NewsUsagePropensity.== infix(_:_:)(float *a1, int *a2)
{
  OUTLINED_FUNCTION_516_0(a1, a2);
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v3 + 4) != *(v4 + 4))
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NewsUsagePropensity(0);
  OUTLINED_FUNCTION_188_1(v5);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F978C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF9B0);
  __swift_project_value_buffer(v0, qword_1EBABF9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1B96566C0;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 0;
  *v4 = "SearchSuggestionTypeUnknown";
  *(v4 + 8) = 27;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 1;
  *v8 = "SearchSuggestionTypeParsec";
  *(v8 + 8) = 26;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "SearchSuggestionTypeProactive";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "SearchSuggestionTypeRecents";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SearchSuggestionTypeProactiveCategory";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "SearchSuggestionTypeContextual";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "SearchSuggestionTypeUserTyped";
  *(v18 + 1) = 29;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "SearchSuggestionTypeCoreSpotlightContent";
  *(v20 + 1) = 40;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "SearchSuggestionTypeThirdPartyProvider";
  *(v22 + 1) = 38;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "SearchSuggestionTypePastEngagement";
  *(v24 + 1) = 34;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SearchSuggestionTypeParsecCategory";
  *(v26 + 1) = 34;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SearchSuggestionTypeSiri";
  *(v28 + 1) = 24;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "SearchSuggestionTypeWeb";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SearchSuggestionTypeApplication";
  *(v32 + 1) = 31;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SearchSuggestionTypeWebAsTyped";
  *(v34 + 1) = 30;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "SearchSuggestionTypeNLP";
  *(v36 + 1) = 23;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "SearchSuggestionTypeVisualSearch";
  *(v38 + 1) = 32;
  v38[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F97E40()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF9C8);
  __swift_project_value_buffer(v0, qword_1EBABF9C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1B966F8A0;
  v4 = v86 + v3 + v1[14];
  *(v86 + v3) = 0;
  *v4 = "ResultTypeUnknown";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v86 + v3 + v2 + v1[14];
  *(v86 + v3 + v2) = 1;
  *v8 = "ResultTypeParsec";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v86 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ResultTypeLocal";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v86 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ResultTypeCoreSpotlight";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v7();
  v13 = (v86 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ResultTypeNSUserActivity";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v86 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ResultTypeSafariTophit";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v86 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ResultTypeCalculator";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v86 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ResultTypeConversion";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v7();
  v21 = (v86 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ResultTypeDictionaryDefinition";
  *(v22 + 1) = 30;
  v22[16] = 2;
  v7();
  v23 = (v86 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ResultTypeGoogle";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v86 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ResultTypeYahoo";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v7();
  v27 = (v86 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ResultTypeBing";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v86 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ResultTypeDuckduckgo";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v7();
  v31 = (v86 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ResultTypeYandex";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v7();
  v33 = (v86 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ResultTypeBaidu";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v86 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ResultTypeProactiveSuggest";
  *(v36 + 1) = 26;
  v36[16] = 2;
  v7();
  v37 = (v86 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "ResultTypeLocalSuggest";
  *(v38 + 1) = 22;
  v38[16] = 2;
  v7();
  v39 = (v86 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "ResultTypeServerSuggest";
  *(v40 + 1) = 23;
  v40[16] = 2;
  v7();
  v41 = (v86 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "ResultTypeQihoo";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v7();
  v43 = (v86 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "ResultTypeSogou";
  *(v44 + 1) = 15;
  v44[16] = 2;
  v7();
  v45 = (v86 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "ResultTypeSiriAction";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v7();
  v47 = (v86 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "ResultTypeSiriSuggest";
  *(v48 + 1) = 21;
  v48[16] = 2;
  v7();
  v49 = (v86 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "ResultTypeInstalledClip";
  *(v50 + 1) = 23;
  v50[16] = 2;
  v7();
  v51 = (v86 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "ResultTypeUninstalledClip";
  *(v52 + 1) = 25;
  v52[16] = 2;
  v7();
  v53 = (v86 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "ResultTypeWebClip";
  *(v54 + 1) = 17;
  v54[16] = 2;
  v7();
  v55 = (v86 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "ResultTypeEcosia";
  *(v56 + 1) = 16;
  v56[16] = 2;
  v7();
  v57 = (v86 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "ResultTypeServerAlternative";
  *(v58 + 1) = 27;
  v58[16] = 2;
  v7();
  v59 = (v86 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "ResultTypeServerSiriSuggestion";
  *(v60 + 1) = 30;
  v60[16] = 2;
  v7();
  v61 = (v86 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "ResultTypeWebSuggestion";
  *(v62 + 1) = 23;
  v62[16] = 2;
  v7();
  v63 = (v86 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "ResultTypeWebAsTypedSuggestion";
  *(v64 + 1) = 30;
  v64[16] = 2;
  v7();
  v65 = (v86 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "ResultTypeUserTypedSuggestion";
  *(v66 + 1) = 29;
  v66[16] = 2;
  v7();
  v67 = (v86 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "ResultTypeCoreSpotlightSuggestion";
  *(v68 + 1) = 33;
  v68[16] = 2;
  v7();
  v69 = (v86 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "ResultTypeContactsSuggestion";
  *(v70 + 1) = 28;
  v70[16] = 2;
  v7();
  v71 = (v86 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "ResultTypeApplicationSuggestion";
  *(v72 + 1) = 31;
  v72[16] = 2;
  v7();
  v73 = (v86 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "ResultTypeNLPSuggestion";
  *(v74 + 1) = 23;
  v74[16] = 2;
  v7();
  v75 = (v86 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "ResultTypePhotoSuggestion";
  *(v76 + 1) = 25;
  v76[16] = 2;
  v7();
  v77 = (v86 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "ResultTypeContacts";
  *(v78 + 1) = 18;
  v78[16] = 2;
  v7();
  v79 = (v86 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "ResultTypePeople";
  *(v80 + 1) = 16;
  v80[16] = 2;
  v7();
  v81 = (v86 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "ResultTypePeopleSuggestion";
  *(v82 + 1) = 26;
  v82[16] = 2;
  v7();
  v83 = (v86 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "ResultTypeTopicSuggestion";
  *(v84 + 1) = 25;
  v84[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8F9890C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF9E0);
  __swift_project_value_buffer(v0, qword_1EBABF9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "EngagementActionTargetUnknown";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EngagementActionTargetDirections";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EngagementActionTargetCall";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EngagementActionTargetMessage";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EngagementActionTargetPlay";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "EngagementActionTargetView";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "EngagementActionTargetOpen";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "EngagementActionTargetIntentModify";
  *(v22 + 1) = 34;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "EngagementActionTargetSubscribe";
  *(v24 + 1) = 31;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "EngagementActionTargetUnsubscribe";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "EngagementActionTargetVideoCall";
  *(v28 + 1) = 31;
  v28[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F98D1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABF9F8);
  __swift_project_value_buffer(v0, qword_1EBABF9F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D040;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "EngagementDestinationUnknown";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EngagementDestinationCard";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EngagementDestinationPunchout";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "EngagementDestinationNone";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "EngagementDestinationInsert";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "EngagementDestinationFindOnPage";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "EngagementDestinationLastSearch";
  *(v20 + 1) = 31;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "EngagementDestinationMapsCard";
  *(v22 + 1) = 29;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "EngagementDestinationITunesSheet";
  *(v24 + 1) = 32;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "EngagementDestinationHostedHTMLPage";
  *(v26 + 1) = 35;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "EngagementDestinationQueryBuilder";
  *(v28 + 1) = 33;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "EngagementDestinationSiriOverlay";
  *(v30 + 1) = 32;
  v30[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F9916C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFA10);
  __swift_project_value_buffer(v0, qword_1EBABFA10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_1B966F8B0;
  v4 = v164 + v3 + v1[14];
  *(v164 + v3) = 0;
  *v4 = "CardSectionTypeNone";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v164 + v3 + v2 + v1[14];
  *(v164 + v3 + v2) = 1;
  *v8 = "CardSectionTypeAppLink";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v164 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CardSectionTypeDescription";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v7();
  v11 = (v164 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CardSectionTypeKeyValueData";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v7();
  v13 = (v164 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CardSectionTypeMap";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v7();
  v15 = (v164 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CardSectionTypeMediaInfo";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v7();
  v17 = (v164 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CardSectionTypeMediaPlayer";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v7();
  v19 = (v164 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CardSectionTypeNowPlaying";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v7();
  v21 = (v164 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "CardSectionTypeRichTitle";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v7();
  v23 = (v164 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CardSectionTypeRow";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v7();
  v25 = (v164 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CardSectionTypeScoreboard";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v7();
  v27 = (v164 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "CardSectionTypeSocialMediaPost";
  *(v28 + 1) = 30;
  v28[16] = 2;
  v7();
  v29 = (v164 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "CardSectionTypeStockChart";
  *(v30 + 1) = 25;
  v30[16] = 2;
  v7();
  v31 = (v164 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CardSectionTypeTableHeaderRow";
  *(v32 + 1) = 29;
  v32[16] = 2;
  v7();
  v33 = (v164 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "CardSectionTypeTableRow";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v7();
  v35 = (v164 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CardSectionTypeTextColumns";
  *(v36 + 1) = 26;
  v36[16] = 2;
  v7();
  v37 = (v164 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "CardSectionTypeTitle";
  *(v38 + 1) = 20;
  v38[16] = 2;
  v7();
  v39 = (v164 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "CardSectionTypeTrackList";
  *(v40 + 1) = 24;
  v40[16] = 2;
  v7();
  v41 = (v164 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "CardSectionTypeAudioPlayback";
  *(v42 + 1) = 28;
  v42[16] = 2;
  v7();
  v43 = (v164 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "CardSectionTypeFlight";
  *(v44 + 1) = 21;
  v44[16] = 2;
  v7();
  v45 = (v164 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "CardSectionTypeActivityIndicator";
  *(v46 + 1) = 32;
  v46[16] = 2;
  v7();
  v47 = (v164 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "CardSectionTypeWeb";
  *(v48 + 1) = 18;
  v48[16] = 2;
  v7();
  v49 = (v164 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "CardSectionTypeMessage";
  *(v50 + 1) = 22;
  v50[16] = 2;
  v7();
  v51 = (v164 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "CardSectionTypeDetailedRow";
  *(v52 + 1) = 26;
  v52[16] = 2;
  v7();
  v53 = (v164 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "CardSectionTypeImages";
  *(v54 + 1) = 21;
  v54[16] = 2;
  v7();
  v55 = (v164 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "CardSectionTypeSuggestion";
  *(v56 + 1) = 25;
  v56[16] = 2;
  v7();
  v57 = (v164 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "CardSectionTypeSelectableGrid";
  *(v58 + 1) = 29;
  v58[16] = 2;
  v7();
  v59 = (v164 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "CardSectionTypeSectionHeader";
  *(v60 + 1) = 28;
  v60[16] = 2;
  v7();
  v61 = (v164 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "CardSectionTypeMetaInfo";
  *(v62 + 1) = 23;
  v62[16] = 2;
  v7();
  v63 = (v164 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "CardSectionTypeWatchList";
  *(v64 + 1) = 24;
  v64[16] = 2;
  v7();
  v65 = (v164 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "CardSectionTypeMapsDetailedRow";
  *(v66 + 1) = 30;
  v66[16] = 2;
  v7();
  v67 = (v164 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "CardSectionTypeButton";
  *(v68 + 1) = 21;
  v68[16] = 2;
  v7();
  v69 = (v164 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "CardSectionTypeHorizontalButton";
  *(v70 + 1) = 31;
  v70[16] = 2;
  v7();
  v71 = (v164 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "CardSectionTypeVerticalLayout";
  *(v72 + 1) = 29;
  v72[16] = 2;
  v7();
  v73 = (v164 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "CardSectionTypeProduct";
  *(v74 + 1) = 22;
  v74[16] = 2;
  v7();
  v75 = (v164 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "CardSectionTypeHorizontalScroll";
  *(v76 + 1) = 31;
  v76[16] = 2;
  v7();
  v77 = (v164 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "CardSectionTypeMediaRemoteControl";
  *(v78 + 1) = 33;
  v78[16] = 2;
  v7();
  v79 = (v164 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "CardSectionTypeMapPlace";
  *(v80 + 1) = 23;
  v80[16] = 2;
  v7();
  v81 = (v164 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "CardSectionTypeCompactRow";
  *(v82 + 1) = 25;
  v82[16] = 2;
  v7();
  v83 = (v164 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "CardSectionTypeWorldMap";
  *(v84 + 1) = 23;
  v84[16] = 2;
  v7();
  v85 = (v164 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "CardSectionTypeAttributionFooter";
  *(v86 + 1) = 32;
  v86[16] = 2;
  v7();
  v87 = (v164 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "CardSectionTypeGrid";
  *(v88 + 1) = 19;
  v88[16] = 2;
  v7();
  v89 = (v164 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "CardSectionTypePersonHeader";
  *(v90 + 1) = 27;
  v90[16] = 2;
  v7();
  v91 = (v164 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "CardSectionTypeColorBar";
  *(v92 + 1) = 23;
  v92[16] = 2;
  v7();
  v93 = (v164 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "CardSectionTypeSplit";
  *(v94 + 1) = 20;
  v94[16] = 2;
  v7();
  v95 = (v164 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "CardSectionTypeLinkPresentation";
  *(v96 + 1) = 31;
  v96[16] = 2;
  v7();
  v97 = (v164 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = "CardSectionTypeFindMy";
  *(v98 + 1) = 21;
  v98[16] = 2;
  v7();
  v99 = (v164 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "CardSectionTypeHero";
  *(v100 + 1) = 19;
  v100[16] = 2;
  v7();
  v101 = (v164 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 48;
  *v102 = "CardSectionTypeNews";
  *(v102 + 1) = 19;
  v102[16] = 2;
  v7();
  v103 = (v164 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 49;
  *v104 = "CardSectionTypeMini";
  *(v104 + 1) = 19;
  v104[16] = 2;
  v7();
  v105 = (v164 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 50;
  *v106 = "CardSectionTypeInfo";
  *(v106 + 1) = 19;
  v106[16] = 2;
  v7();
  v107 = (v164 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 51;
  *v108 = "CardSectionTypeCollection";
  *(v108 + 1) = 25;
  v108[16] = 2;
  v7();
  v109 = (v164 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 52;
  *v110 = "CardSectionTypeCombined";
  *(v110 + 1) = 23;
  v110[16] = 2;
  v7();
  v111 = (v164 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 53;
  *v112 = "CardSectionTypeResponseWrapper";
  *(v112 + 1) = 30;
  v112[16] = 2;
  v7();
  v113 = (v164 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 54;
  *v114 = "CardSectionTypeListenTo";
  *(v114 + 1) = 23;
  v114[16] = 2;
  v7();
  v115 = (v164 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 55;
  *v116 = "CardSectionTypeWatchNow";
  *(v116 + 1) = 23;
  v116[16] = 2;
  v7();
  v117 = (v164 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 56;
  *v118 = "CardSectionTypeStrokeAnimation";
  *(v118 + 1) = 30;
  v118[16] = 2;
  v7();
  v119 = (v164 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 57;
  *v120 = "CardSectionTypeButtonList";
  *(v120 + 1) = 25;
  v120[16] = 2;
  v7();
  v121 = (v164 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 58;
  *v122 = "CardSectionTypeCommandRow";
  *(v122 + 1) = 25;
  v122[16] = 2;
  v7();
  v123 = (v164 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 59;
  *v124 = "CardSectionTypeLeadingTrailing";
  *(v124 + 1) = 30;
  v124[16] = 2;
  v7();
  v125 = (v164 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 60;
  *v126 = "CardSectionTypeHeroTitle";
  *(v126 + 1) = 24;
  v126[16] = 2;
  v7();
  v127 = (v164 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 61;
  *v128 = "CardSectionTypeArchiveView";
  *(v128 + 1) = 26;
  v128[16] = 2;
  v7();
  v129 = (v164 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "CardSectionTypeAppIcon";
  *(v130 + 1) = 22;
  v130[16] = 2;
  v7();
  v131 = (v164 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 64;
  *v132 = "CardSectionTypeLargeTitleDetailedRow";
  *(v132 + 1) = 36;
  v132[16] = 2;
  v7();
  v133 = (v164 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 200;
  *v134 = "CardSectionTypeRFSummaryItemShortNumber";
  *(v134 + 1) = 39;
  v134[16] = 2;
  v7();
  v135 = (v164 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 201;
  *v136 = "CardSectionTypeRFSummaryItemText";
  *(v136 + 1) = 32;
  v136[16] = 2;
  v7();
  v137 = (v164 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 202;
  *v138 = "CardSectionTypeRFSummaryItemStandard";
  *(v138 + 1) = 36;
  v138[16] = 2;
  v7();
  v139 = (v164 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 203;
  *v140 = "CardSectionTypeRFFactItemShortNumber";
  *(v140 + 1) = 36;
  v140[16] = 2;
  v7();
  v141 = (v164 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 204;
  *v142 = "CardSectionTypeRFFactItemStandard";
  *(v142 + 1) = 33;
  v142[16] = 2;
  v7();
  v143 = (v164 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 205;
  *v144 = "CardSectionTypeRFLongItemStandard";
  *(v144 + 1) = 33;
  v144[16] = 2;
  v7();
  v145 = (v164 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 206;
  *v146 = "CardSectionTypeRFPrimaryHeaderRich";
  *(v146 + 1) = 34;
  v146[16] = 2;
  v7();
  v147 = (v164 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 207;
  *v148 = "CardSectionTypeRFPrimaryHeaderStandard";
  *(v148 + 1) = 38;
  v148[16] = 2;
  v7();
  v149 = (v164 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 208;
  *v150 = "CardSectionTypeRFReferenceFootnote";
  *(v150 + 1) = 34;
  v150[16] = 2;
  v7();
  v151 = (v164 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 209;
  *v152 = "CardSectionTypeRFReferenceRich";
  *(v152 + 1) = 30;
  v152[16] = 2;
  v7();
  v153 = (v164 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 210;
  *v154 = "CardSectionTypeRFSimpleItemRich";
  *(v154 + 1) = 31;
  v154[16] = 2;
  v7();
  v155 = (v164 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 211;
  *v156 = "CardSectionTypeRFSimpleItemStandard";
  *(v156 + 1) = 35;
  v156[16] = 2;
  v7();
  v157 = (v164 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 212;
  *v158 = "CardSectionTypeRFSummaryItemAlignedText";
  *(v158 + 1) = 39;
  v158[16] = 2;
  v7();
  v159 = (v164 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 213;
  *v160 = "CardSectionTypeRFExpandableStandard";
  *(v160 + 1) = 35;
  v160[16] = 2;
  v7();
  v161 = (v164 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 214;
  *v162 = "CardSectionTypeRFFactItemButton";
  *(v162 + 1) = 31;
  v162[16] = 2;
  v7();
  return sub_1B964C760();
}