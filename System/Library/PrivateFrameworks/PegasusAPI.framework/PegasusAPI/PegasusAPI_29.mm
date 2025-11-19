uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.underlyingError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v9) + 32);
  OUTLINED_FUNCTION_100_3();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    OUTLINED_FUNCTION_762();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &unk_1EBAC0760, &qword_1B966F9E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.underlyingError.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &unk_1EBAC0760, &qword_1B966F9E8);
  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ErrorFeedback.underlyingError.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v15);
  OUTLINED_FUNCTION_68_4(*(v16 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_114_0();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    v18 = v11 + *(v9 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &unk_1EBAC0760, &qword_1B966F9E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F749A4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &unk_1EBAC0760, &qword_1B966F9E8);
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_154_2();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &unk_1EBAC0760, &qword_1B966F9E8);
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.relatedStartNetworkSearchFeedbackID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.relatedStartNetworkSearchFeedbackID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  *(v1 + 16) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  OUTLINED_FUNCTION_279(v3);
  v4 = *(v3 + 28);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = *(v3 + 32);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.jsonFeedback.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.jsonFeedback.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

void Apple_Parsec_Feedback_V2_CustomFeedback.feedbackType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.feedbackType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501_0(a1);
  *(v1 + 16) = xmmword_1B966F890;
  v2 = OUTLINED_FUNCTION_616_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v2);
  return OUTLINED_FUNCTION_101_2(v3);
}

uint64_t Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.suggestion.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_22_3();
  v11 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v10) + 24);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_276_1();
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = v1;
    *(a1 + 72) = 0;
    *(a1 + 80) = v13;
    *(a1 + 88) = 0;
    *(a1 + 96) = v13;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v2, &unk_1EBAC0768, &qword_1B966F9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.suggestion.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &unk_1EBAC0768, &qword_1B966F9F0);
  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.suggestion.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v16);
  OUTLINED_FUNCTION_256_1(*(v17 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    OUTLINED_FUNCTION_114_0();
    *(v12 + 32) = 0;
    *(v12 + 40) = v19;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 1;
    *(v12 + 72) = 0;
    *(v12 + 80) = v19;
    *(v12 + 88) = 0;
    *(v12 + 96) = v19;
    v20 = v12 + *(v0 + 44);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v18)
    {
      sub_1B8D9207C(v1, &unk_1EBAC0768, &qword_1B966F9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F75064()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &unk_1EBAC0768, &qword_1B966F9F0);
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_319_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &unk_1EBAC0768, &qword_1B966F9F0);
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B8F75174()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  v8 = *(v1(0) + 24);
  OUTLINED_FUNCTION_225_0();
  sub_1B8F1B8B8();
  v9 = v0(0);
  OUTLINED_FUNCTION_220_2(v9);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B8F7523C()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v3 = *(v2(v1) + 24);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F75340@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  v5 = a1(0);
  v6 = a3 + *(v5 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v7 = *(v5 + 24);
  a2(0);
  v8 = OUTLINED_FUNCTION_161_3();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.card.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v9) + 28);
  OUTLINED_FUNCTION_100_3();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = 0;
    OUTLINED_FUNCTION_594_0();
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.card.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.card.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v15);
  OUTLINED_FUNCTION_68_4(*(v16 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
    v18 = v11 + *(v9 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F75684()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  v8 = *(v1(0) + 28);
  OUTLINED_FUNCTION_225_0();
  sub_1B8F1B8B8();
  v9 = v0(0);
  OUTLINED_FUNCTION_220_2(v9);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B8F7574C()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v3 = *(v2(v1) + 28);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.card.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v9) + 32);
  OUTLINED_FUNCTION_100_3();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = 0;
    OUTLINED_FUNCTION_594_0();
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.card.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_CardViewAppearFeedback.card.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v15);
  OUTLINED_FUNCTION_68_4(*(v16 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
    v18 = v11 + *(v9 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F75ACC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC06F0, &qword_1B966F978);
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_31_12();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC06F0, &qword_1B966F978);
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_581_0(a1);
  *(v1 + 8) = 0;
  v2 = OUTLINED_FUNCTION_518_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v2);
  OUTLINED_FUNCTION_543_0(v3);
  v4 = OUTLINED_FUNCTION_661_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v4);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F75E94()
{
  v0 = OUTLINED_FUNCTION_699_0(MEMORY[0x1E69E7CC0]);
  v2 = v1(v0);
  return OUTLINED_FUNCTION_279(v2);
}

uint64_t Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Feedback_V2_ClearInputFeedback.triggerEvent.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Feedback_V2_ClearInputFeedback.triggerEvent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ClearInputFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F76070@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_370_0(a1);
  v2 = v1(0);
  return OUTLINED_FUNCTION_279(v2);
}

uint64_t Apple_Parsec_Feedback_V2_SectionEngagementFeedback.section.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v9) + 28);
  OUTLINED_FUNCTION_100_3();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    Apple_Parsec_Feedback_V2_ResultSectionForFeedback.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &unk_1EBAB9178, &unk_1B964D960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_17();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SectionEngagementFeedback.section.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &unk_1EBAB9178, &unk_1B964D960);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_SectionEngagementFeedback.section.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_608_0(MEMORY[0x1E69E7CC0]);
    v18 = *(v0 + 48);
    type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
    OUTLINED_FUNCTION_756();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v1, &unk_1EBAB9178, &unk_1B964D960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_17();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_SectionEngagementFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F7644C@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = a1(0);
  v6 = a3 + *(v5 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v7 = *(v5 + 28);
  a2(0);
  v8 = OUTLINED_FUNCTION_161_3();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501_0(a1);
  v1 = OUTLINED_FUNCTION_364_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(v1);
  return OUTLINED_FUNCTION_101_2(v2);
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSiteFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSiteFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_280_1(a1);
  v1 = OUTLINED_FUNCTION_616_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(v1);
  return OUTLINED_FUNCTION_101_2(v2);
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_280_1(a1);
  OUTLINED_FUNCTION_733(1);
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  return OUTLINED_FUNCTION_690_0(v1);
}

uint64_t Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v9) + 32);
  OUTLINED_FUNCTION_100_3();
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

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.result.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ResultGradingFeedback.result.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 32));
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

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501_0(a1);
  v1 = OUTLINED_FUNCTION_364_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v1);
  OUTLINED_FUNCTION_543_0(v2);
  v3 = OUTLINED_FUNCTION_661_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v3);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Feedback_V2_Range.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_Range(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_Range.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_Range(v1);
  *v0 = 0;
  v0[1] = 0;
  return OUTLINED_FUNCTION_279(v2);
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.hintRange.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v9) + 40);
  OUTLINED_FUNCTION_100_3();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    *a1 = 0;
    a1[1] = 0;
    OUTLINED_FUNCTION_251_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC0770, &unk_1B966F9F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_5();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.hintRange.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAC0770, &unk_1B966F9F8);
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.hintRange.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Range(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v15);
  OUTLINED_FUNCTION_68_4(*(v16 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    *v11 = 0;
    v11[1] = 0;
    v18 = v11 + *(v9 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0770, &unk_1B966F9F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_5();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F77088()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0770, &unk_1B966F9F8);
    OUTLINED_FUNCTION_43_5();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_317_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0770, &unk_1B966F9F8);
    OUTLINED_FUNCTION_43_5();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  OUTLINED_FUNCTION_643_0(v3);
  v4 = OUTLINED_FUNCTION_663_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(v4);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F773BC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v3 = a2(0);
  return OUTLINED_FUNCTION_163_2(v3);
}

uint64_t Apple_Parsec_Feedback_V2_SessionEndFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ClientTimingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ClientTimingFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_280_1(a1);
  v3 = OUTLINED_FUNCTION_839(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(v3);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return OUTLINED_FUNCTION_694_0(v4);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.feedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_6:
    v9 = OUTLINED_FUNCTION_751();
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(v9);
    return OUTLINED_FUNCTION_163_2(v10);
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B8FAC5C8();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_288();
  return sub_1B8FAC528();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.feedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.feedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_115_4();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_7;
    }

    sub_1B8FAC5C8();
  }

  OUTLINED_FUNCTION_698_0();
