uint64_t sub_1B8F1CD00()
{
  OUTLINED_FUNCTION_111_0();
  v6 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_103();
  v13 = v2(v12);
  sub_1B8DD9078(v1 + *(v13 + 32), v4, v6, v3);
  v0(0);
  v14 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v14, v15, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v19, v20, v21);
  return v18;
}

uint64_t sub_1B8F1CDEC()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 32), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.traceID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.traceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.results.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F1CFD0()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = v1(v7);
  OUTLINED_FUNCTION_36_3(*(v8 + 24));
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_9_2();
  if (!v9)
  {
    return OUTLINED_FUNCTION_89_4();
  }

  Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.init()(v0);
  result = OUTLINED_FUNCTION_9_2();
  if (!v9)
  {
    return sub_1B8D9207C(v2, &qword_1EBABED38, &unk_1B966BBE0);
  }

  return result;
}

uint64_t sub_1B8F1D0C0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_88_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest.query.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest(v13);
  OUTLINED_FUNCTION_16_4(*(v14 + 24));
  OUTLINED_FUNCTION_117(v0);
  if (v15)
  {
    OUTLINED_FUNCTION_75_1();
    OUTLINED_FUNCTION_66_3(MEMORY[0x1E69E7CC0]);
    v16 = *(v8 + 52);
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_117(v0);
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBABED38, &unk_1B966BBE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_246();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F1D280(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_79();
  v6 = a1(0);
  OUTLINED_FUNCTION_82_2(*(v6 + 24));
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
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
  sub_1B8D9207C(v12, v13, &unk_1B966BBE0);
  return v11;
}

uint64_t sub_1B8F1D34C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 24), &qword_1EBABED38, &unk_1B966BBE0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8F1D3D0()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = v1(v7);
  OUTLINED_FUNCTION_36_3(*(v8 + 28));
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_9_2();
  if (!v10)
  {
    return OUTLINED_FUNCTION_89_4();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(Context + 20);
  if (qword_1ED9D38C0 != -1)
  {
    OUTLINED_FUNCTION_12_0();
  }

  *(v0 + v11) = qword_1ED9D38C8;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, Context);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  return result;
}

uint64_t sub_1B8F1D50C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 28), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_7_19();
  OUTLINED_FUNCTION_88_3();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v7);
  *(v1 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest(v14);
  OUTLINED_FUNCTION_16_4(*(v15 + 28));
  OUTLINED_FUNCTION_117(v0);
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(v10 + v17) = qword_1ED9D38C8;
    v18 = OUTLINED_FUNCTION_207();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_246();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F1D6EC(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_79();
  v6 = a1(0);
  OUTLINED_FUNCTION_82_2(*(v6 + 28));
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

uint64_t sub_1B8F1D7B8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 28), &qword_1EBABED40, &qword_1B96809F0);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8F1D83C()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = v1(v7);
  OUTLINED_FUNCTION_36_3(*(v8 + 32));
  Context = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  OUTLINED_FUNCTION_9_2();
  if (!v10)
  {
    return OUTLINED_FUNCTION_89_4();
  }

  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  v11 = v0 + *(Context + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v10)
  {
    return sub_1B8D9207C(v2, &qword_1EBABED48, &unk_1B966BBF0);
  }

  return result;
}

