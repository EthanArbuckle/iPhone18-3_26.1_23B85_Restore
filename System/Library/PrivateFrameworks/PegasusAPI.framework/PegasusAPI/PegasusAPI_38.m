uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.status.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_56_4();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9069CE8(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_18();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  return result;
}

void (*Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.status.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_521();
  v5 = *(v4 + 24);
  *(v1 + 72) = *(v4 + 16);
  *(v1 + 80) = v5;
  return sub_1B9066D28;
}

void sub_1B9066D28()
{
  OUTLINED_FUNCTION_243();
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 84);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    OUTLINED_FUNCTION_16_16();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9069CE8(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_18();
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  OUTLINED_FUNCTION_242();

  free(v12);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_17_14(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_29_17();
  v10 = type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    v12 = a1 + *(v10 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_25();
    v13 = OUTLINED_FUNCTION_182();
    return sub_1B906CE08(v13, v14);
  }

  return result;
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.error.setter(uint64_t a1)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_139();
  v10 = OUTLINED_FUNCTION_56_4();
  v11 = *(v2 + v3);
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v12 = OUTLINED_FUNCTION_40_0();
    *(v4 + v3) = sub_1B9069CE8(v12);
  }

  OUTLINED_FUNCTION_11_25();
  sub_1B906CE08(a1, v1);
  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_55_4();
  v17 = OUTLINED_FUNCTION_122_0();
  sub_1B906CF4C(v17, v18, v19, v20);
  return swift_endAccess();
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.error.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v1[4] = v6;
  v7 = type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v1[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v1[6] = v10;
  OUTLINED_FUNCTION_6_16();
  v11 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
  OUTLINED_FUNCTION_74();
  sub_1B906D5EC(v0 + v11, v6, &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v10 = 0;
    v10[1] = 0;
    *(v10 + 16) = -1;
    v13 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_25();
    sub_1B906CE08(v6, v10);
  }

  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.hasError.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_17_14(v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_53_7(v0 + v8);
  type metadata accessor for Apple_Parsec_Search_Error();
  v9 = OUTLINED_FUNCTION_493();
  __swift_getEnumTagSinglePayload(v9, v10, v11);
  OUTLINED_FUNCTION_32_12();
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.clearError()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  v6 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v10 = OUTLINED_FUNCTION_40_0();
    *(v1 + v6) = sub_1B9069CE8(v10);
  }

  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_55_4();
  v15 = OUTLINED_FUNCTION_122_0();
  sub_1B906CF4C(v15, v16, v17, v18);
  swift_endAccess();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traceID.getter()
{
  OUTLINED_FUNCTION_14_14();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
  OUTLINED_FUNCTION_521();
  v4 = *v2;
  v3 = v2[1];

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B9067320(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traceID.setter(v1, v2);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traceID.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = OUTLINED_FUNCTION_56_4();
  v8 = *(v2 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9069CE8(v9);
    *(v4 + v3) = v8;
  }

  v10 = (v8 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
  OUTLINED_FUNCTION_18();
  v11 = v10[1];
  *v10 = a1;
  v10[1] = a2;
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traceID.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
  OUTLINED_FUNCTION_521();
  v5 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B906746C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 64);
    v6 = *(*a1 + 56);

    v7 = OUTLINED_FUNCTION_461();
    Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traceID.setter(v7, v8);
    v9 = *(v2 + 56);
  }

  else
  {
    v10 = *(v2 + 72);
    v11 = *(v2 + 64);
    v12 = *(v11 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v2 + 72);
      v16 = *(v2 + 64);
      OUTLINED_FUNCTION_16_16();
      v17 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B9069CE8(v17);
      *(v16 + v15) = v14;
    }

    v18 = (v14 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
    OUTLINED_FUNCTION_18();
    v19 = v18[1];
    *v18 = v3;
    v18[1] = v4;
  }

  free(v2);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.appSpecificResults.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_6_16();
  v3 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  OUTLINED_FUNCTION_521();
  return sub_1B906D5EC(v1 + v3, a1, &qword_1EBAC34A0, &qword_1B9685B08);
}

uint64_t sub_1B9067598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B906D5EC(a1, &v6 - v4, &qword_1EBAC34A0, &qword_1B9685B08);
  return Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.appSpecificResults.setter();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.appSpecificResults.setter()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(v2) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v7 = OUTLINED_FUNCTION_40_0();
    *(v1 + v3) = sub_1B9069CE8(v7);
  }

  OUTLINED_FUNCTION_55_4();
  v8 = OUTLINED_FUNCTION_122_0();
  sub_1B906CF4C(v8, v9, v10, v11);
  return swift_endAccess();
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.appSpecificResults.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  *(v1 + 56) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 72) = v9;
  v10 = *(v0 + v9);
  v11 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  OUTLINED_FUNCTION_521();
  sub_1B906D5EC(v10 + v11, v8, &qword_1EBAC34A0, &qword_1B9685B08);
  OUTLINED_FUNCTION_242();
}

void sub_1B90677B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v5 = *(v2 + 48);
    sub_1B906D5EC(v3, v4, &qword_1EBAC34A0, &qword_1B9685B08);
    Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.appSpecificResults.setter();
    v6 = OUTLINED_FUNCTION_236();
    sub_1B8D9207C(v6, v7, &qword_1B9685B08);
  }

  else
  {
    v8 = *(v2 + 72);
    v9 = *(v2 + 48);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v2 + 72);
      v14 = *(v2 + 48);
      OUTLINED_FUNCTION_16_16();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B9069CE8(v15);
      *(v14 + v13) = v12;
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v16 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
    OUTLINED_FUNCTION_55_4();
    sub_1B906CF4C(v3, v12 + v16, &qword_1EBAC34A0, &qword_1B9685B08);
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.spotlightSearchResults.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_17_14(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_29_17();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAC34A0, &qword_1B9685B08);
    return Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.init()(a1);
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_49();
    sub_1B906CEB8();
    return Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.init()(a1);
  }

  OUTLINED_FUNCTION_13_15();
  v13 = OUTLINED_FUNCTION_182();
  return sub_1B906CE08(v13, v14);
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.spotlightSearchResults.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_26_3(v6);
  v7 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 48) = v10;
  OUTLINED_FUNCTION_6_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_37_6();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_13_15();
      v26 = OUTLINED_FUNCTION_177_1();
      sub_1B906CE08(v26, v27);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_0_49();
    sub_1B906CEB8();
  }

  OUTLINED_FUNCTION_77_2();
  v10[4] = 0;
  v10[5] = v13;
  *(v10 + 3) = xmmword_1B9652FE0;
  v10[8] = 0;
  *(v10 + 72) = 0;
  v10[10] = 0;
  v10[11] = v13;
  v14 = MEMORY[0x1E69E7CC0];
  v10[12] = sub_1B964C7B0();
  v10[13] = v14;
  v15 = v10 + v7[13];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v16 = v7[14];
  sub_1B964C150();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = v7[15];
  type metadata accessor for Searchfoundation_EngagementSignal(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
LABEL_7:
  OUTLINED_FUNCTION_283();
}

void sub_1B9067BCC()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    sub_1B906CE60(*(*v0 + 48), v3);
    v2(v3);
    sub_1B906CEB8();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.lookupSearchResults.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_17_14(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_29_17();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_10_20();
      v12 = OUTLINED_FUNCTION_182();
      return sub_1B906CE08(v12, v13);
    }

    OUTLINED_FUNCTION_0_49();
    sub_1B906CEB8();
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1B9652FE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = MEMORY[0x1E69E7CC0];
  v15 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  v16 = a1 + *(v15 + 40);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v17 = *(v15 + 44);
  sub_1B964C150();
  OUTLINED_FUNCTION_83();
  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.lookupSearchResults.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_26_3(v6);
  v7 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 48) = v10;
  OUTLINED_FUNCTION_6_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_37_6();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAC34A0, &qword_1B9685B08);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v10[2] = xmmword_1B9652FE0;
    *(v10 + 6) = 0;
    *(v10 + 56) = 0;
    *(v10 + 8) = MEMORY[0x1E69E7CC0];
    v15 = v10 + *(v7 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v7 + 44);
    sub_1B964C150();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_0_49();
    sub_1B906CEB8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10_20();
  v13 = OUTLINED_FUNCTION_177_1();
  sub_1B906CE08(v13, v14);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.safariSearchResults.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_17_14(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_29_17();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_9_20();
      v12 = OUTLINED_FUNCTION_182();
      return sub_1B906CE08(v12, v13);
    }

    OUTLINED_FUNCTION_0_49();
    sub_1B906CEB8();
  }

  return Apple_Parsec_Safari_V1alpha_SafariSearchResults.init()(a1);
}

void sub_1B90680A8()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_139();
  v9 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v13 = OUTLINED_FUNCTION_40_0();
    *(v2 + v9) = sub_1B9069CE8(v13);
  }

  sub_1B906CE08(v4, v0);
  v14 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  OUTLINED_FUNCTION_55_4();
  v18 = OUTLINED_FUNCTION_122_0();
  sub_1B906CF4C(v18, v19, v20, v21);
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.safariSearchResults.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_26_3(v6);
  v7 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 48) = v10;
  OUTLINED_FUNCTION_6_16();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_37_6();
  type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  OUTLINED_FUNCTION_37_0(v0);
  if (v11)
  {
    sub_1B8D9207C(v0, &qword_1EBAC34A0, &qword_1B9685B08);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v10[2] = xmmword_1B9652FE0;
    *(v10 + 48) = 0;
    *(v10 + 7) = 0;
    *(v10 + 8) = v15;
    *(v10 + 36) = 0;
    v16 = MEMORY[0x1E69E7CC0];
    *(v10 + 10) = MEMORY[0x1E69E7CC0];
    *(v10 + 11) = v16;
    *(v10 + 12) = v16;
    v17 = v10 + *(v7 + 56);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v7 + 60);
    sub_1B964C150();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_0_49();
    sub_1B906CEB8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_20();
  v13 = OUTLINED_FUNCTION_177_1();
  sub_1B906CE08(v13, v14);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.serviceDebug.getter()
{
  OUTLINED_FUNCTION_14_14();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
  OUTLINED_FUNCTION_521();
  v4 = *(v2 + v3);
}

uint64_t sub_1B90683DC(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.serviceDebug.setter();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.serviceDebug.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_16();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9069CE8(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
  OUTLINED_FUNCTION_18();
  v10 = *(v7 + v9);
  *(v7 + v9) = v0;
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.serviceDebug.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_14_14();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
  OUTLINED_FUNCTION_521();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B906850C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.serviceDebug.setter();
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
      OUTLINED_FUNCTION_16_16();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B9069CE8(v14);
      *(v13 + v12) = v11;
    }

    v15 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
    OUTLINED_FUNCTION_18();
    v16 = *(v11 + v15);
    *(v11 + v15) = v3;
  }

  free(v2);
}

void static Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v46 = v1;
  v3 = v2;
  v4 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  v5 = OUTLINED_FUNCTION_183(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_59_6(v8);
  v9 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  v10 = OUTLINED_FUNCTION_183(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v15 = v14 - v13;
  v16 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  v17 = OUTLINED_FUNCTION_183(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v22 = v21 - v20;
  v23 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  v24 = OUTLINED_FUNCTION_59_1(v23);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v45 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v45 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34B0, &qword_1B9685B10);
  OUTLINED_FUNCTION_183(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_139();
  v40 = *(v39 + 56);
  sub_1B906CE60(v3, v0);
  sub_1B906CE60(v46, v0 + v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v42 = OUTLINED_FUNCTION_7_25();
      sub_1B906CE60(v42, v32);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_10_20();
        sub_1B906CE08(v0 + v40, v15);
        static Apple_Parsec_Lookup_V1alpha_LookupSearchResults.== infix(_:_:)();
        sub_1B906CEB8();
LABEL_11:
        sub_1B906CEB8();
        OUTLINED_FUNCTION_0_49();
        sub_1B906CEB8();
        goto LABEL_12;
      }
    }

    else
    {
      v44 = OUTLINED_FUNCTION_7_25();
      sub_1B906CE60(v44, v29);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_9_20();
        sub_1B906CE08(v0 + v40, v45);
        static Apple_Parsec_Safari_V1alpha_SafariSearchResults.== infix(_:_:)();
        sub_1B906CEB8();
        goto LABEL_11;
      }
    }
  }

  else
  {
    v43 = OUTLINED_FUNCTION_7_25();
    sub_1B906CE60(v43, v34);
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_13_15();
      sub_1B906CE08(v0 + v40, v22);
      static Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults.== infix(_:_:)();
      sub_1B906CEB8();
      goto LABEL_11;
    }
  }

  sub_1B906CEB8();
  sub_1B8D9207C(v0, &qword_1EBAC34B0, &qword_1B9685B10);
LABEL_12:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0) + 20);
  if (qword_1EBAB70A0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBAC3478;
}

uint64_t sub_1B9068A30()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3448);
  __swift_project_value_buffer(v0, qword_1EBAC3448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query_context";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "request_metadata";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 5)
    {
      OUTLINED_FUNCTION_288();
      sub_1B9068D58();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_288();
      sub_1B9068CA4();
    }
  }

  return result;
}