LABEL_7:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F778B8(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_115_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_114_6();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_115_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewAppearFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_113_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  return Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewAppearFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewAppearFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    *(v12 + 17) = 0;
    *(v12 + 19) = 0;
    OUTLINED_FUNCTION_842();
    *(v12 + 40) = 0;
    *(v12 + 48) = v18;
    *(v12 + 56) = 0;
    v19 = v12 + *(v0 + 48);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F77C2C(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_113_3();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_113_3();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewDisappearFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_112_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_369_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(v10);
  return OUTLINED_FUNCTION_279(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewDisappearFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_112_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewDisappearFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    OUTLINED_FUNCTION_689_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_112_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F77F94(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_112_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_356_0();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_112_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.rankingFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_110_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v11 = MEMORY[0x1E69E7CC0];
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = v11;
  *(v0 + 24) = v11;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
  return OUTLINED_FUNCTION_694_0(v12);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.rankingFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.rankingFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v11 = 0;
    *(v11 + 8) = 0;
    v17 = MEMORY[0x1E69E7CC0];
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    *(v11 + 24) = v17;
    *(v11 + 32) = 0;
    *(v11 + 40) = 1;
    OUTLINED_FUNCTION_676_0();
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

  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F78320(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_110_3();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_110_3();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sectionRankingFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_109_1();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v11 = MEMORY[0x1E69E7CC0];
  *v0 = 0;
  *(v0 + 8) = v11;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  OUTLINED_FUNCTION_690_0(v12);
  v13 = *(v12 + 36);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sectionRankingFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.sectionRankingFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    v18 = MEMORY[0x1E69E7CC0];
    *v12 = 0;
    *(v12 + 8) = v18;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    OUTLINED_FUNCTION_824();
    v19 = *(v0 + 36);
    type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
    v20 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F786D8(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_109_1();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_109_1();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultRankingFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_108_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v11 = MEMORY[0x1E69E7CC0];
  *v0 = 0;
  *(v0 + 8) = v11;
  *(v0 + 16) = v11;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  OUTLINED_FUNCTION_643_0(v12);
  v13 = OUTLINED_FUNCTION_663_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v13);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultRankingFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_108_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.resultRankingFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    v17 = MEMORY[0x1E69E7CC0];
    *v11 = 0;
    *(v11 + 8) = v17;
    *(v11 + 16) = v17;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    OUTLINED_FUNCTION_676_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = OUTLINED_FUNCTION_837();
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v18);
    v19 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_108_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F78A90(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_108_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_108_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_107_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_751();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v10);
  OUTLINED_FUNCTION_163_2(v11);
  v12 = *(v11 + 24);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v13 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.resultFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_698_0();
    v17 = *(v0 + 24);
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
    v18 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F78E20(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_107_3();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_107_3();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  return Apple_Parsec_Feedback_V2_ResultEngagementFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultEngagementFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_106_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.resultEngagementFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 1;
    *(v12 + 32) = 0;
    *(v12 + 40) = 1;
    *(v12 + 48) = 0;
    *(v12 + 56) = 1;
    *(v12 + 64) = 0;
    *(v12 + 72) = 0xE000000000000000;
    *(v12 + 80) = 0;
    v18 = v12 + *(v0 + 44);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v0 + 48);
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
    v20 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_106_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F791CC(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_106_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_106_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.visibleResultsFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_105_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  OUTLINED_FUNCTION_840(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = 1;
  *(v0 + 32) = v11;
  *(v0 + 40) = v11;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  OUTLINED_FUNCTION_643_0(v12);
  v13 = OUTLINED_FUNCTION_663_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v13);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.visibleResultsFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_105_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.visibleResultsFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    v17 = MEMORY[0x1E69E7CC0];
    *v11 = 0;
    *(v11 + 8) = v17;
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    *(v11 + 32) = v17;
    *(v11 + 40) = v17;
    OUTLINED_FUNCTION_676_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = OUTLINED_FUNCTION_837();
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v18);
    v19 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_105_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F79588(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_105_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_105_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardSectionFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_104_1();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  OUTLINED_FUNCTION_427_0();
  v11 = OUTLINED_FUNCTION_839(v10);
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v11);
  OUTLINED_FUNCTION_543_0(v12);
  v13 = OUTLINED_FUNCTION_661_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v13);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardSectionFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.cardSectionFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_424_0();
    *(v11 + 32) = v17;
    OUTLINED_FUNCTION_745();
    v18 = OUTLINED_FUNCTION_836();
    type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v18);
    v19 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F79918(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_104_1();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_104_1();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.mapsCardSectionEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_103_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  return Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.mapsCardSectionEngagementFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.mapsCardSectionEngagementFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    *(v12 + 24) = 0;
    *(v12 + 32) = v18;
    *(v12 + 40) = 0;
    *(v12 + 48) = v18;
    OUTLINED_FUNCTION_862(0xE000000000000000);
    v19 = *(v0 + 44);
    type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
    v20 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F79CA4(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_103_2();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_103_2();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.storeCardSectionEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(0) + 20);
  if (qword_1EBAB6CB8 != -1)
  {
    OUTLINED_FUNCTION_605_0();
  }

  *(v0 + v11) = qword_1EBAC01C8;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.storeCardSectionEngagementFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_102_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.storeCardSectionEngagementFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_10;
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v18 = *(v0 + 20);
  if (qword_1EBAB6CB8 != -1)
  {
    OUTLINED_FUNCTION_605_0();
  }

  *(v12 + v18) = qword_1EBAC01C8;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7A078(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_102_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_102_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_101_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  OUTLINED_FUNCTION_427_0();
  *(v0 + 32) = v11;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  return OUTLINED_FUNCTION_723_0(started);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_101_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.startSearchFeedback.modify()
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
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(v9);
  OUTLINED_FUNCTION_126_1(started);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_424_0();
    *(v12 + 32) = v18;
    *(v12 + 40) = 0;
    *(v12 + 48) = 1;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    *(v12 + 72) = 1;
    v19 = v12 + *(v0 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_101_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7A414(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_101_3();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_101_3();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_100_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  v0[1] = 0;
  v11 = OUTLINED_FUNCTION_517_0();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(v11);
  return OUTLINED_FUNCTION_279(v12);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_100_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.endSearchFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_534_0();
    *(v11 + 16) = v17;
    OUTLINED_FUNCTION_689_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_100_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7A784(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_100_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_100_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_99_6();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  return Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_99_6();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify()
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
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(v9);
  OUTLINED_FUNCTION_126_1(started);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0xE000000000000000;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0xE000000000000000;
    *(v12 + 64) = sub_1B964C7B0();
    *(v12 + 72) = 0;
    *(v12 + 80) = 1;
    *(v12 + 88) = 0;
    *(v12 + 96) = -2;
    *(v12 + 104) = xmmword_1B9652FE0;
    *(v12 + 120) = 0;
    *(v12 + 128) = 0xE000000000000000;
    *(v12 + 136) = 0;
    *(v12 + 144) = 0xE000000000000000;
    *(v12 + 152) = 0;
    *(v12 + 160) = 1;
    *(v12 + 168) = 0;
    *(v12 + 176) = 0;
    v18 = v12 + *(v0 + 72);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_99_6();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7AB58(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_99_6();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_99_6();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_98_5();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  return Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_98_5();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    OUTLINED_FUNCTION_842();
    *(v12 + 40) = 0;
    *(v12 + 48) = v18;
    *(v12 + 56) = 0;
    *(v12 + 64) = v18;
    *(v12 + 72) = 0;
    *(v12 + 80) = 0;
    *(v12 + 88) = v18;
    *(v12 + 96) = 0;
    *(v12 + 104) = 1;
    *(v12 + 112) = 0;
    *(v12 + 120) = 0;
    *(v12 + 128) = 0;
    *(v12 + 136) = v18;
    v19 = v12 + *(v0 + 64);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v20 = *(v0 + 68);
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
    v21 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_98_5();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7AF00(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_98_5();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_98_5();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startLocalSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_97_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(0) + 20);
  if (qword_1EBAB6CF8 != -1)
  {
    OUTLINED_FUNCTION_604_0();
  }

  *(v0 + v11) = qword_1EBAC0278;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startLocalSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_97_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.startLocalSearchFeedback.modify()
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
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v9);
  OUTLINED_FUNCTION_126_1(started);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_97_4();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_10;
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v18 = *(v0 + 20);
  if (qword_1EBAB6CF8 != -1)
  {
    OUTLINED_FUNCTION_604_0();
  }

  *(v12 + v18) = qword_1EBAC0278;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7B2D4(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_97_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_97_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endLocalSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 17)
    {
      OUTLINED_FUNCTION_96_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0u;
  *(v0 + 16) = 0xE000000000000000;
  *(v0 + 24) = 0;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  OUTLINED_FUNCTION_690_0(v11);
  v12 = *(v11 + 36);
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_663_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v17);
  v18 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endLocalSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.endLocalSearchFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v12 = 0u;
    *(v12 + 16) = 0xE000000000000000;
    *(v12 + 24) = 0;
    OUTLINED_FUNCTION_824();
    v18 = *(v0 + 36);
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = OUTLINED_FUNCTION_837();
    type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v23);
    v24 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 17)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7B6BC(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_96_2();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_96_2();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.errorFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 18)
    {
      OUTLINED_FUNCTION_95_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  v0[1] = 0;
  v11 = OUTLINED_FUNCTION_517_0();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v11);
  OUTLINED_FUNCTION_279(v12);
  v13 = *(v12 + 28);
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  v18 = *(v12 + 32);
  OUTLINED_FUNCTION_83();
  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.errorFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.errorFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_534_0();
    *(v12 + 16) = v18;
    OUTLINED_FUNCTION_689_0();
    v19 = *(v0 + 28);
    v20 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
    v24 = *(v0 + 32);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 18)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7BA98(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_95_3();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_95_3();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.customFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 19)
    {
      OUTLINED_FUNCTION_94_6();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = xmmword_1B966F890;
  v11 = OUTLINED_FUNCTION_616_0();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v11);
  return OUTLINED_FUNCTION_101_2(v12);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.customFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_94_6();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.customFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = xmmword_1B966F890;
    *(v11 + 32) = 1;
    OUTLINED_FUNCTION_745();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 19)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_94_6();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7BE24(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_94_6();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_94_6();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.suggestionEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 20)
    {
      OUTLINED_FUNCTION_93_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_751();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v10);
  OUTLINED_FUNCTION_163_2(v11);
  v12 = *(v11 + 24);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  v13 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.suggestionEngagementFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.suggestionEngagementFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_698_0();
    v17 = *(v0 + 24);
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
    v18 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 20)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7C1B4(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_93_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_93_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardViewDisappearFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 21)
    {
      OUTLINED_FUNCTION_92_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_369_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v10);
  OUTLINED_FUNCTION_279(v11);
  v12 = *(v11 + 28);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  v13 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardViewDisappearFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.cardViewDisappearFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    OUTLINED_FUNCTION_689_0();
    v17 = *(v0 + 28);
    type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
    v18 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 21)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7C548(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_92_3();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_92_3();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.visibleSuggestionsFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 22)
    {
      OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_699_0(MEMORY[0x1E69E7CC0]);
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(v10);
  return OUTLINED_FUNCTION_279(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.visibleSuggestionsFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.visibleSuggestionsFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_669_0(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 22)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7C8BC(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_91_2();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_91_2();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultsReceivedAfterTimeoutFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 23)
    {
      OUTLINED_FUNCTION_90_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_699_0(MEMORY[0x1E69E7CC0]);
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(v10);
  return OUTLINED_FUNCTION_279(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultsReceivedAfterTimeoutFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.resultsReceivedAfterTimeoutFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_669_0(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 23)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7CC30(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_90_3();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_90_3();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.lateSectionsAppendedFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 24)
    {
      OUTLINED_FUNCTION_89_6();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_699_0(MEMORY[0x1E69E7CC0]);
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(v10);
  return OUTLINED_FUNCTION_279(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.lateSectionsAppendedFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.lateSectionsAppendedFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_669_0(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 24)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_89_6();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7CFA4(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_89_6();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_89_6();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.clearInputFeedback_p.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 25)
    {
      OUTLINED_FUNCTION_88_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_369_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(v10);
  return OUTLINED_FUNCTION_279(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.clearInputFeedback_p.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.clearInputFeedback_p.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    OUTLINED_FUNCTION_689_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 25)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_88_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7D30C(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_88_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_88_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sectionEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 26)
    {
      OUTLINED_FUNCTION_87_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_369_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v10);
  OUTLINED_FUNCTION_279(v11);
  v12 = *(v11 + 28);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v13 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sectionEngagementFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.sectionEngagementFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    OUTLINED_FUNCTION_689_0();
    v17 = *(v0 + 28);
    type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
    v18 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 26)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7D6A0(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_87_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_87_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.visibleSectionHeaderFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 27)
    {
      OUTLINED_FUNCTION_86_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  v0[1] = 0;
  v11 = OUTLINED_FUNCTION_364_0();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(v11);
  return OUTLINED_FUNCTION_101_2(v12);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.visibleSectionHeaderFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_86_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.visibleSectionHeaderFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    OUTLINED_FUNCTION_842();
    OUTLINED_FUNCTION_745();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 27)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_86_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7DA10(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_86_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_86_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.didGoToSiteFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 28)
    {
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  OUTLINED_FUNCTION_427_0();
  v10 = OUTLINED_FUNCTION_616_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(v10);
  return OUTLINED_FUNCTION_101_2(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.didGoToSiteFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_85_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.didGoToSiteFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_424_0();
    *(v11 + 32) = 1;
    OUTLINED_FUNCTION_745();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 28)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_85_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7DD84(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_85_2();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_85_2();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.didGoToSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 29)
    {
      OUTLINED_FUNCTION_84_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  OUTLINED_FUNCTION_427_0();
  OUTLINED_FUNCTION_733(1);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  return OUTLINED_FUNCTION_690_0(v10);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.didGoToSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.didGoToSearchFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_424_0();
    *(v11 + 32) = 1;
    *(v11 + 40) = 0;
    *(v11 + 48) = 1;
    OUTLINED_FUNCTION_824();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 29)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_84_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7E108(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_84_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_84_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sessionMissingResultsFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 30)
    {
      OUTLINED_FUNCTION_83_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_699_0(MEMORY[0x1E69E7CC0]);
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(v10);
  return OUTLINED_FUNCTION_279(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sessionMissingResultsFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_83_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.sessionMissingResultsFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_669_0(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 30)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_83_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7E47C(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_83_3();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_83_3();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sessionMissingSuggestionsFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 31)
    {
      OUTLINED_FUNCTION_82_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_699_0(MEMORY[0x1E69E7CC0]);
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(v10);
  return OUTLINED_FUNCTION_279(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sessionMissingSuggestionsFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_82_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.sessionMissingSuggestionsFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_669_0(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 31)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_82_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7E7F0(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_82_3();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_82_3();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultGradingFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 32)
    {
      OUTLINED_FUNCTION_81_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  v0[1] = 0;
  v11 = OUTLINED_FUNCTION_364_0();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v11);
  OUTLINED_FUNCTION_543_0(v12);
  v13 = OUTLINED_FUNCTION_661_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v13);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultGradingFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_81_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.resultGradingFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    OUTLINED_FUNCTION_842();
    OUTLINED_FUNCTION_745();
    v16 = OUTLINED_FUNCTION_836();
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v16);
    v17 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 32)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_81_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7EB80(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_81_3();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_81_3();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.lookupHintRelevancyFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 33)
    {
      OUTLINED_FUNCTION_80_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  *(v0 + 8) = 0;
  OUTLINED_FUNCTION_594_0();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = v11;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  OUTLINED_FUNCTION_643_0(v12);
  v13 = OUTLINED_FUNCTION_663_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(v13);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.lookupHintRelevancyFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.lookupHintRelevancyFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_534_0();
    *(v11 + 16) = v17;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 1;
    *(v11 + 48) = 0;
    *(v11 + 56) = v17;
    OUTLINED_FUNCTION_676_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = OUTLINED_FUNCTION_837();
    type metadata accessor for Apple_Parsec_Feedback_V2_Range(v18);
    v19 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 33)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7EF40(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_80_2();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_80_2();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.connectionInvalidatedFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 34)
    {
      OUTLINED_FUNCTION_79_5();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_751();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(v10);
  return OUTLINED_FUNCTION_163_2(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.connectionInvalidatedFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_79_5();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.connectionInvalidatedFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_698_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 34)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_79_5();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7F2A4(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_79_5();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_355_0();
  }

  else
  {
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_79_5();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardSectionEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 35)
    {
      OUTLINED_FUNCTION_78_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(0) + 20);
  if (qword_1EBAB6CA0 != -1)
  {
    OUTLINED_FUNCTION_603_0();
  }

  *(v0 + v11) = qword_1EBAC0190;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardSectionEngagementFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.cardSectionEngagementFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 35)
    {
      OUTLINED_FUNCTION_78_3();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_10;
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v18 = *(v0 + 20);
  if (qword_1EBAB6CA0 != -1)
  {
    OUTLINED_FUNCTION_603_0();
  }

  *(v12 + v18) = qword_1EBAC0190;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7F664(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_78_3();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_78_3();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sessionEndFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 36)
    {
      OUTLINED_FUNCTION_77_5();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v10 = OUTLINED_FUNCTION_369_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(v10);
  return OUTLINED_FUNCTION_279(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sessionEndFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_77_5();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.sessionEndFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    OUTLINED_FUNCTION_689_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 36)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_77_5();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7F9CC(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_77_5();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_77_5();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardViewAppearFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 37)
    {
      OUTLINED_FUNCTION_76_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  *(v0 + 8) = 0;
  v11 = OUTLINED_FUNCTION_518_0();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v11);
  OUTLINED_FUNCTION_543_0(v12);
  v13 = OUTLINED_FUNCTION_661_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v13);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardViewAppearFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.cardViewAppearFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0xE000000000000000;
    OUTLINED_FUNCTION_745();
    v17 = OUTLINED_FUNCTION_836();
    type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v17);
    v18 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 37)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7FD68(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_76_3();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_76_3();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.skipSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 38)
    {
      OUTLINED_FUNCTION_75_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  v0[1] = 0;
  OUTLINED_FUNCTION_363_0();
  v12 = OUTLINED_FUNCTION_732(v11);
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(v12);
  return OUTLINED_FUNCTION_723_0(v13);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.skipSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Feedback_V2_SkipSearchFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_280_1(a1);
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = v2;
  v3 = OUTLINED_FUNCTION_732(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(v3);
  return OUTLINED_FUNCTION_723_0(v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.skipSearchFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_424_0();
    *(v11 + 32) = 1;
    *(v11 + 40) = 0;
    *(v11 + 48) = v17;
    OUTLINED_FUNCTION_862(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 38)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F8011C(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_75_2();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_75_2();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cacheHitFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 39)
    {
      OUTLINED_FUNCTION_74_8();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  v0[1] = 0;
  OUTLINED_FUNCTION_363_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
  return OUTLINED_FUNCTION_690_0(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cacheHitFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Feedback_V2_CacheHitFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_280_1(a1);
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
  return OUTLINED_FUNCTION_690_0(v3);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.cacheHitFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_424_0();
    *(v11 + 32) = 1;
    *(v11 + 40) = 0;
    *(v11 + 48) = v17;
    OUTLINED_FUNCTION_824();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 39)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F804D0(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_74_8();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_74_8();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cbaEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 40)
    {
      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  OUTLINED_FUNCTION_752();
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
  return OUTLINED_FUNCTION_690_0(v11);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cbaEngagementFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Apple_Parsec_Feedback_V2_CBAEngagementFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501_0(a1);
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_752();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
  return OUTLINED_FUNCTION_690_0(v3);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.cbaEngagementFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    OUTLINED_FUNCTION_824();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 40)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F8089C(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_73_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_73_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.clientTimingFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 41)
    {
      OUTLINED_FUNCTION_72_5();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  OUTLINED_FUNCTION_427_0();
  v12 = OUTLINED_FUNCTION_839(v11);
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(v12);
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  return OUTLINED_FUNCTION_694_0(v13);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.clientTimingFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.clientTimingFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_424_0();
    v11[5] = 0;
    v11[6] = 0;
    v11[4] = v17;
    OUTLINED_FUNCTION_676_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 41)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F80C18(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_72_5();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_72_5();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.commandEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 42)
    {
      OUTLINED_FUNCTION_71_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0) + 20);
  if (qword_1EBAB6C48 != -1)
  {
    OUTLINED_FUNCTION_602_0();
  }

  *(v0 + v11) = qword_1EBAC0098;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.commandEngagementFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_71_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.commandEngagementFeedback.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v9);
  OUTLINED_FUNCTION_126_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_175_2(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_60_3(v15);
  OUTLINED_FUNCTION_3_24();
  if (v16)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 42)
    {
      OUTLINED_FUNCTION_71_4();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_10;
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v18 = *(v0 + 20);
  if (qword_1EBAB6C48 != -1)
  {
    OUTLINED_FUNCTION_602_0();
  }

  *(v12 + v18) = qword_1EBAC0098;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F80FEC(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_71_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_71_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.dynamicButtonVisibilityFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 43)
    {
      OUTLINED_FUNCTION_70_5();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  v0[1] = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v0[2] = 0xE000000000000000;
  v0[3] = v11;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  return OUTLINED_FUNCTION_101_2(v12);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.dynamicButtonVisibilityFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_70_5();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.dynamicButtonVisibilityFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_534_0();
    v17 = MEMORY[0x1E69E7CC0];
    *(v11 + 16) = v18;
    *(v11 + 24) = v17;
    OUTLINED_FUNCTION_745();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 43)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_70_5();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F81374(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_70_5();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_70_5();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.experimentTriggeredFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 44)
    {
      OUTLINED_FUNCTION_69_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  v0[1] = 0;
  v11 = OUTLINED_FUNCTION_518_0();
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v11);
  OUTLINED_FUNCTION_543_0(v12);
  v13 = OUTLINED_FUNCTION_661_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v13);
  v14 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.experimentTriggeredFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.experimentTriggeredFeedback.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v8);
  OUTLINED_FUNCTION_126_1(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_534_0();
    *(v11 + 16) = 0;
    *(v11 + 24) = v17;
    OUTLINED_FUNCTION_745();
    v18 = OUTLINED_FUNCTION_836();
    type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v18);
    v19 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 44)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F81704(uint64_t **a1)
{
  OUTLINED_FUNCTION_128_3(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_69_4();
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
    sub_1B8D9207C(v5, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_69_4();
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

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.queryID.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  result = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.queryID.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v25;
  a20 = v26;
  v522 = v28;
  v523 = v27;
  v29 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  v30 = OUTLINED_FUNCTION_183(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_21();
  v34 = OUTLINED_FUNCTION_207_3(v33);
  v35 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(v34);
  v36 = OUTLINED_FUNCTION_166_4(v35, &v457);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21();
  v40 = OUTLINED_FUNCTION_207_3(v39);
  v41 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v40);
  v42 = OUTLINED_FUNCTION_166_4(v41, &v511);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_21();
  v46 = OUTLINED_FUNCTION_207_3(v45);
  v47 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(v46);
  v48 = OUTLINED_FUNCTION_183(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_21();
  v52 = OUTLINED_FUNCTION_207_3(v51);
  v53 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(v52);
  v54 = OUTLINED_FUNCTION_183(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_21();
  v58 = OUTLINED_FUNCTION_207_3(v57);
  v59 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(v58);
  v60 = OUTLINED_FUNCTION_183(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_21();
  v64 = OUTLINED_FUNCTION_207_3(v63);
  v65 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(v64);
  v66 = OUTLINED_FUNCTION_183(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_21();
  v70 = OUTLINED_FUNCTION_207_3(v69);
  v71 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v70);
  v72 = OUTLINED_FUNCTION_183(v71);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_21();
  v76 = OUTLINED_FUNCTION_207_3(v75);
  v77 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(v76);
  v78 = OUTLINED_FUNCTION_183(v77);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_21();
  v82 = OUTLINED_FUNCTION_207_3(v81);
  v83 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v82);
  v84 = OUTLINED_FUNCTION_166_4(v83, &v502);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_21();
  v88 = OUTLINED_FUNCTION_207_3(v87);
  v89 = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(v88);
  v90 = OUTLINED_FUNCTION_166_4(v89, &v466);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_21();
  v94 = OUTLINED_FUNCTION_207_3(v93);
  v95 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v94);
  v96 = OUTLINED_FUNCTION_183(v95);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_21();
  v100 = OUTLINED_FUNCTION_207_3(v99);
  v101 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v100);
  v102 = OUTLINED_FUNCTION_183(v101);
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_21();
  v106 = OUTLINED_FUNCTION_207_3(v105);
  v107 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(v106);
  v108 = OUTLINED_FUNCTION_166_4(v107, &v463);
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_21();
  v112 = OUTLINED_FUNCTION_207_3(v111);
  v113 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(v112);
  v114 = OUTLINED_FUNCTION_166_4(v113, &v462);
  v116 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_21();
  v118 = OUTLINED_FUNCTION_207_3(v117);
  v119 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(v118);
  v120 = OUTLINED_FUNCTION_183(v119);
  v122 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_21();
  v124 = OUTLINED_FUNCTION_207_3(v123);
  v125 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(v124);
  v126 = OUTLINED_FUNCTION_166_4(v125, &v456);
  v128 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_21();
  v130 = OUTLINED_FUNCTION_207_3(v129);
  v131 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(v130);
  v132 = OUTLINED_FUNCTION_183(v131);
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_21();
  v136 = OUTLINED_FUNCTION_207_3(v135);
  v137 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v136);
  v138 = OUTLINED_FUNCTION_183(v137);
  v140 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_21();
  v142 = OUTLINED_FUNCTION_207_3(v141);
  v143 = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(v142);
  v144 = OUTLINED_FUNCTION_183(v143);
  v146 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_21();
  v148 = OUTLINED_FUNCTION_207_3(v147);
  v149 = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(v148);
  v150 = OUTLINED_FUNCTION_166_4(v149, &v461);
  v152 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_21();
  v154 = OUTLINED_FUNCTION_207_3(v153);
  v155 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(v154);
  v156 = OUTLINED_FUNCTION_166_4(v155, &v460);
  v158 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v156);
  OUTLINED_FUNCTION_21();
  v160 = OUTLINED_FUNCTION_207_3(v159);
  v161 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(v160);
  v162 = OUTLINED_FUNCTION_166_4(v161, &v459);
  v164 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v162);
  OUTLINED_FUNCTION_21();
  v166 = OUTLINED_FUNCTION_207_3(v165);
  v167 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v166);
  v168 = OUTLINED_FUNCTION_183(v167);
  v170 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v168);
  OUTLINED_FUNCTION_21();
  v172 = OUTLINED_FUNCTION_207_3(v171);
  v173 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v172);
  v174 = OUTLINED_FUNCTION_183(v173);
  v176 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v174);
  OUTLINED_FUNCTION_21();
  v178 = OUTLINED_FUNCTION_207_3(v177);
  v179 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v178);
  v180 = OUTLINED_FUNCTION_166_4(v179, &v455);
  v182 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_21();
  v184 = OUTLINED_FUNCTION_207_3(v183);
  v185 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v184);
  v186 = OUTLINED_FUNCTION_183(v185);
  v188 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v186);
  OUTLINED_FUNCTION_21();
  v190 = OUTLINED_FUNCTION_207_3(v189);
  v191 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v190);
  v192 = OUTLINED_FUNCTION_183(v191);
  v194 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v192);
  OUTLINED_FUNCTION_21();
  v196 = OUTLINED_FUNCTION_207_3(v195);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v196);
  v198 = OUTLINED_FUNCTION_166_4(started, &v482);
  v200 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v198);
  OUTLINED_FUNCTION_21();
  v202 = OUTLINED_FUNCTION_207_3(v201);
  v203 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v202);
  v204 = OUTLINED_FUNCTION_183(v203);
  v206 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v204);
  OUTLINED_FUNCTION_21();
  v208 = OUTLINED_FUNCTION_207_3(v207);
  v209 = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(v208);
  v210 = OUTLINED_FUNCTION_183(v209);
  v212 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v210);
  OUTLINED_FUNCTION_21();
  v214 = OUTLINED_FUNCTION_207_3(v213);
  v215 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(v214);
  v216 = OUTLINED_FUNCTION_166_4(v215, &v465);
  v218 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v216);
  OUTLINED_FUNCTION_21();
  v220 = OUTLINED_FUNCTION_207_3(v219);
  v221 = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(v220);
  v222 = OUTLINED_FUNCTION_183(v221);
  v224 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v222);
  OUTLINED_FUNCTION_21();
  v226 = OUTLINED_FUNCTION_207_3(v225);
  v227 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v226);
  v228 = OUTLINED_FUNCTION_166_4(v227, &v477);
  v230 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v228);
  OUTLINED_FUNCTION_21();
  v232 = OUTLINED_FUNCTION_207_3(v231);
  v233 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v232);
  v234 = OUTLINED_FUNCTION_183(v233);
  v236 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v234);
  OUTLINED_FUNCTION_21();
  v238 = OUTLINED_FUNCTION_207_3(v237);
  v239 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v238);
  v240 = OUTLINED_FUNCTION_183(v239);
  v242 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v240);
  OUTLINED_FUNCTION_21();
  v244 = OUTLINED_FUNCTION_207_3(v243);
  v245 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(v244);
  v246 = OUTLINED_FUNCTION_183(v245);
  v248 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v246);
  OUTLINED_FUNCTION_21();
  v250 = OUTLINED_FUNCTION_207_3(v249);
  v251 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v250);
  v252 = OUTLINED_FUNCTION_183(v251);
  v254 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v252);
  OUTLINED_FUNCTION_21();
  v256 = OUTLINED_FUNCTION_207_3(v255);
  v257 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v256);
  v258 = OUTLINED_FUNCTION_183(v257);
  v260 = *(v259 + 64);
  MEMORY[0x1EEE9AC00](v258);
  OUTLINED_FUNCTION_21();
  v262 = OUTLINED_FUNCTION_207_3(v261);
  v263 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(v262);
  v264 = OUTLINED_FUNCTION_183(v263);
  v266 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v264);
  OUTLINED_FUNCTION_21();
  v268 = OUTLINED_FUNCTION_207_3(v267);
  v269 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v268);
  v270 = OUTLINED_FUNCTION_183(v269);
  v272 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v270);
  OUTLINED_FUNCTION_21();
  v274 = OUTLINED_FUNCTION_207_3(v273);
  v275 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(v274);
  v276 = OUTLINED_FUNCTION_183(v275);
  v278 = *(v277 + 64);
  MEMORY[0x1EEE9AC00](v276);
  OUTLINED_FUNCTION_21();
  v280 = OUTLINED_FUNCTION_207_3(v279);
  v281 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(v280);
  v282 = OUTLINED_FUNCTION_166_4(v281, &v458);
  v284 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v282);
  OUTLINED_FUNCTION_21();
  v286 = OUTLINED_FUNCTION_207_3(v285);
  v287 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(v286);
  v288 = OUTLINED_FUNCTION_183(v287);
  v290 = *(v289 + 64);
  MEMORY[0x1EEE9AC00](v288);
  OUTLINED_FUNCTION_21();
  v292 = OUTLINED_FUNCTION_207_3(v291);
  v293 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(v292);
  v294 = OUTLINED_FUNCTION_166_4(v293, &v464);
  v296 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v294);
  OUTLINED_FUNCTION_21();
  v298 = OUTLINED_FUNCTION_207_3(v297);
  v521 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(v298);
  v299 = OUTLINED_FUNCTION_59_1(v521);
  v301 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v299);
  OUTLINED_FUNCTION_44_0();
  v518 = v302;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v303);
  OUTLINED_FUNCTION_682();
  v520 = v304;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v305);
  OUTLINED_FUNCTION_682();
  v519 = v306;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v307);
  OUTLINED_FUNCTION_682();
  v516 = v308;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v309);
  OUTLINED_FUNCTION_682();
  v514 = v310;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v311);
  OUTLINED_FUNCTION_682();
  v513 = v312;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v313);
  OUTLINED_FUNCTION_682();
  v511 = v314;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v315);
  OUTLINED_FUNCTION_682();
  v509 = v316;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v317);
  OUTLINED_FUNCTION_682();
  v507 = v318;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v319);
  OUTLINED_FUNCTION_682();
  v517 = v320;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v321);
  OUTLINED_FUNCTION_682();
  v515 = v322;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v323);
  OUTLINED_FUNCTION_682();
  v506 = v324;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v325);
  OUTLINED_FUNCTION_682();
  v505 = v326;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v327);
  OUTLINED_FUNCTION_682();
  v510 = v328;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v329);
  OUTLINED_FUNCTION_682();
  v508 = v330;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v331);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v332);
  OUTLINED_FUNCTION_682();
  v512 = v333;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v334);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v335);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v336);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v337);
  OUTLINED_FUNCTION_682();
  v504 = v338;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v339);
  OUTLINED_FUNCTION_682();
  v503 = v340;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v341);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v342);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v343);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v344);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v345);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v346);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v347);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v348);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v349);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v350);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v351);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v352);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v353);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v354);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v355);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  MEMORY[0x1EEE9AC00](v356);
  OUTLINED_FUNCTION_563();
  v358 = MEMORY[0x1EEE9AC00](v357);
  v359 = MEMORY[0x1EEE9AC00](v358);
  MEMORY[0x1EEE9AC00](v359);
  OUTLINED_FUNCTION_512_0();
  MEMORY[0x1EEE9AC00](v360);
  OUTLINED_FUNCTION_720_0();
  MEMORY[0x1EEE9AC00](v361);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_239_0();
  v363 = MEMORY[0x1EEE9AC00](v362);
  MEMORY[0x1EEE9AC00](v363);
  OUTLINED_FUNCTION_725();
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0778, &qword_1B966FA08);
  OUTLINED_FUNCTION_183(v364);
  v366 = *(v365 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v367);
  OUTLINED_FUNCTION_238_0();
  v369 = *(v368 + 56);
  sub_1B8FAC578();
  v523 = v369;
  sub_1B8FAC578();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 1)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_113_3();
      OUTLINED_FUNCTION_666_0(&v468);
      v408 = OUTLINED_FUNCTION_541_0();
      static Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.== infix(_:_:)(v408, v409);
      OUTLINED_FUNCTION_477_0();
      sub_1B8FAC5C8();
      goto LABEL_162;
    case 2u:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&v518);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 2)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_112_4();
      OUTLINED_FUNCTION_666_0(&v471);
      OUTLINED_FUNCTION_318_0();
      if (v373 && (v405 = *(v21 + 16), sub_1B8D92198(*(v22 + 8), *(v22 + 16), *(v21 + 8))))
      {
        OUTLINED_FUNCTION_586_1(&v458);
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v406, v407);
        OUTLINED_FUNCTION_357_0();
        OUTLINED_FUNCTION_356_0();
      }

      else
      {
        OUTLINED_FUNCTION_356_0();
      }

      goto LABEL_162;
    case 3u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 3)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_110_3();
      OUTLINED_FUNCTION_666_0(&v469);
      static Apple_Parsec_Feedback_V2_RankingFeedback.== infix(_:_:)(v24, v21);
      OUTLINED_FUNCTION_477_0();
      sub_1B8FAC5C8();
      goto LABEL_162;
    case 4u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() == 4)
      {
        OUTLINED_FUNCTION_109_1();
        OUTLINED_FUNCTION_490_0(&v470);
        sub_1B8FAC528();
        OUTLINED_FUNCTION_177_1();
        static Apple_Parsec_Feedback_V2_SectionRankingFeedback.== infix(_:_:)();
        OUTLINED_FUNCTION_477_0();
        sub_1B8FAC5C8();
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_222();
      goto LABEL_160;
    case 5u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 5)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_108_4();
      OUTLINED_FUNCTION_490_0(&v472);
      sub_1B8FAC528();
      static Apple_Parsec_Feedback_V2_ResultRankingFeedback.== infix(_:_:)();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_288();
      goto LABEL_162;
    case 6u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 6)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_107_3();
      OUTLINED_FUNCTION_666_0(&v473);
      static Apple_Parsec_Feedback_V2_ResultFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      sub_1B8FAC5C8();
      goto LABEL_162;
    case 7u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 7)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_666_0(&v474);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_ResultEngagementFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 8u:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&v515);
      sub_1B8FAC578();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_105_4();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_202();
      static Apple_Parsec_Feedback_V2_VisibleResultsFeedback.== infix(_:_:)();
      sub_1B8FAC5C8();
      goto LABEL_162;
    case 9u:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&v516);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 9)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_104_1();
      OUTLINED_FUNCTION_666_0(&v475);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_CardSectionFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0xAu:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&v517);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 10)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_103_2();
      OUTLINED_FUNCTION_666_0(&v476);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0xBu:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 11)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_832();
      OUTLINED_FUNCTION_490_0(&v480);
      sub_1B8FAC528();
      OUTLINED_FUNCTION_358_0(&v477);
      if (v373)
      {
        goto LABEL_41;
      }

      v392 = OUTLINED_FUNCTION_432();
      sub_1B8FD2AAC(v392, v393);
      OUTLINED_FUNCTION_87_1();

      if (v20)
      {
        goto LABEL_41;
      }

      goto LABEL_167;
    case 0xCu:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&v519);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 12)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_101_3();
      OUTLINED_FUNCTION_666_0(&v478);
      v398 = OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_StartSearchFeedback.== infix(_:_:)(v398, v399);
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0xDu:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&a11);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 13)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_100_4();
      OUTLINED_FUNCTION_666_0(&v483);
      OUTLINED_FUNCTION_318_0();
      if (v373)
      {
        OUTLINED_FUNCTION_719_0();
        v417 = v373 && v415 == v416;
        if (v417 || (sub_1B964C9F0() & 1) != 0)
        {
          OUTLINED_FUNCTION_586_1(&v465);
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v418, v419);
          OUTLINED_FUNCTION_357_0();
        }
      }

      goto LABEL_161;
    case 0xEu:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&v520);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 14)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_99_6();
      OUTLINED_FUNCTION_666_0(&v479);
      v390 = OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.== infix(_:_:)(v390, v391);
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0xFu:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&v521);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 15)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_98_5();
      OUTLINED_FUNCTION_666_0(&v481);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x10u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 16)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_97_4();
      OUTLINED_FUNCTION_832();
      OUTLINED_FUNCTION_490_0(&v486);
      sub_1B8FAC528();
      OUTLINED_FUNCTION_358_0(&v482);
      if (v373)
      {
        goto LABEL_41;
      }

      v388 = OUTLINED_FUNCTION_432();
      sub_1B8FD8428(v388, v389);
      OUTLINED_FUNCTION_87_1();

      if (v20)
      {
        goto LABEL_41;
      }

      goto LABEL_167;
    case 0x11u:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&v522);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 17)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_96_2();
      OUTLINED_FUNCTION_666_0(&v484);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x12u:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&v523);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 18)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_95_3();
      OUTLINED_FUNCTION_666_0(&v485);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_ErrorFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x13u:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&a16);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 19)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_94_6();
      OUTLINED_FUNCTION_666_0(&v489);
      OUTLINED_FUNCTION_318_0();
      if (v373 && (MEMORY[0x1BFADC060](*(v22 + 8), *(v22 + 16), *(v21 + 8), *(v21 + 16)) & 1) != 0)
      {
        v428 = OUTLINED_FUNCTION_833();
        if (sub_1B8D92198(v428, v429, v430))
        {
          OUTLINED_FUNCTION_801(&v455);
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v431, v432);
          OUTLINED_FUNCTION_357_0();
        }
      }

      goto LABEL_161;
    case 0x14u:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&a9);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 20)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_93_4();
      OUTLINED_FUNCTION_666_0(&v487);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x15u:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&a10);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 21)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_92_3();
      OUTLINED_FUNCTION_666_0(&v488);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x16u:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&a17);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 22)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_666_0(&v490);
      OUTLINED_FUNCTION_318_0();
      if (v373)
      {
        OUTLINED_FUNCTION_695_0();
        sub_1B8D7EC84();
        if (v423)
        {
          OUTLINED_FUNCTION_586_1(&v459);
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v424, v425);
          OUTLINED_FUNCTION_357_0();
        }
      }

      goto LABEL_161;
    case 0x17u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 23)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_90_3();
      OUTLINED_FUNCTION_666_0(&v492);
      OUTLINED_FUNCTION_318_0();
      if (v373)
      {
        OUTLINED_FUNCTION_695_0();
        sub_1B8D7EC30();
        if (v435)
        {
          OUTLINED_FUNCTION_586_1(&v460);
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v436, v437);
          OUTLINED_FUNCTION_357_0();
        }
      }

      goto LABEL_161;
    case 0x18u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 24)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_89_6();
      OUTLINED_FUNCTION_666_0(&v494);
      OUTLINED_FUNCTION_318_0();
      if (v373)
      {
        OUTLINED_FUNCTION_695_0();
        sub_1B8D7FB3C();
        if (v402)
        {
          OUTLINED_FUNCTION_586_1(&v461);
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v403, v404);
          OUTLINED_FUNCTION_357_0();
        }
      }

      goto LABEL_161;
    case 0x19u:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&a13);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 25)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_88_4();
      OUTLINED_FUNCTION_666_0(&v491);
      v400 = OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_ClearInputFeedback.== infix(_:_:)(v400, v401);
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x1Au:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&a14);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 26)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_87_4();
      OUTLINED_FUNCTION_666_0(&v493);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_SectionEngagementFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x1Bu:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&a15);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 27)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_86_4();
      OUTLINED_FUNCTION_666_0(&v495);
      v383 = OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.== infix(_:_:)(v383, v384);
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x1Cu:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 28)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_666_0(&v497);
      OUTLINED_FUNCTION_318_0();
      if (v373)
      {
        OUTLINED_FUNCTION_719_0();
        v440 = v373 && v438 == v439;
        if (v440 || (sub_1B964C9F0() & 1) != 0)
        {
          v441 = OUTLINED_FUNCTION_833();
          if (sub_1B8D92198(v441, v442, v443))
          {
            OUTLINED_FUNCTION_801(&v456);
            OUTLINED_FUNCTION_0_40();
            sub_1B8CD2450(v444, v445);
            OUTLINED_FUNCTION_357_0();
          }
        }
      }

      goto LABEL_161;
    case 0x1Du:
      OUTLINED_FUNCTION_1_34();
      OUTLINED_FUNCTION_490_0(&a18);
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 29)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_84_4();
      OUTLINED_FUNCTION_666_0(&v496);
      v446 = OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.== infix(_:_:)(v446, v447);
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x1Eu:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 30)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_83_3();
      OUTLINED_FUNCTION_666_0(&v499);
      OUTLINED_FUNCTION_318_0();
      if (v373)
      {
        OUTLINED_FUNCTION_695_0();
        sub_1B8D7EC30();
        if (v420)
        {
          OUTLINED_FUNCTION_586_1(&v462);
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v421, v422);
          OUTLINED_FUNCTION_357_0();
        }
      }

      goto LABEL_161;
    case 0x1Fu:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 31)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_82_3();
      OUTLINED_FUNCTION_666_0(&v501);
      OUTLINED_FUNCTION_318_0();
      if (v373)
      {
        OUTLINED_FUNCTION_695_0();
        sub_1B8D7EC84();
        if (v410)
        {
          OUTLINED_FUNCTION_586_1(&v463);
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v411, v412);
          OUTLINED_FUNCTION_357_0();
        }
      }

      goto LABEL_161;
    case 0x20u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 32)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_81_3();
      OUTLINED_FUNCTION_666_0(&v498);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_ResultGradingFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x21u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 33)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_80_2();
      OUTLINED_FUNCTION_666_0(&v500);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x22u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 34)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_79_5();
      OUTLINED_FUNCTION_666_0(&v503);
      OUTLINED_FUNCTION_318_0();
      if (v373)
      {
        v385 = *(v454 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v386, v387);
        OUTLINED_FUNCTION_357_0();
      }

      OUTLINED_FUNCTION_355_0();
      goto LABEL_162;
    case 0x23u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 35)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_78_3();
      OUTLINED_FUNCTION_832();
      OUTLINED_FUNCTION_490_0(&v507);
      sub_1B8FAC528();
      OUTLINED_FUNCTION_358_0(&v502);
      if (v373)
      {
        goto LABEL_41;
      }

      v379 = OUTLINED_FUNCTION_432();
      sub_1B8FCFF74(v379, v380);
      OUTLINED_FUNCTION_87_1();

      if (v20)
      {
        goto LABEL_41;
      }

      goto LABEL_167;
    case 0x24u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 36)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_77_5();
      OUTLINED_FUNCTION_666_0(&v504);
      v381 = OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_SessionEndFeedback.== infix(_:_:)(v381, v382);
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x25u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 37)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_76_3();
      OUTLINED_FUNCTION_666_0(&v505);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_CardViewAppearFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x26u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 38)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_75_2();
      OUTLINED_FUNCTION_666_0(&v506);
      v448 = OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_SkipSearchFeedback.== infix(_:_:)(v448, v449);
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x27u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 39)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_74_8();
      OUTLINED_FUNCTION_666_0(&v508);
      v426 = OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_CacheHitFeedback.== infix(_:_:)(v426, v427);
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x28u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 40)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_73_4();
      OUTLINED_FUNCTION_666_0(&v509);
      v396 = OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_CBAEngagementFeedback.== infix(_:_:)(v396, v397);
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x29u:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 41)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_72_5();
      OUTLINED_FUNCTION_666_0(&v510);
      v413 = OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_ClientTimingFeedback.== infix(_:_:)(v413, v414);
      OUTLINED_FUNCTION_477_0();
      goto LABEL_147;
    case 0x2Au:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 42)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_71_4();
      OUTLINED_FUNCTION_832();
      OUTLINED_FUNCTION_490_0(&v513);
      sub_1B8FAC528();
      OUTLINED_FUNCTION_358_0(&v511);
      if (v373 || (, , v433 = OUTLINED_FUNCTION_432(), sub_1B8FC9348(v433, v434), OUTLINED_FUNCTION_87_1(), , (v20 & 1) != 0))
      {
LABEL_41:
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v394, v395);
        OUTLINED_FUNCTION_257();
        sub_1B964C850();
      }