uint64_t sub_1B8F1D93C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 32), &qword_1EBABED48, &unk_1B966BBF0);
  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_88_3();
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest.deviceexpertQueryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  Context = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(v7);
  *(v1 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest(v13);
  OUTLINED_FUNCTION_15_12(v14);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_69_3();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBABED48, &unk_1B966BBF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_461();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F1DB5C()
{
  OUTLINED_FUNCTION_99_4();
  v1 = *(v0(0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t sub_1B8F1DBE4()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F1DCB0()
{
  OUTLINED_FUNCTION_99_4();
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v2 = v1(0);
  v3 = v0 + v2[5];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[6];
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[7];
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v2[8];
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_1B8F1DD94()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = v1(v7);
  OUTLINED_FUNCTION_36_3(*(v8 + 32));
  v9 = type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_9_2();
  if (!v10)
  {
    return OUTLINED_FUNCTION_89_4();
  }

  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = -1;
  v11 = v0 + *(v9 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v10)
  {
    return sub_1B8D9207C(v2, &qword_1EBAB9188, &qword_1B964D970);
  }

  return result;
}

void Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse.error.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_85(v6);
  v7 = type metadata accessor for Apple_Parsec_Search_Error();
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse(v12);
  OUTLINED_FUNCTION_15_12(v13);
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_68_5();
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_461();
    sub_1B8F21010();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F1DF94(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
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
    sub_1B8F21064();
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B8F21010();
    OUTLINED_FUNCTION_187_1();
    sub_1B8F210B8();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B8F21010();
    OUTLINED_FUNCTION_187_1();
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t sub_1B8F1E148()
{
  OUTLINED_FUNCTION_99_4();
  v1 = *(v0(0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t sub_1B8F1E1D0()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 28);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F1E29C()
{
  OUTLINED_FUNCTION_99_4();
  *v1 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  v3 = v2(0);
  v4 = v0 + *(v3 + 28);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 32);
  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1B8F1E338()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABECC0);
  __swift_project_value_buffer(v0, qword_1EBABECC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "app_bundle_id";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "num_results";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = sub_1B964C700(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_1B964C6C0(), !v1))
    {
      v6 = v0 + *(type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0) + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_36();
  sub_1B8CD23C0(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F1E7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD23C0(&qword_1EBABEE80, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F1E82C(uint64_t a1)
{
  v2 = sub_1B8CD23C0(&qword_1EBABED58, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F1E89C()
{
  sub_1B8CD23C0(&qword_1EBABED58, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F1EA58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD23C0(&qword_1EBABEE78, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F1EAD8(uint64_t a1)
{
  v2 = sub_1B8CD23C0(&qword_1EBABEDB0, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F1EB48()
{
  sub_1B8CD23C0(&qword_1EBABEDB0, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F1EC50()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 32);
  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_26_10();
  sub_1B8CD23C0(v2, v3);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C580();
}

uint64_t sub_1B8F1EDC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD23C0(&qword_1EBABEE70, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F1EE40(uint64_t a1)
{
  v2 = sub_1B8CD23C0(&qword_1EBABEDC8, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F1EEB0()
{
  sub_1B8CD23C0(&qword_1EBABEDC8, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaSearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F1EF54(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B964C780();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40);
  OUTLINED_FUNCTION_80_1(v4);
  v6 = *(v5 + 72);
  v7 = OUTLINED_FUNCTION_60_4();
  *(v7 + 16) = xmmword_1B964E4B0;
  v8 = a2 + v7;
  v9 = a2 + v7 + *(v3 + 56);
  *(a2 + v7) = 1;
  *v9 = "query";
  *(v9 + 1) = 5;
  v9[16] = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = OUTLINED_FUNCTION_53_5(&v8[v6]);
  *v15 = 2;
  v16 = OUTLINED_FUNCTION_74_6(v14, "query_context");
  v17 = *MEMORY[0x1E69AADE8];
  (v13)(v16, v17, v11);
  v18 = OUTLINED_FUNCTION_53_5(&v8[2 * v6]);
  *v19 = 3;
  v20 = OUTLINED_FUNCTION_74_6(v18, "deviceexpert_query_context");
  (v13)(v20, v17, v11);
  v21 = OUTLINED_FUNCTION_51_6();
  *v21 = "feature_flag";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v13();
  return sub_1B964C760();
}

uint64_t sub_1B8F1F190()
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
        OUTLINED_FUNCTION_22_11();
        sub_1B8F1F254();
        break;
      case 2:
        OUTLINED_FUNCTION_22_11();
        sub_1B8F1F2DC();
        break;
      case 3:
        OUTLINED_FUNCTION_22_11();
        sub_1B8F1F364();
        break;
      case 4:
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F1F254()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  OUTLINED_FUNCTION_34_5();
  sub_1B8CD23C0(v2, v3);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C580();
}

uint64_t sub_1B8F1F2DC()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 28);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_33_7();
  sub_1B8CD23C0(v2, v3);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C580();
}

uint64_t sub_1B8F1F364()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 32);
  type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  OUTLINED_FUNCTION_32_7();
  sub_1B8CD23C0(v2, v3);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C580();
}

uint64_t sub_1B8F1F408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v9 = v5;
  v10 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED48, &unk_1B966BBF0);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v49 = v15;
  Context = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  v16 = OUTLINED_FUNCTION_59_1(Context);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_77_3();
  v51 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v23);
  v24 = OUTLINED_FUNCTION_59_1(v51);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_183(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_103();
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v31);
  v33 = OUTLINED_FUNCTION_59_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  v52 = a4(0);
  sub_1B8DD9078(v10 + v52[6], v6, &qword_1EBABED38, &unk_1B966BBE0);
  v36 = OUTLINED_FUNCTION_602();
  if (__swift_getEnumTagSinglePayload(v36, v37, v32) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBABED38, &unk_1B966BBE0);
  }

  else
  {
    sub_1B8F21010();
    OUTLINED_FUNCTION_34_5();
    sub_1B8CD23C0(v38, v39);
    sub_1B964C740();
    result = sub_1B8F210B8();
    if (v5)
    {
      return result;
    }
  }

  sub_1B8DD9078(v10 + v52[7], v7, &qword_1EBABED40, &qword_1B96809F0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v51) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    sub_1B8F21010();
    OUTLINED_FUNCTION_33_7();
    sub_1B8CD23C0(v41, v42);
    OUTLINED_FUNCTION_108_3();
    v9 = v5;
    result = sub_1B8F210B8();
    if (v5)
    {
      return result;
    }
  }

  sub_1B8DD9078(v10 + v52[8], v49, &qword_1EBABED48, &unk_1B966BBF0);
  if (__swift_getEnumTagSinglePayload(v49, 1, Context) == 1)
  {
    sub_1B8D9207C(v49, &qword_1EBABED48, &unk_1B966BBF0);
  }

  else
  {
    sub_1B8F21010();
    OUTLINED_FUNCTION_32_7();
    sub_1B8CD23C0(v43, v44);
    OUTLINED_FUNCTION_108_3();
    v9 = v5;
    result = sub_1B8F210B8();
    if (v5)
    {
      return result;
    }
  }

  v45 = *v10;
  v46 = v10[1];
  OUTLINED_FUNCTION_1();
  if (!v47 || (result = sub_1B964C700(), !v9))
  {
    v48 = v10 + v52[5];
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8F1F8D0(void *a1, void *a2, uint64_t (*a3)(void))
{
  Context = type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext(0);
  v6 = OUTLINED_FUNCTION_59_1(Context);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v97 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED48, &unk_1B966BBF0);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v98 = v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED60, &unk_1B966BC00);
  OUTLINED_FUNCTION_59_1(v100);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v102 = v19;
  v105 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v20 = OUTLINED_FUNCTION_59_1(v105);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v99 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_185();
  v103 = v29;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_59_1(v104);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_185();
  v106 = v33;
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  v35 = OUTLINED_FUNCTION_59_1(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_62();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_183(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v97 - v42;
  v44 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED70, &unk_1B966BC10) - 8);
  v45 = *(*v44 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v97 - v47;
  v107 = a3(0);
  v108 = a1;
  v49 = *(v107 + 24);
  v50 = v44[14];
  sub_1B8DD9078(a1 + v49, v48, &qword_1EBABED38, &unk_1B966BBE0);
  sub_1B8DD9078(a2 + v49, &v48[v50], &qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_117(v48);
  if (v51)
  {
    OUTLINED_FUNCTION_117(&v48[v50]);
    if (v51)
    {
      sub_1B8D9207C(v48, &qword_1EBABED38, &unk_1B966BBE0);
      goto LABEL_11;
    }

LABEL_9:
    v52 = &qword_1EBABED70;
    v53 = &unk_1B966BC10;
    v54 = v48;
LABEL_50:
    sub_1B8D9207C(v54, v52, v53);
    goto LABEL_51;
  }

  sub_1B8DD9078(v48, v43, &qword_1EBABED38, &unk_1B966BBE0);
  OUTLINED_FUNCTION_117(&v48[v50]);
  if (v51)
  {
    sub_1B8F210B8();
    goto LABEL_9;
  }

  sub_1B8F21010();
  v55 = static Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.== infix(_:_:)();
  sub_1B8F210B8();
  sub_1B8F210B8();
  sub_1B8D9207C(v48, &qword_1EBABED38, &unk_1B966BBE0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_11:
  v57 = v107;
  v56 = v108;
  v58 = *(v107 + 28);
  v59 = *(v104 + 48);
  v60 = v106;
  OUTLINED_FUNCTION_86_3(v108 + v58, v106);
  OUTLINED_FUNCTION_86_3(a2 + v58, v60 + v59);
  v61 = OUTLINED_FUNCTION_602();
  v62 = v105;
  OUTLINED_FUNCTION_178(v61, v63, v105);
  if (v51)
  {
    OUTLINED_FUNCTION_178(v60 + v59, 1, v62);
    if (v51)
    {
      sub_1B8D9207C(v60, &qword_1EBABED40, &qword_1B96809F0);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v64 = v103;
  sub_1B8DD9078(v60, v103, &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_178(v60 + v59, 1, v62);
  if (v65)
  {
    sub_1B8F210B8();
LABEL_19:
    v52 = &qword_1EBABED68;
    v53 = &qword_1B9680A10;
LABEL_20:
    v54 = v60;
    goto LABEL_50;
  }

  v66 = v99;
  sub_1B8F21010();
  v67 = *(v62 + 20);
  if (*(v64 + v67) != *(v66 + v67))
  {
    v68 = *(v64 + v67);

    v69 = OUTLINED_FUNCTION_432();
    v71 = sub_1B9090820(v69, v70);

    if (!v71)
    {
      sub_1B8F210B8();
      sub_1B8F210B8();
      v52 = &qword_1EBABED40;
      v53 = &qword_1B96809F0;
      goto LABEL_20;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_36();
  sub_1B8CD23C0(v72, v73);
  v74 = sub_1B964C850();
  sub_1B8F210B8();
  sub_1B8F210B8();
  sub_1B8D9207C(v60, &qword_1EBABED40, &qword_1B96809F0);
  if ((v74 & 1) == 0)
  {
LABEL_51:
    v87 = 0;
    return v87 & 1;
  }

LABEL_24:
  v75 = *(v57 + 32);
  v76 = *(v100 + 48);
  v77 = v102;
  OUTLINED_FUNCTION_86_3(v56 + v75, v102);
  v78 = a2 + v75;
  v79 = v77;
  OUTLINED_FUNCTION_86_3(v78, v77 + v76);
  v80 = OUTLINED_FUNCTION_602();
  v81 = Context;
  OUTLINED_FUNCTION_178(v80, v82, Context);
  if (v51)
  {
    OUTLINED_FUNCTION_178(v77 + v76, 1, v81);
    if (v51)
    {
      sub_1B8D9207C(v77, &qword_1EBABED48, &unk_1B966BBF0);
      goto LABEL_29;
    }

    goto LABEL_38;
  }

  v88 = v77;
  v89 = v98;
  sub_1B8DD9078(v88, v98, &qword_1EBABED48, &unk_1B966BBF0);
  OUTLINED_FUNCTION_178(v79 + v76, 1, v81);
  if (v90)
  {
    sub_1B8F210B8();
LABEL_38:
    v52 = &qword_1EBABED60;
    v53 = &unk_1B966BC00;
LABEL_49:
    v54 = v79;
    goto LABEL_50;
  }

  v91 = v97;
  sub_1B8F21010();
  v92 = *v89 == *v91 && *(v89 + 8) == *(v91 + 8);
  if (!v92 && (sub_1B964C9F0() & 1) == 0 || *(v89 + 16) != *(v91 + 16))
  {
    sub_1B8F210B8();
    sub_1B8F210B8();
    v52 = &qword_1EBABED48;
    v53 = &unk_1B966BBF0;
    goto LABEL_49;
  }

  v93 = *(v81 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_36();
  sub_1B8CD23C0(v94, v95);
  LOBYTE(v93) = sub_1B964C850();
  sub_1B8F210B8();
  sub_1B8F210B8();
  sub_1B8D9207C(v79, &qword_1EBABED48, &unk_1B966BBF0);
  if ((v93 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_29:
  v83 = *v56 == *a2 && v56[1] == a2[1];
  if (!v83 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_51;
  }

  v84 = *(v57 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_36();
  sub_1B8CD23C0(v85, v86);
  v87 = sub_1B964C850();
  return v87 & 1;
}

uint64_t sub_1B8F2020C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD23C0(&qword_1EBABEE68, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F2028C(uint64_t a1)
{
  v2 = sub_1B8CD23C0(&qword_1EBABEDE0, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F202FC()
{
  sub_1B8CD23C0(&qword_1EBABEDE0, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F203A0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B964C780();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40);
  OUTLINED_FUNCTION_80_1(v4);
  v6 = *(v5 + 72);
  v7 = OUTLINED_FUNCTION_60_4();
  *(v7 + 16) = xmmword_1B964E4B0;
  v8 = a2 + v7;
  v9 = a2 + v7 + *(v3 + 56);
  *(a2 + v7) = 1;
  *v9 = "status";
  *(v9 + 1) = 6;
  v9[16] = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 104);
  (v13)(v9, v10, v11);
  v14 = OUTLINED_FUNCTION_53_5(&v8[v6]);
  *v15 = 2;
  v16 = OUTLINED_FUNCTION_74_6(v14, "error");
  (v13)(v16, v10, v11);
  v17 = OUTLINED_FUNCTION_53_5(&v8[2 * v6]);
  *v18 = 3;
  v19 = OUTLINED_FUNCTION_74_6(v17, "trace_id");
  (v13)(v19, *MEMORY[0x1E69AADE8], v11);
  v20 = OUTLINED_FUNCTION_51_6();
  *v20 = "results";
  *(v20 + 1) = 7;
  v20[16] = 2;
  v13();
  return sub_1B964C760();
}

uint64_t sub_1B8F205FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v7 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v8 = OUTLINED_FUNCTION_44_5();
        a4(v8);
        break;
      case 2:
        OUTLINED_FUNCTION_44_5();
        sub_1B8F1EC50();
        break;
      case 3:
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_44_5();
        sub_1B8F206CC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8F206CC()
{
  OUTLINED_FUNCTION_147_1();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0);
  OUTLINED_FUNCTION_25_8();
  sub_1B8CD23C0(v0, v1);
  OUTLINED_FUNCTION_4_21();
  return sub_1B964C570();
}

uint64_t sub_1B8F20768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_77_3();
  v12 = type metadata accessor for Apple_Parsec_Search_Error();
  v13 = OUTLINED_FUNCTION_59_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  if (!*v4 || (v26 = *(v4 + 8), sub_1B8F2116C(), result = sub_1B964C680(), !v5))
  {
    v17 = a4(0);
    sub_1B8DD9078(v4 + *(v17 + 32), v6, &qword_1EBAB9188, &qword_1B964D970);
    if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      sub_1B8F21010();
      OUTLINED_FUNCTION_26_10();
      sub_1B8CD23C0(v18, v19);
      sub_1B964C740();
      result = sub_1B8F210B8();
      if (v5)
      {
        return result;
      }
    }

    v20 = *(v4 + 16);
    v21 = *(v4 + 24);
    OUTLINED_FUNCTION_1();
    if (!v22 || (result = sub_1B964C700(), !v5))
    {
      if (!*(*(v4 + 32) + 16) || (type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult(0), OUTLINED_FUNCTION_25_8(), sub_1B8CD23C0(v23, v24), result = sub_1B964C730(), !v5))
      {
        v25 = v4 + *(v17 + 28);
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t sub_1B8F20A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_280();
  v6 = type metadata accessor for Apple_Parsec_Search_Error();
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  OUTLINED_FUNCTION_59_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v40 - v23;
  v25 = *v4;
  v26 = *v3;
  if (*(v3 + 8) != 1)
  {
    if (v25 != v26)
    {
      goto LABEL_28;
    }

    goto LABEL_11;
  }

  if (!v26)
  {
    if (!v25)
    {
      goto LABEL_11;
    }

LABEL_28:
    v38 = 0;
    return v38 & 1;
  }

  if (v26 != 1)
  {
    if (v25 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

  if (v25 != 1)
  {
    goto LABEL_28;
  }

LABEL_11:
  v41 = a3(0);
  v27 = *(v41 + 32);
  v28 = *(v19 + 48);
  sub_1B8DD9078(v4 + v27, v24, &qword_1EBAB9188, &qword_1B964D970);
  sub_1B8DD9078(v3 + v27, &v24[v28], &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(v24, 1, v6);
  if (v29)
  {
    OUTLINED_FUNCTION_178(&v24[v28], 1, v6);
    if (v29)
    {
      sub_1B8D9207C(v24, &qword_1EBAB9188, &qword_1B964D970);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1B8DD9078(v24, v18, &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_178(&v24[v28], 1, v6);
  if (v29)
  {
    sub_1B8F210B8();
LABEL_19:
    sub_1B8D9207C(v24, &qword_1EBAB9190, &qword_1B964D978);
    goto LABEL_28;
  }

  sub_1B8F21010();
  v30 = static Apple_Parsec_Search_Error.== infix(_:_:)(v18, v12);
  sub_1B8F210B8();
  sub_1B8F210B8();
  sub_1B8D9207C(v24, &qword_1EBAB9188, &qword_1B964D970);
  if ((v30 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v31 = v4[2] == v3[2] && v4[3] == v3[3];
  if (!v31 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v32 = v4[4];
  v33 = v3[4];
  sub_1B8D60FB8();
  if ((v34 & 1) == 0)
  {
    goto LABEL_28;
  }

  v35 = *(v41 + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_36();
  sub_1B8CD23C0(v36, v37);
  v38 = OUTLINED_FUNCTION_634();
  return v38 & 1;
}

uint64_t sub_1B8F20DC8()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD23C0(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8F20EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD23C0(&qword_1EBABEE60, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F20F20(uint64_t a1)
{
  v2 = sub_1B8CD23C0(&qword_1EBABEDF8, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F20F90()
{
  sub_1B8CD23C0(&qword_1EBABEDF8, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_QnaAnswersResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F21010()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B8F21064()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B8F210B8()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1B8F2116C()
{
  result = qword_1ED9CC388;
  if (!qword_1ED9CC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CC388);
  }

  return result;
}

uint64_t sub_1B8F21788()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8F21834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_22Tm()
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
    v7 = v2[5];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v0)
      {
        v7 = v2[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED48, &unk_1B966BBF0);
        v7 = v2[8];
      }
    }
  }

  v12 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void __swift_store_extra_inhabitant_index_23Tm()
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
      v9 = v5[5];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED38, &unk_1B966BBE0);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[6];
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
        OUTLINED_FUNCTION_128_1(v12);
        if (*(v13 + 84) == v6)
        {
          v9 = v5[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED48, &unk_1B966BBF0);
          v9 = v5[8];
        }
      }
    }

    v14 = OUTLINED_FUNCTION_699(v9);

    __swift_storeEnumTagSinglePayload(v14, v15, v0, v16);
  }
}

void sub_1B8F21B88()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8F21834(319, &qword_1ED9D3810, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B8F21834(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B8F21834(319, &qword_1EBABEE28, type metadata accessor for Apple_Parsec_DeviceExpert_V1alpha_DeviceExpertQueryContext, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_49_7();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_31Tm()
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
    v7 = *(v2 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
    v7 = *(v2 + 32);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void __swift_store_extra_inhabitant_index_32Tm_0()
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
      v9 = *(v5 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
      v9 = *(v5 + 32);
    }

    v10 = OUTLINED_FUNCTION_699(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

void sub_1B8F21E54()
{
  sub_1B8F21834(319, &qword_1ED9CF6D0, type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B8F21834(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_49_7();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_15_12(uint64_t a1)
{
  v7 = *(a1 + 32);
  *(v3 + 40) = v7;

  return sub_1B8DD9078(v1 + v7, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_49_7()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

char *OUTLINED_FUNCTION_51_6()
{
  v3 = (v2 + 3 * v1);
  result = v3 + *(v0 + 56);
  *v3 = 4;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_4()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_66_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 40) = 0;
  *(v1 + 48) = a1;
  *(v1 + 56) = 0;
  *(v1 + 64) = a1;
  *(v1 + 72) = a1;
  v4 = v1 + *(v2 + 48);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_68_5()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = -1;
  v3 = v0 + *(v1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_69_3()
{
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  v3 = v0 + *(v1 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_74_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *result = a2;
  *(result + 8) = v2;
  *(result + 16) = v3;
  return result;
}

void OUTLINED_FUNCTION_75_1()
{
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
}

uint64_t OUTLINED_FUNCTION_82_2@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8DD9078(v1 + a1, v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_86_3(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_87_3()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_88_3()
{

  return sub_1B8F21010();
}

uint64_t OUTLINED_FUNCTION_89_4()
{

  return sub_1B8F21010();
}

unint64_t Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8F22390@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F223C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F229A0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABEE88 = a1;
}

uint64_t sub_1B8F2250C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F22534()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABEE90);
  __swift_project_value_buffer(v0, qword_1EBABEE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ENCRYPTED_SEARCH_USECASE_UNSPECIFIED";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VISUAL_LOOKUP_LANDMARK";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VISUAL_LOOKUP_STOREFRONT";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ENCRYPTED_PQA_GEO";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Encryptedsearch_V1_EncryptedSearchUsecase._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6888 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABEE90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B8F22820()
{
  result = qword_1EBAB3C50;
  if (!qword_1EBAB3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3C50);
  }

  return result;
}

unint64_t sub_1B8F22878()
{
  result = qword_1EBAB3C40;
  if (!qword_1EBAB3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3C40);
  }

  return result;
}

unint64_t sub_1B8F228D0()
{
  result = qword_1EBAB3C48;
  if (!qword_1EBAB3C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3C48);
  }

  return result;
}

unint64_t sub_1B8F22928()
{
  result = qword_1EBAB3AE0;
  if (!qword_1EBAB3AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABEEA8, &qword_1B966C5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3AE0);
  }

  return result;
}

unint64_t sub_1B8F229A0()
{
  result = qword_1EBAB3C58;
  if (!qword_1EBAB3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB3C58);
  }

  return result;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest.debug.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest.debug.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest.debugEvaluationKey.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest.debugEvaluationKey.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest(v2) + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = xmmword_1B9652FE0;
  *(a1 + 24) = xmmword_1B9652FE0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery.computeRequest.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = sub_1B964C1C0();
  v7 = OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_30_1(v7);
  *(v0 + 24) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_76_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_4(v12);
  v14 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery(v13);
  OUTLINED_FUNCTION_25_9(*(v14 + 20));
  OUTLINED_FUNCTION_75(v5);
  if (v15)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_75(v5);
    if (!v15)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_24_12();
    v17(v16);
  }

  OUTLINED_FUNCTION_89_5();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery.visualSearchParams.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery(v9);
  OUTLINED_FUNCTION_115(*(v10 + 24));
  OUTLINED_FUNCTION_166_1();
  v11 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBABEF40, &qword_1B966C678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_182();
    return sub_1B8F23DC4();
  }

  return result;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery.visualSearchParams.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABEF40, &qword_1B966C678);
  OUTLINED_FUNCTION_3_21();
  sub_1B8F23DC4();
  type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery.visualSearchParams.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams(v6);
  v8 = OUTLINED_FUNCTION_53_6(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery(v12) + 24);
  *(v1 + 40) = v13;
  OUTLINED_FUNCTION_115(v13);
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v5);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v15 = v10 + *(v0 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v5);
    if (!v14)
    {
      sub_1B8D9207C(v5, &qword_1EBABEF40, &qword_1B966C678);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_461();
    sub_1B8F23DC4();
  }

  return sub_1B8F23158;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams.embeddingModelUrn.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams.embeddingModelUrn.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams.codebookUrn.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams.codebookUrn.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F23404()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8F234AC()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = xmmword_1B9652FE0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8F235C4(uint64_t (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = a1(v7);
  OUTLINED_FUNCTION_115(*(v8 + 20));
  sub_1B8D92024();
  sub_1B964C1C0();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    sub_1B964C1B0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_472();
    return v13(v12);
  }

  return result;
}

uint64_t sub_1B8F236FC()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  sub_1B8D9207C(v1 + v4, &qword_1EBAB8F20, &qword_1B964D720);
  v5 = sub_1B964C1C0();
  OUTLINED_FUNCTION_59_1(v5);
  (*(v6 + 32))(v1 + v4, v0, v5);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v5);
}

void Apple_Parsec_Encryptedvisualsearch_V1_EVSResult.computeResponse.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = sub_1B964C1C0();
  v7 = OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_30_1(v7);
  *(v0 + 24) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_76_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_4(v12);
  v14 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult(v13);
  OUTLINED_FUNCTION_25_9(*(v14 + 20));
  OUTLINED_FUNCTION_75(v5);
  if (v15)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_75(v5);
    if (!v15)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_24_12();
    v17(v16);
  }

  OUTLINED_FUNCTION_89_5();
  OUTLINED_FUNCTION_283();
}

void sub_1B8F238DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
    v13 = *(v7 + 8);
    v14 = OUTLINED_FUNCTION_236();
    v15(v14);
  }

  else
  {
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1B8F23A30(uint64_t (*a1)(void))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v8 = *(a1(0) + 20);
  sub_1B8D92024();
  v9 = sub_1B964C1C0();
  OUTLINED_FUNCTION_178(v7, 1, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_1B8D9207C(v7, &qword_1EBAB8F20, &qword_1B964D720);
  return v11;
}

uint64_t sub_1B8F23B1C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 20), &qword_1EBAB8F20, &qword_1B964D720);
  sub_1B964C1C0();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EVSResult.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult(0) + 24);
  OUTLINED_FUNCTION_166_1();
  v11 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(0);
  OUTLINED_FUNCTION_178(v9, 1, v11);
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v11 + 28);
    type metadata accessor for Apple_Parsec_Search_Error();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    result = OUTLINED_FUNCTION_178(v9, 1, v11);
    if (!v12)
    {
      return sub_1B8D9207C(v9, &qword_1EBAB9198, &unk_1B964D980);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_17();
    OUTLINED_FUNCTION_472();
    return sub_1B8F23DC4();
  }

  return result;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EVSResult.metadata.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB9198, &unk_1B964D980);
  OUTLINED_FUNCTION_11_17();
  sub_1B8F23DC4();
  type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(0);
  v3 = a1 + *(v2 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 28);
  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1B8F23DC4()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

void (*Apple_Parsec_Encryptedvisualsearch_V1_EVSResult.metadata.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_145_1(v4);
  v6 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(v5);
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_89_0(v9);
  *(v0 + 40) = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult(v10) + 24);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v4, 1, v6);
  if (v11)
  {
    *v8 = 0;
    *(v8 + 8) = 1;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0xE000000000000000;
    v12 = v8 + *(v6 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v6 + 28);
    type metadata accessor for Apple_Parsec_Search_Error();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_178(v4, 1, v6);
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB9198, &unk_1B964D980);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_17();
    sub_1B8F23DC4();
  }

  return sub_1B8F23FA0;
}

uint64_t sub_1B8F23FC8()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8F24020()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B8F240B0()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_60();
  v9 = *(v1(v8) + 24);
  sub_1B8D92024();
  v0(0);
  v10 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v10, v11, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v15, v16, v17);
  return v14;
}

uint64_t sub_1B8F241A0()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 24), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1B8F24268()
{
  OUTLINED_FUNCTION_468();
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = v1(0);
  v3 = *(v2 + 20);
  sub_1B964C1C0();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = *(v2 + 24);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.statusCode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.statusCode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(v9);
  OUTLINED_FUNCTION_115(*(v10 + 28));
  OUTLINED_FUNCTION_166_1();
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
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_182();
    return sub_1B8F23DC4();
  }

  return result;
}

uint64_t sub_1B8F24418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B8F23FC8();
  return a7(v13);
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.error.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_10_13();
  sub_1B8F23DC4();
  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.error.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = type metadata accessor for Apple_Parsec_Search_Error();
  v7 = OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_0(v10);
  v12 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(v11) + 28);
  *(v1 + 40) = v12;
  OUTLINED_FUNCTION_115(v12);
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v5);
  if (v13)
  {
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = -1;
    v14 = v9 + *(v0 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v5);
    if (!v13)
    {
      sub_1B8D9207C(v5, &qword_1EBAB9188, &qword_1B964D970);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_13();
    OUTLINED_FUNCTION_461();
    sub_1B8F23DC4();
  }

  return sub_1B8F24674;
}

void sub_1B8F2469C()
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
    sub_1B8F23FC8();
    sub_1B8D9207C(v10 + v5, v4, v3);
    sub_1B8F23DC4();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    sub_1B8F24020();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v1, v2);
    sub_1B8F23DC4();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v19);
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.hasError.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(v5);
  OUTLINED_FUNCTION_115(*(v6 + 28));
  OUTLINED_FUNCTION_161_2();
  v7 = type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_178(v0, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v10, v11, &qword_1B964D970);
  return v9;
}

Swift::Void __swiftcall Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.clearError()()
{
  v1 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB9188, &qword_1B964D970);
  type metadata accessor for Apple_Parsec_Search_Error();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest.usecases.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8F24A88()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8F24B30()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponse(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponse.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle(v1);
  *v0 = sub_1B964C7B0();
  v2 = v0 + *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponse(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle.config.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = sub_1B964C1C0();
  v7 = OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_30_1(v7);
  *(v0 + 24) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_76_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_4(v12);
  v14 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle(v13);
  OUTLINED_FUNCTION_25_9(*(v14 + 20));
  OUTLINED_FUNCTION_75(v5);
  if (v15)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_75(v5);
    if (!v15)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_24_12();
    v17(v16);
  }

  OUTLINED_FUNCTION_89_5();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle.keyStatus.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle(v7);
  OUTLINED_FUNCTION_115(*(v8 + 24));
  OUTLINED_FUNCTION_166_1();
  sub_1B964C1C0();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    sub_1B964C1B0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_472();
    return v13(v12);
  }

  return result;
}

uint64_t sub_1B8F24EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_1B964C1C0();
  v7 = OUTLINED_FUNCTION_30_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v12 = v11 - v10;
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_461();
  v16(v15);
  return a5(v12);
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle.keyStatus.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F20, &qword_1B964D720);
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle.keyStatus.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = sub_1B964C1C0();
  v7 = OUTLINED_FUNCTION_53_6(v6);
  OUTLINED_FUNCTION_30_1(v7);
  *(v0 + 24) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_76_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_35_4(v12);
  v14 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle(v13);
  OUTLINED_FUNCTION_25_9(*(v14 + 24));
  OUTLINED_FUNCTION_75(v5);
  if (v15)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_75(v5);
    if (!v15)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_24_12();
    v17(v16);
  }

  OUTLINED_FUNCTION_89_5();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle(0);
  v1 = *(v0 + 20);
  v2 = sub_1B964C1C0();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
}

uint64_t sub_1B8F252A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3B88);
  __swift_project_value_buffer(v0, qword_1EBAB3B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "queries";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1100;
  *v10 = "debug";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 1101;
  *v12 = "debug_evaluation_key";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest.decodeMessage<A>(decoder:)()
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

    if (v1 == 1101 || v1 == 1100)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C470();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8F26F68();
    }
  }
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery(0), sub_1B8F2A2D4(&qword_1EBAB41B0, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
  {
    v4 = v2[1];
    v5 = v2[2];
    v6 = OUTLINED_FUNCTION_616();
    if (sub_1B8D99EA8(v6, v7) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
    {
      v8 = v2[3];
      v9 = v2[4];
      v10 = OUTLINED_FUNCTION_616();
      if (sub_1B8D99EA8(v10, v11) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
      {
        v12 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  sub_1B8D5A6C0();
  if ((v6 & 1) == 0 || (MEMORY[0x1BFADC060](v1[1], v1[2], v0[1], v0[2]) & 1) == 0 || (MEMORY[0x1BFADC060](v1[3], v1[4], v0[3], v0[4]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_37();
  sub_1B8F2A2D4(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F25800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F2A2D4(&qword_1EBABF050, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F25880(uint64_t a1)
{
  v2 = sub_1B8F2A2D4(&qword_1EBABEFA0, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F258F0()
{
  sub_1B8F2A2D4(&qword_1EBABEFA0, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F25988()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB41C0);
  __swift_project_value_buffer(v0, qword_1EBAB41C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "compute_request";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "visual_search_params";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F25BB4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery(0) + 24);
  type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams(0);
  sub_1B8F2A2D4(&qword_1EBABEF50, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams);
  return sub_1B964C580();
}

void Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_78_2(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEF40, &qword_1B966C678);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_231_1();
  v35 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams(0);
  v11 = OUTLINED_FUNCTION_59_1(v35);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_136(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_92_2();
  v20 = OUTLINED_FUNCTION_30_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v23 = OUTLINED_FUNCTION_60();
  v24 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery(v23);
  OUTLINED_FUNCTION_54_6(v24);
  OUTLINED_FUNCTION_178(v0, 1, v19);
  if (v25)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8F20, &qword_1B964D720);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_66_4();
    v27(v26);
    OUTLINED_FUNCTION_1_31();
    sub_1B8F2A2D4(v28, v29);
    OUTLINED_FUNCTION_49_8();
    if (v1)
    {
      v30 = OUTLINED_FUNCTION_42_3();
      v31(v30);
      goto LABEL_12;
    }

    v32 = OUTLINED_FUNCTION_42_3();
    v33(v32);
  }

  v34 = *(v2 + 24);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v3, 1, v35);
  if (v25)
  {
    sub_1B8D9207C(v3, &qword_1EBABEF40, &qword_1B966C678);
LABEL_11:
    OUTLINED_FUNCTION_68_6();
    goto LABEL_12;
  }

  sub_1B8F23DC4();
  sub_1B8F2A2D4(&qword_1EBABEF50, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_472();
  sub_1B8F24020();
  if (!v1)
  {
    goto LABEL_11;
  }

LABEL_12:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v61 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams(0);
  v2 = OUTLINED_FUNCTION_59_1(v61);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v57 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEF40, &qword_1B966C678);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v58 = v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABEF58, &unk_1B966C680);
  OUTLINED_FUNCTION_59_1(v60);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v62 = v15;
  v16 = sub_1B964C1C0();
  v17 = OUTLINED_FUNCTION_30_1(v16);
  v63 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  v25 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20) - 8);
  v26 = *(*v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  v28 = OUTLINED_FUNCTION_151();
  v59 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery(v28);
  v29 = *(v59 + 20);
  v30 = v25[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1);
  if (v31)
  {
    OUTLINED_FUNCTION_37_0(v1 + v30);
    if (v31)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
      goto LABEL_11;
    }

LABEL_9:
    v35 = &qword_1EBAB8F28;
    v36 = &unk_1B9683B20;
    v37 = v1;
LABEL_21:
    sub_1B8D9207C(v37, v35, v36);
    goto LABEL_22;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1 + v30);
  if (v31)
  {
    v32 = *(v63 + 8);
    v33 = OUTLINED_FUNCTION_74_7();
    v34(v33);
    goto LABEL_9;
  }

  (*(v63 + 32))(v0, v1 + v30, v16);
  OUTLINED_FUNCTION_1_31();
  sub_1B8F2A2D4(v38, v39);
  v40 = OUTLINED_FUNCTION_91_1();
  v41 = *(v63 + 8);
  v42 = OUTLINED_FUNCTION_375();
  v41(v42);
  v43 = OUTLINED_FUNCTION_74_7();
  v41(v43);
  sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
  if ((v40 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v44 = *(v59 + 24);
  v45 = *(v60 + 48);
  OUTLINED_FUNCTION_90_2();
  sub_1B8D92024();
  v46 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v46, v47, v61);
  if (v31)
  {
    OUTLINED_FUNCTION_178(v62 + v45, 1, v61);
    if (v31)
    {
      sub_1B8D9207C(v62, &qword_1EBABEF40, &qword_1B966C678);
LABEL_35:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_37();
      sub_1B8F2A2D4(v55, v56);
      v49 = sub_1B964C850();
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v62 + v45, 1, v61);
  if (v48)
  {
    sub_1B8F24020();
LABEL_19:
    v35 = &qword_1EBABEF58;
    v36 = &unk_1B966C680;
LABEL_20:
    v37 = v62;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_3_21();
  sub_1B8F23DC4();
  v50 = *v58 == *v57 && v58[1] == v57[1];
  if (!v50 && (sub_1B964C9F0() & 1) == 0 || (v58[2] == v57[2] ? (v51 = v58[3] == v57[3]) : (v51 = 0), !v51 && (sub_1B964C9F0() & 1) == 0))
  {
    sub_1B8F24020();
    OUTLINED_FUNCTION_182();
    sub_1B8F24020();
    v35 = &qword_1EBABEF40;
    v36 = &qword_1B966C678;
    goto LABEL_20;
  }

  v52 = *(v61 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_37();
  sub_1B8F2A2D4(v53, v54);
  LOBYTE(v52) = sub_1B964C850();
  sub_1B8F24020();
  sub_1B8F24020();
  sub_1B8D9207C(v62, &qword_1EBABEF40, &qword_1B966C678);
  if (v52)
  {
    goto LABEL_35;
  }

LABEL_22:
  v49 = 0;
LABEL_23:
  OUTLINED_FUNCTION_264(v49);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8F26580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F2A2D4(&qword_1EBABF048, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F26600(uint64_t a1)
{
  v2 = sub_1B8F2A2D4(&qword_1EBAB41B0, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F26670()
{
  sub_1B8F2A2D4(&qword_1EBAB41B0, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F26708()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABEEB0);
  __swift_project_value_buffer(v0, qword_1EBABEEB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "embedding_model_urn";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "codebook_urn";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams.decodeMessage<A>(decoder:)()
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

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      v10 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_37();
  sub_1B8F2A2D4(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F26B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F2A2D4(&qword_1EBABF040, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F26BB8(uint64_t a1)
{
  v2 = sub_1B8F2A2D4(&qword_1EBABEF50, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F26C28()
{
  sub_1B8F2A2D4(&qword_1EBABEF50, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_VisualSearchParams);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F26CC0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABEEC8);
  __swift_project_value_buffer(v0, qword_1EBABEEC8);
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
  *(v5 + v2) = 1100;
  *v10 = "debug";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse.decodeMessage<A>(decoder:)()
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

    if (v1 == 1100)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C470();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8F26F68();
    }
  }
}

void sub_1B8F26F68()
{
  OUTLINED_FUNCTION_273_0();
  v1 = v0;
  v3 = v2;
  v4(0);
  sub_1B8F2A2D4(v3, v1);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult(0), sub_1B8F2A2D4(&qword_1EBAB4130, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    v6 = OUTLINED_FUNCTION_616();
    if (sub_1B8D99EA8(v6, v7) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
    {
      v8 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  sub_1B8D59D34();
  if ((v6 & 1) == 0 || (MEMORY[0x1BFADC060](*(v1 + 8), *(v1 + 16), *(v0 + 8), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_37();
  sub_1B8F2A2D4(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F27214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F2A2D4(&qword_1EBABF038, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F27294(uint64_t a1)
{
  v2 = sub_1B8F2A2D4(&qword_1EBABEFC8, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F27304()
{
  sub_1B8F2A2D4(&qword_1EBABEFC8, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EncryptedVisualSearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F2739C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABEEE0);
  __swift_project_value_buffer(v0, qword_1EBABEEE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "compute_response";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metadata";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F275D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v14 = OUTLINED_FUNCTION_44_5();
      a5(v14);
    }

    else if (result == 1)
    {
      v10 = OUTLINED_FUNCTION_44_5();
      sub_1B8F29744(v10, v11, v12, v13, a4);
    }
  }

  return result;
}

uint64_t sub_1B8F2765C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult(0) + 24);
  type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(0);
  sub_1B8F2A2D4(&qword_1EBABEF78, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata);
  return sub_1B964C580();
}

void Apple_Parsec_Encryptedvisualsearch_V1_EVSResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_78_2(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9198, &unk_1B964D980);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_231_1();
  v35 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(0);
  v11 = OUTLINED_FUNCTION_59_1(v35);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_136(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_92_2();
  v20 = OUTLINED_FUNCTION_30_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v23 = OUTLINED_FUNCTION_60();
  v24 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult(v23);
  OUTLINED_FUNCTION_54_6(v24);
  OUTLINED_FUNCTION_178(v0, 1, v19);
  if (v25)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8F20, &qword_1B964D720);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_66_4();
    v27(v26);
    OUTLINED_FUNCTION_1_31();
    sub_1B8F2A2D4(v28, v29);
    OUTLINED_FUNCTION_49_8();
    if (v1)
    {
      v30 = OUTLINED_FUNCTION_42_3();
      v31(v30);
      goto LABEL_12;
    }

    v32 = OUTLINED_FUNCTION_42_3();
    v33(v32);
  }

  v34 = *(v2 + 24);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v3, 1, v35);
  if (v25)
  {
    sub_1B8D9207C(v3, &qword_1EBAB9198, &unk_1B964D980);
LABEL_11:
    OUTLINED_FUNCTION_68_6();
    goto LABEL_12;
  }

  sub_1B8F23DC4();
  sub_1B8F2A2D4(&qword_1EBABEF78, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_472();
  sub_1B8F24020();
  if (!v1)
  {
    goto LABEL_11;
  }

LABEL_12:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Encryptedvisualsearch_V1_EVSResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v53 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(0);
  v2 = OUTLINED_FUNCTION_59_1(v53);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9198, &unk_1B964D980);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_185();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A0, &unk_1B966C690);
  OUTLINED_FUNCTION_59_1(v52);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_185();
  v54 = v12;
  v13 = sub_1B964C1C0();
  v14 = OUTLINED_FUNCTION_30_1(v13);
  v55 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v22 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20) - 8);
  v23 = *(*v22 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_151();
  v51 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult(v25);
  v26 = *(v51 + 20);
  v27 = v22[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1);
  if (v28)
  {
    OUTLINED_FUNCTION_37_0(v1 + v27);
    if (v28)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_1EBAB8F28;
    v33 = &unk_1B9683B20;
    v34 = v1;
LABEL_20:
    sub_1B8D9207C(v34, v32, v33);
    goto LABEL_21;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1 + v27);
  if (v28)
  {
    v29 = *(v55 + 8);
    v30 = OUTLINED_FUNCTION_74_7();
    v31(v30);
    goto LABEL_9;
  }

  (*(v55 + 32))(v0, v1 + v27, v13);
  OUTLINED_FUNCTION_1_31();
  sub_1B8F2A2D4(v35, v36);
  v37 = OUTLINED_FUNCTION_91_1();
  v38 = *(v55 + 8);
  v39 = OUTLINED_FUNCTION_375();
  v38(v39);
  v40 = OUTLINED_FUNCTION_74_7();
  v38(v40);
  sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
  if ((v37 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v41 = *(v51 + 24);
  v42 = *(v52 + 48);
  OUTLINED_FUNCTION_90_2();
  sub_1B8D92024();
  v43 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v43, v44, v53);
  if (v28)
  {
    OUTLINED_FUNCTION_178(v54 + v42, 1, v53);
    if (v28)
    {
      sub_1B8D9207C(v54, &qword_1EBAB9198, &unk_1B964D980);
LABEL_24:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_37();
      sub_1B8F2A2D4(v49, v50);
      OUTLINED_FUNCTION_186();
      v46 = sub_1B964C850();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v54 + v42, 1, v53);
  if (v45)
  {
    sub_1B8F24020();
LABEL_19:
    v32 = &qword_1EBAB91A0;
    v33 = &unk_1B966C690;
    v34 = v54;
    goto LABEL_20;
  }

  sub_1B8F23DC4();
  static Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.== infix(_:_:)();
  v48 = v47;
  sub_1B8F24020();
  sub_1B8F24020();
  sub_1B8D9207C(v54, &qword_1EBAB9198, &unk_1B964D980);
  if (v48)
  {
    goto LABEL_24;
  }

LABEL_21:
  v46 = 0;
LABEL_22:
  OUTLINED_FUNCTION_264(v46);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8F27F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F2A2D4(&qword_1EBABF030, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F27FF4(uint64_t a1)
{
  v2 = sub_1B8F2A2D4(&qword_1EBAB4130, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F28064()
{
  sub_1B8F2A2D4(&qword_1EBAB4130, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F280FC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABEEF8);
  __swift_project_value_buffer(v0, qword_1EBABEEF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status_code";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "index_version";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8F28418();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8F283B0();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8F28418()
{
  v0 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(0) + 28);
  type metadata accessor for Apple_Parsec_Search_Error();
  sub_1B8F2A2D4(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error);
  return sub_1B964C580();
}

void Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Search_Error();
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  if (!*v0 || (v18 = *(v0 + 8), sub_1B8F2116C(), sub_1B964C680(), !v1))
  {
    v11 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(0);
    v12 = *(v11 + 28);
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2, 1, v7);
    if (v13)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9188, &qword_1B964D970);
    }

    else
    {
      sub_1B8F23DC4();
      sub_1B8F2A2D4(&qword_1ED9CCC78, type metadata accessor for Apple_Parsec_Search_Error);
      sub_1B964C740();
      sub_1B8F24020();
      if (v1)
      {
        goto LABEL_10;
      }
    }

    v14 = *(v0 + 16);
    v15 = *(v0 + 24);
    OUTLINED_FUNCTION_1();
    if (!v16 || (sub_1B964C700(), !v1))
    {
      v17 = v0 + *(v11 + 24);
      sub_1B964C290();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v2 = type metadata accessor for Apple_Parsec_Search_Error();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9190, &qword_1B964D978);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = *v1;
  v22 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v22)
    {
      if (v22 == 1)
      {
        if (v21 != 1)
        {
          goto LABEL_20;
        }
      }

      else if (v21 != 2)
      {
        goto LABEL_20;
      }
    }

    else if (v21)
    {
      goto LABEL_20;
    }
  }

  else if (v21 != v22)
  {
    goto LABEL_20;
  }

  v33 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata(0);
  v23 = *(v33 + 28);
  v24 = *(v15 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v20);
  if (!v25)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_75(&v20[v24]);
    if (!v25)
    {
      sub_1B8F23DC4();
      v27 = static Apple_Parsec_Search_Error.== infix(_:_:)(v14, v8);
      OUTLINED_FUNCTION_236();
      sub_1B8F24020();
      sub_1B8F24020();
      sub_1B8D9207C(v20, &qword_1EBAB9188, &qword_1B964D970);
      if ((v27 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    sub_1B8F24020();
LABEL_19:
    sub_1B8D9207C(v20, &qword_1EBAB9190, &qword_1B964D978);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_75(&v20[v24]);
  if (!v25)
  {
    goto LABEL_19;
  }

  sub_1B8D9207C(v20, &qword_1EBAB9188, &qword_1B964D970);
LABEL_23:
  v28 = v1[2] == v0[2] && v1[3] == v0[3];
  if (v28 || (sub_1B964C9F0() & 1) != 0)
  {
    v29 = *(v33 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_37();
    sub_1B8F2A2D4(v30, v31);
    v26 = OUTLINED_FUNCTION_634();
    goto LABEL_21;
  }

LABEL_20:
  v26 = 0;
LABEL_21:
  OUTLINED_FUNCTION_264(v26);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8F28AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F2A2D4(&qword_1EBABF028, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F28B20(uint64_t a1)
{
  v2 = sub_1B8F2A2D4(&qword_1EBABEF78, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F28B90()
{
  sub_1B8F2A2D4(&qword_1EBABEF78, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResponseMetadata);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest.decodeMessage<A>(decoder:)()
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

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6E0(), !v1))
  {
    v3 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B8F28DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F2A2D4(&qword_1EBABF020, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F28E7C(uint64_t a1)
{
  v2 = sub_1B8F2A2D4(&qword_1EBABEFF0, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F28EEC()
{
  sub_1B8F2A2D4(&qword_1EBABEFF0, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigRequest);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponse.decodeMessage<A>(decoder:)()
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

    if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8F29014();
    }
  }

  return result;
}

uint64_t sub_1B8F29014()
{
  sub_1B964C280();
  type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle(0);
  sub_1B8F2A2D4(&qword_1EBAB3E18, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle);
  sub_1B8F2A2D4(&qword_1EBAB3E10, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle);
  return sub_1B964C3A0();
}

uint64_t Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (sub_1B964C280(), type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle(0), sub_1B8F2A2D4(&qword_1EBAB3E18, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle), sub_1B8F2A2D4(&qword_1EBAB3E10, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle), OUTLINED_FUNCTION_79_0(), result = sub_1B964C5E0(), !v1))
  {
    v3 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponse(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B8F29254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a4(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_37();
  sub_1B8F2A2D4(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8F29388(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F2A2D4(&qword_1EBABF018, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F29408(uint64_t a1)
{
  v2 = sub_1B8F2A2D4(&qword_1EBABF000, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F29478()
{
  sub_1B8F2A2D4(&qword_1EBABF000, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F29510()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABEF28);
  __swift_project_value_buffer(v0, qword_1EBABEF28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "key_status";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8F29744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 20);
  sub_1B964C1C0();
  OUTLINED_FUNCTION_1_31();
  sub_1B8F2A2D4(v6, v7);
  return sub_1B964C580();
}

uint64_t sub_1B8F297EC()
{
  v0 = *(type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle(0) + 24);
  sub_1B964C1C0();
  sub_1B8F2A2D4(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10]);
  return sub_1B964C580();
}

void Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v38 = v3;
  v39 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  v5 = OUTLINED_FUNCTION_183(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1B964C1C0();
  v15 = OUTLINED_FUNCTION_30_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_66();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v36 - v24;
  v26 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle(0);
  v27 = *(v26 + 20);
  v37 = v0;
  sub_1B8D92024();
  v28 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v28, v29, v14);
  if (v30)
  {
    sub_1B8D9207C(v13, &qword_1EBAB8F20, &qword_1B964D720);
  }

  else
  {
    (*(v17 + 32))(v25, v13, v14);
    OUTLINED_FUNCTION_1_31();
    sub_1B8F2A2D4(v31, v32);
    sub_1B964C740();
    if (v1)
    {
      goto LABEL_11;
    }

    (*(v17 + 8))(v25, v14);
  }

  v33 = *(v26 + 24);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v10, 1, v14);
  if (v30)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8F20, &qword_1B964D720);
LABEL_13:
    sub_1B964C290();
    goto LABEL_14;
  }

  (*(v17 + 32))(v22, v10, v14);
  OUTLINED_FUNCTION_1_31();
  sub_1B8F2A2D4(v34, v35);
  sub_1B964C740();
  if (!v1)
  {
    (*(v17 + 8))(v22, v14);
    goto LABEL_13;
  }

  v25 = v22;
LABEL_11:
  (*(v17 + 8))(v25, v14);
LABEL_14:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v4 = sub_1B964C1C0();
  v5 = OUTLINED_FUNCTION_30_1(v4);
  v59 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_136(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  v11 = OUTLINED_FUNCTION_183(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_66();
  v53[1] = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  v18 = OUTLINED_FUNCTION_59_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_66();
  v56 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v53 - v24;
  v55 = type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle(0);
  v26 = *(v55 + 20);
  v27 = *(v17 + 48);
  v57 = v3;
  OUTLINED_FUNCTION_161_2();
  v58 = v1;
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_37_0(v25);
  if (v28)
  {
    OUTLINED_FUNCTION_37_0(&v25[v27]);
    if (!v28)
    {
      goto LABEL_16;
    }

    sub_1B8D9207C(v25, &qword_1EBAB8F20, &qword_1B964D720);
  }

  else
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(&v25[v27]);
    if (v28)
    {
LABEL_15:
      v39 = *(v59 + 8);
      v40 = OUTLINED_FUNCTION_375();
      v41(v40);
LABEL_16:
      sub_1B8D9207C(v25, &qword_1EBAB8F28, &unk_1B9683B20);
      goto LABEL_17;
    }

    v29 = v59;
    v30 = v54;
    (*(v59 + 32))(v54, &v25[v27], v4);
    OUTLINED_FUNCTION_1_31();
    sub_1B8F2A2D4(v31, v32);
    v33 = sub_1B964C850();
    v34 = *(v29 + 8);
    v34(v30, v4);
    v35 = OUTLINED_FUNCTION_375();
    (v34)(v35);
    sub_1B8D9207C(v25, &qword_1EBAB8F20, &qword_1B964D720);
    if ((v33 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v25 = v56;
  v36 = *(v55 + 24);
  v37 = *(v17 + 48);
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_37_0(v25);
  if (v28)
  {
    OUTLINED_FUNCTION_37_0(&v25[v37]);
    if (v28)
    {
      sub_1B8D9207C(v25, &qword_1EBAB8F20, &qword_1B964D720);
LABEL_20:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_37();
      sub_1B8F2A2D4(v51, v52);
      v42 = sub_1B964C850();
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v25[v37]);
  if (v38)
  {
    goto LABEL_15;
  }

  v43 = v59;
  v44 = &v25[v37];
  v45 = v54;
  (*(v59 + 32))(v54, v44, v4);
  OUTLINED_FUNCTION_1_31();
  sub_1B8F2A2D4(v46, v47);
  v48 = sub_1B964C850();
  v49 = *(v43 + 8);
  v49(v45, v4);
  v50 = OUTLINED_FUNCTION_375();
  (v49)(v50);
  sub_1B8D9207C(v25, &qword_1EBAB8F20, &qword_1B964D720);
  if (v48)
  {
    goto LABEL_20;
  }

LABEL_17:
  v42 = 0;
LABEL_18:
  OUTLINED_FUNCTION_264(v42);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8F2A094()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8F2A2D4(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8F2A164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F2A2D4(&qword_1EBABF010, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8F2A1E4(uint64_t a1)
{
  v2 = sub_1B8F2A2D4(&qword_1EBAB3E18, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8F2A254()
{
  sub_1B8F2A2D4(&qword_1EBAB3E18, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle);

  return sub_1B964C5D0();
}

uint64_t sub_1B8F2A2D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B8F2AD64()
{
  sub_1B8F2AE70(319, &qword_1EBAB3B08, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSQuery, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8F2AE70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B8F2AF24()
{
  sub_1B8F2AE70(319, &qword_1EBAB3AF8, type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_EVSResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
    v12 = OUTLINED_FUNCTION_128_1(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v15 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      OUTLINED_FUNCTION_266();
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t __swift_store_extra_inhabitant_index_24Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v8);
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_231();
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
    v13 = OUTLINED_FUNCTION_128_1(v12);
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = *(a4 + 20);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_186();
      __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
      OUTLINED_FUNCTION_258_0();
    }

    v10 = v5 + v15;
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v11);
}

void sub_1B8F2B204(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B964C2B0();
  if (v7 <= 0x3F)
  {
    sub_1B8F2AE70(319, qword_1ED9F44A8, MEMORY[0x1E69AAB10], MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      sub_1B8F2AE70(319, a4, a5, MEMORY[0x1E69E6720]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8F2B324()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8F2AE70(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8F2B470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8F2B4F8()
{
  if (!qword_1EBAB3B28)
  {
    type metadata accessor for Apple_Parsec_Encryptedvisualsearch_V1_ConfigBundle(255);
    v0 = sub_1B964C7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAB3B28);
    }
  }
}

void sub_1B8F2B588()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8F2AE70(319, qword_1ED9F44A8, MEMORY[0x1E69AAB10], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_25_9@<X0>(int a1@<W8>)
{
  *(v1 + 48) = a1;

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_48_4()
{
  v2 = *(v0 - 72);

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_49_8()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);
  v4 = *(v0 - 88);
  v5 = *(v0 - 72);

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_54_6(uint64_t a1)
{
  v4 = *(a1 + 20);
  *(v2 - 112) = v1;

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_68_6()
{

  return sub_1B964C290();
}

uint64_t OUTLINED_FUNCTION_78_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v4 - 96) = a2;
  *(v4 - 88) = v3;
  *(v4 - 72) = a3;
  *(v4 - 104) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_90_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_92_2()
{

  return sub_1B964C1C0();
}

uint64_t sub_1B8F2B8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F4A8D4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F2B9A8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_UserDataShareOptIn.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Feedback_V2_ViewType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  switch(a2)
  {
    case 'd':
      a2 = 2;
      break;
    case 'e':
      a2 = 3;
      break;
    case 'f':
      a2 = 4;
      break;
    case 'g':
      a2 = 5;
      break;
    case 'h':
      a2 = 6;
      break;
    default:
      break;
  }

  *a1 = a2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Feedback_V2_ViewType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B966F810[result];
  }

  return result;
}

uint64_t sub_1B8F2BA7C@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_ViewType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F2BAB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F4A880();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F2BBAC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ViewType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F2BBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F4A82C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F2BCDC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EntitySubType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F2BD2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F4A7D8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F2BE0C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_AnswerType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F2BE5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F484FC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F2BF3C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_EntityExperienceSectionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F2BF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F48550();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F2C06C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ImageQuality.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F2C0B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F485A4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F2C190@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_ImageCrop.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8F2C1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8F485F8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8F2C2C0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Feedback_V2_DataSource.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_DomainProperty.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_DomainProperty.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty(0);
  return OUTLINED_FUNCTION_279(v1);
}

void sub_1B8F2C434(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.type.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackResult.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_94_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F3A750(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.type.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_22(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2C55C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackResult.type.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F3A750(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

void sub_1B8F2C60C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.id.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackResult.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_94_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F3A750(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 40);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_22(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2C714(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackResult.id.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F3A750(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

void sub_1B8F2C7C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.canonicalID.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackResult.canonicalID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_94_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F3A750(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 56);
  *(v6 + 48) = v2;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.canonicalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_22(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2C8CC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackResult.canonicalID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F3A750(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 56);
    *(v9 + 48) = v4;
    *(v9 + 56) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.externalIds.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 64);
}

uint64_t sub_1B8F2C9A0(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Feedback_V2_FeedbackResult.externalIds.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.externalIds.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 64);
  *(v5 + 64) = v0;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.externalIds.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_20(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 64);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2CA90(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Feedback_V2_FeedbackResult.externalIds.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_31_10();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8F3A750(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 64);
    *(v8 + 64) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.subdomain.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F2CB64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.subdomain.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackResult.subdomain.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_94_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F3A750(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 80);
  *(v6 + 72) = v2;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.subdomain.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_22(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 80);
  *(v1 + 48) = *(v5 + 72);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2CC6C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackResult.subdomain.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F3A750(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 80);
    *(v9 + 72) = v4;
    *(v9 + 80) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.resultTags.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 88);
}

uint64_t sub_1B8F2CD40(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Feedback_V2_FeedbackResult.resultTags.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.resultTags.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 88);
  *(v5 + 88) = v0;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.resultTags.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_20(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 88);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2CE30(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Feedback_V2_FeedbackResult.resultTags.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_31_10();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8F3A750(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 88);
    *(v8 + 88) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.queryTags.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 96);
}

uint64_t sub_1B8F2CEFC(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Feedback_V2_FeedbackResult.queryTags.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.queryTags.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 96);
  *(v5 + 96) = v0;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.queryTags.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_20(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 96);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2CFEC(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Feedback_V2_FeedbackResult.queryTags.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_31_10();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8F3A750(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 96);
    *(v8 + 96) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.preMergeQueryTags.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 104);
}

uint64_t sub_1B8F2D0B8(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Feedback_V2_FeedbackResult.preMergeQueryTags.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.preMergeQueryTags.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 104);
  *(v5 + 104) = v0;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.preMergeQueryTags.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_20(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 104);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2D1A8(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Feedback_V2_FeedbackResult.preMergeQueryTags.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_31_10();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8F3A750(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 104);
    *(v8 + 104) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.prefix.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 112);
  v4 = *(v2 + 120);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F2D27C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.prefix.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackResult.prefix.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_94_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F3A750(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 120);
  *(v6 + 112) = v2;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.prefix.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_22(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 120);
  *(v1 + 48) = *(v5 + 112);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2D384(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackResult.prefix.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F3A750(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 120);
    *(v9 + 112) = v4;
    *(v9 + 120) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.query.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F2D460(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.query.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackResult.query.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_94_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F3A750(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 136);
  *(v6 + 128) = v2;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.query.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_22(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 136);
  *(v1 + 48) = *(v5 + 128);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2D568(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackResult.query.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F3A750(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 136);
    *(v9 + 128) = v4;
    *(v9 + 136) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.abversion.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 144);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.abversion.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 144) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.abversion.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 144);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F2D6F4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_28_11();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8F3A750(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 144) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.searchID.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F2D7BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.searchID.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackResult.searchID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_94_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F3A750(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 160);
  *(v6 + 152) = v2;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.searchID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_22(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 160);
  *(v1 + 48) = *(v5 + 152);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2D8C4(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackResult.searchID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F3A750(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 160);
    *(v9 + 152) = v4;
    *(v9 + 160) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.userGuid.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 168);
  v4 = *(v2 + 176);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F2D9A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.userGuid.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackResult.userGuid.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_94_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F3A750(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 176);
  *(v6 + 168) = v2;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.userGuid.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_22(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 176);
  *(v1 + 48) = *(v5 + 168);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2DAA8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackResult.userGuid.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F3A750(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 176);
    *(v9 + 168) = v4;
    *(v9 + 176) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.inDomainOrder.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 184);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.inDomainOrder.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 184) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.inDomainOrder.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 184);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F2DC34(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_28_11();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8F3A750(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 184) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.rankerOrder.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 188);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.rankerOrder.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 188) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.rankerOrder.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 188);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F2DDAC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_28_11();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8F3A750(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 188) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.postMergeOrder.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 192);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.postMergeOrder.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 192) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.postMergeOrder.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 192);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F2DF24(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_28_11();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8F3A750(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 192) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.serpGrouping.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 196);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.serpGrouping.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 196) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.serpGrouping.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 196);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F2E09C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = OUTLINED_FUNCTION_28_11();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v7);
    OUTLINED_FUNCTION_57_0(v8);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8F3A750(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 196) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.sectionID.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 200);
  v4 = *(v2 + 208);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F2E164(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.sectionID.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackResult.sectionID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_94_5(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F3A750(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 208);
  *(v6 + 200) = v2;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.sectionID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_22(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 208);
  *(v1 + 48) = *(v5 + 200);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2E26C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackResult.sectionID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_18_9();
      v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult._StorageClass(v10);
      OUTLINED_FUNCTION_57_0(v11);
      swift_allocObject();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8F3A750(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 208);
    *(v9 + 200) = v4;
    *(v9 + 208) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.cardFbrs.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 216);
}

uint64_t sub_1B8F2E340(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Feedback_V2_FeedbackResult.cardFbrs.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.cardFbrs.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 216);
  *(v5 + 216) = v0;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.cardFbrs.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_20(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 216);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2E430(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Feedback_V2_FeedbackResult.cardFbrs.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_31_10();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8F3A750(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 216);
    *(v8 + 216) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.cardFbrindexes.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 224);
}

uint64_t sub_1B8F2E4FC(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Feedback_V2_FeedbackResult.cardFbrindexes.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.cardFbrindexes.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 224);
  *(v5 + 224) = v0;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.cardFbrindexes.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_20(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 224);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2E5EC(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Feedback_V2_FeedbackResult.cardFbrindexes.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_31_10();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8F3A750(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 224);
    *(v8 + 224) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.domainProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF278, &qword_1B966D620);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_16_13();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = 0;
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v8, &qword_1EBABF278, &qword_1B966D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_11();
    OUTLINED_FUNCTION_182();
    return sub_1B8F3B7AC();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.domainProperties.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF278, &qword_1B966D620);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_46_4();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8F3A750(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_13_11();
  sub_1B8F3B7AC();
  type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.domainProperties.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF278, &qword_1B966D620);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_DomainProperty(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_16_13();
  v12 = *(v1 + v11);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  v13 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v13, v14, v7);
  if (v15)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v10[2] = 0;
    v16 = v10 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v17, v18, v7);
    if (!v15)
    {
      sub_1B8D9207C(v6, &qword_1EBABF278, &qword_1B966D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_11();
    sub_1B8F3B7AC();
  }

  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.resultAge.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.resultAge.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge;
  result = OUTLINED_FUNCTION_9_3();
  *(v5 + v8) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.resultAge.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_16_13();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F2EBA4(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v6 = OUTLINED_FUNCTION_177_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_31_10();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8F3A750(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  v12 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__resultAge;
  OUTLINED_FUNCTION_11_4();
  *(v7 + v12) = v3;

  free(v1);
}

void sub_1B8F2EC3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.siriUtterance.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.siriUtterance.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_22(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8F2ED1C(void *a1)
{
  OUTLINED_FUNCTION_16_13();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_6_2();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

void sub_1B8F2ED6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.siriRelatedAppBundelID.setter();
}

void sub_1B8F2EDB8()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = v1;
  OUTLINED_FUNCTION_16();
  v6 = *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0) + 20);
  v7 = *(v1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8F3A750(v10);
    *(v5 + v6) = v9;
  }

  v11 = (v9 + *v4);
  OUTLINED_FUNCTION_18();
  v12 = v11[1];
  *v11 = v2;
  v11[1] = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.siriRelatedAppBundelID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_22(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.isLocalCompletion.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(v4);
  OUTLINED_FUNCTION_21_8(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalCompletion;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.isLocalAndServerCompletionDifferent.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.isLocalAndServerCompletionDifferent.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_95_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F3A750(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent;
  result = OUTLINED_FUNCTION_9_3();
  *(v5 + v8) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.isLocalAndServerCompletionDifferent.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(v4);
  OUTLINED_FUNCTION_124_0(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F2F068(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_31_10();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8F3A750(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  v11 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__isLocalAndServerCompletionDifferent;
  OUTLINED_FUNCTION_11_4();
  *(v6 + v11) = v3;

  free(v1);
}

void sub_1B8F2F0FC(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Feedback_V2_FeedbackResult.cardIds.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.cardIds.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_20(v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__cardIds;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + v4);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2F1CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.entityType.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.entityType.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_22(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2F2AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.displayInformation.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.displayInformation.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_22(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2F38C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.uncorrectedQuery.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.uncorrectedQuery.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_22(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.userDataShareOptIn.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_181_0(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8F2F4F8(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_13();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4();
  return *(v4 + v5);
}

void sub_1B8F2F544()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_46_4();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8F3A750(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *v3;
  OUTLINED_FUNCTION_9_3();
  *(v7 + v10) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.abversionFailure.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(v4);
  OUTLINED_FUNCTION_21_8(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__abversionFailure;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F2F620()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_145_5(v2);
  v4 = *(v3 + 80);
  v5 = *(v0 + 84);
  v6 = *(v0 + 72);
  v7 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 72);
    OUTLINED_FUNCTION_31_10();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B8F3A750(v12);
    OUTLINED_FUNCTION_73_2(v13);
  }

  v14 = *v1;
  OUTLINED_FUNCTION_11_4();
  *(v9 + v14) = v4;
  OUTLINED_FUNCTION_242();

  free(v15);
}

void sub_1B8F2F6C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.qid.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.qid.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_22(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2F7A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.suppressedSuggestion.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.suppressedSuggestion.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_22(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F2F884(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.selectedExperience.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.selectedExperience.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_22(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.kginformation.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF280, &qword_1B966D628);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  OUTLINED_FUNCTION_16_13();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_0();
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    v13 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v13;
    v14 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v8, &qword_1EBABF280, &qword_1B966D628);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_182();
    return sub_1B8F3B7AC();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.kginformation.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF280, &qword_1B966D628);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_46_4();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8F3A750(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_15_13();
  sub_1B8F3B7AC();
  type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_KGInfo.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo(0);
  return OUTLINED_FUNCTION_279(v3);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.kginformation.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF280, &qword_1B966D628);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_16_13();
  v12 = *(v1 + v11);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  v13 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v13, v14, v7);
  if (v15)
  {
    v16 = MEMORY[0x1E69E7CC0];
    *v10 = MEMORY[0x1E69E7CC0];
    v10[1] = v16;
    v17 = v10 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v18, v19, v7);
    if (!v15)
    {
      sub_1B8D9207C(v6, &qword_1EBABF280, &qword_1B966D628);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_13();
    sub_1B8F3B7AC();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F2FD3C()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8F3B804();
    v2(v3);
    sub_1B8F3B85C();
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

uint64_t sub_1B8F2FE10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  OUTLINED_FUNCTION_16_13();
  v18 = *(v5 + v17);
  v19 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v20 = a4(0);
  OUTLINED_FUNCTION_178(v16, 1, v20);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  sub_1B8D9207C(v16, v6, v4);
  return v22;
}

void sub_1B8F2FF14()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v16 = OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B8F3A750(v16);
  }

  v4(0);
  v17 = OUTLINED_FUNCTION_207();
  __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
  v20 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F3000C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_16_13();
  v6 = *(v2 + v5) + *a1;
  result = OUTLINED_FUNCTION_6_2();
  v8 = *(v6 + 8);
  *a2 = *v6;
  *(a2 + 8) = v8;
  return result;
}

void sub_1B8F30070()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v1;
  v3 = v0;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8F3A750(v11);
    *(v3 + v7) = v10;
  }

  v12 = v10 + *v2;
  OUTLINED_FUNCTION_18();
  *v12 = v5;
  *(v12 + 8) = v6;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.viewType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_181_0(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F3016C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_145_5(v2);
  v4 = *(v3 + 72);
  v5 = *(v0 + 84);
  v6 = *(v0 + 88);
  v7 = *(v0 + 80);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 84);
    v12 = *(v0 + 88);
    OUTLINED_FUNCTION_31_10();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8F3A750(v13);
    *(v12 + v11) = v10;
  }

  v14 = v10 + *v1;
  OUTLINED_FUNCTION_18();
  *v14 = v4;
  *(v14 + 8) = v7;
  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.entitySubtype.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_181_0(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.answerType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_16_13();
  OUTLINED_FUNCTION_181_0(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F3033C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.serverReleaseVersion.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.serverReleaseVersion.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_22(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F3041C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackResult.summary.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.summary.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_22(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F304F0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v3);
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_191();
    v8 = OUTLINED_FUNCTION_461();
    v7(v8);
    v9 = *(v0 + 56);
  }

  else
  {
    v10 = v4;
    v11 = *(v0 + 72);
    v12 = *(v0 + 64);
    v13 = *(v12 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v0 + 72);
      v17 = *(v0 + 64);
      OUTLINED_FUNCTION_31_10();
      v18 = OUTLINED_FUNCTION_40_0();
      v19 = sub_1B8F3A750(v18);
      OUTLINED_FUNCTION_73_2(v19);
    }

    v20 = (v15 + *v10);
    OUTLINED_FUNCTION_18();
    v21 = v20[1];
    *v20 = v2;
    v20[1] = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v22);
}

float Apple_Parsec_Feedback_V2_FeedbackResult.queryFreshness.getter()
{
  OUTLINED_FUNCTION_16_13();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__queryFreshness;
  OUTLINED_FUNCTION_6_2();
  return *v2;
}

void Apple_Parsec_Feedback_V2_FeedbackResult.queryFreshness.setter()
{
  OUTLINED_FUNCTION_30_5();
  v2 = v1;
  v3 = *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(0) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F3A750(v7);
    OUTLINED_FUNCTION_16_3(v8);
  }

  v9 = (v6 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__queryFreshness);
  OUTLINED_FUNCTION_18();
  *v9 = v2;
  OUTLINED_FUNCTION_29_3();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.queryFreshness.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackResult(v4);
  OUTLINED_FUNCTION_181_0(*(v5 + 20));
  OUTLINED_FUNCTION_41();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F306D0()
{
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_86_1(v4);
  v6 = OUTLINED_FUNCTION_134_1(v5);
  v7 = *(v2 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 72);
    OUTLINED_FUNCTION_31_10();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8F3A750(v10);
    OUTLINED_FUNCTION_15(v11);
  }

  v12 = (v7 + OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__queryFreshness);
  OUTLINED_FUNCTION_18();
  *v12 = v3;
  OUTLINED_FUNCTION_31_4();

  free(v13);
}

uint64_t sub_1B8F30770(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_13();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4();
  v6 = *(v4 + v5);
}

void sub_1B8F307B4(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Feedback_V2_FeedbackResult.contentAge.setter();
}

void sub_1B8F307EC()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_46_4();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_10();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8F3A750(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *v3;
  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + v10);
  *(v7 + v10) = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackResult.contentAge.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_20(v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI39Apple_Parsec_Feedback_V2_FeedbackResultP33_EE57CE0666E61E33DDFEED139D3F792813_StorageClass__contentAge;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + v4);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F308E4(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    v6 = v4;
    v7 = OUTLINED_FUNCTION_61_1();
    v6(v7);
    v8 = *(v1 + 48);
  }

  else
  {
    v9 = v3;
    v10 = *(v1 + 64);
    v11 = *(v1 + 56);
    v12 = *(v11 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v1 + 64);
      v16 = *(v1 + 56);
      OUTLINED_FUNCTION_31_10();
      v17 = OUTLINED_FUNCTION_40_0();
      v18 = sub_1B8F3A750(v17);
      OUTLINED_FUNCTION_168(v18);
    }

    v19 = *v9;
    OUTLINED_FUNCTION_59_3();
    v20 = *(v14 + v19);
    *(v14 + v19) = v2;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_IntentInfo.args.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_IntentInfo.kgqs.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_IntentInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_IntentInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo(0);
  return OUTLINED_FUNCTION_101_2(v3);
}

uint64_t Apple_Parsec_Feedback_V2_ArgInfo.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_ArgInfo.id.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ArgInfo.entitySyn.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_ArgInfo.entitySyn.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1B8F30C58@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1B8F30CEC()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Feedback_V2_ArgInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ArgInfo(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ArgInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ArgInfo(0);
  return OUTLINED_FUNCTION_279(v3);
}

uint64_t Apple_Parsec_Feedback_V2_KGInfo.answerFacts.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_KGInfo.allIntents.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_KGInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_KGInfo(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CompletionSourceInfo.qid.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_CompletionSourceInfo.qid.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_1B8F30FB8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1B8F3104C()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 28);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Feedback_V2_CompletionSourceInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_CompletionSourceInfo(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CompletionSourceInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CompletionSourceInfo(0);
  return OUTLINED_FUNCTION_101_2(v3);
}

uint64_t Apple_Parsec_Feedback_V2_ClientCompletion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Feedback_V2_ClientCompletion(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ClientCompletion.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientCompletion(0);
  return OUTLINED_FUNCTION_279(v2);
}

uint64_t sub_1B8F3122C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F31280(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.userGuid.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.userGuid.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.userGuid.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F31390(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.userGuid.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t sub_1B8F31440(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F31494(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.endpointID.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.endpointID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 40);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.endpointID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F315A4(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.endpointID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

uint64_t sub_1B8F31654(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F316A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.prefix.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.prefix.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 56);
  *(v6 + 48) = v2;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.prefix.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F317B8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.prefix.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 56);
    *(v9 + 48) = v4;
    *(v9 + 56) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.query.getter()
{
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F31890(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.query.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.query.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 72);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.query.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F319A0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.query.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.clientCacheQuery.getter()
{
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F31A78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.clientCacheQuery.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.clientCacheQuery.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 88);
  *(v6 + 80) = v2;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.clientCacheQuery.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F31B88(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.clientCacheQuery.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 88);
    *(v9 + 80) = v4;
    *(v9 + 88) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.bingQuery.getter()
{
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F31C60(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.bingQuery.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.bingQuery.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 104);
  *(v6 + 96) = v2;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.bingQuery.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F31D70(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.bingQuery.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 104);
    *(v9 + 96) = v4;
    *(v9 + 104) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.ts.getter()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 112);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.ts.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_81_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F422E4(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 112) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.ts.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  v4 = *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(0) + 20);
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v5 + 112);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F31F14(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v6 = OUTLINED_FUNCTION_177_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8F422E4(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 112) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.geo.getter()
{
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F31FE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.geo.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.geo.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 128);
  *(v6 + 120) = v2;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.geo.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 128);
  *(v1 + 48) = *(v0 + 120);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F320F4(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.geo.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 128);
    *(v9 + 120) = v4;
    *(v9 + 128) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.geoV2.getter()
{
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F321CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.geoV2.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.geoV2.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 144);
  *(v6 + 136) = v2;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.geoV2.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 144);
  *(v1 + 48) = *(v0 + 136);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F322DC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.geoV2.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 144);
    *(v9 + 136) = v4;
    *(v9 + 144) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.geoID.getter()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 152);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.geoID.setter()
{
  v3 = OUTLINED_FUNCTION_19_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8F422E4(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 152) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.geoID.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_19(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 152);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F32464(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 152) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.client.getter()
{
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F32528(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.client.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.client.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 168);
  *(v6 + 160) = v2;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.client.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 168);
  *(v1 + 48) = *(v0 + 160);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F32638(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.client.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 168);
    *(v9 + 160) = v4;
    *(v9 + 168) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.device.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_12_15();
  result = OUTLINED_FUNCTION_10_4();
  v4 = *(v1 + 184);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v4;
  return result;
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.device.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_77_4(0);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F422E4(v8);
    *(v2 + v1) = v7;
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 176) = v4;
  *(v7 + 184) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.device.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_37_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(v4);
  OUTLINED_FUNCTION_21_8(v5);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v0 + 184);
  *(v1 + 72) = *(v0 + 176);
  *(v1 + 80) = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F327F8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_86_1(v5);
  v7 = OUTLINED_FUNCTION_138_2(v6);
  v8 = *(v4 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = *(v0 + 84);
    v10 = *(v0 + 88);
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8F422E4(v11);
    OUTLINED_FUNCTION_73_2(v12);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 176) = v2;
  *(v8 + 184) = v3;
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.locale.getter()
{
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F328CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.locale.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.locale.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 200);
  *(v6 + 192) = v2;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.locale.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 200);
  *(v1 + 48) = *(v0 + 192);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F329DC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.locale.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 200);
    *(v9 + 192) = v4;
    *(v9 + 200) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.storefront.getter()
{
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F32AB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.storefront.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.storefront.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 216);
  *(v6 + 208) = v2;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.storefront.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 216);
  *(v1 + 48) = *(v0 + 208);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F32BC4(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.storefront.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 216);
    *(v9 + 208) = v4;
    *(v9 + 216) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.latLng.getter()
{
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F32C9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.latLng.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.latLng.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 232);
  *(v6 + 224) = v2;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.latLng.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 232);
  *(v1 + 48) = *(v0 + 224);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F32DAC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.latLng.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 232);
    *(v9 + 224) = v4;
    *(v9 + 232) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.tags.getter()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 240);
}

uint64_t sub_1B8F32E7C(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Feedback_V2_FeedbackQuery.tags.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.tags.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_81_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F422E4(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 240);
  *(v5 + 240) = v0;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.tags.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 240);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F32F80(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Feedback_V2_FeedbackQuery.tags.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_29_6();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B8F422E4(v9);
      OUTLINED_FUNCTION_15(v10);
    }

    OUTLINED_FUNCTION_59_3();
    v11 = *(v8 + 240);
    *(v8 + 240) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.dopplerTags.getter()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 248);
}

uint64_t sub_1B8F3304C(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Feedback_V2_FeedbackQuery.dopplerTags.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.dopplerTags.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_81_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F422E4(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 248);
  *(v5 + 248) = v0;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.dopplerTags.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 248);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F33150(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Feedback_V2_FeedbackQuery.dopplerTags.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_29_6();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B8F422E4(v9);
      OUTLINED_FUNCTION_15(v10);
    }

    OUTLINED_FUNCTION_59_3();
    v11 = *(v8 + 248);
    *(v8 + 248) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.preMergeTags.getter()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 256);
}

uint64_t sub_1B8F3321C(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Feedback_V2_FeedbackQuery.preMergeTags.setter();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.preMergeTags.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_81_2(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8F422E4(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 256);
  *(v5 + 256) = v0;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.preMergeTags.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 256);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F33320(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Feedback_V2_FeedbackQuery.preMergeTags.setter();
    v6 = v1[6];
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_29_6();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B8F422E4(v9);
      OUTLINED_FUNCTION_15(v10);
    }

    OUTLINED_FUNCTION_59_3();
    v11 = *(v8 + 256);
    *(v8 + 256) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.abversion.getter()
{
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_10_4();
  return *(v0 + 264);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.abversion.setter()
{
  v3 = OUTLINED_FUNCTION_19_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8F422E4(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 264) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.abversion.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_19(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 264);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F334A4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_7_20(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_28_11();
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 264) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.searchID.getter()
{
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F33568(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.searchID.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.searchID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 280);
  *(v6 + 272) = v2;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.searchID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 280);
  *(v1 + 48) = *(v0 + 272);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F33678(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.searchID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 280);
    *(v9 + 272) = v4;
    *(v9 + 280) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.releaseTag.getter()
{
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F33750(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.releaseTag.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.releaseTag.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 296);
  *(v6 + 288) = v2;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.releaseTag.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 296);
  *(v1 + 48) = *(v0 + 288);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F33860(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_FeedbackQuery.releaseTag.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
      OUTLINED_FUNCTION_51_7();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8F422E4(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 296);
    *(v9 + 288) = v4;
    *(v9 + 296) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.canonicalID.getter()
{
  OUTLINED_FUNCTION_12_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8F33938(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_FeedbackQuery.canonicalID.setter();
}

void Apple_Parsec_Feedback_V2_FeedbackQuery.canonicalID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackQuery._StorageClass();
    OUTLINED_FUNCTION_51_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8F422E4(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 312);
  *(v6 + 304) = v2;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackQuery.canonicalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_32(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 312);
  *(v1 + 48) = *(v0 + 304);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}