uint64_t sub_1B9068CA4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0) + 20);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B906CFB8(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

uint64_t sub_1B9068D58()
{
  v0 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0) + 24);
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  sub_1B906CFB8(&qword_1EBAB4E18, type metadata accessor for Searchfoundation_DrillDownMetadata);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v39 = a3;
  v37 = a1;
  v38 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_156();
  v35 = type metadata accessor for Searchfoundation_DrillDownMetadata(v11);
  v12 = OUTLINED_FUNCTION_59_1(v35);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v34 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v24 = OUTLINED_FUNCTION_59_1(Context);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v29 = v28 - v27;
  v30 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(0);
  v31 = *(v30 + 20);
  v36 = v6;
  sub_1B906D5EC(v6 + v31, v22, &qword_1EBABED40, &qword_1B96809F0);
  if (__swift_getEnumTagSinglePayload(v22, 1, Context) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    OUTLINED_FUNCTION_1_43();
    sub_1B906CE08(v22, v29);
    sub_1B906CFB8(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
    sub_1B964C740();
    OUTLINED_FUNCTION_26_13();
    result = sub_1B906CEB8();
    if (v4)
    {
      return result;
    }
  }

  sub_1B906D5EC(v36 + *(v30 + 24), v5, &qword_1EBAC3480, &unk_1B9685AF8);
  if (__swift_getEnumTagSinglePayload(v5, 1, v35) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBAC3480, &unk_1B9685AF8);
  }

  else
  {
    OUTLINED_FUNCTION_2_25();
    sub_1B906CE08(v5, v34);
    sub_1B906CFB8(&qword_1EBAB4E18, type metadata accessor for Searchfoundation_DrillDownMetadata);
    sub_1B964C740();
    OUTLINED_FUNCTION_25_12();
    result = sub_1B906CEB8();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

void static Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v63 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  v6 = OUTLINED_FUNCTION_59_1(v63);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v59 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v58 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34B8, &qword_1B96CA750);
  OUTLINED_FUNCTION_59_1(v62);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = OUTLINED_FUNCTION_59_6(v19);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v20);
  v22 = OUTLINED_FUNCTION_59_1(Context);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_139();
  v32 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10) - 8);
  v33 = *(*v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_156();
  v61 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest(v35);
  v36 = *(v61 + 20);
  v37 = v32[14];
  v65 = v5;
  sub_1B906D5EC(v5 + v36, v1, &qword_1EBABED40, &qword_1B96809F0);
  sub_1B906D5EC(v3 + v36, v1 + v37, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_37_0(v1);
  if (!v38)
  {
    sub_1B906D5EC(v1, v0, &qword_1EBABED40, &qword_1B96809F0);
    OUTLINED_FUNCTION_37_0(v1 + v37);
    if (!v38)
    {
      OUTLINED_FUNCTION_1_43();
      sub_1B906CE08(v1 + v37, v27);
      v42 = *(Context + 20);
      v43 = *(v0 + v42);
      v44 = *(v27 + v42);
      if (v43 == v44 || (v45 = *(v0 + v42), , , v46 = sub_1B9090820(v43, v44), , , v46))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_12_19();
        sub_1B906CFB8(v47, v48);
        v49 = sub_1B964C850();
        sub_1B906CEB8();
        sub_1B906CEB8();
        sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
        if ((v49 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }

      sub_1B906CEB8();
      OUTLINED_FUNCTION_432();
      sub_1B906CEB8();
      v39 = &qword_1EBABED40;
      v40 = &qword_1B96809F0;
LABEL_10:
      v41 = v1;
LABEL_20:
      sub_1B8D9207C(v41, v39, v40);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_26_13();
    sub_1B906CEB8();
LABEL_9:
    v39 = &qword_1EBABED68;
    v40 = &qword_1B9680A10;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v1 + v37);
  if (!v38)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
LABEL_14:
  v50 = *(v61 + 24);
  v51 = *(v62 + 48);
  v52 = v64;
  sub_1B906D5EC(v65 + v50, v64, &qword_1EBAC3480, &unk_1B9685AF8);
  sub_1B906D5EC(v3 + v50, v52 + v51, &qword_1EBAC3480, &unk_1B9685AF8);
  v53 = v63;
  if (__swift_getEnumTagSinglePayload(v52, 1, v63) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v52 + v51, 1, v53) == 1)
    {
      sub_1B8D9207C(v52, &qword_1EBAC3480, &unk_1B9685AF8);
LABEL_23:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_12_19();
      sub_1B906CFB8(v56, v57);
      sub_1B964C850();
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1B906D5EC(v52, v60, &qword_1EBAC3480, &unk_1B9685AF8);
  if (__swift_getEnumTagSinglePayload(v52 + v51, 1, v53) == 1)
  {
    OUTLINED_FUNCTION_25_12();
    sub_1B906CEB8();
LABEL_19:
    v39 = &qword_1EBAC34B8;
    v40 = &qword_1B96CA750;
    v41 = v52;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_2_25();
  sub_1B906CE08(v52 + v51, v59);
  OUTLINED_FUNCTION_461();
  static Searchfoundation_DrillDownMetadata.== infix(_:_:)();
  v55 = v54;
  sub_1B906CEB8();
  OUTLINED_FUNCTION_128();
  sub_1B906CEB8();
  sub_1B8D9207C(v52, &qword_1EBAC3480, &unk_1B9685AF8);
  if (v55)
  {
    goto LABEL_23;
  }

LABEL_21:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9069730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B906CFB8(&qword_1EBAC3550, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90697B0(uint64_t a1)
{
  v2 = sub_1B906CFB8(&qword_1EBAC34D8, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9069820()
{
  sub_1B906CFB8(&qword_1EBAC34D8, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B90698BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3460);
  __swift_project_value_buffer(v0, qword_1EBAC3460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "trace_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 50;
  *v15 = "spotlight_search_results";
  *(v15 + 1) = 24;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 51;
  *v17 = "lookup_search_results";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 52;
  *v19 = "safari_search_results";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 100;
  *v21 = "service_debug";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9069BEC()
{
  v0 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B9069C2C();
  qword_1EBAC3478 = result;
  return result;
}

uint64_t sub_1B9069C2C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
  v2 = type metadata accessor for Apple_Parsec_Search_Error();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  v5 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *(v0 + v6) = sub_1B964C7B0();
  return v0;
}

uint64_t sub_1B9069CE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v10 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
  v11 = type metadata accessor for Apple_Parsec_Search_Error();
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  v14 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *(v1 + v15) = sub_1B964C7B0();
  swift_beginAccess();
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v16;
  *(v1 + 24) = v17;
  v18 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v18, v9, &qword_1EBAB9188, &qword_1B964D970);
  swift_beginAccess();
  sub_1B906CF4C(v9, v1 + v10, &qword_1EBAB9188, &qword_1B964D970);
  swift_endAccess();
  v19 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  swift_beginAccess();
  v22 = v12[1];
  *v12 = v20;
  v12[1] = v21;

  v23 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  v24 = v29;
  sub_1B906D5EC(a1 + v23, v29, &qword_1EBAC34A0, &qword_1B9685B08);
  swift_beginAccess();
  sub_1B906CF4C(v24, v1 + v13, &qword_1EBAC34A0, &qword_1B9685B08);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
  swift_beginAccess();
  v26 = *(a1 + v25);

  swift_beginAccess();
  v27 = *(v1 + v15);
  *(v1 + v15) = v26;

  return v1;
}

uint64_t sub_1B906A034()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error, &qword_1EBAB9188, &qword_1B964D970);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults, &qword_1EBAC34A0, &qword_1B9685B08);
  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug);

  return v0;
}

uint64_t sub_1B906A0B0()
{
  v0 = sub_1B906A034();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9069CE8(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B906A1A4(v11, a1, a2, a3);
}

uint64_t sub_1B906A1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        sub_1B906B514();
        break;
      case 2:
        sub_1B906A378();
        break;
      case 3:
        sub_1B906A454();
        break;
      case 50:
        sub_1B906A4E0(a1, a2, a3, a4);
        break;
      case 51:
        sub_1B906AA34(a1, a2, a3, a4);
        break;
      case 52:
        sub_1B906AFA4(a1, a2, a3, a4);
        break;
      case 1:
        sub_1B906A2E4();
        break;
    }
  }

  return result;
}

uint64_t sub_1B906A2E4()
{
  swift_beginAccess();
  sub_1B8F2116C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B906A378()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_Error();
  sub_1B906CFB8(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B906A454()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B906A4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v48 = a3;
  v47 = a2;
  v5 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3568, &unk_1B9685F50);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v40 - v28;
  __swift_storeEnumTagSinglePayload(&v40 - v28, 1, 1, v5);
  v30 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  v42 = a1;
  v40 = v30;
  sub_1B906D5EC(a1 + v30, v15, &qword_1EBAC34A0, &qword_1B9685B08);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    sub_1B906CE08(v15, v22);
    sub_1B906CE08(v22, v20);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B906CEB8();
    }

    else
    {
      sub_1B8D9207C(v29, &qword_1EBAC3568, &unk_1B9685F50);
      v32 = v43;
      sub_1B906CE08(v20, v43);
      sub_1B906CE08(v32, v29);
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v5);
    }
  }

  sub_1B906CFB8(&qword_1EBAC3560, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults);
  v33 = v45;
  sub_1B964C580();
  if (v33)
  {
    v34 = v29;
    return sub_1B8D9207C(v34, &qword_1EBAC3568, &unk_1B9685F50);
  }

  sub_1B906D5EC(v29, v27, &qword_1EBAC3568, &unk_1B9685F50);
  if (__swift_getEnumTagSinglePayload(v27, 1, v5) == 1)
  {
    sub_1B8D9207C(v29, &qword_1EBAC3568, &unk_1B9685F50);
    v34 = v27;
    return sub_1B8D9207C(v34, &qword_1EBAC3568, &unk_1B9685F50);
  }

  v36 = v44;
  sub_1B906CE08(v27, v44);
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v29, &qword_1EBAC3568, &unk_1B9685F50);
  v37 = v41;
  sub_1B906CE08(v36, v41);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v16);
  v38 = v42;
  v39 = v40;
  swift_beginAccess();
  sub_1B906CF4C(v37, v38 + v39, &qword_1EBAC34A0, &qword_1B9685B08);
  return swift_endAccess();
}

uint64_t sub_1B906AA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v50 = a3;
  v49 = a2;
  v5 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2D30, &unk_1B96E8F80);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v40 - v28;
  __swift_storeEnumTagSinglePayload(&v40 - v28, 1, 1, v5);
  v30 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  v41 = v30;
  sub_1B906D5EC(a1 + v30, v15, &qword_1EBAC34A0, &qword_1B9685B08);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v44 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    v40 = a1;
    sub_1B906CE08(v15, v22);
    sub_1B906CE08(v22, v20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v29, &qword_1EBAC2D30, &unk_1B96E8F80);
      v31 = v46;
      sub_1B906CE08(v20, v46);
      sub_1B906CE08(v31, v29);
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v5);
    }

    else
    {
      sub_1B906CEB8();
    }

    a1 = v40;
  }

  sub_1B906CFB8(&qword_1EBAC2CD8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);
  v32 = v47;
  sub_1B964C580();
  if (v32)
  {
    v33 = v29;
    return sub_1B8D9207C(v33, &qword_1EBAC2D30, &unk_1B96E8F80);
  }

  sub_1B906D5EC(v29, v27, &qword_1EBAC2D30, &unk_1B96E8F80);
  if (__swift_getEnumTagSinglePayload(v27, 1, v5) == 1)
  {
    sub_1B8D9207C(v29, &qword_1EBAC2D30, &unk_1B96E8F80);
    v33 = v27;
    return sub_1B8D9207C(v33, &qword_1EBAC2D30, &unk_1B96E8F80);
  }

  v35 = v45;
  sub_1B906CE08(v27, v45);
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v36 = v44;
  sub_1B8D9207C(v29, &qword_1EBAC2D30, &unk_1B96E8F80);
  v37 = v35;
  v38 = v42;
  sub_1B906CE08(v37, v42);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v36);
  v39 = v41;
  swift_beginAccess();
  sub_1B906CF4C(v38, a1 + v39, &qword_1EBAC34A0, &qword_1B9685B08);
  return swift_endAccess();
}

uint64_t sub_1B906AFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v50 = a3;
  v49 = a2;
  v5 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3570, &unk_1B9685F60);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v40 - v28;
  __swift_storeEnumTagSinglePayload(&v40 - v28, 1, 1, v5);
  v30 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  v41 = v30;
  sub_1B906D5EC(a1 + v30, v15, &qword_1EBAC34A0, &qword_1B9685B08);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v44 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    v40 = a1;
    sub_1B906CE08(v15, v22);
    sub_1B906CE08(v22, v20);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v29, &qword_1EBAC3570, &unk_1B9685F60);
      v31 = v46;
      sub_1B906CE08(v20, v46);
      sub_1B906CE08(v31, v29);
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v5);
    }

    else
    {
      sub_1B906CEB8();
    }

    a1 = v40;
  }

  sub_1B906CFB8(&qword_1ED9CF110, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);
  v32 = v47;
  sub_1B964C580();
  if (v32)
  {
    v33 = v29;
    return sub_1B8D9207C(v33, &qword_1EBAC3570, &unk_1B9685F60);
  }

  sub_1B906D5EC(v29, v27, &qword_1EBAC3570, &unk_1B9685F60);
  if (__swift_getEnumTagSinglePayload(v27, 1, v5) == 1)
  {
    sub_1B8D9207C(v29, &qword_1EBAC3570, &unk_1B9685F60);
    v33 = v27;
    return sub_1B8D9207C(v33, &qword_1EBAC3570, &unk_1B9685F60);
  }

  v35 = v45;
  sub_1B906CE08(v27, v45);
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v36 = v44;
  sub_1B8D9207C(v29, &qword_1EBAC3570, &unk_1B9685F60);
  v37 = v35;
  v38 = v42;
  sub_1B906CE08(v37, v42);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v36);
  v39 = v41;
  swift_beginAccess();
  sub_1B906CF4C(v38, a1 + v39, &qword_1EBAC34A0, &qword_1B9685B08);
  return swift_endAccess();
}

uint64_t sub_1B906B514()
{
  swift_beginAccess();
  sub_1B964C280();
  type metadata accessor for Debuglevelspb_AnyArray(0);
  sub_1B906CFB8(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray);
  sub_1B906CFB8(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0);
  result = sub_1B906B6A8(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B906B6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v39 - v16;
  v18 = type metadata accessor for Apple_Parsec_Search_Error();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(a1 + 16) || (v22 = *(a1 + 24), v39[10] = *(a1 + 16), v40 = v22, sub_1B8F2116C(), result = sub_1B964C680(), !v4))
  {
    v41 = v13;
    v24 = a4;
    v25 = a3;
    v26 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
    swift_beginAccess();
    sub_1B906D5EC(a1 + v26, v17, &qword_1EBAB9188, &qword_1B964D970);
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {
      sub_1B8D9207C(v17, &qword_1EBAB9188, &qword_1B964D970);
      v27 = v25;
      v28 = v24;
    }

    else
    {
      sub_1B906CE08(v17, v21);
      sub_1B906CFB8(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error);
      v27 = v25;
      v28 = v24;
      sub_1B964C740();
      result = sub_1B906CEB8();
      if (v4)
      {
        return result;
      }
    }

    v29 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
    swift_beginAccess();
    v30 = *v29;
    v31 = v29[1];
    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v30 & 0xFFFFFFFFFFFFLL;
    }

    v33 = v41;
    if (!v32 || (, sub_1B964C700(), result = , !v5))
    {
      v39[0] = v27;
      v34 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
      swift_beginAccess();
      sub_1B906D5EC(a1 + v34, v33, &qword_1EBAC34A0, &qword_1B9685B08);
      v35 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
      if (__swift_getEnumTagSinglePayload(v33, 1, v35) == 1)
      {
        goto LABEL_17;
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v37 = v5;
        if (EnumCaseMultiPayload == 1)
        {
          sub_1B906BDC0(a1, a2, v39[0], v28);
        }

        else
        {
          sub_1B906BFF4(a1, a2, v39[0], v28);
        }
      }

      else
      {
        v37 = v5;
        sub_1B906BB90(a1, a2, v39[0], v28);
      }

      result = sub_1B906CEB8();
      if (!v37)
      {
LABEL_17:
        v38 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
        result = swift_beginAccess();
        if (*(*(a1 + v38) + 16))
        {
          sub_1B964C280();
          type metadata accessor for Debuglevelspb_AnyArray(0);
          sub_1B906CFB8(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray);
          sub_1B906CFB8(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray);

          sub_1B964C5E0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B906BB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v13, v8, &qword_1EBAC34A0, &qword_1B9685B08);
  v14 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    result = sub_1B8D9207C(v8, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B906CE08(v8, v12);
      sub_1B906CFB8(&qword_1EBAC3560, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults);
      sub_1B964C740();
      return sub_1B906CEB8();
    }

    result = sub_1B906CEB8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B906BDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v13, v8, &qword_1EBAC34A0, &qword_1B9685B08);
  v14 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    result = sub_1B8D9207C(v8, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B906CE08(v8, v12);
      sub_1B906CFB8(&qword_1EBAC2CD8, type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults);
      sub_1B964C740();
      return sub_1B906CEB8();
    }

    result = sub_1B906CEB8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B906BFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
  swift_beginAccess();
  sub_1B906D5EC(a1 + v13, v8, &qword_1EBAC34A0, &qword_1B9685B08);
  v14 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    result = sub_1B8D9207C(v8, &qword_1EBAC34A0, &qword_1B9685B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B906CE08(v8, v12);
      sub_1B906CFB8(&qword_1ED9CF110, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);
      sub_1B964C740();
      return sub_1B906CEB8();
    }

    result = sub_1B906CEB8();
  }

  __break(1u);
  return result;
}