LABEL_167:
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_763();
      OUTLINED_FUNCTION_23_10();
      goto LABEL_168;
    case 0x2Bu:
      OUTLINED_FUNCTION_1_34();
      v370 = v520;
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 43)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_70_5();
      OUTLINED_FUNCTION_666_0(&v514);
      OUTLINED_FUNCTION_318_0();
      if (v373)
      {
        OUTLINED_FUNCTION_719_0();
        v373 = v373 && v371 == v372;
        if (v373 || (sub_1B964C9F0() & 1) != 0)
        {
          v374 = *(v370 + 24);
          v375 = *(v21 + 24);
          sub_1B8D7F7FC();
          if (v376)
          {
            OUTLINED_FUNCTION_801(&v457);
            OUTLINED_FUNCTION_0_40();
            sub_1B8CD2450(v377, v378);
            OUTLINED_FUNCTION_357_0();
          }
        }
      }

LABEL_161:
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_202();
      goto LABEL_162;
    case 0x2Cu:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0() != 44)
      {
        goto LABEL_160;
      }

      OUTLINED_FUNCTION_69_4();
      OUTLINED_FUNCTION_666_0(&v512);
      OUTLINED_FUNCTION_186();
      static Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.== infix(_:_:)();
      OUTLINED_FUNCTION_477_0();