uint64_t static Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_14();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1B906C2F4(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_12_19();
  sub_1B906CFB8(v9, v10);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B906C2F4(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults(0);
  v4 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3558, &unk_1B9685F40);
  v7 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v9 = &v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC34A0, &qword_1B9685B08);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v64 - v14;
  v15 = type metadata accessor for Apple_Parsec_Search_Error();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v69 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v64 - v27;
  swift_beginAccess();
  v29 = *(a1 + 16);
  swift_beginAccess();
  v30 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v29 != v30)
    {
      goto LABEL_31;
    }

    goto LABEL_11;
  }

  if (v30)
  {
    if (v30 == 1)
    {
      if (v29 != 1)
      {
        goto LABEL_31;
      }

LABEL_11:
      v65 = v6;
      v66 = v9;
      v68 = a2;
      v31 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
      swift_beginAccess();
      sub_1B906D5EC(a1 + v31, v28, &qword_1EBAB9188, &qword_1B964D970);
      v32 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__error;
      v33 = v68;
      swift_beginAccess();
      v34 = *(v18 + 48);
      sub_1B906D5EC(v28, v21, &qword_1EBAB9188, &qword_1B964D970);
      sub_1B906D5EC(v33 + v32, &v21[v34], &qword_1EBAB9188, &qword_1B964D970);
      if (__swift_getEnumTagSinglePayload(v21, 1, v15) == 1)
      {

        sub_1B8D9207C(v28, &qword_1EBAB9188, &qword_1B964D970);
        if (__swift_getEnumTagSinglePayload(&v21[v34], 1, v15) == 1)
        {
          sub_1B8D9207C(v21, &qword_1EBAB9188, &qword_1B964D970);
LABEL_18:
          v41 = (a1 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
          swift_beginAccess();
          v42 = *v41;
          v43 = v41[1];
          v44 = (v33 + OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__traceID);
          swift_beginAccess();
          v45 = v42 == *v44 && v43 == v44[1];
          if (!v45 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_30;
          }

          v46 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
          swift_beginAccess();
          v47 = a1 + v46;
          v48 = v68;
          v49 = v71;
          sub_1B906D5EC(v47, v71, &qword_1EBAC34A0, &qword_1B9685B08);
          v50 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__appSpecificResults;
          swift_beginAccess();
          v51 = *(v70 + 48);
          v52 = v66;
          sub_1B906D5EC(v49, v66, &qword_1EBAC34A0, &qword_1B9685B08);
          sub_1B906D5EC(v48 + v50, v52 + v51, &qword_1EBAC34A0, &qword_1B9685B08);
          v53 = v72;
          if (__swift_getEnumTagSinglePayload(v52, 1, v72) == 1)
          {
            sub_1B8D9207C(v49, &qword_1EBAC34A0, &qword_1B9685B08);
            if (__swift_getEnumTagSinglePayload(v52 + v51, 1, v53) == 1)
            {
              sub_1B8D9207C(v52, &qword_1EBAC34A0, &qword_1B9685B08);
LABEL_34:
              v58 = v48;
              v59 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
              swift_beginAccess();
              v60 = *(a1 + v59);
              v61 = OBJC_IVAR____TtCV10PegasusAPI68Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponseP33_10DFE16B46875C35DE7778A96BD6559513_StorageClass__serviceDebug;
              swift_beginAccess();
              v62 = *(v58 + v61);

              sub_1B8DAFA20();
              v54 = v63;

              return v54 & 1;
            }
          }

          else
          {
            sub_1B906D5EC(v52, v67, &qword_1EBAC34A0, &qword_1B9685B08);
            if (__swift_getEnumTagSinglePayload(v52 + v51, 1, v53) != 1)
            {
              sub_1B906CE08(v52 + v51, v65);
              static Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults.== infix(_:_:)();
              v57 = v56;
              sub_1B906CEB8();
              sub_1B8D9207C(v49, &qword_1EBAC34A0, &qword_1B9685B08);
              sub_1B906CEB8();
              sub_1B8D9207C(v52, &qword_1EBAC34A0, &qword_1B9685B08);
              if (v57)
              {
                goto LABEL_34;
              }

              goto LABEL_30;
            }

            sub_1B8D9207C(v49, &qword_1EBAC34A0, &qword_1B9685B08);
            sub_1B906CEB8();
          }

          v35 = &qword_1EBAC3558;
          v36 = &unk_1B9685F40;
          v37 = v52;
          goto LABEL_29;
        }
      }

      else
      {
        sub_1B906D5EC(v21, v26, &qword_1EBAB9188, &qword_1B964D970);
        if (__swift_getEnumTagSinglePayload(&v21[v34], 1, v15) != 1)
        {
          v38 = &v21[v34];
          v39 = v69;
          sub_1B906CE08(v38, v69);

          v40 = static Apple_Parsec_Search_Error.== infix(_:_:)(v26, v39);
          sub_1B906CEB8();
          sub_1B8D9207C(v28, &qword_1EBAB9188, &qword_1B964D970);
          sub_1B906CEB8();
          sub_1B8D9207C(v21, &qword_1EBAB9188, &qword_1B964D970);
          if ((v40 & 1) == 0)
          {
LABEL_30:

            goto LABEL_31;
          }

          goto LABEL_18;
        }

        sub_1B8D9207C(v28, &qword_1EBAB9188, &qword_1B964D970);
        sub_1B906CEB8();
      }

      v35 = &qword_1EBAB9190;
      v36 = &qword_1B964D978;
      v37 = v21;
LABEL_29:
      sub_1B8D9207C(v37, v35, v36);
      goto LABEL_30;
    }

    if (v29 == 2)
    {
      goto LABEL_11;
    }
  }

  else if (!v29)
  {
    goto LABEL_11;
  }

LABEL_31:
  v54 = 0;
  return v54 & 1;
}

uint64_t sub_1B906CBC0(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B906CFB8(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B906CC98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B906CFB8(&qword_1EBAC3548, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B906CD18(uint64_t a1)
{
  v2 = sub_1B906CFB8(&qword_1EBAC34F0, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B906CD88()
{
  sub_1B906CFB8(&qword_1EBAC34F0, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B906CE08(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_432();
  v9(v8);
  return a2;
}

uint64_t sub_1B906CE60(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_28_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_432();
  v9(v8);
  return a2;
}

uint64_t sub_1B906CEB8()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B906CF4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_61_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_432();
  v9(v8);
  return v4;
}

uint64_t sub_1B906CFB8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B906D268()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B906D33C(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
    if (v1 <= 0x3F)
    {
      sub_1B906D33C(319, &qword_1ED9ED410, type metadata accessor for Searchfoundation_DrillDownMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B906D33C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B906D3B8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B906D43C()
{
  result = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_SpotlightSearchResults();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Lookup_V1alpha_LookupSearchResults();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1B906D4CC()
{
  sub_1B906D33C(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B906D33C(319, &qword_1EBAC3540, type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.OneOf_AppSpecificResults);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1B906D5EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_61_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_432();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_6_16()
{
  result = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_14_14()
{
  result = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_16()
{
  v0 = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_14(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_29_17()
{

  return sub_1B906D5EC(v0 + v4, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_32_12()
{

  return sub_1B8D9207C(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_37_6()
{

  return sub_1B906D5EC(v0 + v4, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_52_5@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1B906D5EC(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_53_7(uint64_t a1)
{

  return sub_1B906D5EC(a1, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_55_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_56_4()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_61_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_62_2@<X0>(uint64_t a1@<X8>)
{

  return sub_1B906D5EC(v1 + a1, v3, v2, v4);
}

uint64_t Apple_Parsec_Responseframework_PatternDrivenExperience.patternComponents.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Responseframework_PatternDrivenExperience.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Responseframework_PatternDrivenExperience.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Responseframework_PatternDrivenExperience.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience(v0) + 24);
  return nullsub_1;
}

uint64_t Apple_Parsec_Responseframework_PatternDrivenExperience.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B906DB44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.patternModel.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBAB90B0, &unk_1B964D8A0);
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    return OUTLINED_FUNCTION_19_12(0xE000000000000000, xmmword_1B9652FE0);
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    return sub_1B9070290();
  }
}

uint64_t sub_1B906DCCC()
{
  v0 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B906E33C();
  return Apple_Parsec_Responseframework_PatternComponent.patternModel.setter();
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.patternModel.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB90B0, &unk_1B964D8A0);
  OUTLINED_FUNCTION_0_50();
  OUTLINED_FUNCTION_432();
  sub_1B9070290();
  v1 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(0);

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t Apple_Parsec_Responseframework_PatternModel.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return OUTLINED_FUNCTION_19_12(0xE000000000000000, xmmword_1B9652FE0);
}

void (*Apple_Parsec_Responseframework_PatternComponent.patternModel.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[3] = v10;
  OUTLINED_FUNCTION_186();
  sub_1B8D92024();
  v11 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(0);
  v3[4] = v11;
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBAB90B0, &unk_1B964D8A0);
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    *(v10 + 1) = xmmword_1B9652FE0;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
    v12 = v10 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    sub_1B9070290();
  }

  return sub_1B906DFBC;
}

void sub_1B906DFBC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = (*a1)[3];
    sub_1B906E33C();
    sub_1B8D9207C(v7, &qword_1EBAB90B0, &unk_1B964D8A0);
    sub_1B9070290();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_5_20();
    sub_1B906E0BC();
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBAB90B0, &unk_1B964D8A0);
    OUTLINED_FUNCTION_0_50();
    sub_1B9070290();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1B906E0BC()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Responseframework_PatternComponent.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(v0) + 20);
  return nullsub_1;
}

uint64_t static Apple_Parsec_Responseframework_PatternComponent.OneOf_Component.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90A8, &qword_1B964D898);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  v4 = *(MEMORY[0x1EEE9AC00](v3) + 56);
  sub_1B906E33C();
  sub_1B906E33C();
  v5 = static Apple_Parsec_Responseframework_PatternModel.== infix(_:_:)();
  sub_1B906E0BC();
  sub_1B906E0BC();
  return v5 & 1;
}

uint64_t sub_1B906E33C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t static Apple_Parsec_Responseframework_PatternModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x1BFADC060](v1[2], v1[3], v0[2], v0[3]) & 1) == 0)
  {
    return 0;
  }

  v6 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_26();
  sub_1B8CD2570(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(v1);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
  v3 = v0 + *(type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternParameters.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternParameters.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternBundleID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternBundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternTemplateDirectory.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Responseframework_PatternModel.patternTemplateDirectory.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Responseframework_PatternModel.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternModel(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Responseframework_PatternModel.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternModel(v2) + 32);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Responseframework_PatternModel.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternModel(v0) + 32);
  return nullsub_1;
}

uint64_t sub_1B906E7EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3578);
  __swift_project_value_buffer(v0, qword_1EBAC3578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pattern_siri_plugin_identifier";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pattern_components";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Responseframework_PatternDrivenExperience.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      sub_1B906EA4C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B906EA4C()
{
  type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(0);
  sub_1B8CD2570(&qword_1EBAC35C0, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Responseframework_PatternDrivenExperience.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), (v2 = v1) == 0))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(0), sub_1B8CD2570(&qword_1EBAC35C0, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent), result = sub_1B964C730(), !v2))
    {
      v7 = v0 + *(type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience(0) + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t sub_1B906ED34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2570(&qword_1EBAC3638, type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B906EDB4(uint64_t a1)
{
  v2 = sub_1B8CD2570(&qword_1EBAC35F0, type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B906EE24()
{
  sub_1B8CD2570(&qword_1EBAC35F0, type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience);

  return sub_1B964C5D0();
}

uint64_t sub_1B906EEBC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3590);
  __swift_project_value_buffer(v0, qword_1EBAC3590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "pattern_model";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_432();
      sub_1B906F0A0(v5, v6, v2, v1);
    }
  }

  return result;
}

uint64_t sub_1B906F0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3640, &unk_1B96864E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  v28 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB90B0, &unk_1B964D8A0);
  }

  else
  {
    sub_1B9070290();
    sub_1B9070290();
    sub_1B8D9207C(v22, &qword_1EBAC3640, &unk_1B96864E0);
    sub_1B9070290();
    sub_1B9070290();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_1B8CD2570(&qword_1EBAC35D0, type metadata accessor for Apple_Parsec_Responseframework_PatternModel);
  v24 = v31;
  sub_1B964C580();
  if (v24)
  {
    v25 = v22;
    return sub_1B8D9207C(v25, &qword_1EBAC3640, &unk_1B96864E0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC3640, &unk_1B96864E0);
    v25 = v20;
    return sub_1B8D9207C(v25, &qword_1EBAC3640, &unk_1B96864E0);
  }

  sub_1B9070290();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v22, &qword_1EBAC3640, &unk_1B96864E0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB90B0, &unk_1B964D8A0);
  sub_1B9070290();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

uint64_t Apple_Parsec_Responseframework_PatternComponent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v19 = v3;
  sub_1B8D92024();
  v15 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v15) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB90B0, &unk_1B964D8A0);
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    sub_1B9070290();
    sub_1B8CD2570(&qword_1EBAC35D0, type metadata accessor for Apple_Parsec_Responseframework_PatternModel);
    sub_1B964C740();
    OUTLINED_FUNCTION_5_20();
    result = sub_1B906E0BC();
    if (v4)
    {
      return result;
    }
  }

  v17 = v19 + *(type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(0) + 20);
  return sub_1B964C290();
}

uint64_t static Apple_Parsec_Responseframework_PatternComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v0 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component(0);
  v1 = OUTLINED_FUNCTION_59_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B8, &qword_1B9685F70);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *(v12 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v14);
  if (v16)
  {
    OUTLINED_FUNCTION_50(&v14[v15]);
    if (v16)
    {
      sub_1B8D9207C(v14, &qword_1EBAB90B0, &unk_1B964D8A0);
LABEL_12:
      v19 = *(type metadata accessor for Apple_Parsec_Responseframework_PatternComponent(0) + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_26();
      sub_1B8CD2570(v20, v21);
      v17 = OUTLINED_FUNCTION_634();
      return v17 & 1;
    }

    goto LABEL_9;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_50(&v14[v15]);
  if (v16)
  {
    sub_1B906E0BC();
LABEL_9:
    sub_1B8D9207C(v14, &qword_1EBAB90B8, &qword_1B9685F70);
    goto LABEL_10;
  }

  sub_1B9070290();
  v18 = static Apple_Parsec_Responseframework_PatternComponent.OneOf_Component.== infix(_:_:)();
  sub_1B906E0BC();
  sub_1B906E0BC();
  sub_1B8D9207C(v14, &qword_1EBAB90B0, &unk_1B964D8A0);
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1B906FA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2570(&qword_1EBAC3630, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B906FAEC(uint64_t a1)
{
  v2 = sub_1B8CD2570(&qword_1EBAC35C0, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B906FB5C()
{
  sub_1B8CD2570(&qword_1EBAC35C0, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B906FBF4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC35A8);
  __swift_project_value_buffer(v0, qword_1EBAC35A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pattern_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pattern_parameters";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pattern_bundle_id";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pattern_template_directory";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Responseframework_PatternModel.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
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
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Responseframework_PatternModel.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v7 = v0[2];
    if (sub_1B8D99EA8(v2[2], v2[3]) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
    {
      v8 = v2[4];
      v9 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v10 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        v11 = v2[6];
        v12 = v2[7];
        OUTLINED_FUNCTION_1();
        if (!v13 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
        {
          v14 = v2 + *(type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0) + 32);
          OUTLINED_FUNCTION_12();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B907003C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2570(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9070120(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2570(&qword_1EBAC3628, type metadata accessor for Apple_Parsec_Responseframework_PatternModel);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90701A0(uint64_t a1)
{
  v2 = sub_1B8CD2570(&qword_1EBAC35D0, type metadata accessor for Apple_Parsec_Responseframework_PatternModel);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9070210()
{
  sub_1B8CD2570(&qword_1EBAC35D0, type metadata accessor for Apple_Parsec_Responseframework_PatternModel);

  return sub_1B964C5D0();
}

uint64_t sub_1B9070290()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

void sub_1B9070670()
{
  sub_1B9070810(319, &qword_1EBAC3620, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B907075C()
{
  sub_1B9070810(319, &qword_1EBAB4100, type metadata accessor for Apple_Parsec_Responseframework_PatternComponent.OneOf_Component, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9070810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9070874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j____swift_get_extra_inhabitant_index_19Tm);
}

uint64_t sub_1B90708CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_20Tm);
}

uint64_t sub_1B9070934(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Responseframework_PatternModel(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t __swift_get_extra_inhabitant_index_19Tm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 32));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_index_20Tm()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B9070AF0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_12@<X0>(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v2[1] = a2;
  v2[2].n128_u64[0] = 0;
  v2[2].n128_u64[1] = a1;
  v2[3].n128_u64[0] = 0;
  v2[3].n128_u64[1] = a1;
  v3 = v2 + *(type metadata accessor for Apple_Parsec_Responseframework_PatternModel(0) + 32);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1B9652FE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 80) = MEMORY[0x1E69E7CC0];
  *(a1 + 88) = v2;
  *(a1 + 96) = v2;
  v3 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  v4 = a1 + *(v3 + 56);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 60);
  v6 = sub_1B964C150();

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults()
{
  result = qword_1ED9CF0F8;
  if (!qword_1ED9CF0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Apple_Parsec_Safari_V1alpha_SafariSearchResults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v2 = sub_1B964C150();
  v3 = OUTLINED_FUNCTION_30_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB8, &qword_1B96835C8);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  v23 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  v24 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  v25 = *(v24 + 60);
  v26 = *(v16 + 48);
  sub_1B904BDB4(v1 + v25, v21);
  sub_1B904BDB4(v0 + v25, &v21[v26]);
  OUTLINED_FUNCTION_178(v21, 1, v2);
  if (!v22)
  {
    sub_1B904BDB4(v21, v15);
    OUTLINED_FUNCTION_178(&v21[v26], 1, v2);
    if (!v27)
    {
      (*(v5 + 32))(v9, &v21[v26], v2);
      OUTLINED_FUNCTION_2_27();
      sub_1B8CD25B8(v28, v29);
      v30 = sub_1B964C850();
      v31 = *(v5 + 8);
      v31(v9, v2);
      v31(v15, v2);
      sub_1B8D9207C(v21, &qword_1EBAC2CB0, &qword_1B96835C0);
      if (v30)
      {
        goto LABEL_21;
      }

LABEL_34:
      v43 = 0;
      return v43 & 1;
    }

    (*(v5 + 8))(v15, v2);
LABEL_19:
    sub_1B8D9207C(v21, &qword_1EBAC2CB8, &qword_1B96835C8);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_178(&v21[v26], 1, v2);
  if (!v22)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v21, &qword_1EBAC2CB0, &qword_1B96835C0);
LABEL_21:
  if ((MEMORY[0x1BFADC060](*(v1 + 32), *(v1 + 40), *(v0 + 32), *(v0 + 40)) & 1) == 0 || *(v1 + 48) != *(v0 + 48))
  {
    goto LABEL_34;
  }

  v32 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  if (*(v1 + 72) != *(v0 + 72))
  {
    goto LABEL_34;
  }

  if (*(v1 + 73) != *(v0 + 73))
  {
    goto LABEL_34;
  }

  v33 = *(v1 + 80);
  v34 = *(v0 + 80);
  sub_1B8D75E98();
  if ((v35 & 1) == 0)
  {
    goto LABEL_34;
  }

  v36 = *(v1 + 88);
  v37 = *(v0 + 88);
  sub_1B8D75E98();
  if ((v38 & 1) == 0)
  {
    goto LABEL_34;
  }

  v39 = *(v1 + 96);
  v40 = *(v0 + 96);
  sub_1B8D61678();
  if ((v41 & 1) == 0)
  {
    goto LABEL_34;
  }

  v42 = *(v24 + 56);
  sub_1B964C2B0();
  sub_1B8CD25B8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v43 = sub_1B964C850();
  return v43 & 1;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.prefix.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.prefix.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.query.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.query.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.completionScore.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_15_16();
  sub_1B904BDB4(v1 + *(v8 + 60), v2);
  v9 = sub_1B964C150();
  v10 = OUTLINED_FUNCTION_178(v2, 1, v9);
  if (!v11)
  {
    return (*(*(v9 - 8) + 32))(a1, v2, v9);
  }

  MEMORY[0x1BFADC0D0](v10);
  result = OUTLINED_FUNCTION_178(v2, 1, v9);
  if (!v11)
  {
    return sub_1B8D9207C(v2, &qword_1EBAC2CB0, &qword_1B96835C0);
  }

  return result;
}

uint64_t sub_1B90712C4(uint64_t a1)
{
  v2 = sub_1B964C150();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return Apple_Parsec_Safari_V1alpha_SafariSearchResults.completionScore.setter(v5);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.completionScore.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults() + 60);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC2CB0, &qword_1B96835C0);
  v4 = sub_1B964C150();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, a1, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Safari_V1alpha_SafariSearchResults.completionScore.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C150();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1(v7);
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults() + 60);
  *(v3 + 12) = v13;
  sub_1B904BDB4(v1 + v13, v6);
  v14 = OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v15)
  {
    MEMORY[0x1BFADC0D0](v14);
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v15)
    {
      sub_1B8D9207C(v6, &qword_1EBAC2CB0, &qword_1B96835C0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  return sub_1B904C124;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.hasCompletionScore.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_15_16();
  sub_1B904BDB4(v0 + *(v6 + 60), v1);
  v7 = sub_1B964C150();
  OUTLINED_FUNCTION_178(v1, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBAC2CB0, &qword_1B96835C0);
  return v9;
}

Swift::Void __swiftcall Apple_Parsec_Safari_V1alpha_SafariSearchResults.clearCompletionScore()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults() + 60);
  sub_1B8D9207C(v0 + v1, &qword_1EBAC2CB0, &qword_1B96835C0);
  v2 = sub_1B964C150();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.feedbackQuery.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.feedbackQuery.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.serverCompletion.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.serverCompletion.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.suggestions.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.clientCorrections.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.results.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults() + 56);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults() + 56);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t sub_1B9071AB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3648);
  __swift_project_value_buffer(v0, qword_1EBAC3648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B96511C0;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "prefix";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "query";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "completion_score";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "feedback_query";
  *(v13 + 1) = 14;
  v13[16] = 2;
  *(v13 + 3) = "fbq";
  *(v13 + 4) = 3;
  v13[40] = 2;
  v14 = *MEMORY[0x1E69AADD8];
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suggestions_are_blended";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "server_completion";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "corrected";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "online_corrected";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "suggestions";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = v1[14];
  v26 = (v4 + 9 * v2);
  *v26 = 12;
  v27 = v26 + v25;
  *v27 = "client_corrections";
  *(v27 + 1) = 18;
  v27[16] = 2;
  *(v27 + 3) = "corrections";
  *(v27 + 4) = 11;
  v27[40] = 2;
  v8();
  v28 = (v4 + 10 * v2);
  v29 = v28 + v1[14];
  *v28 = 51;
  *v29 = "results";
  *(v29 + 1) = 7;
  v29[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Safari_V1alpha_SafariSearchResults._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB70C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC3648);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.decodeMessage<A>(decoder:)()
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
      case 2:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9072090();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 5:
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 9:
      case 10:
        continue;
      case 11:
        OUTLINED_FUNCTION_9();
        sub_1B9072144();
        break;
      case 12:
        OUTLINED_FUNCTION_9();
        sub_1B90721E4();
        break;
      default:
        if (result == 51)
        {
          OUTLINED_FUNCTION_9();
          sub_1B9072284();
        }

        break;
    }
  }
}

uint64_t sub_1B9072090()
{
  v0 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults() + 60);
  sub_1B964C150();
  sub_1B8CD25B8(&qword_1ED9C8FD8, MEMORY[0x1E69AA960]);
  return sub_1B964C580();
}

uint64_t sub_1B9072144()
{
  type metadata accessor for Searchfoundation_SearchSuggestion();
  sub_1B8CD25B8(&qword_1EBAC3660, type metadata accessor for Searchfoundation_SearchSuggestion);
  return sub_1B964C570();
}

uint64_t sub_1B90721E4()
{
  type metadata accessor for Searchfoundation_SearchSuggestion();
  sub_1B8CD25B8(&qword_1EBAC3660, type metadata accessor for Searchfoundation_SearchSuggestion);
  return sub_1B964C570();
}

uint64_t sub_1B9072284()
{
  type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0);
  sub_1B8CD25B8(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = sub_1B964C150();
  v10 = OUTLINED_FUNCTION_30_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v0;
  v18 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v19 || (result = sub_1B964C700(), !v1))
  {
    v21 = v0[2];
    v22 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v23 || (result = sub_1B964C700(), !v1))
    {
      v37 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
      sub_1B904BDB4(v0 + *(v37 + 60), v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_1B8D9207C(v8, &qword_1EBAC2CB0, &qword_1B96835C0);
      }

      else
      {
        (*(v12 + 32))(v16, v8, v9);
        OUTLINED_FUNCTION_2_27();
        sub_1B8CD25B8(v24, v25);
        sub_1B964C740();
        if (v1)
        {
          return (*(v12 + 8))(v16, v9);
        }

        (*(v12 + 8))(v16, v9);
      }

      if (sub_1B8D99EA8(v0[4], v0[5]) || (v26 = v0[4], v27 = v0[5], result = sub_1B964C6A0(), !v1))
      {
        if (*(v0 + 48) != 1 || (result = OUTLINED_FUNCTION_11_26(), (v2 = v1) == 0))
        {
          v28 = v0[7];
          v29 = v0[8];
          OUTLINED_FUNCTION_1();
          if (!v30 || (v1 = v2, result = sub_1B964C700(), !v2))
          {
            if (*(v0 + 72) != 1 || (result = OUTLINED_FUNCTION_11_26(), !v1))
            {
              if (*(v0 + 73) != 1 || (result = OUTLINED_FUNCTION_11_26(), !v1))
              {
                if (!*(v0[10] + 16) || (type metadata accessor for Searchfoundation_SearchSuggestion(), OUTLINED_FUNCTION_3_27(), sub_1B8CD25B8(v31, v32), result = OUTLINED_FUNCTION_11_9(), !v1))
                {
                  if (!*(v0[11] + 16) || (type metadata accessor for Searchfoundation_SearchSuggestion(), OUTLINED_FUNCTION_3_27(), sub_1B8CD25B8(v33, v34), result = OUTLINED_FUNCTION_11_9(), !v1))
                  {
                    if (!*(v0[12] + 16) || (type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0), sub_1B8CD25B8(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult), result = OUTLINED_FUNCTION_11_9(), !v1))
                    {
                      v35 = v0 + *(v37 + 56);
                      OUTLINED_FUNCTION_12();
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
  }

  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResults.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  sub_1B8CD25B8(&qword_1EBAC3668, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9072844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD25B8(&qword_1EBAC3680, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90728C4(uint64_t a1)
{
  v2 = sub_1B8CD25B8(&qword_1ED9CF110, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9072934()
{
  sub_1B8CD25B8(&qword_1ED9CF110, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);

  return sub_1B964C5D0();
}

void sub_1B9072AFC()
{
  sub_1B9072C74(319, &qword_1EBAC3678, type metadata accessor for Searchfoundation_SearchSuggestion, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B9072C74(319, &qword_1ED9C8FA8, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B9072C74(319, &qword_1ED9C8FD0, MEMORY[0x1E69AA960], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B9072C74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_26()
{

  return sub_1B964C670();
}

uint64_t OUTLINED_FUNCTION_15_16()
{

  return type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.previousQuery.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.previousQuery.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.suggestQueryArg.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.suggestQueryArg.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.localCompletionInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v9);
  OUTLINED_FUNCTION_32_11(*(Context + 28));
  v11 = type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    v13 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v13;
    a1[2] = v13;
    v14 = a1 + *(v11 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC36A0, &qword_1B96866C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_44();
    OUTLINED_FUNCTION_182();
    return sub_1B907341C();
  }

  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.localCompletionInfo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v1);
  sub_1B8D9207C(v0 + *(Context + 28), &qword_1EBAC36A0, &qword_1B96866C0);
  OUTLINED_FUNCTION_1_44();
  OUTLINED_FUNCTION_47_6();
  type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Safari_V1alpha_SafariQueryContext.localCompletionInfo.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v13) + 28);
  *(v0 + 40) = v14;
  v15 = OUTLINED_FUNCTION_115(v14);
  sub_1B8DD9078(v15, v16, &qword_1EBAC36A0, &qword_1B96866C0);
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    v18 = MEMORY[0x1E69E7CC0];
    *v9 = MEMORY[0x1E69E7CC0];
    v9[1] = v18;
    v9[2] = v18;
    v19 = v9 + *(v7 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v5, &qword_1EBAC36A0, &qword_1B96866C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_44();
    OUTLINED_FUNCTION_461();
    sub_1B907341C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Safari_V1alpha_SafariQueryContext.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v0) + 24);
  return nullsub_1;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  v3 = a1 + *(Context + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(Context + 28);
  type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.searchQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v9);
  OUTLINED_FUNCTION_32_11(*(v10 + 20));
  v11 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC2228, &unk_1B967FDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_28();
    OUTLINED_FUNCTION_182();
    return sub_1B907341C();
  }

  return result;
}

uint64_t sub_1B907341C()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.searchQuery.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_47_6();
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Safari_V1alpha_SafariSearchRequest.searchQuery.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v13) + 20);
  *(v0 + 40) = v14;
  v15 = OUTLINED_FUNCTION_115(v14);
  sub_1B8DD9078(v15, v16, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    v18 = v9 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v5, &qword_1EBAC2228, &unk_1B967FDC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_28();
    OUTLINED_FUNCTION_461();
    sub_1B907341C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B907363C()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B9073690()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.hasSearchQuery.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v4);
  v6 = OUTLINED_FUNCTION_115(*(v5 + 20));
  OUTLINED_FUNCTION_63_4(v6, v7);
  v8 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Safari_V1alpha_SafariSearchRequest.clearSearchQuery()()
{
  v1 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAC2228, &unk_1B967FDC0);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v9);
  OUTLINED_FUNCTION_32_11(*(v10 + 24));
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(a1 + v13) = qword_1ED9D38C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, Context);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_28();
    OUTLINED_FUNCTION_182();
    return sub_1B907341C();
  }

  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.queryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_2_28();
  OUTLINED_FUNCTION_47_6();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Safari_V1alpha_SafariSearchRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v6);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(v9 + v16) = qword_1ED9D38C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v5, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_28();
    OUTLINED_FUNCTION_246();
    sub_1B907341C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.hasQueryContext.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v4);
  v6 = OUTLINED_FUNCTION_115(*(v5 + 24));
  OUTLINED_FUNCTION_63_4(v6, v7);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_11(Context);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Safari_V1alpha_SafariSearchRequest.clearQueryContext()()
{
  v1 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBABED40, &qword_1B96809F0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.safariQueryContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  sub_1B8DD9078(v1 + *(v11 + 28), v10, &qword_1EBAC36A8, &qword_1B96866C8);
  Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  OUTLINED_FUNCTION_57(v10);
  if (v13)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v14 = a1 + *(Context + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(Context + 28);
    type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    result = OUTLINED_FUNCTION_57(v10);
    if (!v13)
    {
      return sub_1B8D9207C(v10, &qword_1EBAC36A8, &qword_1B96866C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_21();
    return sub_1B907341C();
  }

  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.safariQueryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC36A8, &qword_1B96866C8);
  OUTLINED_FUNCTION_10_21();
  OUTLINED_FUNCTION_47_6();
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Safari_V1alpha_SafariSearchRequest.safariQueryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v6);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0;
    v9[3] = 0xE000000000000000;
    v16 = v9 + *(Context + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(Context + 28);
    type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v5, &qword_1EBAC36A8, &qword_1B96866C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_21();
    OUTLINED_FUNCTION_246();
    sub_1B907341C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9073ED0()
{
  OUTLINED_FUNCTION_111_0();
  v6 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137();
  v12 = v2(0);
  sub_1B8DD9078(v1 + *(v12 + 28), v4, v6, v3);
  v0(0);
  v13 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v13, v14, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v18, v19, v20);
  return v17;
}

uint64_t sub_1B9073FC0()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  v1 = v0[5];
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0[6];
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = v0[7];
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void Apple_Parsec_Safari_V1alpha_SafariSearchResponse.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v9);
  OUTLINED_FUNCTION_32_11(*(v10 + 32));
  v11 = type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    v13 = a1 + *(v11 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_182();
    return sub_1B907341C();
  }

  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.error.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_12_20();
  OUTLINED_FUNCTION_47_6();
  type metadata accessor for Apple_Parsec_Search_Error();
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Safari_V1alpha_SafariSearchResponse.error.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = type metadata accessor for Apple_Parsec_Search_Error();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v12) + 32);
  *(v0 + 40) = v13;
  v14 = OUTLINED_FUNCTION_115(v13);
  sub_1B8DD9078(v14, v15, &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = -1;
    v17 = v8 + *(v6 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v5, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_20();
    OUTLINED_FUNCTION_461();
    sub_1B907341C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.hasError.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v4);
  v6 = OUTLINED_FUNCTION_115(*(v5 + 32));
  OUTLINED_FUNCTION_63_4(v6, v7);
  v8 = type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Safari_V1alpha_SafariSearchResponse.clearError()()
{
  v1 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB9188, &qword_1B964D970);
  type metadata accessor for Apple_Parsec_Search_Error();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.searchResults.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v9);
  OUTLINED_FUNCTION_32_11(*(v10 + 36));
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    Apple_Parsec_Safari_V1alpha_SafariSearchResults.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3570, &unk_1B9685F60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_182();
    return sub_1B907341C();
  }

  return result;
}

uint64_t sub_1B9074654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  sub_1B907363C();
  return a7(v7);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.searchResults.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC3570, &unk_1B9685F60);
  OUTLINED_FUNCTION_11_27();
  OUTLINED_FUNCTION_47_6();
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Safari_V1alpha_SafariSearchResponse.searchResults.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v12);
  OUTLINED_FUNCTION_16_4(*(v13 + 36));
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0xE000000000000000;
    *(v8 + 32) = xmmword_1B9652FE0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0xE000000000000000;
    *(v8 + 72) = 0;
    v15 = MEMORY[0x1E69E7CC0];
    *(v8 + 80) = MEMORY[0x1E69E7CC0];
    *(v8 + 88) = v15;
    *(v8 + 96) = v15;
    v16 = v8 + *(v6 + 56);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v6 + 60);
    sub_1B964C150();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v5, &qword_1EBAC3570, &unk_1B9685F60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_246();
    sub_1B907341C();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B90748E0()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v4 = v1;
  v5 = *(*v0 + 10);
  v6 = (*v0)[3];
  v7 = (*v0)[4];
  v8 = (*v0)[1];
  v9 = (*v0)[2];
  v10 = **v0;
  if (v11)
  {
    v12 = (*v0)[4];
    sub_1B907363C();
    sub_1B8D9207C(v10 + v5, v4, v3);
    sub_1B907341C();
    OUTLINED_FUNCTION_187_1();
    sub_1B9073690();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v1, v2);
    sub_1B907341C();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.hasSearchResults.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v4);
  v6 = OUTLINED_FUNCTION_115(*(v5 + 36));
  OUTLINED_FUNCTION_63_4(v6, v7);
  v8 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Safari_V1alpha_SafariSearchResponse.clearSearchResults()()
{
  v1 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAC3570, &unk_1B9685F60);
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.serviceDebug.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0) + 28);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v2) + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Safari_V1alpha_SafariSearchResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(v0) + 28);
  return nullsub_1;
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *(a1 + 32) = sub_1B964C7B0();
  v2 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0);
  v3 = a1 + v2[7];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[8];
  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[9];
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1B9074CF8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5A58);
  __swift_project_value_buffer(v0, qword_1EBAB5A58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "previous_query";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggest_query_arg";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "local_completion_info";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9074FA0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B9074FA0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0) + 28);
  type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  sub_1B9077E98(&qword_1EBAB46D8, type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariQueryContext.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36A0, &qword_1B96866C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v14 = *v0;
  v15 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v16 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
  {
    v18 = v0[2];
    v19 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v20 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
    {
      Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
      sub_1B8DD9078(v3 + *(Context + 28), v9, &qword_1EBAC36A0, &qword_1B96866C0);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        sub_1B8D9207C(v9, &qword_1EBAC36A0, &qword_1B96866C0);
      }

      else
      {
        v24 = Context;
        OUTLINED_FUNCTION_1_44();
        sub_1B907341C();
        sub_1B9077E98(&qword_1EBAB46D8, type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo);
        sub_1B964C740();
        result = sub_1B9073690();
        if (v2)
        {
          return result;
        }

        Context = v24;
      }

      v22 = v3 + *(Context + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

void static Apple_Parsec_Safari_V1alpha_SafariQueryContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36A0, &qword_1B96866C0);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_137();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36B0, &qword_1B96866D0);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = *v4 == *v2 && v4[1] == v2[1];
  if (v22 || (sub_1B964C9F0() & 1) != 0)
  {
    v23 = v4[2] == v2[2] && v4[3] == v2[3];
    if (v23 || (sub_1B964C9F0() & 1) != 0)
    {
      Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
      v24 = *(Context + 28);
      v25 = *(v16 + 48);
      sub_1B8DD9078(v4 + v24, v21, &qword_1EBAC36A0, &qword_1B96866C0);
      sub_1B8DD9078(v2 + v24, &v21[v25], &qword_1EBAC36A0, &qword_1B96866C0);
      OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_178(v26, v27, v28);
      if (v22)
      {
        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_178(v29, v30, v31);
        if (v22)
        {
          sub_1B8D9207C(v21, &qword_1EBAC36A0, &qword_1B96866C0);
LABEL_16:
          v32 = *(Context + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_51();
          sub_1B9077E98(v33, v34);
          sub_1B964C850();
          goto LABEL_28;
        }
      }

      else
      {
        sub_1B8DD9078(v21, v0, &qword_1EBAC36A0, &qword_1B96866C0);
        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_178(v35, v36, v37);
        if (!v38)
        {
          OUTLINED_FUNCTION_1_44();
          sub_1B907341C();
          v41 = sub_1B8D6123C(*v0, *v11);
          if (v41 & 1) != 0 && (sub_1B8D6123C(v0[1], v11[1]) & 1) != 0 && (sub_1B8D6123C(v0[2], v11[2]))
          {
            v42 = *(v5 + 28);
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_51();
            sub_1B9077E98(v43, v44);
            v45 = sub_1B964C850();
            sub_1B9073690();
            sub_1B9073690();
            sub_1B8D9207C(v21, &qword_1EBAC36A0, &qword_1B96866C0);
            if ((v45 & 1) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_16;
          }

          sub_1B9073690();
          sub_1B9073690();
          v39 = &qword_1EBAC36A0;
          v40 = &qword_1B96866C0;
LABEL_27:
          sub_1B8D9207C(v21, v39, v40);
          goto LABEL_28;
        }

        sub_1B9073690();
      }

      v39 = &qword_1EBAC36B0;
      v40 = &qword_1B96866D0;
      goto LABEL_27;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B907569C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9077E98(&qword_1EBAC3718, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907571C(uint64_t a1)
{
  v2 = sub_1B9077E98(&qword_1EBAB5A48, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907578C()
{
  sub_1B9077E98(&qword_1EBAB5A48, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B9075824()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5A10);
  __swift_project_value_buffer(v0, qword_1EBAB5A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "search_query";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query_context";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "safari_query_context";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9075C38();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9075B84();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9075AD0();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9075AD0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0) + 20);
  type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(0);
  sub_1B9077E98(&qword_1EBAB5D10, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery);
  return sub_1B964C580();
}

uint64_t sub_1B9075B84()
{
  v0 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0) + 24);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B9077E98(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

uint64_t sub_1B9075C38()
{
  v0 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0) + 28);
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  sub_1B9077E98(&qword_1EBAB5A48, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchRequest.traverse<A>(visitor:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36A8, &qword_1B96866C8);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v38 = v7;
  v8 = OUTLINED_FUNCTION_201();
  Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(v8);
  v9 = OUTLINED_FUNCTION_59_1(Context);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_137();
  v40 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v16 = OUTLINED_FUNCTION_59_1(v40);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_183(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_22_3();
  v24 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v23);
  v25 = OUTLINED_FUNCTION_59_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_62();
  v28 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  sub_1B8DD9078(v0 + v28[5], v1, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_38_1();
  if (__swift_getEnumTagSinglePayload(v29, v30, v31) == 1)
  {
    sub_1B8D9207C(v1, &qword_1EBAC2228, &unk_1B967FDC0);
    v32 = v41;
  }

  else
  {
    sub_1B907341C();
    sub_1B9077E98(&qword_1EBAB5D10, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery);
    sub_1B964C740();
    v32 = v41;
    result = sub_1B9073690();
    if (v41)
    {
      return result;
    }
  }

  sub_1B8DD9078(v0 + v28[6], v2, &qword_1EBABED40, &qword_1B96809F0);
  v34 = OUTLINED_FUNCTION_602();
  if (__swift_getEnumTagSinglePayload(v34, v35, v40) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    sub_1B907341C();
    sub_1B9077E98(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
    OUTLINED_FUNCTION_58_5();
    sub_1B964C740();
    result = sub_1B9073690();
    if (v32)
    {
      return result;
    }
  }

  sub_1B8DD9078(v0 + v28[7], v38, &qword_1EBAC36A8, &qword_1B96866C8);
  v36 = OUTLINED_FUNCTION_602();
  if (__swift_getEnumTagSinglePayload(v36, v37, Context) == 1)
  {
    sub_1B8D9207C(v38, &qword_1EBAC36A8, &qword_1B96866C8);
  }

  else
  {
    sub_1B907341C();
    sub_1B9077E98(&qword_1EBAB5A48, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext);
    OUTLINED_FUNCTION_58_5();
    sub_1B964C740();
    result = sub_1B9073690();
    if (v32)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

void static Apple_Parsec_Safari_V1alpha_SafariSearchRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  Context = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext(0);
  v6 = OUTLINED_FUNCTION_59_1(Context);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36A8, &qword_1B96866C8);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v91 = v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36C0, &qword_1B96866D8);
  OUTLINED_FUNCTION_59_1(v93);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_185();
  v95 = v17;
  v18 = OUTLINED_FUNCTION_201();
  v99 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v18);
  v19 = OUTLINED_FUNCTION_59_1(v99);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v92 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_185();
  v96 = v28;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_59_1(v97);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_185();
  v100 = v32;
  v33 = OUTLINED_FUNCTION_201();
  v34 = type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery(v33);
  v35 = OUTLINED_FUNCTION_59_1(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_62();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_183(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_79();
  v45 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2250, &unk_1B967FDF0) - 8);
  v46 = *(*v45 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_137();
  v98 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest(0);
  v48 = v98[5];
  v49 = v45[14];
  sub_1B8DD9078(v5 + v48, v1, &qword_1EBAC2228, &unk_1B967FDC0);
  sub_1B8DD9078(v3 + v48, v1 + v49, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v50, v51, v52);
  if (v63)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v53, v54, v55);
    if (v63)
    {
      sub_1B8D9207C(v1, &qword_1EBAC2228, &unk_1B967FDC0);
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  sub_1B8DD9078(v1, v0, &qword_1EBAC2228, &unk_1B967FDC0);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v60, v61, v62);
  if (v63)
  {
    sub_1B9073690();
LABEL_14:
    v64 = &qword_1EBAC2250;
    v65 = &unk_1B967FDF0;
LABEL_24:
    v72 = v1;
LABEL_42:
    sub_1B8D9207C(v72, v64, v65);
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_3_28();
  sub_1B907341C();
  v66 = *v0 == *v40 && *(v0 + 8) == *(v40 + 8);
  if (!v66 && (sub_1B964C9F0() & 1) == 0 || (v67 = *(v40 + 24), !sub_1B8D92198(*(v0 + 16), *(v0 + 24), *(v40 + 16))))
  {
    sub_1B9073690();
    sub_1B9073690();
    v64 = &qword_1EBAC2228;
    v65 = &unk_1B967FDC0;
    goto LABEL_24;
  }

  v68 = *(v34 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_51();
  sub_1B9077E98(v69, v70);
  v71 = sub_1B964C850();
  sub_1B9073690();
  OUTLINED_FUNCTION_246();
  sub_1B9073690();
  sub_1B8D9207C(v1, &qword_1EBAC2228, &unk_1B967FDC0);
  if ((v71 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_6:
  v56 = v98[6];
  v57 = *(v97 + 48);
  sub_1B8DD9078(v5 + v56, v100, &qword_1EBABED40, &qword_1B96809F0);
  sub_1B8DD9078(v3 + v56, v100 + v57, &qword_1EBABED40, &qword_1B96809F0);
  v58 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v58, v59, v99);
  if (v63)
  {
    OUTLINED_FUNCTION_178(v100 + v57, 1, v99);
    if (v63)
    {
      sub_1B8D9207C(v100, &qword_1EBABED40, &qword_1B96809F0);
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  sub_1B8DD9078(v100, v96, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_178(v100 + v57, 1, v99);
  if (v73)
  {
    sub_1B9073690();
LABEL_28:
    v64 = &qword_1EBABED68;
    v65 = &qword_1B9680A10;
LABEL_29:
    v72 = v100;
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_2_28();
  sub_1B907341C();
  v74 = *(v99 + 20);
  if (*(v96 + v74) != *(v92 + v74))
  {
    v75 = *(v96 + v74);

    v76 = OUTLINED_FUNCTION_432();
    v78 = sub_1B9090820(v76, v77);

    if (!v78)
    {
      sub_1B9073690();
      sub_1B9073690();
      v64 = &qword_1EBABED40;
      v65 = &qword_1B96809F0;
      goto LABEL_29;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_51();
  sub_1B9077E98(v79, v80);
  v81 = sub_1B964C850();
  sub_1B9073690();
  sub_1B9073690();
  sub_1B8D9207C(v100, &qword_1EBABED40, &qword_1B96809F0);
  if ((v81 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_33:
  v82 = v98[7];
  v83 = *(v93 + 48);
  sub_1B8DD9078(v5 + v82, v95, &qword_1EBAC36A8, &qword_1B96866C8);
  sub_1B8DD9078(v3 + v82, v95 + v83, &qword_1EBAC36A8, &qword_1B96866C8);
  v84 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v84, v85, Context);
  if (v63)
  {
    OUTLINED_FUNCTION_178(v95 + v83, 1, Context);
    if (v63)
    {
      sub_1B8D9207C(v95, &qword_1EBAC36A8, &qword_1B96866C8);
LABEL_45:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_51();
      sub_1B9077E98(v89, v90);
      sub_1B964C850();
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  sub_1B8DD9078(v95, v91, &qword_1EBAC36A8, &qword_1B96866C8);
  OUTLINED_FUNCTION_178(v95 + v83, 1, Context);
  if (v86)
  {
    sub_1B9073690();
LABEL_41:
    v64 = &qword_1EBAC36C0;
    v65 = &qword_1B96866D8;
    v72 = v95;
    goto LABEL_42;
  }

  sub_1B907341C();
  static Apple_Parsec_Safari_V1alpha_SafariQueryContext.== infix(_:_:)();
  v88 = v87;
  sub_1B9073690();
  sub_1B9073690();
  sub_1B8D9207C(v95, &qword_1EBAC36A8, &qword_1B96866C8);
  if (v88)
  {
    goto LABEL_45;
  }

LABEL_43:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9076AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9077E98(&qword_1EBAC3710, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9076B20(uint64_t a1)
{
  v2 = sub_1B9077E98(&qword_1EBAC36E8, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9076B90()
{
  sub_1B9077E98(&qword_1EBAC36E8, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B9076C28()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3688);
  __swift_project_value_buffer(v0, qword_1EBAC3688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "trace_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 50;
  *v15 = "search_results";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 100;
  *v17 = "service_debug";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_9();
        sub_1B90770F8();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9076F90();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 50:
        OUTLINED_FUNCTION_9();
        sub_1B9077044();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8F283B0();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9076F90()
{
  v0 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0) + 32);
  type metadata accessor for Apple_Parsec_Search_Error();
  sub_1B9077E98(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error);
  return sub_1B964C580();
}

uint64_t sub_1B9077044()
{
  v0 = *(type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0) + 36);
  type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  sub_1B9077E98(&qword_1ED9CF110, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);
  return sub_1B964C580();
}

uint64_t sub_1B90770F8()
{
  sub_1B964C280();
  type metadata accessor for Debuglevelspb_AnyArray(0);
  sub_1B9077E98(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray);
  sub_1B9077E98(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray);
  return sub_1B964C3A0();
}

uint64_t Apple_Parsec_Safari_V1alpha_SafariSearchResponse.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3570, &unk_1B9685F60);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_185();
  v40 = v6;
  OUTLINED_FUNCTION_201();
  v7 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v37 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = type metadata accessor for Apple_Parsec_Search_Error();
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  if (!*v0 || (v23 = *(v0 + 8), v38 = *v0, v39 = v23, sub_1B8F2116C(), OUTLINED_FUNCTION_58_5(), result = sub_1B964C680(), !v1))
  {
    v35 = v7;
    v36 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0);
    sub_1B8DD9078(v0 + v36[8], v18, &qword_1EBAB9188, &qword_1B964D970);
    v25 = OUTLINED_FUNCTION_538();
    if (__swift_getEnumTagSinglePayload(v25, v26, v19) == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      sub_1B907341C();
      sub_1B9077E98(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error);
      sub_1B964C740();
      result = sub_1B9073690();
      if (v1)
      {
        return result;
      }
    }

    v27 = v0[2];
    v28 = v0[3];
    OUTLINED_FUNCTION_1();
    v29 = v40;
    if (!v30 || (result = sub_1B964C700(), !v1))
    {
      sub_1B8DD9078(v0 + v36[9], v29, &qword_1EBAC3570, &unk_1B9685F60);
      v31 = OUTLINED_FUNCTION_538();
      if (__swift_getEnumTagSinglePayload(v31, v32, v35) == 1)
      {
        sub_1B8D9207C(v29, &qword_1EBAC3570, &unk_1B9685F60);
      }

      else
      {
        sub_1B907341C();
        sub_1B9077E98(&qword_1ED9CF110, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);
        OUTLINED_FUNCTION_58_5();
        sub_1B964C740();
        result = sub_1B9073690();
        if (v1)
        {
          return result;
        }
      }

      if (!*(v0[4] + 16) || (v40 = sub_1B964C280(), type metadata accessor for Debuglevelspb_AnyArray(0), sub_1B9077E98(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray), sub_1B9077E98(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray), result = sub_1B964C5E0(), !v1))
      {
        v33 = v0 + v36[7];
        return sub_1B964C290();
      }
    }
  }

  return result;
}

void static Apple_Parsec_Safari_V1alpha_SafariSearchResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_280();
  v70 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  v3 = OUTLINED_FUNCTION_59_1(v70);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3570, &unk_1B9685F60);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v69 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36D0, &unk_1B96866E0);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_79();
  v18 = type metadata accessor for Apple_Parsec_Search_Error();
  v19 = OUTLINED_FUNCTION_59_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v24 = (v23 - v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v65 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  OUTLINED_FUNCTION_59_1(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v65 - v35;
  v37 = *v1;
  v38 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v38)
    {
      if (v38 == 1)
      {
        if (v37 != 1)
        {
          goto LABEL_36;
        }
      }

      else if (v37 != 2)
      {
        goto LABEL_36;
      }
    }

    else if (v37)
    {
      goto LABEL_36;
    }
  }

  else if (v37 != v38)
  {
    goto LABEL_36;
  }

  v67 = v2;
  v65 = v8;
  v39 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse(0);
  v40 = v1;
  v66 = v39;
  v41 = *(v39 + 32);
  v42 = *(v31 + 48);
  v68 = v40;
  sub_1B8DD9078(v40 + v41, v36, &qword_1EBAB9188, &qword_1B964D970);
  sub_1B8DD9078(v0 + v41, &v36[v42], &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(v36, 1, v18);
  if (v43)
  {
    OUTLINED_FUNCTION_178(&v36[v42], 1, v18);
    if (v43)
    {
      sub_1B8D9207C(v36, &qword_1EBAB9188, &qword_1B964D970);
      goto LABEL_21;
    }

LABEL_19:
    v44 = &qword_1EBAB9190;
    v45 = &qword_1B964D978;
    v46 = v36;
    goto LABEL_35;
  }

  sub_1B8DD9078(v36, v30, &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(&v36[v42], 1, v18);
  if (v43)
  {
    sub_1B9073690();
    goto LABEL_19;
  }

  sub_1B907341C();
  v47 = static Apple_Parsec_Search_Error.== infix(_:_:)(v30, v24);
  sub_1B9073690();
  OUTLINED_FUNCTION_236();
  sub_1B9073690();
  sub_1B8D9207C(v36, &qword_1EBAB9188, &qword_1B964D970);
  if ((v47 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_21:
  v48 = v68;
  v49 = v68[2] == v0[2] && v68[3] == v0[3];
  if (v49 || (sub_1B964C9F0() & 1) != 0)
  {
    v50 = v48;
    v52 = v66;
    v51 = v67;
    v53 = *(v66 + 36);
    v54 = *(v14 + 48);
    sub_1B8DD9078(v50 + v53, v67, &qword_1EBAC3570, &unk_1B9685F60);
    sub_1B8DD9078(v0 + v53, v51 + v54, &qword_1EBAC3570, &unk_1B9685F60);
    v55 = OUTLINED_FUNCTION_602();
    OUTLINED_FUNCTION_178(v55, v56, v70);
    if (v43)
    {
      OUTLINED_FUNCTION_57(v51 + v54);
      if (v43)
      {
        sub_1B8D9207C(v51, &qword_1EBAC3570, &unk_1B9685F60);
LABEL_38:
        v59 = v68[4];
        v60 = v0[4];
        sub_1B8DAFA20();
        if (v61)
        {
          v62 = *(v52 + 28);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_51();
          sub_1B9077E98(v63, v64);
          sub_1B964C850();
        }

        goto LABEL_36;
      }
    }

    else
    {
      sub_1B8DD9078(v51, v69, &qword_1EBAC3570, &unk_1B9685F60);
      OUTLINED_FUNCTION_57(v51 + v54);
      if (!v57)
      {
        sub_1B907341C();
        v58 = static Apple_Parsec_Safari_V1alpha_SafariSearchResults.== infix(_:_:)();
        sub_1B9073690();
        sub_1B9073690();
        sub_1B8D9207C(v51, &qword_1EBAC3570, &unk_1B9685F60);
        if ((v58 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_38;
      }

      sub_1B9073690();
    }

    v44 = &qword_1EBAC36D0;
    v45 = &unk_1B96866E0;
    v46 = v51;
LABEL_35:
    sub_1B8D9207C(v46, v44, v45);
  }

LABEL_36:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9077C30()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B9077E98(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9077D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9077E98(&qword_1EBAC3708, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9077D88(uint64_t a1)
{
  v2 = sub_1B9077E98(&qword_1EBAC36F8, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9077DF8()
{
  sub_1B9077E98(&qword_1EBAC36F8, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B9077E98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B9078268()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9078448(319, &qword_1EBAB46B8, type metadata accessor for Apple_Parsec_Search_LocalCompletionInfo);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9078340()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9078448(319, &qword_1EBAB5CF0, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery);
    if (v1 <= 0x3F)
    {
      sub_1B9078448(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
      if (v2 <= 0x3F)
      {
        sub_1B9078448(319, &qword_1EBAB5A28, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariQueryContext);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B9078448(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B90784C4()
{
  sub_1B8E00BFC();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9078448(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error);
      if (v2 <= 0x3F)
      {
        sub_1B9078448(319, qword_1ED9CF0A0, type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_47_6()
{

  return sub_1B907341C();
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

void (*Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.queryContext.modify())()
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_145_1(v7);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v8);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest(v15);
  OUTLINED_FUNCTION_59_7(v16);
  v17 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v17, v18, Context);
  if (v19)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v20 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(v11 + v20) = qword_1ED9D38C8;
    v21 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v22, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v7, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_45();
    OUTLINED_FUNCTION_246();
    sub_1B907E6DC();
  }

  return sub_1B907886C;
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void (*Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.error.modify())()
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_145_1(v7);
  v8 = type metadata accessor for Apple_Parsec_Search_Error();
  *(v0 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse(v13);
  OUTLINED_FUNCTION_58_6(v14);
  v15 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v15, v16, v8);
  if (v17)
  {
    OUTLINED_FUNCTION_68_5();
    v18 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v18, v19, v8);
    if (!v17)
    {
      sub_1B8D9207C(v7, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_17();
    sub_1B907E6DC();
  }

  return sub_1B9078B0C;
}

void sub_1B9078B34()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v4 = v1;
  v5 = *(*v0 + 10);
  v6 = (*v0)[3];
  v7 = (*v0)[4];
  v8 = (*v0)[1];
  v9 = (*v0)[2];
  v10 = **v0;
  if (v11)
  {
    v12 = (*v0)[4];
    sub_1B907E734();
    sub_1B8D9207C(v10 + v5, v4, v3);
    sub_1B907E6DC();
    OUTLINED_FUNCTION_187_1();
    sub_1B907E78C();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v1, v2);
    sub_1B907E6DC();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.traceID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.traceID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.hashBuckets.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.serviceDebug.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.hashDetails.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.fullHash.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.fullHash.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.sbaEntityTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.matchedURLVariant.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.matchedURLVariant.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.unknownFields.getter()
{
  v0 = *(type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0) + 36);
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_18_1();

  return v5(v4);
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

unint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B90791B4@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90791E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E8C8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC3720 = a1;
}

uint64_t sub_1B90793AC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.SBAEntityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B907940C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  v9 = *(a1(0) + 24);
  OUTLINED_FUNCTION_77_7();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, Context);
  if (!v13)
  {
    return sub_1B907E6DC();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v14 = *(Context + 20);
  if (qword_1ED9D38C0 != -1)
  {
    OUTLINED_FUNCTION_12_0();
  }

  *(a2 + v14) = qword_1ED9D38C8;
  v15 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, Context);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  return result;
}

uint64_t sub_1B9079564()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_1_45();
  sub_1B907E6DC();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest.queryContext.modify())()
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_145_1(v7);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v8);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest(v15);
  OUTLINED_FUNCTION_59_7(v16);
  v17 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v17, v18, Context);
  if (v19)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v20 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(v11 + v20) = qword_1ED9D38C8;
    v21 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v22, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v7, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_45();
    OUTLINED_FUNCTION_246();
    sub_1B907E6DC();
  }

  return sub_1B907FBA0;
}

uint64_t sub_1B907975C(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_79();
  v6 = *(a1(0) + 24);
  OUTLINED_FUNCTION_78_4();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v7 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_246();
  sub_1B8D9207C(v12, v13, &qword_1B96809F0);
  return v11;
}

uint64_t sub_1B9079828(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 24), &qword_1EBABED40, &qword_1B96809F0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_59_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B90798A4()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9079928()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B90799F0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v3 = a1(0);
  v4 = a2 + *(v3 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 24);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);

  return __swift_storeEnumTagSinglePayload(a2 + v5, 1, 1, Context);
}

uint64_t sub_1B9079A9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  v9 = *(a1(0) + 36);
  OUTLINED_FUNCTION_77_7();
  v10 = type metadata accessor for Apple_Parsec_Search_Error();
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v10);
  if (!v13)
  {
    return sub_1B907E6DC();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  v14 = a2 + *(v10 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v15, v16, v10);
  if (!v13)
  {
    return sub_1B8D9207C(v2, &qword_1EBAB9188, &qword_1B964D970);
  }

  return result;
}

uint64_t sub_1B9079BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  sub_1B907E734();
  return a7(v7);
}

uint64_t sub_1B9079C58()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 36), &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_6_17();
  sub_1B907E6DC();
  type metadata accessor for Apple_Parsec_Search_Error();
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse.error.modify())()
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_145_1(v7);
  v8 = type metadata accessor for Apple_Parsec_Search_Error();
  *(v0 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse(v13);
  OUTLINED_FUNCTION_58_6(v14);
  v15 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v15, v16, v8);
  if (v17)
  {
    OUTLINED_FUNCTION_68_5();
    v18 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v18, v19, v8);
    if (!v17)
    {
      sub_1B8D9207C(v7, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_17();
    sub_1B907E6DC();
  }

  return sub_1B907FBA4;
}

uint64_t sub_1B9079E10(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_79();
  v6 = *(a1(0) + 36);
  OUTLINED_FUNCTION_78_4();
  type metadata accessor for Apple_Parsec_Search_Error();
  v7 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_246();
  sub_1B8D9207C(v12, v13, &qword_1B964D970);
  return v11;
}

uint64_t sub_1B9079EDC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 36), &qword_1EBAB9188, &qword_1B964D970);
  type metadata accessor for Apple_Parsec_Search_Error();
  v3 = OUTLINED_FUNCTION_59_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B9079FA0()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B907A024()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B907A0EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *(a2 + 40) = sub_1B964C7B0();
  v4 = a1(0);
  v5 = a2 + *(v4 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v6 = *(v4 + 36);
  type metadata accessor for Apple_Parsec_Search_Error();
  v7 = OUTLINED_FUNCTION_59_2();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.results.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.url.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.url.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t sub_1B907A288()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B907A30C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B907A3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v5 = a5 + *(a4(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B907A43C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3DB8);
  __swift_project_value_buffer(v0, qword_1EBAB3DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query_context";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hash_prefix";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B907C9B4();
    }
  }

  return result;
}

void Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_95_4();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v9 = OUTLINED_FUNCTION_59_1(Context);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest(0);
  v13 = *(v12 + 24);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v2, 1, Context) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    sub_1B907E6DC();
    OUTLINED_FUNCTION_9_21();
    sub_1B907E880(v14, v15);
    sub_1B964C740();
    sub_1B907E78C();
    if (v1)
    {
      goto LABEL_7;
    }
  }

  v16 = *v3;
  v17 = v3[1];
  OUTLINED_FUNCTION_1();
  if (!v18 || (sub_1B964C700(), !v1))
  {
    v19 = v3 + *(v12 + 20);
    OUTLINED_FUNCTION_186();
    sub_1B964C290();
  }

LABEL_7:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v6 = OUTLINED_FUNCTION_59_1(Context);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10) - 8);
  v19 = *(*v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_88();
  v39 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest(0);
  v40 = v4;
  v21 = *(v39 + 24);
  v22 = v18[14];
  OUTLINED_FUNCTION_162_1();
  v41 = v2;
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v0);
  if (!v23)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v0 + v22);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_45();
      sub_1B907E6DC();
      v26 = *(Context + 20);
      v27 = *&v17[v26];
      v28 = *(v11 + v26);
      if (v27 == v28 || (v29 = *&v17[v26], , , v30 = sub_1B9090820(v27, v28), , , v30))
      {
        v31 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_52();
        sub_1B907E880(v32, v33);
        sub_1B964C850();
        OUTLINED_FUNCTION_28_14();
        sub_1B907E78C();
        OUTLINED_FUNCTION_686();
        sub_1B907E78C();
        sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
        if ((v31 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }

      OUTLINED_FUNCTION_33_9();
      sub_1B907E78C();
      sub_1B907E78C();
      v24 = &qword_1EBABED40;
      v25 = &qword_1B96809F0;
LABEL_10:
      sub_1B8D9207C(v0, v24, v25);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_32_13();
    sub_1B907E78C();
LABEL_9:
    v24 = &qword_1EBABED68;
    v25 = &qword_1B9680A10;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v0 + v22);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
LABEL_15:
  v34 = *v40 == *v41 && v40[1] == v41[1];
  if (v34 || (sub_1B964C9F0() & 1) != 0)
  {
    v35 = *(v39 + 20);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_52();
    sub_1B907E880(v36, v37);
    sub_1B964C850();
  }

LABEL_21:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B907AC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3898, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907ACFC(uint64_t a1)
{
  v2 = sub_1B907E880(&qword_1EBAC3810, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907AD6C()
{
  sub_1B907E880(&qword_1EBAC3810, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchRequest);

  return sub_1B964C5D0();
}

void Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.decodeMessage<A>(decoder:)()
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
      case 100:
        OUTLINED_FUNCTION_9();
        sub_1B907D65C();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B907D540();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 50:
        OUTLINED_FUNCTION_9();
        sub_1B907D5D0();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8CFB0F8();
        break;
    }
  }
}

void Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_164();
  v7 = type metadata accessor for Apple_Parsec_Search_Error();
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_95_4();
  if (!*v1 || (v20 = *v1, v21 = *(v1 + 8), sub_1B8F2116C(), OUTLINED_FUNCTION_17_15(), sub_1B964C680(), !v0))
  {
    v19 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse(0);
    v11 = *(v19 + 36);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      OUTLINED_FUNCTION_29_18();
      sub_1B907E6DC();
      OUTLINED_FUNCTION_8_26();
      sub_1B907E880(v12, v13);
      OUTLINED_FUNCTION_17_15();
      sub_1B964C740();
      sub_1B907E78C();
      if (v0)
      {
        goto LABEL_13;
      }
    }

    v14 = v1[2];
    v15 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v16 || (OUTLINED_FUNCTION_45_6(), sub_1B964C700(), !v0))
    {
      if (!*(v1[4] + 16) || (type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail(0), sub_1B907E880(qword_1ED9CA828, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_17_15(), sub_1B964C730(), !v0))
      {
        if (!*(v1[5] + 16) || (sub_1B964C280(), type metadata accessor for Debuglevelspb_AnyArray(0), OUTLINED_FUNCTION_7_26(), sub_1B907E880(v17, v7), OUTLINED_FUNCTION_10_22(&qword_1EBABAE08), OUTLINED_FUNCTION_45_6(), sub_1B964C5E0(), !v0))
        {
          v18 = *(v19 + 32);
          OUTLINED_FUNCTION_43_8();
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B907B314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3890, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907B394(uint64_t a1)
{
  v2 = sub_1B907E880(&qword_1EBAC3820, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907B404()
{
  sub_1B907E880(&qword_1EBAC3820, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantPrefetchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B907B49C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3740);
  __swift_project_value_buffer(v0, qword_1EBAC3740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hash_prefix";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hash_details";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B907B6F0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B907B6F0()
{
  type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0);
  sub_1B907E880(&qword_1ED9CA8D8, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0), sub_1B907E880(&qword_1ED9CA8D8, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
    {
      v7 = v2 + *(type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail(0) + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Sba_V1_HashBucketDetail.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  sub_1B8D63518();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_52();
  sub_1B907E880(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B907B9C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3888, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907BA44(uint64_t a1)
{
  v2 = sub_1B907E880(qword_1ED9CA828, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907BAB4()
{
  sub_1B907E880(qword_1ED9CA828, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B907BB34()
{
  result = MEMORY[0x1BFADC850](0x746544687361482ELL, 0xEB000000006C6961);
  qword_1EBAC3758 = 0xD000000000000024;
  unk_1EBAC3760 = 0x80000001B9703A80;
  return result;
}

uint64_t static Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.protoMessageName.getter()
{
  if (qword_1EBAB70E0 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B907BC0C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3768);
  __swift_project_value_buffer(v0, qword_1EBAC3768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "full_hash";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "has_summary";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sba_entity_types";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "has_table_of_contents";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "matched_url_variant";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
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
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B907BF5C();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
  {
    if (*(v2 + 16) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
    {
      if (!*(*(v2 + 24) + 16) || (sub_1B907E8C8(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C600(), !v1))
      {
        if (*(v2 + 32) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
        {
          v7 = *(v2 + 40);
          v8 = *(v2 + 48);
          OUTLINED_FUNCTION_1();
          if (!v9 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
          {
            v10 = v2 + *(type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0) + 36);
            OUTLINED_FUNCTION_12();
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_37(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 16) != *(v0 + 16) || (sub_1B8D6379C(*(v1 + 24), *(v0 + 24)) & 1) == 0 || *(v1 + 32) != *(v0 + 32))
  {
    return 0;
  }

  v7 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_52();
  sub_1B907E880(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B907C25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3880, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907C2DC(uint64_t a1)
{
  v2 = sub_1B907E880(&qword_1ED9CA8D8, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907C34C()
{
  sub_1B907E880(&qword_1ED9CA8D8, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B907C3CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC3780);
  __swift_project_value_buffer(v0, qword_1EBAC3780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SBA_ENTITY_TYPE_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SBA_ENTITY_TYPE_MAPS";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SBA_ENTITY_TYPE_PERSON";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SBA_ENTITY_TYPE_MUSIC";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SBA_ENTITY_TYPE_MEDIA";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "SBA_ENTITY_TYPE_SPORT";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "SBA_ENTITY_TYPE_MOVIE";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "SBA_ENTITY_TYPE_TVSHOW";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B907C744()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3D48);
  __swift_project_value_buffer(v0, qword_1EBAB3D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query_context";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B907C9B4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B907C9B4()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 24);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_9_21();
  sub_1B907E880(v2, v3);
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C580();
}

void Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_95_4();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v9 = OUTLINED_FUNCTION_59_1(Context);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = *v2;
  v13 = v2[1];
  OUTLINED_FUNCTION_1();
  if (!v14 || (v1 = v0, sub_1B964C700(), !v0))
  {
    v15 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest(0);
    v16 = *(v15 + 24);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v3, 1, Context) == 1)
    {
      sub_1B8D9207C(v3, &qword_1EBABED40, &qword_1B96809F0);
LABEL_6:
      v19 = *(v15 + 20);
      OUTLINED_FUNCTION_43_8();
      goto LABEL_7;
    }

    sub_1B907E6DC();
    OUTLINED_FUNCTION_9_21();
    sub_1B907E880(v17, v18);
    OUTLINED_FUNCTION_45_6();
    sub_1B964C740();
    sub_1B907E78C();
    if (!v1)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v4 = OUTLINED_FUNCTION_59_1(Context);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_88();
  v20 = *v1 == *v0 && v1[1] == v0[1];
  if (v20 || (sub_1B964C9F0() & 1) != 0)
  {
    v38 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest(0);
    v21 = *(v38 + 24);
    v22 = *(v16 + 48);
    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_37_0(v2);
    if (v20)
    {
      OUTLINED_FUNCTION_37_0(v2 + v22);
      if (v20)
      {
        sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
LABEL_20:
        v34 = *(v38 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_52();
        sub_1B907E880(v35, v36);
        sub_1B964C850();
        goto LABEL_21;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_37_0(v2 + v22);
      if (!v23)
      {
        OUTLINED_FUNCTION_1_45();
        sub_1B907E6DC();
        v26 = *(Context + 20);
        v27 = *&v15[v26];
        v28 = *(v9 + v26);
        if (v27 == v28 || (v29 = *&v15[v26], , , v30 = sub_1B9090820(v27, v28), , , v30))
        {
          v31 = sub_1B964C2B0();
          OUTLINED_FUNCTION_0_52();
          sub_1B907E880(v32, v33);
          sub_1B964C850();
          OUTLINED_FUNCTION_28_14();
          sub_1B907E78C();
          sub_1B907E78C();
          sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
          if ((v31 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        OUTLINED_FUNCTION_33_9();
        sub_1B907E78C();
        sub_1B907E78C();
        v24 = &qword_1EBABED40;
        v25 = &qword_1B96809F0;
LABEL_15:
        sub_1B8D9207C(v2, v24, v25);
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_32_13();
      sub_1B907E78C();
    }

    v24 = &qword_1EBABED68;
    v25 = &qword_1B9680A10;
    goto LABEL_15;
  }

LABEL_21:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B907CFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3878, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907D068(uint64_t a1)
{
  v2 = sub_1B907E880(&qword_1EBAC3840, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907D0D8()
{
  sub_1B907E880(&qword_1EBAC3840, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B907D188(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B964C780();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B964EE70;
  v10 = v9 + v8;
  v11 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v11 = "status";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v13 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v13);
  v15 = *(v14 + 104);
  (v15)(v11, v12, v13);
  v16 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v16 = "error";
  *(v16 + 8) = 5;
  *(v16 + 16) = 2;
  v15();
  v17 = (v10 + 2 * v7);
  v18 = v17 + v6[14];
  *v17 = 3;
  *v18 = "trace_id";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v19 = *MEMORY[0x1E69AADE8];
  v15();
  v20 = v6[14];
  v21 = (v10 + 3 * v7);
  *v21 = 50;
  v22 = v21 + v20;
  *v22 = a3;
  *(v22 + 1) = a4;
  v22[16] = 2;
  v15();
  v23 = (v10 + 4 * v7);
  v24 = v23 + v6[14];
  *v23 = 100;
  *v24 = "service_debug";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v15();
  return sub_1B964C760();
}

void Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse.decodeMessage<A>(decoder:)()
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
      case 100:
        OUTLINED_FUNCTION_9();
        sub_1B907D65C();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B907D540();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 50:
        OUTLINED_FUNCTION_9();
        sub_1B907D5D0();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8CFB0F8();
        break;
    }
  }
}

uint64_t sub_1B907D540()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 36);
  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_8_26();
  sub_1B907E880(v2, v3);
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C580();
}

void sub_1B907D5D0()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v3 = v2;
  v4(0);
  sub_1B907E880(v3, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

void sub_1B907D65C()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_147_1();
  sub_1B964C280();
  type metadata accessor for Debuglevelspb_AnyArray(0);
  OUTLINED_FUNCTION_7_26();
  sub_1B907E880(v1, v0);
  OUTLINED_FUNCTION_10_22(&qword_1EBABAE08);
  sub_1B964C3A0();
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_164();
  v7 = type metadata accessor for Apple_Parsec_Search_Error();
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_95_4();
  if (!*v1 || (v20 = *v1, v21 = *(v1 + 8), sub_1B8F2116C(), OUTLINED_FUNCTION_17_15(), sub_1B964C680(), !v0))
  {
    v19 = type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse(0);
    v11 = *(v19 + 36);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      OUTLINED_FUNCTION_29_18();
      sub_1B907E6DC();
      OUTLINED_FUNCTION_8_26();
      sub_1B907E880(v12, v13);
      OUTLINED_FUNCTION_17_15();
      sub_1B964C740();
      sub_1B907E78C();
      if (v0)
      {
        goto LABEL_13;
      }
    }

    v14 = v1[2];
    v15 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v16 || (OUTLINED_FUNCTION_45_6(), sub_1B964C700(), !v0))
    {
      if (!*(v1[4] + 16) || (type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult(0), sub_1B907E880(&qword_1ED9C99D8, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_17_15(), sub_1B964C730(), !v0))
      {
        if (!*(v1[5] + 16) || (sub_1B964C280(), type metadata accessor for Debuglevelspb_AnyArray(0), OUTLINED_FUNCTION_7_26(), sub_1B907E880(v17, v7), OUTLINED_FUNCTION_10_22(&qword_1EBABAE08), OUTLINED_FUNCTION_45_6(), sub_1B964C5E0(), !v0))
        {
          v18 = *(v19 + 32);
          OUTLINED_FUNCTION_43_8();
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void sub_1B907DA28()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_468();
  v7 = type metadata accessor for Apple_Parsec_Search_Error();
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_164();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  OUTLINED_FUNCTION_59_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  v24 = *v1;
  v25 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        if (v24 != 1)
        {
          goto LABEL_29;
        }
      }

      else if (v24 != 2)
      {
        goto LABEL_29;
      }
    }

    else if (v24)
    {
      goto LABEL_29;
    }
  }

  else if (v24 != v25)
  {
    goto LABEL_29;
  }

  v38 = v4;
  v37 = v6(0);
  v26 = *(v37 + 36);
  v27 = *(v18 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v23, 1, v7);
  if (!v28)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(&v23[v27], 1, v7);
    if (!v28)
    {
      sub_1B907E6DC();
      v29 = static Apple_Parsec_Search_Error.== infix(_:_:)(v2, v13);
      sub_1B907E78C();
      sub_1B907E78C();
      sub_1B8D9207C(v23, &qword_1EBAB9188, &qword_1B964D970);
      if ((v29 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    sub_1B907E78C();
LABEL_19:
    sub_1B8D9207C(v23, &qword_1EBAB9190, &qword_1B964D978);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_178(&v23[v27], 1, v7);
  if (!v28)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v23, &qword_1EBAB9188, &qword_1B964D970);
LABEL_21:
  v30 = v1[2] == v0[2] && v1[3] == v0[3];
  if (v30 || (sub_1B964C9F0()) && (v38(v1[4], v0[4]))
  {
    v31 = v1[5];
    v32 = v0[5];
    sub_1B8DAFA20();
    if (v33)
    {
      v34 = *(v37 + 32);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_52();
      sub_1B907E880(v35, v36);
      OUTLINED_FUNCTION_634();
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B907DE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3870, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907DE8C(uint64_t a1)
{
  v2 = sub_1B907E880(&qword_1EBAC3850, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907DEFC()
{
  sub_1B907E880(&qword_1EBAC3850, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummarizeResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B907DF94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC37B0);
  __swift_project_value_buffer(v0, qword_1EBAC37B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "results";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B907E1E8();
    }
  }

  return result;
}

uint64_t sub_1B907E1E8()
{
  type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0);
  sub_1B907E880(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult(0), sub_1B907E880(qword_1ED9CE220, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
    {
      v7 = v2 + *(type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult(0) + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Sba_V1_SafariAssistantSummaryResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  sub_1B8D61678();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_52();
  sub_1B907E880(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B907E468(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B907E880(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B907E54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B907E880(&qword_1EBAC3868, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B907E5CC(uint64_t a1)
{
  v2 = sub_1B907E880(&qword_1ED9C99D8, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B907E63C()
{
  sub_1B907E880(&qword_1ED9C99D8, type metadata accessor for Apple_Parsec_Sba_V1_SafariAssistantSummaryResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B907E6DC()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B907E734()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B907E78C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B907E880(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B907E8C8()
{
  result = qword_1EBAB4B98;
  if (!qword_1EBAB4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4B98);
  }

  return result;
}

unint64_t sub_1B907E920()
{
  result = qword_1EBAB4B90;
  if (!qword_1EBAB4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4B90);
  }

  return result;
}

unint64_t sub_1B907E978()
{
  result = qword_1EBAB4B80;
  if (!qword_1EBAB4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4B80);
  }

  return result;
}

unint64_t sub_1B907E9D0()
{
  result = qword_1EBAB4B88;
  if (!qword_1EBAB4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4B88);
  }

  return result;
}

unint64_t sub_1B907EA28()
{
  result = qword_1EBAC3800;
  if (!qword_1EBAC3800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC3808, &qword_1B9686CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC3800);
  }

  return result;
}

void sub_1B907F2DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B907F368()
{
  sub_1B907F2DC(319, &qword_1ED9C8F70, type metadata accessor for Apple_Parsec_Sba_V1_HashBucketDetail.HashDetail, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B907F454()
{
  sub_1B907F500();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B907F500()
{
  if (!qword_1ED9C8F78)
  {
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9C8F78);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
    v7 = *(v2 + 24);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_indexTm_3()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      v9 = *(v5 + 24);
    }

    v10 = OUTLINED_FUNCTION_61_0(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

void sub_1B907F6F4()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B907F2DC(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_16Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
    v7 = *(v2 + 36);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_17Tm()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
      v9 = *(v5 + 36);
    }

    v10 = OUTLINED_FUNCTION_61_0(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

void sub_1B907F96C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B907F2DC(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B8E00BFC();
    if (v6 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v7 <= 0x3F)
      {
        sub_1B907F2DC(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error, MEMORY[0x1E69E6720]);
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B907FAAC()
{
  sub_1B907F2DC(319, &qword_1ED9C8FA8, type metadata accessor for Apple_Parsec_Search_V1alpha_SearchResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_10_22(unint64_t *a1)
{

  return sub_1B907E880(a1, v1);
}

uint64_t OUTLINED_FUNCTION_43_8()
{
  v2 = *(v0 - 72);

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_58_6(uint64_t a1)
{
  *(v1 + 40) = *(a1 + 36);

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_59_7(uint64_t a1)
{
  *(v1 + 40) = *(a1 + 24);

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_77_7()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_78_4()
{

  return sub_1B8D92024();
}

uint64_t Apple_Parsec_Search_LRConversationThread.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Search_LRConversationThread.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Search_LRConversationThread.lastUsedTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(v9);
  v11 = OUTLINED_FUNCTION_115(*(v10 + 32));
  OUTLINED_FUNCTION_28_2(v11, v12);
  v13 = sub_1B964C110();
  OUTLINED_FUNCTION_57(v1);
  if (v14)
  {
    sub_1B964C100();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v14)
    {
      return sub_1B8D9207C(v1, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    return (*(v15 + 32))(a1, v1, v13);
  }

  return result;
}

uint64_t Apple_Parsec_Search_LRConversationThread.lastUsedTimestamp.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2) + 32);
  sub_1B8D9207C(v1 + v3, &off_1EBAB90F0, &unk_1B964D8E0);
  v4 = sub_1B964C110();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Apple_Parsec_Search_LRConversationThread.lastUsedTimestamp.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  OUTLINED_FUNCTION_145_1(v4);
  v5 = sub_1B964C110();
  v6 = OUTLINED_FUNCTION_53_6(v5);
  OUTLINED_FUNCTION_30_1(v6);
  v8 = v7;
  *(v0 + 24) = v7;
  v10 = *(v9 + 64);
  *(v0 + 32) = __swift_coroFrameAllocStub(v10);
  *(v0 + 40) = __swift_coroFrameAllocStub(v10);
  v11 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(0) + 32);
  *(v0 + 48) = v11;
  OUTLINED_FUNCTION_30_19(v11);
  OUTLINED_FUNCTION_75(v4);
  if (v12)
  {
    sub_1B964C100();
    OUTLINED_FUNCTION_75(v4);
    if (!v12)
    {
      sub_1B8D9207C(v4, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    v13 = *(v8 + 32);
    v14 = OUTLINED_FUNCTION_461();
    v15(v14);
  }

  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Search_LRConversationThread.hasLastUsedTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(v6);
  OUTLINED_FUNCTION_23_2(*(v7 + 32));
  v8 = sub_1B964C110();
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Search_LRConversationThread.clearLastUsedTimestamp()()
{
  v1 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &off_1EBAB90F0, &unk_1B964D8E0);
  sub_1B964C110();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Search_LRConversationThread.longPersistenceTtl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(v9);
  v11 = OUTLINED_FUNCTION_115(*(v10 + 36));
  OUTLINED_FUNCTION_28_2(v11, v12);
  v13 = sub_1B964C220();
  OUTLINED_FUNCTION_57(v1);
  if (v14)
  {
    sub_1B964C210();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v14)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC38E8, &qword_1B9687958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    return (*(v15 + 32))(a1, v1, v13);
  }

  return result;
}

uint64_t Apple_Parsec_Search_LRConversationThread.longPersistenceTtl.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2) + 36);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC38E8, &qword_1B9687958);
  v4 = sub_1B964C220();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Apple_Parsec_Search_LRConversationThread.longPersistenceTtl.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  OUTLINED_FUNCTION_145_1(v4);
  v5 = sub_1B964C220();
  v6 = OUTLINED_FUNCTION_53_6(v5);
  OUTLINED_FUNCTION_30_1(v6);
  v8 = v7;
  *(v0 + 24) = v7;
  v10 = *(v9 + 64);
  *(v0 + 32) = __swift_coroFrameAllocStub(v10);
  *(v0 + 40) = __swift_coroFrameAllocStub(v10);
  v11 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(0) + 36);
  *(v0 + 48) = v11;
  OUTLINED_FUNCTION_30_19(v11);
  OUTLINED_FUNCTION_75(v4);
  if (v12)
  {
    sub_1B964C210();
    OUTLINED_FUNCTION_75(v4);
    if (!v12)
    {
      sub_1B8D9207C(v4, &qword_1EBAC38E8, &qword_1B9687958);
    }
  }

  else
  {
    v13 = *(v8 + 32);
    v14 = OUTLINED_FUNCTION_461();
    v15(v14);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B9080580()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v4 = v1;
  v5 = *(*v0 + 12);
  v6 = (*v0)[4];
  v7 = (*v0)[5];
  v8 = (*v0)[2];
  v9 = (*v0)[3];
  v11 = **v0;
  v10 = (*v0)[1];
  if (v12)
  {
    (*(v9 + 16))((*v0)[4], v7, v8);
    sub_1B8D9207C(v11 + v5, v4, v3);
    (*(v9 + 32))(v11 + v5, v6, v8);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
    v16 = *(v9 + 8);
    v17 = OUTLINED_FUNCTION_236();
    v18(v17);
  }

  else
  {
    sub_1B8D9207C(v11 + v5, v1, v2);
    (*(v9 + 32))(v11 + v5, v7, v8);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v8);
  }

  free(v7);
  free(v6);
  free(v10);
  OUTLINED_FUNCTION_283();

  free(v22);
}

uint64_t Apple_Parsec_Search_LRConversationThread.hasLongPersistenceTtl.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(v6);
  OUTLINED_FUNCTION_23_2(*(v7 + 36));
  v8 = sub_1B964C220();
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Search_LRConversationThread.clearLongPersistenceTtl()()
{
  v1 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAC38E8, &qword_1B9687958);
  sub_1B964C220();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Search_LRConversationThread.contextType.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  v3 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2);
  return sub_1B8DD9078(v1 + *(v3 + 24), v0, &qword_1EBAC38F0, &qword_1B9687960);
}

uint64_t Apple_Parsec_Search_LRConversationThread.contextType.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = v1 + *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2) + 24);

  return sub_1B908080C(v0, v3);
}

uint64_t sub_1B908080C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F0, &qword_1B9687960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Parsec_Search_LRConversationThread.contextType.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_LRConversationThread.summary.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F0, &qword_1B9687960);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  sub_1B8DD9078(v0 + *(v7 + 24), v6, &qword_1EBAC38F0, &qword_1B9687960);
  v8 = type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  OUTLINED_FUNCTION_178(v6, 1, v8);
  if (v9)
  {
    sub_1B8D9207C(v6, &qword_1EBAC38F0, &qword_1B9687960);
    return sub_1B964C170();
  }

  else
  {
    v10 = sub_1B964C180();
    OUTLINED_FUNCTION_59_1(v10);
    v12 = *(v11 + 32);
    v13 = OUTLINED_FUNCTION_514();
    return v14(v13);
  }
}

uint64_t sub_1B90809EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v7 = a5(0);
  OUTLINED_FUNCTION_30_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_461();
  v16(v15);
  return a6(v12);
}

uint64_t Apple_Parsec_Search_LRConversationThread.summary.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC38F0, &qword_1B9687960);
  v4 = sub_1B964C180();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, v0);
  type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Apple_Parsec_Search_LRConversationThread.summary.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C180();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1(v7);
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(0) + 24);
  *(v3 + 14) = v13;
  OUTLINED_FUNCTION_30_19(v13);
  v14 = type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  v3[6] = v14;
  OUTLINED_FUNCTION_178(v6, 1, v14);
  if (v15)
  {
    sub_1B8D9207C(v6, &qword_1EBAC38F0, &qword_1B9687960);
    sub_1B964C170();
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B9080CC4()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[5];
  v2 = (*v0)[6];
  v3 = *(*v0 + 14);
  v5 = (*v0)[3];
  v4 = (*v0)[4];
  v6 = (*v0)[1];
  v7 = (*v0)[2];
  v8 = **v0;
  if (v9)
  {
    (*(v5 + 16))((*v0)[4], v1, v7);
    sub_1B8D9207C(v8 + v3, &qword_1EBAC38F0, &qword_1B9687960);
    (*(v5 + 32))(v8 + v3, v4, v7);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
    (*(v5 + 8))(v1, v7);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAC38F0, &qword_1B9687960);
    (*(v5 + 32))(v8 + v3, v1, v7);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
  }

  free(v1);
  free(v4);
  free(v6);
  OUTLINED_FUNCTION_283();

  free(v16);
}

uint64_t Apple_Parsec_Search_LRConversationThread.unknownFields.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2) + 28);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t Apple_Parsec_Search_LRConversationThread.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v2) + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Apple_Parsec_Search_LRConversationThread.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThread(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t static Apple_Parsec_Search_LRConversationThread.OneOf_ContextType.== infix(_:_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F8, &qword_1B9687968);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = *(v4 + 56);
  OUTLINED_FUNCTION_18_13();
  sub_1B9081498();
  sub_1B9081498();
  v8 = sub_1B964C160();
  v9 = sub_1B964C180();
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 8);
  v11(&v6[v7], v9);
  v11(v6, v9);
  return v8 & 1;
}

uint64_t Apple_Parsec_Search_LRConversationThread.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for Apple_Parsec_Search_LRConversationThread(0);
  v3 = v2[6];
  type metadata accessor for Apple_Parsec_Search_LRConversationThread.OneOf_ContextType(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = a1 + v2[7];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v9 = v2[8];
  sub_1B964C110();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v2[9];
  sub_1B964C220();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t Apple_Parsec_Search_LRConversationThreadManagementPolicy.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Search_LRConversationThreadManagementPolicy.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.lrcThreadPolicy.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v9);
  v11 = OUTLINED_FUNCTION_115(*(v10 + 20));
  OUTLINED_FUNCTION_28_2(v11, v12);
  v13 = type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  OUTLINED_FUNCTION_57(v1);
  if (v14)
  {
    *a1 = 0;
    v15 = a1 + *(v13 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v14)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3900, &qword_1B9687970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    return sub_1B9081890();
  }

  return result;
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.lrcThreadPolicy.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC3900, &qword_1B9687970);
  OUTLINED_FUNCTION_2_29();
  sub_1B9081890();
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Search_ConversationContextManagementPolicy.lrcThreadPolicy.modify())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(v6);
  v8 = OUTLINED_FUNCTION_53_6(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 32) = v11;
  v12 = *(type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0) + 20);
  *(v1 + 40) = v12;
  v13 = OUTLINED_FUNCTION_115(v12);
  OUTLINED_FUNCTION_44_7(v13, v14);
  OUTLINED_FUNCTION_75(v5);
  if (v15)
  {
    *v11 = 0;
    v16 = v11 + *(v0 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v5);
    if (!v15)
    {
      sub_1B8D9207C(v5, &qword_1EBAC3900, &qword_1B9687970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    OUTLINED_FUNCTION_461();
    sub_1B9081890();
  }

  return sub_1B908145C;
}

uint64_t sub_1B9081498()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B90814EC()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Search_ConversationContextManagementPolicy.hasLrcThreadPolicy.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(v6);
  OUTLINED_FUNCTION_23_2(*(v7 + 20));
  v8 = type metadata accessor for Apple_Parsec_Search_LRConversationThreadManagementPolicy(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}