LABEL_147:
      sub_1B8FAC5C8();
      goto LABEL_162;
    default:
      OUTLINED_FUNCTION_1_34();
      sub_1B8FAC578();
      if (OUTLINED_FUNCTION_422_0())
      {
        OUTLINED_FUNCTION_114_6();
LABEL_160:
        sub_1B8FAC5C8();
        sub_1B8D9207C(v20, &unk_1EBAC0778, &qword_1B966FA08);
      }

      else
      {
        OUTLINED_FUNCTION_115_4();
        OUTLINED_FUNCTION_666_0(&v467);
        if (*v23 == *v21)
        {
          v450 = *(v453 + 20);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v451, v452);
          sub_1B964C850();
        }

        OUTLINED_FUNCTION_114_6();
        sub_1B8FAC5C8();
        OUTLINED_FUNCTION_114_6();
LABEL_162:
        sub_1B8FAC5C8();
        OUTLINED_FUNCTION_23_10();
LABEL_168:
        sub_1B8FAC5C8();
      }

      OUTLINED_FUNCTION_283();
      return;
  }
}

uint64_t static Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v10)
  {
    return 0;
  }

  OUTLINED_FUNCTION_295_0(v4);
  OUTLINED_FUNCTION_641_0();
  if (!sub_1B8D92198(v5, v6, v7) || v3[17] != v2[17] || v3[18] != v2[18] || v3[19] != v2[19])
  {
    return 0;
  }

  OUTLINED_FUNCTION_226_0();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_727();
  v13 = v10 && v11 == v12;
  if (!v13 && (sub_1B964C9F0() & 1) == 0 || v3[56] != v2[56])
  {
    return 0;
  }

  v15 = *(type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(0) + 48);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v16, v17);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_227_0(a1, a2);
  if (!v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_295_0(v2);
  OUTLINED_FUNCTION_641_0();
  if (!sub_1B8D92198(v4, v5, v6))
  {
    return 0;
  }

  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(0);
  OUTLINED_FUNCTION_188_1(v7);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

void static Apple_Parsec_Feedback_V2_SectionRankingFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_280();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB9178, &unk_1B964D960);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9180, &unk_1B966FA10);
  OUTLINED_FUNCTION_163_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_426_0();
  if (!v22)
  {
    goto LABEL_18;
  }

  v17 = *(v1 + 8);
  v18 = *(v0 + 8);
  sub_1B8D7FD9C();
  if ((v19 & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  v20 = *(v29 + 36);
  v21 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_50(v2);
  if (v22)
  {
    OUTLINED_FUNCTION_50(v2 + v21);
    if (v22)
    {
      sub_1B8D9207C(v2, &unk_1EBAB9178, &unk_1B964D960);
      goto LABEL_14;
    }

LABEL_12:
    sub_1B8D9207C(v2, &qword_1EBAB9180, &unk_1B966FA10);
LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v2 + v21);
  if (v22)
  {
    OUTLINED_FUNCTION_156_5();
    sub_1B8FAC5C8();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Feedback_V2_ResultSectionForFeedback.== infix(_:_:)();
  v24 = v23;
  OUTLINED_FUNCTION_579_0();
  sub_1B8FAC5C8();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v2, &unk_1EBAB9178, &unk_1B964D960);
  if ((v24 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  OUTLINED_FUNCTION_735();
  if (!v22 || *(v1 + 24) != *(v0 + 24))
  {
    goto LABEL_18;
  }

  v25 = *(v29 + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v26, v27);
  v28 = OUTLINED_FUNCTION_634();
LABEL_19:
  OUTLINED_FUNCTION_264(v28);
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Feedback_V2_ResultRankingFeedback.== infix(_:_:)()
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
  OUTLINED_FUNCTION_176_4();
  if (!v19)
  {
    goto LABEL_21;
  }

  v17 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0) + 40);
  v18 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v19)
  {
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

LABEL_21:
        v36 = 0;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_155_3();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_197();
      sub_1B8FAC5C8();
      v20 = &qword_1EBAB9168;
      v21 = &qword_1B964D950;
LABEL_12:
      sub_1B8D9207C(v2, v20, v21);
      goto LABEL_21;
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
  v28 = *(v1 + 8);
  v29 = *(v0 + 8);
  sub_1B8D7EC30();
  if ((v30 & 1) == 0)
  {
    goto LABEL_21;
  }

  v31 = *(v1 + 16);
  v32 = *(v0 + 16);
  sub_1B8D7EC30();
  if ((v33 & 1) == 0 || *(v1 + 24) != *(v0 + 24) || *(v1 + 32) != *(v0 + 32))
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_814();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v34, v35);
  v36 = OUTLINED_FUNCTION_199_0();
LABEL_22:
  OUTLINED_FUNCTION_264(v36);
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Feedback_V2_ResultFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_112();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v2);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_137();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9170, &qword_1B964D958);
  OUTLINED_FUNCTION_163_4(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_176_4();
  if (!v17)
  {
    goto LABEL_13;
  }

  v30 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(0);
  v15 = *(v30 + 24);
  v16 = *(v1 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_37_0(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_37_0(v0 + v16);
    if (v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9168, &qword_1B964D950);
LABEL_18:
      v27 = *(v30 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_40();
      sub_1B8CD2450(v28, v29);
      v20 = OUTLINED_FUNCTION_199_0();
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v0 + v16);
  if (v17)
  {
    OUTLINED_FUNCTION_13_13();
    sub_1B8FAC5C8();
LABEL_11:
    v18 = &qword_1EBAB9170;
    v19 = &qword_1B964D958;
LABEL_12:
    sub_1B8D9207C(v0, v18, v19);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_829();
  OUTLINED_FUNCTION_494_0();
  if (!v21)
  {

    v22 = OUTLINED_FUNCTION_616();
    sub_1B8FB7DA4(v22, v23);
    OUTLINED_FUNCTION_813();

    if ((&qword_1B964D950 & 1) == 0)
    {
      OUTLINED_FUNCTION_155_3();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_763();
      v18 = &qword_1EBAB9168;
      v19 = &qword_1B964D950;
      goto LABEL_12;
    }
  }

  v24 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v25, v26);
  OUTLINED_FUNCTION_257();
  sub_1B964C850();
  OUTLINED_FUNCTION_146_2();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_730();
  sub_1B8D9207C(v0, &qword_1EBAB9168, &qword_1B964D950);
  if (v24)
  {
    goto LABEL_18;
  }

LABEL_13:
  v20 = 0;
LABEL_14:
  OUTLINED_FUNCTION_264(v20);
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Feedback_V2_ResultEngagementFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_112();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9170, &qword_1B964D958);
  OUTLINED_FUNCTION_163_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_176_4();
  if (!v26)
  {
    goto LABEL_17;
  }

  if (*(v1 + 8) != *(v0 + 8))
  {
    goto LABEL_17;
  }

  v17 = OUTLINED_FUNCTION_852();
  if (!sub_1B8D92198(v17, v18, v19))
  {
    goto LABEL_17;
  }

  v20 = OUTLINED_FUNCTION_851();
  if (!sub_1B8D92198(v20, v21, v22))
  {
    goto LABEL_17;
  }

  v23 = *(v0 + 56);
  if (!sub_1B8D92198(*(v1 + 48), *(v1 + 56), *(v0 + 48)))
  {
    goto LABEL_17;
  }

  v40 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  v24 = *(v40 + 48);
  v25 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v26)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_37_0(v2 + v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_2_21();
      OUTLINED_FUNCTION_829();
      OUTLINED_FUNCTION_494_0();
      if (v30 || (, , v31 = OUTLINED_FUNCTION_616(), sub_1B8FB7DA4(v31, v32), OUTLINED_FUNCTION_813(), , (&qword_1B964D950 & 1) != 0))
      {
        v33 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v34, v35);
        OUTLINED_FUNCTION_257();
        sub_1B964C850();
        OUTLINED_FUNCTION_146_2();
        sub_1B8FAC5C8();
        OUTLINED_FUNCTION_730();
        sub_1B8D9207C(v2, &qword_1EBAB9168, &qword_1B964D950);
        if ((v33 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }

      OUTLINED_FUNCTION_155_3();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_763();
      v27 = &qword_1EBAB9168;
      v28 = &qword_1B964D950;
LABEL_16:
      sub_1B8D9207C(v2, v27, v28);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_13_13();
    sub_1B8FAC5C8();
LABEL_15:
    v27 = &qword_1EBAB9170;
    v28 = &qword_1B964D958;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_37_0(v2 + v25);
  if (!v26)
  {
    goto LABEL_15;
  }

  sub_1B8D9207C(v2, &qword_1EBAB9168, &qword_1B964D950);
LABEL_22:
  v36 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
  if (v36 || (sub_1B964C9F0()) && *(v1 + 80) == *(v0 + 80))
  {
    v37 = *(v40 + 44);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_40();
    sub_1B8CD2450(v38, v39);
    v29 = OUTLINED_FUNCTION_199_0();
    goto LABEL_18;
  }

LABEL_17:
  v29 = 0;
LABEL_18:
  OUTLINED_FUNCTION_264(v29);
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Feedback_V2_VisibleResultsFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_112();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9170, &qword_1B964D958);
  OUTLINED_FUNCTION_163_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_176_4();
  if (!v25)
  {
    goto LABEL_21;
  }

  v17 = v1[1];
  v18 = v0[1];
  sub_1B8D7EC30();
  if ((v19 & 1) == 0)
  {
    goto LABEL_21;
  }

  v20 = OUTLINED_FUNCTION_852();
  if (!sub_1B8D92198(v20, v21, v22))
  {
    goto LABEL_21;
  }

  v23 = *(type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0) + 40);
  v24 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v25)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_37_0(v2 + v24);
    if (!v25)
    {
      OUTLINED_FUNCTION_2_21();
      OUTLINED_FUNCTION_829();
      OUTLINED_FUNCTION_494_0();
      if (v28 || (, , v29 = OUTLINED_FUNCTION_616(), sub_1B8FB7DA4(v29, v30), OUTLINED_FUNCTION_813(), , (&qword_1B964D950 & 1) != 0))
      {
        v31 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_40();
        sub_1B8CD2450(v32, v33);
        OUTLINED_FUNCTION_257();
        sub_1B964C850();
        OUTLINED_FUNCTION_146_2();
        sub_1B8FAC5C8();
        OUTLINED_FUNCTION_730();
        sub_1B8D9207C(v2, &qword_1EBAB9168, &qword_1B964D950);
        if (v31)
        {
          goto LABEL_18;
        }

LABEL_21:
        v36 = 0;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_155_3();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_763();
      v26 = &qword_1EBAB9168;
      v27 = &qword_1B964D950;
LABEL_14:
      sub_1B8D9207C(v2, v26, v27);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_13_13();
    sub_1B8FAC5C8();
LABEL_13:
    v26 = &qword_1EBAB9170;
    v27 = &qword_1B964D958;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_37_0(v2 + v24);
  if (!v25)
  {
    goto LABEL_13;
  }

  sub_1B8D9207C(v2, &qword_1EBAB9168, &qword_1B964D950);
LABEL_18:
  if ((sub_1B8D921A4(v1[4], v0[4]) & 1) == 0 || (sub_1B8D6123C(v1[5], v0[5]) & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_814();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v34, v35);
  v36 = OUTLINED_FUNCTION_199_0();
LABEL_22:
  OUTLINED_FUNCTION_264(v36);
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Feedback_V2_CardSectionFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v3);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0780, &qword_1B966FA20);
  OUTLINED_FUNCTION_163_4(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_426_0();
  if (!v18)
  {
    goto LABEL_12;
  }

  v16 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(0) + 32);
  v17 = *(v2 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_99_0(v1);
  if (!v18)
  {
    OUTLINED_FUNCTION_690();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_99_0(v1 + v17);
    if (!v18)
    {
      OUTLINED_FUNCTION_10_15();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_541_0();
      v20 = static Apple_Parsec_Feedback_V2_CardSectionForFeedback.== infix(_:_:)();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_730();
      sub_1B8D9207C(v1, &qword_1EBAC0730, &qword_1B966F9B8);
      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_331_0();
    sub_1B8FAC5C8();
LABEL_11:
    sub_1B8D9207C(v1, &qword_1EBAC0780, &qword_1B966FA20);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_99_0(v1 + v17);
  if (!v18)
  {
    goto LABEL_11;
  }

  sub_1B8D9207C(v1, &qword_1EBAC0730, &qword_1B966F9B8);
LABEL_15:
  v21 = *(v0 + 8);
  v22 = *(v0 + 16);
  OUTLINED_FUNCTION_524_0();
  if (v18)
  {
    v25 = v23 == v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_226_0();
    v28 = v18 && v26 == v27;
    if (v28 || (sub_1B964C9F0() & 1) != 0)
    {
      OUTLINED_FUNCTION_628();
      OUTLINED_FUNCTION_0_40();
      sub_1B8CD2450(v29, v30);
      v19 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }
  }

LABEL_12:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_280();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0788, &qword_1B966FA28);
  OUTLINED_FUNCTION_163_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_426_0();
  if (!v19)
  {
    goto LABEL_27;
  }

  v42 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(0);
  v17 = *(v42 + 44);
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
      OUTLINED_FUNCTION_4_23();
      sub_1B8FAC528();
      v20 = OUTLINED_FUNCTION_541_0();
      v22 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v20, v21);
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_730();
      sub_1B8D9207C(v2, &qword_1EBAC06D8, &qword_1B966F960);
      if (v22)
      {
        goto LABEL_13;
      }

LABEL_27:
      v41 = 0;
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_119_2();
    sub_1B8FAC5C8();
LABEL_11:
    sub_1B8D9207C(v2, &qword_1EBAC0788, &qword_1B966FA28);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_99_0(v2 + v18);
  if (!v19)
  {
    goto LABEL_11;
  }

  sub_1B8D9207C(v2, &qword_1EBAC06D8, &qword_1B966F960);
LABEL_13:
  v23 = v1[1];
  OUTLINED_FUNCTION_641_0();
  if (!sub_1B8D92198(v24, v25, v26))
  {
    goto LABEL_27;
  }

  v27 = OUTLINED_FUNCTION_491_0();
  if (!sub_1B8D92198(v27, v28, v29))
  {
    goto LABEL_27;
  }

  v30 = OUTLINED_FUNCTION_625_0();
  if (!sub_1B8D582E8(v30, v31, v32, v33))
  {
    goto LABEL_27;
  }

  v34 = v1[7] == *(v0 + 56) && v1[8] == *(v0 + 64);
  if (!v34 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_737();
  v37 = v19 && v35 == v36;
  if (!v37 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v38 = *(v42 + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v39, v40);
  v41 = OUTLINED_FUNCTION_634();
LABEL_28:
  OUTLINED_FUNCTION_264(v41);
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Feedback_V2_StartSearchFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

  v12 = OUTLINED_FUNCTION_625_0();
  if (!sub_1B8D92198(v12, v13, v14))
  {
    return 0;
  }

  if (*(v3 + 56) != *(v2 + 56))
  {
    return 0;
  }

  v15 = OUTLINED_FUNCTION_627_0();
  if (!sub_1B8D92198(v15, v16, v17))
  {
    return 0;
  }

  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  OUTLINED_FUNCTION_868(started);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v19, v20);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Feedback_V2_EndSearchFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(0);
  OUTLINED_FUNCTION_188_1(v7);
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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
  if (!v8)
  {
    return 0;
  }

  v12 = *(v3 + 48);
  v13 = *(v3 + 56);
  OUTLINED_FUNCTION_850();
  v16 = v8 && v14 == v15;
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8DB02F8(*(v3 + 64), *(v2 + 64));
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = *(v2 + 80);
  if (!sub_1B8D92198(*(v3 + 72), *(v3 + 80), *(v2 + 72)))
  {
    return 0;
  }

  v19 = *(v3 + 96);
  v20 = *(v2 + 96);
  if (v19 <= 0xFD)
  {
    v21 = *(v2 + 88);
    v31 = *(v3 + 88);
    v32 = v19;
    if (v20 > 0xFD)
    {
      return 0;
    }

    v29 = v21;
    v30 = v20;
    if ((static Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.OneOf_Trigger.== infix(_:_:)(&v31, &v29) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20 <= 0xFD)
  {
    return 0;
  }

  if (MEMORY[0x1BFADC060](*(v3 + 104), *(v3 + 112), *(v2 + 104), *(v2 + 112)))
  {
    v22 = *(v3 + 120) == *(v2 + 120) && *(v3 + 128) == *(v2 + 128);
    if (v22 || (sub_1B964C9F0() & 1) != 0)
    {
      v23 = *(v3 + 136) == *(v2 + 136) && *(v3 + 144) == *(v2 + 144);
      if (v23 || (sub_1B964C9F0() & 1) != 0)
      {
        v24 = *(v2 + 160);
        if (sub_1B8D92198(*(v3 + 152), *(v3 + 160), *(v2 + 152)) && *(v3 + 168) == *(v2 + 168) && *(v3 + 176) == *(v2 + 176))
        {
          v25 = *(type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(0) + 72);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_40();
          sub_1B8CD2450(v26, v27);
          return OUTLINED_FUNCTION_634() & 1;
        }
      }
    }
  }

  return 0;
}

void static Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_112();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0738, &qword_1B966F9C0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0790, &qword_1B966FA30);
  OUTLINED_FUNCTION_163_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_176_4();
  if (!v17 || *(v1 + 8) != *(v0 + 8) || *(v1 + 16) != *(v0 + 16))
  {
    goto LABEL_48;
  }

  v17 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_48;
  }

  v18 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v18 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_48;
  }

  v19 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_48;
  }

  if (*(v1 + 72) != *(v0 + 72))
  {
    goto LABEL_48;
  }

  v20 = *(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88);
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_48;
  }

  v38 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  v21 = *(v38 + 68);
  v22 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_461_0();
  OUTLINED_FUNCTION_37_0(v2);
  if (v17)
  {
    OUTLINED_FUNCTION_37_0(v2 + v22);
    if (v17)
    {
      sub_1B8D9207C(v2, &qword_1EBAC0738, &qword_1B966F9C0);
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v2 + v22);
  if (v23)
  {
    OUTLINED_FUNCTION_328_0();
    sub_1B8FAC5C8();
LABEL_34:
    v24 = &unk_1EBAC0790;
    v25 = &qword_1B966FA30;
LABEL_35:
    sub_1B8D9207C(v2, v24, v25);
LABEL_48:
    v37 = 0;
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_49_9();
  OUTLINED_FUNCTION_829();
  OUTLINED_FUNCTION_494_0();
  if (!v26)
  {

    v27 = OUTLINED_FUNCTION_616();
    sub_1B8FAD8E8(v27, v28);
    OUTLINED_FUNCTION_813();

    if ((&qword_1B966F9C0 & 1) == 0)
    {
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_763();
      v24 = &qword_1EBAC0738;
      v25 = &qword_1B966F9C0;
      goto LABEL_35;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v29, v30);
  OUTLINED_FUNCTION_257();
  v31 = sub_1B964C850();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_730();
  sub_1B8D9207C(v2, &qword_1EBAC0738, &qword_1B966F9C0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_39:
  v32 = *(v0 + 104);
  if (!sub_1B8D92198(*(v1 + 96), *(v1 + 104), *(v0 + 96)) || *(v1 + 112) != *(v0 + 112) || *(v1 + 120) != *(v0 + 120))
  {
    goto LABEL_48;
  }

  v33 = *(v1 + 128) == *(v0 + 128) && *(v1 + 136) == *(v0 + 136);
  if (!v33 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_48;
  }

  v34 = *(v38 + 64);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v35, v36);
  v37 = OUTLINED_FUNCTION_199_0();
LABEL_49:
  OUTLINED_FUNCTION_264(v37);
  OUTLINED_FUNCTION_283();
}

void static Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_112();
  v68 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v5);
  v6 = OUTLINED_FUNCTION_59_1(v68);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0758, &qword_1B966F9E0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v64 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0798, &qword_1B966FA38);
  OUTLINED_FUNCTION_59_1(v67);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_173();
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  v19 = OUTLINED_FUNCTION_59_1(UnderstandingParse);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0750, &qword_1B966F9D8);
  OUTLINED_FUNCTION_183(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_88();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07A0, &qword_1B966FA40);
  OUTLINED_FUNCTION_59_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v64 - v33;
  OUTLINED_FUNCTION_340_0();
  if (!v39)
  {
    goto LABEL_36;
  }

  v35 = *(v1 + 8);
  v36 = *(v1 + 16);
  OUTLINED_FUNCTION_524_0();
  v39 = v39 && v37 == v38;
  if (!v39 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_36;
  }

  v64[0] = v3;
  v64[1] = v14;
  v66 = v4;
  v65 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  v40 = *(v65 + 36);
  v41 = *(v29 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v34);
  if (v39)
  {
    OUTLINED_FUNCTION_37_0(&v34[v41]);
    if (v39)
    {
      sub_1B8D9207C(v34, &qword_1EBAC0750, &qword_1B966F9D8);
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(&v34[v41]);
  if (v42)
  {
    OUTLINED_FUNCTION_298_0();
    sub_1B8FAC5C8();
LABEL_16:
    v43 = &qword_1EBAC07A0;
    v44 = &qword_1B966FA40;
LABEL_17:
    v45 = v34;
LABEL_18:
    sub_1B8D9207C(v45, v43, v44);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_46_5();
  sub_1B8FAC528();
  v46 = *(UnderstandingParse + 20);
  v47 = *(v2 + v46);
  v48 = *(v24 + v46);
  if (v47 != v48 && (sub_1B8FDB238(v47, v48) & 1) == 0)
  {
    sub_1B8FAC5C8();
    OUTLINED_FUNCTION_182();
    sub_1B8FAC5C8();
    v43 = &qword_1EBAC0750;
    v44 = &qword_1B966F9D8;
    goto LABEL_17;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v49, v50);
  OUTLINED_FUNCTION_709_0();
  v51 = sub_1B964C850();
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_1_0();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v34, &qword_1EBAC0750, &qword_1B966F9D8);
  if ((v51 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if (*(v1 + 24) != *(v0 + 24) || *(v1 + 28) != *(v0 + 28))
  {
    goto LABEL_36;
  }

  v53 = v65;
  v52 = v66;
  v54 = *(v65 + 40);
  v55 = *(v67 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v56 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v56, v57, v68);
  if (!v39)
  {
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_37_0(v52 + v55);
    if (!v58)
    {
      OUTLINED_FUNCTION_45_4();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_257();
      v59 = static Apple_Parsec_Feedback_V2_PhotosRankingInfo.== infix(_:_:)();
      sub_1B8FAC5C8();
      OUTLINED_FUNCTION_541_0();
      sub_1B8FAC5C8();
      sub_1B8D9207C(v52, &qword_1EBAC0758, &qword_1B966F9E0);
      if (v59)
      {
        goto LABEL_35;
      }

LABEL_36:
      v63 = 0;
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_323_0();
    sub_1B8FAC5C8();
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_37_0(v52 + v55);
  if (!v39)
  {
LABEL_33:
    v43 = &qword_1EBAC0798;
    v44 = &qword_1B966FA38;
    v45 = v52;
    goto LABEL_18;
  }

  sub_1B8D9207C(v52, &qword_1EBAC0758, &qword_1B966F9E0);
LABEL_35:
  v60 = *(v53 + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v61, v62);
  v63 = OUTLINED_FUNCTION_199_0();
LABEL_37:
  OUTLINED_FUNCTION_264(v63);
  OUTLINED_FUNCTION_283();
}