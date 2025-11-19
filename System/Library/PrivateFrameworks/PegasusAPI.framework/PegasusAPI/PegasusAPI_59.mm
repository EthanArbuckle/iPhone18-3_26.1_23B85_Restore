uint64_t Apple_Parsec_Spotlight_V1alpha_Result.normalizedTopic.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBAB8F78, &unk_1B964D770);
  OUTLINED_FUNCTION_1_64();
  OUTLINED_FUNCTION_116_5();
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Spotlight_V1alpha_Result.normalizedTopic.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  v8 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 44));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    v17 = *(v8 + 28);
    type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = v10 + *(v8 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8F78, &unk_1B964D770);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_64();
    OUTLINED_FUNCTION_246();
    sub_1B9289920();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B928BCD4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9289ABC();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8F78, &unk_1B964D770);
    OUTLINED_FUNCTION_1_64();
    sub_1B9289920();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_6_29();
    sub_1B9289B14();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8F78, &unk_1B964D770);
    OUTLINED_FUNCTION_1_64();
    sub_1B9289920();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.hasNormalizedTopic.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F78, &unk_1B964D770);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(v4) + 44);
  OUTLINED_FUNCTION_274_0();
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &unk_1B964D770);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Spotlight_V1alpha_Result.clearNormalizedTopic()()
{
  v1 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(0);
  sub_1B8D9207C(v0 + *(v1 + 44), &qword_1EBAB8F78, &unk_1B964D770);
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.bundleID.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.bundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.template.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(v7) + 48);
  OUTLINED_FUNCTION_100_0();
  v9 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = xmmword_1B9652FE0;
    v11 = a1 + *(v9 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBACA338, &unk_1B96B2710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_41();
    OUTLINED_FUNCTION_182();
    return sub_1B9289920();
  }

  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.template.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBACA338, &unk_1B96B2710);
  OUTLINED_FUNCTION_4_41();
  OUTLINED_FUNCTION_116_5();
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.Template.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  v1 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(0);
  return OUTLINED_FUNCTION_163_2(v1);
}

void Apple_Parsec_Spotlight_V1alpha_Result.template.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  *(v1 + 40) = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(v14) + 48);
  sub_1B8D92024();
  v15 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v15, v16, v8);
  if (v17)
  {
    *v10 = xmmword_1B9652FE0;
    v18 = v10 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v19, v20, v8);
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBACA338, &unk_1B96B2710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_41();
    OUTLINED_FUNCTION_461();
    sub_1B9289920();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B928C1F8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9289ABC();
    sub_1B8D9207C(v4 + v3, &qword_1EBACA338, &unk_1B96B2710);
    OUTLINED_FUNCTION_4_41();
    sub_1B9289920();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_20_11();
    sub_1B9289B14();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACA338, &unk_1B96B2710);
    OUTLINED_FUNCTION_4_41();
    sub_1B9289920();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.hasTemplate.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA338, &unk_1B96B2710);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(v4) + 48);
  OUTLINED_FUNCTION_274_0();
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(0);
  v6 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v11, v12, &unk_1B96B2710);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Spotlight_V1alpha_Result.clearTemplate()()
{
  v1 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(0);
  sub_1B8D9207C(v0 + *(v1 + 48), &qword_1EBACA338, &unk_1B96B2710);
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.Template.cardData.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.Template.cardData.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.Template.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = xmmword_1B9652FE0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = v2;
  v3 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(0);
  v4 = v1 + v3[10];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = v3[11];
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v3[12];
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(0);
  v11 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1B928C67C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA208);
  __swift_project_value_buffer(v0, qword_1EBACA208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TOPIC_TYPE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TOPIC_TYPE_FLIGHT";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TOPIC_TYPE_MEDIA";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TOPIC_TYPE_WEATHER";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "TOPIC_TYPE_ENTITY";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "TOPIC_TYPE_GENERIC";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "TOPIC_TYPE_RELATED_POI";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "TOPIC_TYPE_WEB_PUNCHOUT";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "TOPIC_TYPE_SPORTS";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B928CA1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA220);
  __swift_project_value_buffer(v0, qword_1EBACA220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SECTION_STATUS_CODE_UNKNOWN";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SECTION_STATUS_CODE_OK";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SECTION_STATUS_CODE_ERROR";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SECTION_STATUS_CODE_NO_RESULTS";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SECTION_STATUS_CODE_FILTERED";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B928CCC4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA238);
  __swift_project_value_buffer(v0, qword_1EBACA238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "STATUS_CODE_UNKNOWN";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STATUS_CODE_OK";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "STATUS_CODE_ERROR";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "STATUS_CODE_NO_RESULTS";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B928CF44()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3ED0);
  __swift_project_value_buffer(v0, qword_1EBAB3ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topics";
  *(v6 + 8) = 6;
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

void Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest.decodeMessage<A>(decoder:)()
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
      sub_1B928D1EC();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9291410();
    }
  }
}

uint64_t sub_1B928D1EC()
{
  v0 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest(0) + 24);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B8CD2D98(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

void Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_159();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v8 = OUTLINED_FUNCTION_59_1(Context);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext(0), sub_1B8CD2D98(&qword_1EBAB4388, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext), OUTLINED_FUNCTION_55_5(), sub_1B964C730(), !v1))
  {
    v11 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest(0);
    v12 = *(v11 + 24);
    sub_1B8D92024();
    v13 = OUTLINED_FUNCTION_443();
    if (__swift_getEnumTagSinglePayload(v13, v14, Context) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
LABEL_6:
      v15 = v0 + *(v11 + 20);
      sub_1B964C290();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_3_49();
    sub_1B9289920();
    sub_1B8CD2D98(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
    OUTLINED_FUNCTION_55_5();
    sub_1B964C740();
    OUTLINED_FUNCTION_22_20();
    sub_1B9289B14();
    if (!v1)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest.== infix(_:_:)()
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
  OUTLINED_FUNCTION_137();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = *v1;
  v21 = *v0;
  sub_1B8D66128();
  if ((v22 & 1) == 0)
  {
    goto LABEL_12;
  }

  v41 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest(0);
  v23 = *(v41 + 24);
  v24 = *(v14 + 48);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v19);
  if (v25)
  {
    OUTLINED_FUNCTION_37_0(&v19[v24]);
    if (v25)
    {
      sub_1B8D9207C(v19, &qword_1EBABED40, &qword_1B96809F0);
LABEL_17:
      v37 = *(v41 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_76();
      sub_1B8CD2D98(v38, v39);
      v28 = OUTLINED_FUNCTION_199_0();
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v19[v24]);
  if (v25)
  {
    OUTLINED_FUNCTION_22_20();
    sub_1B9289B14();
LABEL_10:
    v26 = &qword_1EBABED68;
    v27 = &qword_1B9680A10;
LABEL_11:
    sub_1B8D9207C(v19, v26, v27);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_49();
  sub_1B9289920();
  v29 = *(Context + 20);
  v30 = *(v2 + v29);
  v31 = *(v9 + v29);
  if (v30 != v31)
  {
    v32 = *(v2 + v29);

    v33 = sub_1B9090820(v30, v31);

    if (!v33)
    {
      sub_1B9289B14();
      sub_1B9289B14();
      v26 = &qword_1EBABED40;
      v27 = &qword_1B96809F0;
      goto LABEL_11;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_76();
  sub_1B8CD2D98(v34, v35);
  v36 = sub_1B964C850();
  sub_1B9289B14();
  sub_1B9289B14();
  sub_1B8D9207C(v19, &qword_1EBABED40, &qword_1B96809F0);
  if (v36)
  {
    goto LABEL_17;
  }

LABEL_12:
  v28 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v28);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B928D890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D98(&qword_1EBACA490, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B928D910(uint64_t a1)
{
  v2 = sub_1B8CD2D98(&qword_1EBACA3C8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B928D980()
{
  sub_1B8CD2D98(&qword_1EBACA3C8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B928DA18()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4398);
  __swift_project_value_buffer(v0, qword_1EBAB4398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "context_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_TopicContext.decodeMessage<A>(decoder:)()
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
      sub_1B928DC74();
    }
  }

  return result;
}

uint64_t sub_1B928DC74()
{
  v0 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext(0) + 24);
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  sub_1B8CD2D98(&qword_1ED9CA6D8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic);
  return sub_1B964C580();
}

void Apple_Parsec_Spotlight_V1alpha_TopicContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v0;
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_159();
  v10 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v14 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext(0);
  v15 = *(v14 + 24);
  sub_1B8D92024();
  v16 = OUTLINED_FUNCTION_443();
  if (__swift_getEnumTagSinglePayload(v16, v17, v10) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8F78, &unk_1B964D770);
  }

  else
  {
    OUTLINED_FUNCTION_1_64();
    sub_1B9289920();
    OUTLINED_FUNCTION_55_9();
    sub_1B8CD2D98(v18, v19);
    OUTLINED_FUNCTION_80_6();
    sub_1B964C740();
    OUTLINED_FUNCTION_6_29();
    sub_1B9289B14();
    if (v1)
    {
      goto LABEL_7;
    }
  }

  v20 = *v3;
  v21 = v3[1];
  OUTLINED_FUNCTION_1();
  if (!v22 || (OUTLINED_FUNCTION_80_6(), sub_1B964C700(), !v1))
  {
    v23 = v3 + *(v14 + 20);
    OUTLINED_FUNCTION_186();
    sub_1B964C290();
  }

LABEL_7:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Spotlight_V1alpha_TopicContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F78, &unk_1B964D770);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F80, &unk_1B96B2720) - 8);
  v14 = *(*v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_79();
  v26 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext(0);
  v16 = *(v26 + 24);
  v17 = v13[14];
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_178(v0, 1, v5);
  if (!v18)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v0 + v17, 1, v5);
    if (!v18)
    {
      OUTLINED_FUNCTION_1_64();
      sub_1B9289920();
      static Apple_Parsec_Spotlight_V1alpha_Topic.== infix(_:_:)();
      v21 = v20;
      sub_1B9289B14();
      sub_1B9289B14();
      sub_1B8D9207C(v0, &qword_1EBAB8F78, &unk_1B964D770);
      if ((v21 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_6_29();
    sub_1B9289B14();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB8F80, &unk_1B96B2720);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_178(v0 + v17, 1, v5);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v0, &qword_1EBAB8F78, &unk_1B964D770);
LABEL_12:
  v22 = *v4 == *v2 && v4[1] == v2[1];
  if (v22 || (sub_1B964C9F0() & 1) != 0)
  {
    v23 = *(v26 + 20);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_76();
    sub_1B8CD2D98(v24, v25);
    v19 = sub_1B964C850();
    goto LABEL_18;
  }

LABEL_10:
  v19 = 0;
LABEL_18:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B928E250(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D98(&qword_1EBACA488, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B928E2D0(uint64_t a1)
{
  v2 = sub_1B8CD2D98(&qword_1EBAB4388, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B928E340()
{
  sub_1B8CD2D98(&qword_1EBAB4388, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B928E3D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4A68);
  __swift_project_value_buffer(v0, qword_1EBAB4A68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "id";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "flight";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 11;
  *v16 = "weather";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 12;
  *v18 = "sports";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B928E780();
        break;
      case 10:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B928E7E8(v7, v8, v9, v10);
        break;
      case 11:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B928ECEC(v3, v4, v5, v6);
        break;
      case 12:
        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_24_3();
        sub_1B928F1F0(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B928E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F68, &qword_1B964D760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA498, &qword_1B96B3C60);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0) + 28);
  v30 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8F68, &qword_1B964D760);
  }

  else
  {
    sub_1B9289920();
    sub_1B9289920();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9289B14();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBACA498, &qword_1B96B3C60);
      sub_1B9289920();
      sub_1B9289920();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2D98(&qword_1EBACA3F0, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA498, &qword_1B96B3C60);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA498, &qword_1B96B3C60);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA498, &qword_1B96B3C60);
  }

  sub_1B9289920();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v32;
  sub_1B8D9207C(v22, &qword_1EBACA498, &qword_1B96B3C60);
  v28 = v29;
  v27 = v30;
  sub_1B8D9207C(v30 + v29, &qword_1EBAB8F68, &qword_1B964D760);
  sub_1B9289920();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_1B928ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F68, &qword_1B964D760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA4A0, &qword_1B96B3C68);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0) + 28);
  v30 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8F68, &qword_1B964D760);
  }

  else
  {
    sub_1B9289920();
    sub_1B9289920();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBACA4A0, &qword_1B96B3C68);
      sub_1B9289920();
      sub_1B9289920();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9289B14();
    }
  }

  sub_1B8CD2D98(&qword_1ED9CA6F8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA4A0, &qword_1B96B3C68);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA4A0, &qword_1B96B3C68);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA4A0, &qword_1B96B3C68);
  }

  sub_1B9289920();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v32;
  sub_1B8D9207C(v22, &qword_1EBACA4A0, &qword_1B96B3C68);
  v28 = v29;
  v27 = v30;
  sub_1B8D9207C(v30 + v29, &qword_1EBAB8F68, &qword_1B964D760);
  sub_1B9289920();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t sub_1B928F1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a2;
  v5 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F68, &qword_1B964D760);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA4A8, &unk_1B96B3C70);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - v21;
  __swift_storeEnumTagSinglePayload(&v29 - v21, 1, 1, v5);
  v29 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0) + 28);
  v30 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v32 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8F68, &qword_1B964D760);
  }

  else
  {
    sub_1B9289920();
    sub_1B9289920();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v22, &qword_1EBACA4A8, &unk_1B96B3C70);
      sub_1B9289920();
      sub_1B9289920();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9289B14();
    }
  }

  sub_1B8CD2D98(&qword_1EBACA410, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACA4A8, &unk_1B96B3C70);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA4A8, &unk_1B96B3C70);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACA4A8, &unk_1B96B3C70);
  }

  sub_1B9289920();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v32;
  sub_1B8D9207C(v22, &qword_1EBACA4A8, &unk_1B96B3C70);
  v28 = v29;
  v27 = v30;
  sub_1B8D9207C(v30 + v29, &qword_1EBAB8F68, &qword_1B964D760);
  sub_1B9289920();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v26);
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F68, &qword_1B964D760);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_192_4();
  v9 = *v1;
  v10 = v1[1];
  OUTLINED_FUNCTION_1();
  if (!v11 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), (v0 = v2) == 0))
  {
    if (!*(v3 + 16) || (v34 = *(v3 + 16), v35 = *(v3 + 24), sub_1B929379C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), (v0 = v2) == 0))
    {
      v13 = *(v3 + 32);
      v14 = *(v3 + 40);
      OUTLINED_FUNCTION_1();
      if (!v15 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), (v0 = v2) == 0))
      {
        v16 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
        v17 = *(v16 + 28);
        sub_1B8D92024();
        v18 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
        if (__swift_getEnumTagSinglePayload(v4, 1, v18) == 1)
        {
          goto LABEL_14;
        }

        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            OUTLINED_FUNCTION_24_3();
            v20 = v0;
            sub_1B928FADC(v21, v22, v23, v24);
          }

          else
          {
            OUTLINED_FUNCTION_24_3();
            v20 = v0;
            sub_1B928FCFC(v29, v30, v31, v32);
          }
        }

        else
        {
          OUTLINED_FUNCTION_24_3();
          v20 = v0;
          sub_1B928F8C0(v25, v26, v27, v28);
        }

        OUTLINED_FUNCTION_2_47();
        result = sub_1B9289B14();
        if (!v20)
        {
LABEL_14:
          v33 = *(v16 + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B928F8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F68, &qword_1B964D760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0) + 28);
  sub_1B8D92024();
  v11 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8F68, &qword_1B964D760);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B9289920();
      sub_1B8CD2D98(&qword_1EBACA3F0, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail);
      sub_1B964C740();
      return sub_1B9289B14();
    }

    result = sub_1B9289B14();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B928FADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F68, &qword_1B964D760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0) + 28);
  sub_1B8D92024();
  v11 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8F68, &qword_1B964D760);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9289920();
      sub_1B8CD2D98(&qword_1ED9CA6F8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail);
      sub_1B964C740();
      return sub_1B9289B14();
    }

    result = sub_1B9289B14();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B928FCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F68, &qword_1B964D760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0) + 28);
  sub_1B8D92024();
  v11 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8F68, &qword_1B964D760);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B9289920();
      sub_1B8CD2D98(&qword_1EBACA410, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail);
      sub_1B964C740();
      return sub_1B9289B14();
    }

    result = sub_1B9289B14();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Spotlight_V1alpha_Topic.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v2 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail(0);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F68, &qword_1B964D760);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_79();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F70, &qword_1B964D768);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = *v1 == *v0 && v1[1] == *(v0 + 8);
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_25;
  }

  v17 = v1[2];
  v18 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    switch(v18)
    {
      case 1:
        if (v17 != 1)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      case 2:
        if (v17 != 2)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      case 3:
        if (v17 != 3)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      case 4:
        if (v17 != 4)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      case 5:
        if (v17 != 5)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      case 6:
        if (v17 != 6)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      case 7:
        if (v17 != 7)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      case 8:
        if (v17 != 8)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      default:
        if (!v17)
        {
          goto LABEL_11;
        }

        goto LABEL_25;
    }
  }

  if (v17 != v18)
  {
    goto LABEL_25;
  }

LABEL_11:
  v19 = v1[4] == *(v0 + 32) && v1[5] == *(v0 + 40);
  if (v19 || (sub_1B964C9F0() & 1) != 0)
  {
    v32 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
    v20 = *(v32 + 28);
    v21 = *(v10 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    v22 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v22, v23, v2);
    if (v16)
    {
      OUTLINED_FUNCTION_178(&v15[v21], 1, v2);
      if (v16)
      {
        sub_1B8D9207C(v15, &qword_1EBAB8F68, &qword_1B964D760);
LABEL_28:
        v28 = *(v32 + 32);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_76();
        sub_1B8CD2D98(v29, v30);
        v25 = OUTLINED_FUNCTION_634();
        goto LABEL_26;
      }
    }

    else
    {
      OUTLINED_FUNCTION_177_1();
      sub_1B8D92024();
      OUTLINED_FUNCTION_178(&v15[v21], 1, v2);
      if (!v24)
      {
        sub_1B9289920();
        OUTLINED_FUNCTION_246();
        static Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail.== infix(_:_:)();
        v27 = v26;
        sub_1B9289B14();
        sub_1B9289B14();
        sub_1B8D9207C(v15, &qword_1EBAB8F68, &qword_1B964D760);
        if (v27)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      OUTLINED_FUNCTION_2_47();
      sub_1B9289B14();
    }

    sub_1B8D9207C(v15, &qword_1EBAB8F70, &qword_1B964D768);
  }

LABEL_25:
  v25 = 0;
LABEL_26:
  OUTLINED_FUNCTION_264(v25);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9290330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D98(&qword_1EBACA480, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92903B0(uint64_t a1)
{
  v2 = sub_1B8CD2D98(&qword_1ED9CA6D8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9290420()
{
  sub_1B8CD2D98(&qword_1ED9CA6D8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail.decodeMessage<A>(decoder:)()
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
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C720(), !v1))
  {
    v3 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B9290674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D98(&qword_1EBACA478, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92906F4(uint64_t a1)
{
  v2 = sub_1B8CD2D98(&qword_1EBACA3F0, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9290764()
{
  sub_1B8CD2D98(&qword_1EBACA3F0, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B9290834()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4A88);
  __swift_project_value_buffer(v0, qword_1EBAB4A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lat";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "long";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail.decodeMessage<A>(decoder:)()
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
      sub_1B964C490();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
    {
      v3 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B9290BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D98(&qword_1EBACA470, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9290C20(uint64_t a1)
{
  v2 = sub_1B8CD2D98(&qword_1ED9CA6F8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9290C90()
{
  sub_1B8CD2D98(&qword_1ED9CA6F8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B9290D40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1BFADC850](a2, a3);
  *a4 = 0xD000000000000024;
  *a5 = 0x80000001B9714A70;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v6 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B9290F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D98(&qword_1EBACA468, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9290FAC(uint64_t a1)
{
  v2 = sub_1B8CD2D98(&qword_1EBACA410, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B929101C()
{
  sub_1B8CD2D98(&qword_1EBACA410, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B92910B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA2B0);
  __swift_project_value_buffer(v0, qword_1EBACA2B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "results";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sections";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "status_code";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 20;
  *v15 = "duration_in_ms";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.decodeMessage<A>(decoder:)()
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
      case 20:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9291498();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9291538();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9291410();
        break;
    }
  }
}

void sub_1B9291410()
{
  OUTLINED_FUNCTION_273_0();
  v0(0);
  v1 = OUTLINED_FUNCTION_128();
  sub_1B8CD2D98(v1, v2);
  sub_1B964C570();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9291498()
{
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section(0);
  sub_1B8CD2D98(&qword_1ED9C9560, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(0), sub_1B8CD2D98(&qword_1ED9CA570, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section(0), sub_1B8CD2D98(&qword_1ED9C9560, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      if (!*(v2 + 16) || (v5 = *(v2 + 16), v6 = *(v2 + 24), sub_1B92937F0(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        if (!*(v2 + 32) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6D0(), !v1))
        {
          v4 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  sub_1B8D64970();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 8);
  v8 = *(v0 + 8);
  sub_1B8D649C4();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(v0 + 24);
  if (!sub_1B8D92198(*(v1 + 16), *(v1 + 24), *(v0 + 16)) || *(v1 + 32) != *(v0 + 32))
  {
    return 0;
  }

  v11 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_76();
  sub_1B8CD2D98(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9291888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D98(&qword_1EBACA460, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9291908(uint64_t a1)
{
  v2 = sub_1B8CD2D98(&qword_1EBACA420, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9291978()
{
  sub_1B8CD2D98(&qword_1EBACA420, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B92919F8()
{
  result = MEMORY[0x1BFADC850](0x6E6F69746365532ELL, 0xE800000000000000);
  qword_1EBACA2C8 = 0xD000000000000031;
  unk_1EBACA2D0 = 0x80000001B9714AA0;
  return result;
}

uint64_t sub_1B9291A84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA2D8);
  __swift_project_value_buffer(v0, qword_1EBACA2D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "result_identifiers";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "context_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "status_code";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.decodeMessage<A>(decoder:)()
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
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B9291D38();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      if (!*(v2 + 24) || (v8 = *(v2 + 24), v9 = *(v2 + 32), sub_1B9293844(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        v7 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v0 + 32);
  if (!sub_1B8D92198(*(v1 + 24), *(v1 + 32), *(v0 + 24)))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_76();
  sub_1B8CD2D98(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9291FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D98(&qword_1EBACA458, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9292034(uint64_t a1)
{
  v2 = sub_1B8CD2D98(&qword_1ED9C9560, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92920A4()
{
  sub_1B8CD2D98(&qword_1ED9C9560, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section);

  return sub_1B964C5D0();
}

uint64_t sub_1B929213C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA2F0);
  __swift_project_value_buffer(v0, qword_1EBACA2F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B96511B0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "identifier";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "query";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "feedback";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "max_age_seconds";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v16 = *MEMORY[0x1E69AADE8];
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "normalized_topic";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "bundle_id";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 21;
  *v22 = "template";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.decodeMessage<A>(decoder:)()
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
      case 2:
      case 3:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        continue;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B9292588();
        break;
      default:
        if (result == 21)
        {
          OUTLINED_FUNCTION_9();
          sub_1B929263C();
        }

        break;
    }
  }
}

uint64_t sub_1B9292588()
{
  v0 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(0) + 44);
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  sub_1B8CD2D98(&qword_1ED9CA6D8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic);
  return sub_1B964C580();
}

uint64_t sub_1B929263C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(0) + 48);
  type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(0);
  sub_1B8CD2D98(qword_1ED9CA598, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template);
  return sub_1B964C580();
}

void Apple_Parsec_Spotlight_V1alpha_Result.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA338, &unk_1B96B2710);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v48 - v9;
  v10 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(0);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F78, &unk_1B964D770);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_159();
  v21 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v51 = v26 - v25;
  v27 = *v0;
  v28 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v29 || (OUTLINED_FUNCTION_49_1(), sub_1B964C700(), (v3 = v1) == 0))
  {
    v30 = v0[2];
    v31 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v32 || (OUTLINED_FUNCTION_49_1(), sub_1B964C700(), (v3 = v1) == 0))
    {
      v33 = v0[4];
      v34 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v35 || (OUTLINED_FUNCTION_49_1(), sub_1B964C700(), (v3 = v1) == 0))
      {
        v49 = v10;
        v50 = v16;
        if (sub_1B8D99EA8(v0[6], v0[7]) || (v1 = v3, sub_1B964C6A0(), !v3))
        {
          v36 = v50;
          if (!*(v0 + 16) || (OUTLINED_FUNCTION_80_6(), sub_1B964C6C0(), !v1))
          {
            v37 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(0);
            v38 = v37[11];
            sub_1B8D92024();
            v39 = OUTLINED_FUNCTION_443();
            if (__swift_getEnumTagSinglePayload(v39, v40, v21) == 1)
            {
              sub_1B8D9207C(v2, &qword_1EBAB8F78, &unk_1B964D770);
            }

            else
            {
              v48 = v37;
              v50 = v36;
              OUTLINED_FUNCTION_1_64();
              sub_1B9289920();
              OUTLINED_FUNCTION_55_9();
              sub_1B8CD2D98(v41, v42);
              OUTLINED_FUNCTION_80_6();
              sub_1B964C740();
              OUTLINED_FUNCTION_6_29();
              sub_1B9289B14();
              if (v1)
              {
                goto LABEL_22;
              }

              v37 = v48;
            }

            v43 = v4[9];
            v44 = v4[10];
            OUTLINED_FUNCTION_1();
            if (!v45 || (OUTLINED_FUNCTION_80_6(), sub_1B964C700(), !v1))
            {
              v46 = v37[12];
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v52, 1, v49) == 1)
              {
                sub_1B8D9207C(v52, &qword_1EBACA338, &unk_1B96B2710);
LABEL_21:
                v47 = v4 + v37[10];
                OUTLINED_FUNCTION_186();
                sub_1B964C290();
                goto LABEL_22;
              }

              v48 = v37;
              OUTLINED_FUNCTION_4_41();
              sub_1B9289920();
              sub_1B8CD2D98(qword_1ED9CA598, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template);
              OUTLINED_FUNCTION_80_6();
              sub_1B964C740();
              OUTLINED_FUNCTION_20_11();
              sub_1B9289B14();
              if (!v1)
              {
                v37 = v48;
                goto LABEL_21;
              }
            }
          }
        }
      }
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Spotlight_V1alpha_Result.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v65 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA338, &unk_1B96B2710);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA380, &qword_1B96B2730);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_22_3();
  v20 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(v19);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F78, &unk_1B964D770);
  OUTLINED_FUNCTION_183(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_192_4();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F80, &unk_1B96B2720);
  OUTLINED_FUNCTION_59_1(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_159();
  v32 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v33 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v33 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v34 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v34 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](*(v1 + 48), *(v1 + 56), *(v0 + 48), *(v0 + 56)) & 1) == 0 || *(v1 + 64) != *(v0 + 64))
  {
    goto LABEL_45;
  }

  v64 = v2;
  v63 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result(0);
  v35 = *(v63 + 44);
  v36 = *(v28 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v37 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v37, v38, v20);
  if (v32)
  {
    OUTLINED_FUNCTION_178(v3 + v36, 1, v20);
    if (v32)
    {
      sub_1B8D9207C(v3, &qword_1EBAB8F78, &unk_1B964D770);
      goto LABEL_28;
    }

LABEL_26:
    v40 = &qword_1EBAB8F80;
    v41 = &unk_1B96B2720;
    v42 = v3;
LABEL_44:
    sub_1B8D9207C(v42, v40, v41);
LABEL_45:
    v54 = 0;
    goto LABEL_46;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v3 + v36, 1, v20);
  if (v39)
  {
    OUTLINED_FUNCTION_6_29();
    sub_1B9289B14();
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_1_64();
  sub_1B9289920();
  static Apple_Parsec_Spotlight_V1alpha_Topic.== infix(_:_:)();
  v44 = v43;
  sub_1B9289B14();
  sub_1B9289B14();
  sub_1B8D9207C(v3, &qword_1EBAB8F78, &unk_1B964D770);
  if ((v44 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_28:
  v45 = *(v1 + 72) == *(v0 + 72) && *(v1 + 80) == *(v0 + 80);
  if (!v45 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v46 = v63;
  v47 = *(v63 + 48);
  v48 = *(v15 + 48);
  v49 = v64;
  sub_1B8D92024();
  v50 = v49;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v49);
  if (v32)
  {
    OUTLINED_FUNCTION_37_0(v49 + v48);
    if (v32)
    {
      sub_1B8D9207C(v49, &qword_1EBACA338, &unk_1B96B2710);
      goto LABEL_38;
    }

    goto LABEL_42;
  }

  v55 = v66;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v50 + v48);
  if (v56)
  {
    OUTLINED_FUNCTION_20_11();
    sub_1B9289B14();
LABEL_42:
    v40 = &qword_1EBACA380;
    v41 = &qword_1B96B2730;
LABEL_43:
    v42 = v50;
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_4_41();
  v57 = v65;
  sub_1B9289920();
  if ((MEMORY[0x1BFADC060](*v55, v55[1], *v57, v57[1]) & 1) == 0)
  {
    sub_1B9289B14();
    sub_1B9289B14();
    v40 = &qword_1EBACA338;
    v41 = &unk_1B96B2710;
    goto LABEL_43;
  }

  v58 = v50;
  v59 = *(v4 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_76();
  sub_1B8CD2D98(v60, v61);
  v62 = sub_1B964C850();
  sub_1B9289B14();
  sub_1B9289B14();
  sub_1B8D9207C(v58, &qword_1EBACA338, &unk_1B96B2710);
  if ((v62 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_38:
  v51 = *(v46 + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_76();
  sub_1B8CD2D98(v52, v53);
  v54 = OUTLINED_FUNCTION_199_0();
LABEL_46:
  OUTLINED_FUNCTION_264(v54);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9293178(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D98(&qword_1EBACA450, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92931F8(uint64_t a1)
{
  v2 = sub_1B8CD2D98(&qword_1ED9CA570, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9293268()
{
  sub_1B8CD2D98(&qword_1ED9CA570, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result);

  return sub_1B964C5D0();
}

uint64_t sub_1B92932E8()
{
  result = MEMORY[0x1BFADC850](0x74616C706D65542ELL, 0xE900000000000065);
  qword_1EBACA308 = 0xD000000000000025;
  unk_1EBACA310 = 0x80000001B9714AE0;
  return result;
}

uint64_t Apple_Parsec_Spotlight_V1alpha_Result.Template.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      v5 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_11_5();
      result = sub_1B964C6A0();
      if (!v1)
      {
LABEL_8:
        v7 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(0) + 20);
        return OUTLINED_FUNCTION_8_1();
      }

      return result;
  }
}

uint64_t static Apple_Parsec_Spotlight_V1alpha_Result.Template.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((MEMORY[0x1BFADC060](*v2, *(v1 + 8), *v0, v0[1]) & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_76();
  sub_1B8CD2D98(v4, v5);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9293570()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2D98(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B929362C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D98(&qword_1EBACA448, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92936AC(uint64_t a1)
{
  v2 = sub_1B8CD2D98(qword_1ED9CA598, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B929371C()
{
  sub_1B8CD2D98(qword_1ED9CA598, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template);

  return sub_1B964C5D0();
}

unint64_t sub_1B929379C()
{
  result = qword_1ED9CA280;
  if (!qword_1ED9CA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA280);
  }

  return result;
}

unint64_t sub_1B92937F0()
{
  result = qword_1ED9CA1E8;
  if (!qword_1ED9CA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA1E8);
  }

  return result;
}

unint64_t sub_1B9293844()
{
  result = qword_1ED9C9848;
  if (!qword_1ED9C9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C9848);
  }

  return result;
}

unint64_t sub_1B929389C()
{
  result = qword_1ED9CA278;
  if (!qword_1ED9CA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA278);
  }

  return result;
}

unint64_t sub_1B92938F4()
{
  result = qword_1ED9CA268;
  if (!qword_1ED9CA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA268);
  }

  return result;
}

unint64_t sub_1B929394C()
{
  result = qword_1ED9CA270;
  if (!qword_1ED9CA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA270);
  }

  return result;
}

unint64_t sub_1B92939D4()
{
  result = qword_1ED9C9840;
  if (!qword_1ED9C9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C9840);
  }

  return result;
}

unint64_t sub_1B9293A2C()
{
  result = qword_1ED9C9830;
  if (!qword_1ED9C9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C9830);
  }

  return result;
}

unint64_t sub_1B9293A84()
{
  result = qword_1ED9C9838;
  if (!qword_1ED9C9838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9C9838);
  }

  return result;
}

unint64_t sub_1B9293B0C()
{
  result = qword_1ED9CA1E0;
  if (!qword_1ED9CA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA1E0);
  }

  return result;
}

unint64_t sub_1B9293B64()
{
  result = qword_1ED9CA1D0;
  if (!qword_1ED9CA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA1D0);
  }

  return result;
}

unint64_t sub_1B9293BBC()
{
  result = qword_1ED9CA1D8;
  if (!qword_1ED9CA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA1D8);
  }

  return result;
}

void sub_1B9294790()
{
  sub_1B8CD12E0(319, &qword_1EBAB3B10, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_TopicContext, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B8CD12E0(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B92948B4()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8CD12E0(319, &qword_1ED9CA6B8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_45_13(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 40) = *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic(0) + 28);

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_110_7()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_116_5()
{

  return sub_1B9289920();
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.topic.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.topic.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.channel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.channel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.payload.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = v1 + *(type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(v2) + 24);

  return sub_1B9294EEC(v0, v3);
}

uint64_t sub_1B9294EEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA4C8, &qword_1B96B3C80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*Apple_Parsec_Type_Aps_Messsage_PushMessage.payload.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(v0) + 24);
  return nullsub_1;
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.flightStatusUpdate.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA4C8, &qword_1B96B3C80);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(0);
  sub_1B8DD9078(v1 + *(v9 + 24), v8, &qword_1EBACA4C8, &qword_1B96B3C80);
  v10 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBACA4C8, &qword_1B96B3C80);
    *a1 = MEMORY[0x1E69E7CC0];
    v11 = a1 + *(type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate() + 20);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_77();
    return sub_1B929678C();
  }
}

uint64_t sub_1B92950CC()
{
  v0 = type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B9295734();
  return Apple_Parsec_Type_Aps_Messsage_PushMessage.flightStatusUpdate.setter();
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.flightStatusUpdate.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(v1) + 24);
  sub_1B8D9207C(v0 + v2, &qword_1EBACA4C8, &qword_1B96B3C80);
  OUTLINED_FUNCTION_0_77();
  sub_1B929678C();
  v3 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload(0);

  return __swift_storeEnumTagSinglePayload(v0 + v2, 0, 1, v3);
}

void (*Apple_Parsec_Type_Aps_Messsage_PushMessage.flightStatusUpdate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA4C8, &qword_1B96B3C80);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[3] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(0) + 24);
  *(v3 + 10) = v11;
  sub_1B8DD9078(v1 + v11, v6, &qword_1EBACA4C8, &qword_1B96B3C80);
  v12 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload(0);
  v3[4] = v12;
  if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBACA4C8, &qword_1B96B3C80);
    *v10 = MEMORY[0x1E69E7CC0];
    v13 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_77();
    sub_1B929678C();
  }

  return sub_1B929535C;
}

void sub_1B929535C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = *(*a1 + 10);
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    v9 = (*a1)[3];
    sub_1B9295734();
    sub_1B8D9207C(v8 + v5, &qword_1EBACA4C8, &qword_1B96B3C80);
    sub_1B929678C();
    OUTLINED_FUNCTION_43_1();
    OUTLINED_FUNCTION_2_48();
    sub_1B9295460();
  }

  else
  {
    sub_1B8D9207C(v8 + v5, &qword_1EBACA4C8, &qword_1B96B3C80);
    OUTLINED_FUNCTION_0_77();
    sub_1B929678C();
    OUTLINED_FUNCTION_43_1();
  }

  free(v3);
  free(v7);
  free(v6);

  free(v2);
}

uint64_t sub_1B9295460()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(0) + 28);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(v2) + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Type_Aps_Messsage_PushMessage.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(v0) + 28);
  return nullsub_1;
}

BOOL static Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload.== infix(_:_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA4D0, &qword_1B96B3C88);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - v5);
  v7 = (&v16 + *(v4 + 56) - v5);
  sub_1B9295734();
  sub_1B9295734();
  v8 = *v6;
  v9 = *v7;
  sub_1B8D64C24();
  v14 = 0;
  if (v10)
  {
    v11 = *(type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate() + 20);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_3_50();
    sub_1B8CD2DE0(v12, v13);
    if (sub_1B964C850())
    {
      v14 = 1;
    }
  }

  sub_1B9295460();
  sub_1B9295460();
  return v14;
}

uint64_t sub_1B9295734()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(0);
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9295814()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA4B0);
  __swift_project_value_buffer(v0, qword_1EBACA4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "channel";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "flightStatusUpdate";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Type_Aps_Messsage_PushMessage._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7C68 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACA4B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v8 = OUTLINED_FUNCTION_432();
      sub_1B9295B58(v8, v9, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B9295B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA4C8, &qword_1B96B3C80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA530, &unk_1B96B3E90);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - v21;
  __swift_storeEnumTagSinglePayload(&v30 - v21, 1, 1, v5);
  v23 = *(type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(0) + 24);
  v33 = a1;
  v31 = v23;
  sub_1B8DD9078(a1 + v23, v12, &qword_1EBACA4C8, &qword_1B96B3C80);
  v32 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBACA4C8, &qword_1B96B3C80);
  }

  else
  {
    sub_1B929678C();
    sub_1B929678C();
    sub_1B8D9207C(v22, &qword_1EBACA530, &unk_1B96B3E90);
    sub_1B929678C();
    sub_1B929678C();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_1B8CD2DE0(&qword_1EBAC2150, type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate);
  v25 = v35;
  sub_1B964C580();
  if (v25)
  {
    v26 = v22;
    return sub_1B8D9207C(v26, &qword_1EBACA530, &unk_1B96B3E90);
  }

  sub_1B8DD9078(v22, v20, &qword_1EBACA530, &unk_1B96B3E90);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACA530, &unk_1B96B3E90);
    v26 = v20;
    return sub_1B8D9207C(v26, &qword_1EBACA530, &unk_1B96B3E90);
  }

  sub_1B929678C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v22, &qword_1EBACA530, &unk_1B96B3E90);
  v28 = v33;
  v29 = v31;
  sub_1B8D9207C(v33 + v31, &qword_1EBACA4C8, &qword_1B96B3C80);
  sub_1B929678C();
  return __swift_storeEnumTagSinglePayload(v28 + v29, 0, 1, v32);
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA4C8, &qword_1B96B3C80);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate();
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
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
      v21 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(0);
      sub_1B8DD9078(v3 + *(v21 + 24), v9, &qword_1EBACA4C8, &qword_1B96B3C80);
      v22 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload(0);
      if (__swift_getEnumTagSinglePayload(v9, 1, v22) == 1)
      {
        sub_1B8D9207C(v9, &qword_1EBACA4C8, &qword_1B96B3C80);
      }

      else
      {
        v25 = v21;
        OUTLINED_FUNCTION_0_77();
        sub_1B929678C();
        sub_1B8CD2DE0(&qword_1EBAC2150, type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate);
        sub_1B964C740();
        OUTLINED_FUNCTION_2_48();
        result = sub_1B9295460();
        if (v2)
        {
          return result;
        }

        v21 = v25;
      }

      v23 = v3 + *(v21 + 28);
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Type_Aps_Messsage_PushMessage.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_280();
  v3 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload(v2);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA4C8, &qword_1B96B3C80);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA4D8, &qword_1B96B3C90);
  OUTLINED_FUNCTION_59_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = *v1 == *v0 && v1[1] == v0[1];
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_20;
  }

  v20 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_20;
  }

  v31 = type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(0);
  v21 = *(v31 + 24);
  v22 = *(v13 + 48);
  sub_1B8DD9078(v1 + v21, v18, &qword_1EBACA4C8, &qword_1B96B3C80);
  sub_1B8DD9078(v0 + v21, &v18[v22], &qword_1EBACA4C8, &qword_1B96B3C80);
  OUTLINED_FUNCTION_50(v18);
  if (v19)
  {
    OUTLINED_FUNCTION_50(&v18[v22]);
    if (v19)
    {
      sub_1B8D9207C(v18, &qword_1EBACA4C8, &qword_1B96B3C80);
LABEL_22:
      v26 = *(v31 + 28);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_3_50();
      sub_1B8CD2DE0(v27, v28);
      v24 = sub_1B964C850();
      return v24 & 1;
    }

    goto LABEL_19;
  }

  sub_1B8DD9078(v18, v12, &qword_1EBACA4C8, &qword_1B96B3C80);
  OUTLINED_FUNCTION_50(&v18[v22]);
  if (v23)
  {
    sub_1B9295460();
LABEL_19:
    sub_1B8D9207C(v18, &qword_1EBACA4D8, &qword_1B96B3C90);
    goto LABEL_20;
  }

  sub_1B929678C();
  v25 = static Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload.== infix(_:_:)();
  sub_1B9295460();
  sub_1B9295460();
  sub_1B8D9207C(v18, &qword_1EBACA4C8, &qword_1B96B3C80);
  if (v25)
  {
    goto LABEL_22;
  }

LABEL_20:
  v24 = 0;
  return v24 & 1;
}

uint64_t Apple_Parsec_Type_Aps_Messsage_PushMessage.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage(0);
  sub_1B8CD2DE0(&qword_1EBACA4E0, type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B929661C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2DE0(&qword_1EBACA528, type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B929669C(uint64_t a1)
{
  v2 = sub_1B8CD2DE0(&qword_1EBACA4F0, type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B929670C()
{
  sub_1B8CD2DE0(&qword_1EBACA4F0, type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage);

  return sub_1B964C5D0();
}

uint64_t sub_1B929678C()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

void sub_1B9296928()
{
  sub_1B92969BC();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92969BC()
{
  if (!qword_1EBACA510)
  {
    type metadata accessor for Apple_Parsec_Type_Aps_Messsage_PushMessage.OneOf_Payload(255);
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBACA510);
    }
  }
}

uint64_t sub_1B9296A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate();

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1B8D1CB30);
}

uint64_t sub_1B9296A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate();

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1B8D1CBA8);
}

uint64_t sub_1B9296AD4(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Flights_Pubsub_V1alpha_FlightStatusUpdate();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t Apple_Parsec_Visualsearch_V2_BoundingBox.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Apple_Parsec_Visualsearch_V2_BoundingBox.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_BoundingBox.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox() + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox()
{
  result = qword_1ED9EC628;
  if (!qword_1ED9EC628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_BoundingBox.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox() + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Parsec_Visualsearch_V2_BoundingBox.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox() + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9296EF4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA538);
  __swift_project_value_buffer(v0, qword_1EBACA538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B964EE70;
  v4 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v4 = "x";
  *(v4 + 8) = 1;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v16 + v3 + v2 + v1[14];
  *(v16 + v3 + v2) = 2;
  *v8 = "y";
  *(v8 + 8) = 1;
  *(v8 + 16) = 2;
  v7();
  v9 = (v16 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "width";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v16 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "height";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v16 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "identifier";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Visualsearch_V2_BoundingBox._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7C70 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACA538);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Visualsearch_V2_BoundingBox.decodeMessage<A>(decoder:)()
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
      case 3:
      case 4:
        sub_1B964C490();
        break;
      case 5:
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Visualsearch_V2_BoundingBox.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*v0 == 0.0 || (result = OUTLINED_FUNCTION_23_3(), (v2 = v1) == 0))
  {
    if (*(v0 + 4) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), (v2 = v1) == 0))
    {
      if (*(v0 + 8) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), (v2 = v1) == 0))
      {
        if (*(v0 + 12) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), (v2 = v1) == 0))
        {
          v3 = *(v0 + 24);
          v4 = HIBYTE(v3) & 0xF;
          if ((v3 & 0x2000000000000000) == 0)
          {
            v4 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
          }

          if (!v4 || (result = sub_1B964C700(), !v2))
          {
            v6 = v0 + *(type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox() + 36);
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Visualsearch_V2_BoundingBox.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v2 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox() + 36);
  sub_1B964C2B0();
  sub_1B8CD2E28(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Apple_Parsec_Visualsearch_V2_BoundingBox.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  sub_1B8CD2E28(&qword_1EBACA550, type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92975CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2E28(&qword_1EBACA570, type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B929764C(uint64_t a1)
{
  v2 = sub_1B8CD2E28(&qword_1EBACA560, type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92976BC()
{
  sub_1B8CD2E28(&qword_1EBACA560, type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualQueryLite.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  v3 = a1 + Lite[5];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = Lite[6];
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = Lite[7];
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0);
  v10 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualQueryLite.imageBytes.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualQueryLite.imageBytes.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualQueryLite.imageMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(v9);
  OUTLINED_FUNCTION_32_11(*(Lite + 24));
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(0);
  OUTLINED_FUNCTION_57(v1);
  if (v11)
  {
    Apple_Parsec_Visualsearch_V2_ImageMetadata.init()(a1);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBACA6F8, &qword_1B96B4060);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_182();
    return sub_1B9297F98();
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualQueryLite.imageMetadata.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(v1);
  sub_1B8D9207C(v0 + *(Lite + 24), &qword_1EBACA6F8, &qword_1B96B4060);
  OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_98_7();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  v2 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(0);
  v3 = a1 + *(v2 + 44);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 48);
  type metadata accessor for Locationpb_Point(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Visualsearch_V2_VisualQueryLite.imageMetadata.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(v14);
  OUTLINED_FUNCTION_16_4(*(Lite + 24));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0xE000000000000000;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0xE000000000000000;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0xE000000000000000;
    *(v10 + 72) = 0;
    v17 = v10 + *(v8 + 44);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v8 + 48);
    type metadata accessor for Locationpb_Point(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACA6F8, &qword_1B96B4060);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_246();
    sub_1B9297F98();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualQueryLite.visualInfo.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_31_2();
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(v10);
  OUTLINED_FUNCTION_28_2(v2 + *(Lite + 28), v1);
  v12 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0);
  OUTLINED_FUNCTION_57(v1);
  if (v13)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v14 = a1 + *(v12 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v12 + 24);
    type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v13)
    {
      return sub_1B8D9207C(v1, &qword_1EBACA700, &unk_1B96B4068);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_12();
    return sub_1B9297F98();
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualQueryLite.visualInfo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(v1);
  sub_1B8D9207C(v0 + *(Lite + 28), &qword_1EBACA700, &unk_1B96B4068);
  OUTLINED_FUNCTION_20_12();
  OUTLINED_FUNCTION_98_7();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0);
  v3 = a1 + *(v2 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 24);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1B9297F98()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

void Apple_Parsec_Visualsearch_V2_VisualQueryLite.visualInfo.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(v14);
  OUTLINED_FUNCTION_16_4(*(Lite + 28));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v17 = v10 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v8 + 24);
    type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACA700, &unk_1B96B4068);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_12();
    OUTLINED_FUNCTION_246();
    sub_1B9297F98();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B929814C()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B92981A0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualQueryLite.hasVisualInfo.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(v6);
  OUTLINED_FUNCTION_23_2(*(Lite + 28));
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Visualsearch_V2_VisualQueryLite.clearVisualInfo()()
{
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  sub_1B8D9207C(v0 + *(Lite + 28), &qword_1EBACA700, &unk_1B96B4068);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualQueryLite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.imageGeolocation.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_31_2();
  v11 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v10);
  OUTLINED_FUNCTION_28_2(v2 + *(v11 + 48), v1);
  v12 = type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_57(v1);
  if (v13)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xE000000000000000;
    v14 = a1 + *(v12 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v12 + 36);
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v13)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_21();
    return sub_1B9297F98();
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.imageGeolocation.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_19_21();
  OUTLINED_FUNCTION_98_7();
  type metadata accessor for Locationpb_Point(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Visualsearch_V2_ImageMetadata.imageGeolocation.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_1(v6);
  v8 = type metadata accessor for Locationpb_Point(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v14);
  OUTLINED_FUNCTION_16_4(*(v15 + 48));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    v17 = v10 + *(v8 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v8 + 36);
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_21();
    OUTLINED_FUNCTION_246();
    sub_1B9297F98();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.hasImageGeolocation.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v6);
  OUTLINED_FUNCTION_23_2(*(v7 + 48));
  v8 = type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Visualsearch_V2_ImageMetadata.clearImageGeolocation()()
{
  v1 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(0);
  sub_1B8D9207C(v0 + *(v1 + 48), &qword_1EBAB9280, &qword_1B96535F0);
  type metadata accessor for Locationpb_Point(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Apple_Parsec_Visualsearch_V2_ImageMetadata.imageType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.imageType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.imageURL.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.imageURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.webPageURL.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.webPageURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.originatingAppBundleID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.originatingAppBundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v0) + 44);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v0) + 44);
  return OUTLINED_FUNCTION_25();
}

void Apple_Parsec_Visualsearch_V2_ImageMetadata.ImageType.init(rawValue:)(uint64_t *a1@<X8>, unint64_t a2@<X0>)
{
  v2 = 4;
  if (a2 != 5)
  {
    v2 = a2;
  }

  if (a2 < 4)
  {
    v2 = a2;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_7_3(a1);
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.ImageType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B96B5758[result];
  }

  return result;
}

uint64_t sub_1B9298AA8@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Visualsearch_V2_ImageMetadata.ImageType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9298ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929D4D4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Apple_Parsec_Visualsearch_V2_ImageMetadata.ImageType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B9298BE8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Visualsearch_V2_ImageMetadata.ImageType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualInfo.ocrData.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(v9);
  OUTLINED_FUNCTION_32_11(*(v10 + 24));
  v11 = type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v13 = a1 + *(v11 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBACA708, &qword_1B96B4078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_26();
    OUTLINED_FUNCTION_182();
    return sub_1B9297F98();
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualInfo.ocrData.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBACA708, &qword_1B96B4078);
  OUTLINED_FUNCTION_9_26();
  OUTLINED_FUNCTION_98_7();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Visualsearch_V2_OCRData.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Visualsearch_V2_VisualInfo.ocrData.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(v14);
  OUTLINED_FUNCTION_19_11(*(v15 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v17 = v10 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACA708, &qword_1B96B4078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_26();
    OUTLINED_FUNCTION_461();
    sub_1B9297F98();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9298F3C()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = *(v1(0) + 24);
  OUTLINED_FUNCTION_24_3();
  sub_1B8DD9078(v10, v11, v12, v13);
  v14 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v14);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v17, v18, v19);
  return v16;
}

uint64_t sub_1B929902C()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 24), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1B92990C0()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9299148()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionInfo.boundingBox.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(v7);
  OUTLINED_FUNCTION_32_11(*(v8 + 36));
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  OUTLINED_FUNCTION_57(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_103_4();
    result = OUTLINED_FUNCTION_57(v0);
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8F48, &unk_1B964D740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_182();
    return sub_1B9297F98();
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionInfo.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB8F48, &unk_1B964D740);
  OUTLINED_FUNCTION_1_65();
  OUTLINED_FUNCTION_98_7();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Visualsearch_V2_RegionInfo.boundingBox.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_85(v6);
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_100_6();
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8F48, &unk_1B964D740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_461();
    sub_1B9297F98();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionInfo.hasBoundingBox.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(v6);
  OUTLINED_FUNCTION_23_2(*(v7 + 36));
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Visualsearch_V2_RegionInfo.clearBoundingBox()()
{
  v1 = type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAB8F48, &unk_1B964D740);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionInfo.predictedLabels.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionInfo.barcodes.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionInfo.visualTokens.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionInfo.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  v3 = type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(0);
  v4 = a1 + *(v3 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 36);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  v6 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Visualsearch_V2_PredictedLabels.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9299904()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B92999AC()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Visualsearch_V2_PredictedLabels.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageEmbedding.field3.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageEmbedding.field3.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageEmbedding.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageEmbedding(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageEmbedding.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = xmmword_1B9652FE0;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageEmbedding(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Visualsearch_V2_OCRData.textAnnotations.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_OCRData.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_TextAnnotation.boundingBox.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation(v7);
  OUTLINED_FUNCTION_32_11(*(v8 + 32));
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  OUTLINED_FUNCTION_57(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_103_4();
    result = OUTLINED_FUNCTION_57(v0);
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8F48, &unk_1B964D740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_182();
    return sub_1B9297F98();
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_TextAnnotation.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB8F48, &unk_1B964D740);
  OUTLINED_FUNCTION_1_65();
  OUTLINED_FUNCTION_98_7();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Visualsearch_V2_TextAnnotation.boundingBox.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_85(v6);
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  v13 = type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation(v12);
  OUTLINED_FUNCTION_19_11(*(v13 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    OUTLINED_FUNCTION_100_6();
    OUTLINED_FUNCTION_16_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8F48, &unk_1B964D740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_461();
    sub_1B9297F98();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Visualsearch_V2_TextAnnotation.hasBoundingBox.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation(v6);
  OUTLINED_FUNCTION_23_2(*(v7 + 32));
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Visualsearch_V2_TextAnnotation.clearBoundingBox()()
{
  v1 = type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB8F48, &unk_1B964D740);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B929A0D8()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B929A160()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Visualsearch_V2_TextAnnotation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_TextAnnotation.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  v3 = type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation(0);
  v4 = v1 + *(v3 + 28);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 32);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  v6 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.gtin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode(v9);
  OUTLINED_FUNCTION_32_11(*(v10 + 20));
  v11 = type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8F58, &qword_1B964D750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_33();
    OUTLINED_FUNCTION_182();
    return sub_1B9297F98();
  }

  return result;
}

uint64_t sub_1B929A35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_208();
  sub_1B929814C();
  return a7(v7);
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.gtin.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAB8F58, &qword_1B964D750);
  OUTLINED_FUNCTION_7_33();
  OUTLINED_FUNCTION_98_7();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.Gtin.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Visualsearch_V2_Barcode.gtin.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode(v14);
  OUTLINED_FUNCTION_19_11(*(v15 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    v17 = v10 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8F58, &qword_1B964D750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_33();
    OUTLINED_FUNCTION_461();
    sub_1B9297F98();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B929A628()
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
    sub_1B929814C();
    sub_1B8D9207C(v10 + v5, v4, v3);
    sub_1B9297F98();
    OUTLINED_FUNCTION_187_1();
    sub_1B92981A0();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v1, v2);
    sub_1B9297F98();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.hasGtin.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode(v6);
  OUTLINED_FUNCTION_23_2(*(v7 + 20));
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Apple_Parsec_Visualsearch_V2_Barcode.clearGtin()()
{
  v1 = type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAB8F58, &qword_1B964D750);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t sub_1B929A8F0@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Visualsearch_V2_Barcode.GtinType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B929A924(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92A1E3C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.Gtin.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.Gtin.value.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void Apple_Parsec_Visualsearch_V2_Barcode.Gtin.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.Gtin.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.Gtin.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode(0) + 20);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t (*static Apple_Parsec_Visualsearch_V2_Barcode.GtinType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B929AB88@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Visualsearch_V2_Barcode.GtinType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualTokens.embeddingModelUrn.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualTokens.embeddingModelUrn.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualTokens.tokenTerms.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualTokens.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualTokens.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = MEMORY[0x1E69E7CC0];
  v3 = v1 + *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B929AD80()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA588);
  __swift_project_value_buffer(v0, qword_1EBACA588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "image_bytes";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_metadata";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "visual_info";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualQueryLite.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B929B0DC();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B929B028();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
    }
  }

  return result;
}

uint64_t sub_1B929B028()
{
  v0 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0) + 24);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(0);
  sub_1B929B520(&qword_1EBACA718, type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata);
  return sub_1B964C580();
}

uint64_t sub_1B929B0DC()
{
  v0 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0) + 28);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0);
  sub_1B929B520(&qword_1EBACA710, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo);
  return sub_1B964C580();
}

void Apple_Parsec_Visualsearch_V2_VisualQueryLite.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_587_0(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA700, &unk_1B96B4068);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_104(v10, v29);
  v31 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0);
  v11 = OUTLINED_FUNCTION_59_1(v31);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA6F8, &qword_1B96B4060);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_92_10();
  v19 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v18);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  if (sub_1B8D99EA8(*v1, *(v1 + 8)) || (sub_1B964C6A0(), !v0))
  {
    Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
    v23 = v1;
    sub_1B8DD9078(v1 + Lite[6], v2, &qword_1EBACA6F8, &qword_1B96B4060);
    OUTLINED_FUNCTION_178(v2, 1, v19);
    if (v24)
    {
      sub_1B8D9207C(v2, &qword_1EBACA6F8, &qword_1B96B4060);
    }

    else
    {
      sub_1B9297F98();
      sub_1B929B520(&qword_1EBACA718, type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata);
      sub_1B964C740();
      sub_1B92981A0();
      if (v0)
      {
        goto LABEL_13;
      }

      v23 = v1;
    }

    sub_1B8DD9078(v23 + Lite[7], v30, &qword_1EBACA700, &unk_1B96B4068);
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v25, v26, v27);
    if (v24)
    {
      sub_1B8D9207C(v30, &qword_1EBACA700, &unk_1B96B4068);
LABEL_12:
      v28 = v23 + Lite[5];
      sub_1B964C290();
      goto LABEL_13;
    }

    sub_1B9297F98();
    sub_1B929B520(&qword_1EBACA710, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo);
    sub_1B964C740();
    sub_1B92981A0();
    if (!v0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B929B520(unint64_t *a1, void (*a2)(uint64_t))
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

void static Apple_Parsec_Visualsearch_V2_VisualQueryLite.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_280();
  v59 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(v5);
  v6 = OUTLINED_FUNCTION_59_1(v59);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA700, &unk_1B96B4068);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_104(v13, v55);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA720, &qword_1B96B4080);
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_22_3();
  v19 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v18);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA6F8, &qword_1B96B4060);
  OUTLINED_FUNCTION_183(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA728, &unk_1B96B4088);
  OUTLINED_FUNCTION_59_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_159();
  if ((MEMORY[0x1BFADC060](*v1, v1[1], *v0, v0[1]) & 1) == 0)
  {
    goto LABEL_22;
  }

  v55 = v3;
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  v60 = v0;
  v34 = v1;
  v56 = Lite;
  v57 = v1;
  v35 = *(Lite + 24);
  v36 = *(v29 + 48);
  sub_1B8DD9078(v34 + v35, v4, &qword_1EBACA6F8, &qword_1B96B4060);
  sub_1B8DD9078(v60 + v35, v4 + v36, &qword_1EBACA6F8, &qword_1B96B4060);
  v37 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v37, v38, v19);
  if (v39)
  {
    OUTLINED_FUNCTION_178(v4 + v36, 1, v19);
    if (v39)
    {
      sub_1B8D9207C(v4, &qword_1EBACA6F8, &qword_1B96B4060);
      goto LABEL_12;
    }

LABEL_10:
    v40 = &qword_1EBACA728;
    v41 = &unk_1B96B4088;
    v42 = v4;
LABEL_21:
    sub_1B8D9207C(v42, v40, v41);
    goto LABEL_22;
  }

  sub_1B8DD9078(v4, v28, &qword_1EBACA6F8, &qword_1B96B4060);
  OUTLINED_FUNCTION_178(v4 + v36, 1, v19);
  if (v39)
  {
    sub_1B92981A0();
    goto LABEL_10;
  }

  sub_1B9297F98();
  static Apple_Parsec_Visualsearch_V2_ImageMetadata.== infix(_:_:)();
  v44 = v43;
  sub_1B92981A0();
  OUTLINED_FUNCTION_236();
  sub_1B92981A0();
  sub_1B8D9207C(v4, &qword_1EBACA6F8, &qword_1B96B4060);
  if ((v44 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v45 = v56;
  v46 = *(v56 + 28);
  v47 = *(v14 + 48);
  OUTLINED_FUNCTION_28_2(v57 + v46, v2);
  OUTLINED_FUNCTION_28_2(v60 + v46, v2 + v47);
  OUTLINED_FUNCTION_178(v2, 1, v59);
  if (v39)
  {
    OUTLINED_FUNCTION_57(v2 + v47);
    if (v39)
    {
      sub_1B8D9207C(v2, &qword_1EBACA700, &unk_1B96B4068);
LABEL_25:
      v52 = *(v45 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_78();
      sub_1B929B520(v53, v54);
      v49 = sub_1B964C850();
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  sub_1B8DD9078(v2, v58, &qword_1EBACA700, &unk_1B96B4068);
  OUTLINED_FUNCTION_57(v2 + v47);
  if (v48)
  {
    sub_1B92981A0();
LABEL_20:
    v40 = &qword_1EBACA720;
    v41 = &qword_1B96B4080;
    v42 = v2;
    goto LABEL_21;
  }

  sub_1B9297F98();
  static Apple_Parsec_Visualsearch_V2_VisualInfo.== infix(_:_:)();
  v51 = v50;
  OUTLINED_FUNCTION_514();
  sub_1B92981A0();
  sub_1B92981A0();
  sub_1B8D9207C(v2, &qword_1EBACA700, &unk_1B96B4068);
  if (v51)
  {
    goto LABEL_25;
  }

LABEL_22:
  v49 = 0;
LABEL_23:
  OUTLINED_FUNCTION_264(v49);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B929BAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929B520(&qword_1EBACA958, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B929BB40(uint64_t a1)
{
  v2 = sub_1B929B520(&qword_1EBAC9620, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B929BBB0()
{
  sub_1B929B520(&qword_1EBAC9620, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite);

  return sub_1B964C5D0();
}

uint64_t sub_1B929BC48()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA5A0);
  __swift_project_value_buffer(v0, qword_1EBACA5A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_geolocation";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 6;
  *v10 = "image_geolocation_s2_cells";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "image_type";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "image_url";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "web_page_url";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "originating_app_bundle_id";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "image_geodirection";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "image_geolocation_error";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B929C084();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B929C138();
        break;
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4F0();
        break;
      case 7:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B929C084()
{
  v0 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(0) + 48);
  type metadata accessor for Locationpb_Point(0);
  sub_1B929B520(&qword_1EBABA448, type metadata accessor for Locationpb_Point);
  return sub_1B964C580();
}

void Apple_Parsec_Visualsearch_V2_ImageMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_587_0(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_159();
  v10 = type metadata accessor for Locationpb_Point(0);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v14 = OUTLINED_FUNCTION_140_1();
  v28 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(v14);
  OUTLINED_FUNCTION_118_7(*(v28 + 48));
  v15 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v15, v16, v10);
  if (v17)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9280, &qword_1B96535F0);
  }

  else
  {
    sub_1B9297F98();
    sub_1B929B520(&qword_1EBABA448, type metadata accessor for Locationpb_Point);
    OUTLINED_FUNCTION_39_4();
    sub_1B964C740();
    sub_1B92981A0();
    if (v1)
    {
      goto LABEL_21;
    }
  }

  if (!*(v0 + 8) || (v29 = *(v0 + 16), sub_1B929D4D4(), OUTLINED_FUNCTION_39_4(), sub_1B964C680(), !v1))
  {
    v18 = *(v0 + 24);
    v19 = *(v0 + 32);
    OUTLINED_FUNCTION_1();
    if (!v20 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
    {
      v21 = *(v0 + 40);
      v22 = *(v0 + 48);
      OUTLINED_FUNCTION_1();
      if (!v23 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
      {
        v24 = *(v0 + 56);
        v25 = *(v0 + 64);
        OUTLINED_FUNCTION_1();
        if (!v26 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
        {
          if (!*(*v0 + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), sub_1B964C660(), !v1))
          {
            if (*(v0 + 72) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), sub_1B964C6B0(), !v1))
            {
              if (*(v0 + 76) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), sub_1B964C6B0(), !v1))
              {
                v27 = *(v28 + 44);
                OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Visualsearch_V2_ImageMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_280();
  v6 = type metadata accessor for Locationpb_Point(v5);
  v7 = OUTLINED_FUNCTION_59_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_173();
  v14 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9288, &unk_1B964DA70) - 8);
  v15 = *(*v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_208();
  v28 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(0);
  v17 = *(v28 + 48);
  v18 = v14[14];
  OUTLINED_FUNCTION_65_7(v1 + v17, v3);
  OUTLINED_FUNCTION_65_7(v0 + v17, v3 + v18);
  OUTLINED_FUNCTION_50(v3);
  if (!v19)
  {
    sub_1B8DD9078(v3, v4, &qword_1EBAB9280, &qword_1B96535F0);
    OUTLINED_FUNCTION_50(v3 + v18);
    if (!v19)
    {
      sub_1B9297F98();
      v20 = static Locationpb_Point.== infix(_:_:)(v4, v2);
      OUTLINED_FUNCTION_1_0();
      sub_1B92981A0();
      sub_1B92981A0();
      sub_1B8D9207C(v3, &qword_1EBAB9280, &qword_1B96535F0);
      if (v20)
      {
        goto LABEL_11;
      }

LABEL_31:
      v27 = 0;
      goto LABEL_32;
    }

    sub_1B92981A0();
LABEL_9:
    sub_1B8D9207C(v3, &qword_1EBAB9288, &unk_1B964DA70);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_50(v3 + v18);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v3, &qword_1EBAB9280, &qword_1B96535F0);
LABEL_11:
  if ((sub_1B8D921A4(*v1, *v0) & 1) == 0 || !sub_1B8D58158(*(v1 + 8), *(v1 + 16), *(v0 + 8), *(v0 + 16)))
  {
    goto LABEL_31;
  }

  v21 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v21 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_31;
  }

  v22 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_31;
  }

  v23 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v23 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 72) != *(v0 + 72) || *(v1 + 76) != *(v0 + 76))
  {
    goto LABEL_31;
  }

  v24 = *(v28 + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_78();
  sub_1B929B520(v25, v26);
  v27 = OUTLINED_FUNCTION_634();
LABEL_32:
  OUTLINED_FUNCTION_264(v27);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B929C800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929B520(&qword_1EBACA950, type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B929C880(uint64_t a1)
{
  v2 = sub_1B929B520(&qword_1EBACA718, type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B929C8F0()
{
  sub_1B929B520(&qword_1EBACA718, type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B929C970()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA5B8);
  __swift_project_value_buffer(v0, qword_1EBACA5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SCREENSHOT";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_FRAME";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CAMERA_FRAME";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CAMERA_STILL";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B929CC2C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA5D0);
  __swift_project_value_buffer(v0, qword_1EBACA5D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "region_infos";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ocr_data";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Visualsearch_V2_VisualInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B929CEC8();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B929F8F0();
    }
  }
}

uint64_t sub_1B929CEC8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0) + 24);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(0);
  sub_1B929B520(&qword_1EBACA750, type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData);
  return sub_1B964C580();
}

void Apple_Parsec_Visualsearch_V2_VisualInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA708, &qword_1B96B4078);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_159();
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(0);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(0), sub_1B929B520(&qword_1EBACA748, type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo), OUTLINED_FUNCTION_231(), sub_1B964C730(), !v1))
  {
    v11 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0);
    sub_1B8DD9078(v0 + *(v11 + 24), v2, &qword_1EBACA708, &qword_1B96B4078);
    v12 = OUTLINED_FUNCTION_443();
    OUTLINED_FUNCTION_178(v12, v13, v7);
    if (v14)
    {
      sub_1B8D9207C(v2, &qword_1EBACA708, &qword_1B96B4078);
LABEL_7:
      v15 = v0 + *(v11 + 20);
      sub_1B964C290();
      goto LABEL_8;
    }

    sub_1B9297F98();
    sub_1B929B520(&qword_1EBACA750, type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData);
    sub_1B964C740();
    sub_1B92981A0();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Visualsearch_V2_VisualInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v5 = type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA708, &qword_1B96B4078);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA758, &qword_1B96B4098);
  OUTLINED_FUNCTION_59_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_212_0();
  v17 = *v1;
  v18 = *v0;
  sub_1B8D6E230();
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

  v49 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0);
  v20 = *(v49 + 24);
  v21 = *(v13 + 48);
  OUTLINED_FUNCTION_65_7(v1 + v20, v2);
  OUTLINED_FUNCTION_65_7(v0 + v20, v2 + v21);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v22, v23, v24);
  if (v39)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v25, v26, v27);
    if (v39)
    {
      sub_1B8D9207C(v2, &qword_1EBACA708, &qword_1B96B4078);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  v32 = OUTLINED_FUNCTION_1_0();
  sub_1B8DD9078(v32, v33, v34, v35);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v36, v37, v38);
  if (v39)
  {
    sub_1B92981A0();
LABEL_11:
    v40 = &qword_1EBACA758;
    v41 = &qword_1B96B4098;
LABEL_12:
    sub_1B8D9207C(v2, v40, v41);
LABEL_13:
    v31 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_9_26();
  sub_1B9297F98();
  v42 = *v4;
  v43 = *v3;
  sub_1B8D6EA80();
  if ((v44 & 1) == 0)
  {
    sub_1B92981A0();
    sub_1B92981A0();
    v40 = &qword_1EBACA708;
    v41 = &qword_1B96B4078;
    goto LABEL_12;
  }

  v45 = *(v5 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_78();
  sub_1B929B520(v46, v47);
  v48 = OUTLINED_FUNCTION_198_0();
  sub_1B92981A0();
  sub_1B92981A0();
  sub_1B8D9207C(v2, &qword_1EBACA708, &qword_1B96B4078);
  if ((v48 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v28 = *(v49 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_78();
  sub_1B929B520(v29, v30);
  v31 = sub_1B964C850();
LABEL_14:
  OUTLINED_FUNCTION_264(v31);
  OUTLINED_FUNCTION_283();
}

unint64_t sub_1B929D4D4()
{
  result = qword_1EBACA738;
  if (!qword_1EBACA738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACA738);
  }

  return result;
}

uint64_t sub_1B929D5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929B520(&qword_1EBACA948, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B929D64C(uint64_t a1)
{
  v2 = sub_1B929B520(&qword_1EBACA710, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B929D6BC()
{
  sub_1B929B520(&qword_1EBACA710, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B929D754()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA5E8);
  __swift_project_value_buffer(v0, qword_1EBACA5E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bounding_box";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_embeddings";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "predicted_labels";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "barcodes";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "visual_tokens";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Visualsearch_V2_RegionInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B929DB44();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B929F8F0();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B929DBF8();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B929E7E4();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B929DC98();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B929DB44()
{
  v0 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(0) + 36);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  sub_1B929B520(&qword_1EBACA560, type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox);
  return sub_1B964C580();
}

uint64_t sub_1B929DBF8()
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels(0);
  sub_1B929B520(&qword_1EBACA770, type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels);
  return sub_1B964C570();
}

uint64_t sub_1B929DC98()
{
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens(0);
  sub_1B929B520(&qword_1EBACA780, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens);
  return sub_1B964C570();
}

void Apple_Parsec_Visualsearch_V2_RegionInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_587_0(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F48, &unk_1B964D740);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_159();
  v10 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v14 = OUTLINED_FUNCTION_140_1();
  v22 = type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(v14);
  v23 = v0;
  OUTLINED_FUNCTION_118_7(*(v22 + 36));
  v15 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v15, v16, v10);
  if (v17)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8F48, &unk_1B964D740);
  }

  else
  {
    OUTLINED_FUNCTION_57_12();
    sub_1B9297F98();
    OUTLINED_FUNCTION_56_8();
    sub_1B929B520(v18, v19);
    OUTLINED_FUNCTION_39_4();
    sub_1B964C740();
    sub_1B92981A0();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  v20 = *v0;
  if (!*(*v23 + 16) || (type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageEmbedding(0), sub_1B929B520(&qword_1EBACA768, type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageEmbedding), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), !v1))
  {
    if (!*(v23[1] + 16) || (type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels(0), sub_1B929B520(&qword_1EBACA770, type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), !v1))
    {
      if (!*(v23[2] + 16) || (type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode(0), sub_1B929B520(&qword_1EBACA778, type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), !v1))
      {
        if (!*(v23[3] + 16) || (type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens(0), sub_1B929B520(&qword_1EBACA780, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), !v1))
        {
          v21 = v23 + *(v22 + 32);
          sub_1B964C290();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Visualsearch_V2_RegionInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F48, &unk_1B964D740);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_173();
  v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F50, &unk_1B96B40A0) - 8);
  v16 = *(*v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_208();
  v38 = type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo(0);
  v18 = *(v38 + 36);
  v19 = v15[14];
  OUTLINED_FUNCTION_65_7(v6 + v18, v1);
  OUTLINED_FUNCTION_65_7(v4 + v18, v1 + v19);
  OUTLINED_FUNCTION_50(v1);
  if (v20)
  {
    OUTLINED_FUNCTION_50(v1 + v19);
    if (v20)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8F48, &unk_1B964D740);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v1, &qword_1EBAB8F50, &unk_1B96B40A0);
LABEL_16:
    v37 = 0;
    goto LABEL_17;
  }

  sub_1B8DD9078(v1, v2, &qword_1EBAB8F48, &unk_1B964D740);
  OUTLINED_FUNCTION_50(v1 + v19);
  if (v20)
  {
    OUTLINED_FUNCTION_61_7();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_58_10();
  sub_1B9297F98();
  v21 = static Apple_Parsec_Visualsearch_V2_BoundingBox.== infix(_:_:)(v2, v0);
  OUTLINED_FUNCTION_1_0();
  sub_1B92981A0();
  sub_1B92981A0();
  sub_1B8D9207C(v1, &qword_1EBAB8F48, &unk_1B964D740);
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v22 = *v6;
  v23 = *v4;
  sub_1B8D6EE80();
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

  v25 = v6[1];
  v26 = v4[1];
  sub_1B8D6F4F8();
  if ((v27 & 1) == 0)
  {
    goto LABEL_16;
  }

  v28 = v6[2];
  v29 = v4[2];
  sub_1B8D6F6D8();
  if ((v30 & 1) == 0)
  {
    goto LABEL_16;
  }

  v31 = v6[3];
  v32 = v4[3];
  sub_1B8D6FB5C();
  if ((v33 & 1) == 0)
  {
    goto LABEL_16;
  }

  v34 = *(v38 + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_78();
  sub_1B929B520(v35, v36);
  v37 = sub_1B964C850();
LABEL_17:
  OUTLINED_FUNCTION_264(v37);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B929E3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929B520(&qword_1EBACA940, type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B929E434(uint64_t a1)
{
  v2 = sub_1B929B520(&qword_1EBACA748, type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B929E4A4()
{
  sub_1B929B520(&qword_1EBACA748, type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B929E53C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA600);
  __swift_project_value_buffer(v0, qword_1EBACA600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "model_urn";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "predictions";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Visualsearch_V2_PredictedLabels.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B929E7E4();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }
}

void sub_1B929E7E4()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  OUTLINED_FUNCTION_116_6();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Visualsearch_V2_PredictedLabels.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction(0), sub_1B929B520(&qword_1EBACA790, type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C730(), !v0))
    {
      v4 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Visualsearch_V2_PredictedLabels.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16);
  v8 = *(v2 + 16);
  sub_1B8D68708();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_78();
  sub_1B929B520(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B929EA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929B520(&qword_1EBACA938, type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B929EABC(uint64_t a1)
{
  v2 = sub_1B929B520(&qword_1EBACA770, type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B929EB2C()
{
  sub_1B929B520(&qword_1EBACA770, type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels);

  return sub_1B964C5D0();
}

uint64_t sub_1B929EBAC()
{
  result = MEMORY[0x1BFADC850](0x746369646572502ELL, 0xEB000000006E6F69);
  qword_1EBACA618 = 0xD00000000000002CLL;
  unk_1EBACA620 = 0x80000001B9714F10;
  return result;
}

uint64_t sub_1B929EC60(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_246();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964D060;
  v14 = (v13 + v12);
  v15 = v13 + v12 + v10[14];
  *v14 = 1;
  *v15 = a3;
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADC8];
  v17 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v17);
  v19 = *(v18 + 104);
  (v19)(v15, v16, v17);
  v20 = v14 + v11 + v10[14];
  *(v14 + v11) = 2;
  *v20 = a4;
  *(v20 + 1) = a5;
  v20[16] = 2;
  v19();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
    {
      v4 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_78();
  sub_1B929B520(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B929F044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929B520(&qword_1EBACA930, type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B929F0C4(uint64_t a1)
{
  v2 = sub_1B929B520(&qword_1EBACA790, type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B929F134()
{
  sub_1B929B520(&qword_1EBACA790, type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction);

  return sub_1B964C5D0();
}

uint64_t sub_1B929F1CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA640);
  __swift_project_value_buffer(v0, qword_1EBACA640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
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
  *v10 = "embedding";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "field_3";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageEmbedding.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C430();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_ImageEmbedding.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1[2] + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C610(), !v0))
    {
      if (sub_1B8D99EA8(v1[3], v1[4]) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v0))
      {
        v4 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageEmbedding(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Visualsearch_V2_ImageEmbedding.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D63AC4(v3[2], v2[2]) & 1) == 0 || (MEMORY[0x1BFADC060](v3[3], v3[4], v2[3], v2[4]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageEmbedding(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_78();
  sub_1B929B520(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B929F68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929B520(&qword_1EBACA928, type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageEmbedding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B929F70C(uint64_t a1)
{
  v2 = sub_1B929B520(&qword_1EBACA768, type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageEmbedding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B929F77C()
{
  sub_1B929B520(&qword_1EBACA768, type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageEmbedding);

  return sub_1B964C5D0();
}

void Apple_Parsec_Visualsearch_V2_OCRData.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B929F8F0();
    }
  }
}

void sub_1B929F8F0()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  OUTLINED_FUNCTION_116_6();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Visualsearch_V2_OCRData.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation(0), sub_1B929B520(&qword_1EBACA7B0, type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C730(), !v1))
  {
    v3 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Apple_Parsec_Visualsearch_V2_OCRData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1B8D6EA80();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_78();
  sub_1B929B520(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B929FB30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929B520(&qword_1EBACA920, type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B929FBB0(uint64_t a1)
{
  v2 = sub_1B929B520(&qword_1EBACA750, type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B929FC20()
{
  sub_1B929B520(&qword_1EBACA750, type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData);

  return sub_1B964C5D0();
}

uint64_t sub_1B929FCB8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA670);
  __swift_project_value_buffer(v0, qword_1EBACA670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bounding_box";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "model_urn";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "model_confidence";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_TextAnnotation.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B929FFC8();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B929FFC8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation(0) + 32);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  sub_1B929B520(&qword_1EBACA560, type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox);
  return sub_1B964C580();
}

void Apple_Parsec_Visualsearch_V2_TextAnnotation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F48, &unk_1B964D740);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_92_10();
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v11 = *v0;
  v12 = *(v0 + 1);
  OUTLINED_FUNCTION_1();
  if (!v13 || (sub_1B964C700(), !v1))
  {
    v21 = type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation(0);
    sub_1B8DD9078(v0 + *(v21 + 32), v2, &qword_1EBAB8F48, &unk_1B964D740);
    OUTLINED_FUNCTION_178(v2, 1, v7);
    if (v14)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8F48, &unk_1B964D740);
    }

    else
    {
      OUTLINED_FUNCTION_57_12();
      sub_1B9297F98();
      OUTLINED_FUNCTION_56_8();
      sub_1B929B520(v15, v16);
      sub_1B964C740();
      sub_1B92981A0();
      if (v1)
      {
        goto LABEL_12;
      }
    }

    v17 = *(v0 + 2);
    v18 = *(v0 + 3);
    OUTLINED_FUNCTION_1();
    if (!v19 || (sub_1B964C700(), !v1))
    {
      if (v0[8] == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), sub_1B964C6B0(), !v1))
      {
        v20 = *(v21 + 28);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Visualsearch_V2_TextAnnotation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F48, &unk_1B964D740);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_173();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F50, &unk_1B96B40A0);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_212_0();
  v19 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v29 = type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation(0);
  v20 = *(v29 + 32);
  v21 = *(v15 + 48);
  OUTLINED_FUNCTION_65_7(v1 + v20, v2);
  OUTLINED_FUNCTION_65_7(v0 + v20, v2 + v21);
  OUTLINED_FUNCTION_50(v2);
  if (!v19)
  {
    sub_1B8DD9078(v2, v3, &qword_1EBAB8F48, &unk_1B964D740);
    OUTLINED_FUNCTION_50(v2 + v21);
    if (!v22)
    {
      OUTLINED_FUNCTION_58_10();
      sub_1B9297F98();
      v24 = static Apple_Parsec_Visualsearch_V2_BoundingBox.== infix(_:_:)(v3, v10);
      sub_1B92981A0();
      sub_1B92981A0();
      sub_1B8D9207C(v2, &qword_1EBAB8F48, &unk_1B964D740);
      if ((v24 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_61_7();
LABEL_14:
    sub_1B8D9207C(v2, &qword_1EBAB8F50, &unk_1B96B40A0);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_50(v2 + v21);
  if (!v19)
  {
    goto LABEL_14;
  }

  sub_1B8D9207C(v2, &qword_1EBAB8F48, &unk_1B964D740);
LABEL_18:
  v25 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (v25 || (sub_1B964C9F0()) && *(v1 + 32) == *(v0 + 32))
  {
    v26 = *(v29 + 28);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_78();
    sub_1B929B520(v27, v28);
    v23 = OUTLINED_FUNCTION_634();
    goto LABEL_16;
  }

LABEL_15:
  v23 = 0;
LABEL_16:
  OUTLINED_FUNCTION_264(v23);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92A05D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929B520(&qword_1EBACA918, type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92A0654(uint64_t a1)
{
  v2 = sub_1B929B520(&qword_1EBACA7B0, type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92A06C4()
{
  sub_1B929B520(&qword_1EBACA7B0, type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B92A07E8();
    }
  }

  return result;
}

uint64_t sub_1B92A07E8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode(0) + 20);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(0);
  sub_1B929B520(&qword_1EBACA7C8, type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin);
  return sub_1B964C580();
}

void Apple_Parsec_Visualsearch_V2_Barcode.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_587_0(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F58, &qword_1B964D750);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_140_1();
  v11 = type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(v10);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = OUTLINED_FUNCTION_92_10();
  v16 = type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode(v15);
  sub_1B8DD9078(v1 + *(v16 + 20), v2, &qword_1EBAB8F58, &qword_1B964D750);
  OUTLINED_FUNCTION_178(v2, 1, v11);
  if (v17)
  {
    sub_1B8D9207C(v2, &qword_1EBAB8F58, &qword_1B964D750);
LABEL_5:
    sub_1B964C290();
    goto LABEL_6;
  }

  sub_1B9297F98();
  sub_1B929B520(&qword_1EBACA7C8, type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin);
  sub_1B964C740();
  sub_1B92981A0();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Visualsearch_V2_Barcode.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v5 = type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v9 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F60, &qword_1B964D758) - 8);
  v14 = *(*v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_22_3();
  v17 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode(v16) + 20);
  v18 = v13[14];
  sub_1B8DD9078(v1 + v17, v2, &qword_1EBAB8F58, &qword_1B964D750);
  sub_1B8DD9078(v0 + v17, v2 + v18, &qword_1EBAB8F58, &qword_1B964D750);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v19, v20, v21);
  if (v35)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v22, v23, v24);
    if (v35)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8F58, &qword_1B964D750);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v28 = OUTLINED_FUNCTION_1_0();
  sub_1B8DD9078(v28, v29, v30, v31);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v32, v33, v34);
  if (v35)
  {
    sub_1B92981A0();
LABEL_10:
    v36 = &qword_1EBAB8F60;
    v37 = &qword_1B964D758;
LABEL_20:
    sub_1B8D9207C(v2, v36, v37);
LABEL_21:
    v27 = 0;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_7_33();
  sub_1B9297F98();
  v38 = *v4 == *v3 && *(v4 + 8) == *(v3 + 8);
  if (!v38 && (sub_1B964C9F0() & 1) == 0 || (v39 = *(v3 + 24), !sub_1B8D92198(*(v4 + 16), *(v4 + 24), *(v3 + 16))))
  {
    sub_1B92981A0();
    sub_1B92981A0();
    v36 = &qword_1EBAB8F58;
    v37 = &qword_1B964D750;
    goto LABEL_20;
  }

  v40 = *(v5 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_78();
  sub_1B929B520(v41, v42);
  v43 = OUTLINED_FUNCTION_198_0();
  sub_1B92981A0();
  sub_1B92981A0();
  sub_1B8D9207C(v2, &qword_1EBAB8F58, &qword_1B964D750);
  if ((v43 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_78();
  sub_1B929B520(v25, v26);
  v27 = sub_1B964C850();
LABEL_22:
  OUTLINED_FUNCTION_264(v27);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92A0E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929B520(&qword_1EBACA910, type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92A0E90(uint64_t a1)
{
  v2 = sub_1B929B520(&qword_1EBACA778, type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92A0F00()
{
  sub_1B929B520(&qword_1EBACA778, type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode);

  return sub_1B964C5D0();
}

uint64_t sub_1B92A0F80()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA6A0);
  __swift_project_value_buffer(v0, qword_1EBACA6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GTIN_TYPE_GTIN8";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GTIN_TYPE_GTIN12";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "GTIN_TYPE_GTIN13";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "GTIN_TYPE_GTIN14";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "GTIN_TYPE_ISBN10";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "GTIN_TYPE_ISBN13";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B92A1258()
{
  result = MEMORY[0x1BFADC850](0x6E6974472ELL, 0xE500000000000000);
  qword_1EBACA6B8 = 0xD000000000000024;
  unk_1EBACA6C0 = 0x80000001B9714FD0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.Gtin.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B92A1388();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_Barcode.Gtin.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1 + 16) || (v5 = *(v1 + 16), v6 = *(v1 + 24), sub_1B92A1E3C(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C680(), !v0))
    {
      v4 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Visualsearch_V2_Barcode.Gtin.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16);
  v8 = *(v2 + 16);
  if (*(v2 + 24) == 1)
  {
    switch(v8)
    {
      case 1:
        if (v7 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v7 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v7 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      case 4:
        if (v7 == 4)
        {
          goto LABEL_11;
        }

        return 0;
      case 5:
        if (v7 == 5)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v7)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v7 != v8)
  {
    return 0;
  }

LABEL_11:
  v10 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_78();
  sub_1B929B520(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B92A1624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929B520(&qword_1EBACA908, type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92A16A4(uint64_t a1)
{
  v2 = sub_1B929B520(&qword_1EBACA7C8, type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92A1714()
{
  sub_1B929B520(&qword_1EBACA7C8, type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin);

  return sub_1B964C5D0();
}

uint64_t sub_1B92A17AC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACA6E0);
  __swift_project_value_buffer(v0, qword_1EBACA6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "codebook_urn";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "embedding_model_urn";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "token_terms";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualTokens.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = OUTLINED_FUNCTION_31_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualTokens.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      if (!*(v1[4] + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6E0(), !v0))
      {
        v7 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Visualsearch_V2_VisualTokens.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2] == v2[2] && v3[3] == v2[3];
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(v3[4], v2[4]) & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_78();
  sub_1B929B520(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B92A1BF4()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B929B520(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92A1CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B929B520(&qword_1EBACA900, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92A1D4C(uint64_t a1)
{
  v2 = sub_1B929B520(&qword_1EBACA780, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92A1DBC()
{
  sub_1B929B520(&qword_1EBACA780, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens);

  return sub_1B964C5D0();
}

unint64_t sub_1B92A1E3C()
{
  result = qword_1EBACA7D8;
  if (!qword_1EBACA7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACA7D8);
  }

  return result;
}

unint64_t sub_1B92A1E94()
{
  result = qword_1EBACA7F0;
  if (!qword_1EBACA7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACA7F0);
  }

  return result;
}

unint64_t sub_1B92A1EEC()
{
  result = qword_1EBACA7F8;
  if (!qword_1EBACA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACA7F8);
  }

  return result;
}

unint64_t sub_1B92A1F44()
{
  result = qword_1EBACA800;
  if (!qword_1EBACA800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACA800);
  }

  return result;
}

unint64_t sub_1B92A1FCC()
{
  result = qword_1EBACA818;
  if (!qword_1EBACA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACA818);
  }

  return result;
}

unint64_t sub_1B92A2024()
{
  result = qword_1EBACA820;
  if (!qword_1EBACA820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACA820);
  }

  return result;
}

unint64_t sub_1B92A207C()
{
  result = qword_1EBACA828;
  if (!qword_1EBACA828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACA828);
  }

  return result;
}

void sub_1B92A2EA8()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B92A2FB4(319, &qword_1ED9F0578, type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B92A2FB4(319, &qword_1ED9F0B08, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B92A2FB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B92A3040()
{
  sub_1B8DD7D14(319, &qword_1ED9FBDD8);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B92A2FB4(319, &qword_1ED9F3558, type metadata accessor for Locationpb_Point, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B92A3180()
{
  sub_1B92A2FB4(319, &qword_1ED9EB318, type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionInfo, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B92A2FB4(319, &qword_1ED9F1320, type metadata accessor for Apple_Parsec_Visualsearch_V2_OCRData, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B92A32A4()
{
  sub_1B92A2FB4(319, &qword_1ED9EB308, type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageEmbedding, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B92A2FB4(319, &qword_1ED9EB2F0, type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B92A2FB4(319, &qword_1ED9EB320, type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1B92A2FB4(319, &qword_1ED9EB310, type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualTokens, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1B964C2B0();
          if (v4 <= 0x3F)
          {
            sub_1B92A2FB4(319, &qword_1ED9EC620, type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B92A34A0()
{
  sub_1B92A2FB4(319, &qword_1ED9EB2F8, type metadata accessor for Apple_Parsec_Visualsearch_V2_PredictedLabels.Prediction, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92A35C0()
{
  sub_1B8DD7D14(319, &qword_1ED9EB2E8);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92A3694()
{
  sub_1B92A2FB4(319, &qword_1ED9EB300, type metadata accessor for Apple_Parsec_Visualsearch_V2_TextAnnotation, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92A3770()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B92A2FB4(319, &qword_1ED9EC620, type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B92A386C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B92A2FB4(319, &qword_1ED9ECBB0, type metadata accessor for Apple_Parsec_Visualsearch_V2_Barcode.Gtin, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B92A3964()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void __swift_store_extra_inhabitant_index_76Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_61_0(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_1B92A3A74()
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

uint64_t OUTLINED_FUNCTION_61_7()
{

  return sub_1B92981A0();
}

uint64_t OUTLINED_FUNCTION_98_7()
{

  return sub_1B9297F98();
}

uint64_t OUTLINED_FUNCTION_103_4()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v3 = v0 + *(v1 + 36);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_116_6()
{

  return sub_1B929B520(v1, v0);
}

uint64_t OUTLINED_FUNCTION_118_7@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8DD9078(v1 + a1, v4, v3, v2);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.visualQueryLite.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  OUTLINED_FUNCTION_23_18();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  OUTLINED_FUNCTION_57(v8);
  if (v12)
  {
    *a1 = xmmword_1B9652FE0;
    v13 = a1 + Lite[5];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = Lite[6];
    type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v19 = Lite[7];
    type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    result = OUTLINED_FUNCTION_57(v8);
    if (!v12)
    {
      return sub_1B8D9207C(v8, &qword_1EBAC9418, &unk_1B96B5780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_22();
    return sub_1B92A813C();
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.visualQueryLite.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9418, &unk_1B96B5780);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_99_9(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_22();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B92A7D30(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_17_22();
  sub_1B92A813C();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Visualsearch_V2_VisualSearchRequest.visualQueryLite.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[4] = v8;
  Lite = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualQueryLite(0);
  OUTLINED_FUNCTION_59_1(Lite);
  v11 = *(v10 + 64);
  v3[5] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[6] = v12;
  OUTLINED_FUNCTION_23_18();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v12 = xmmword_1B9652FE0;
    v16 = v12 + Lite[5];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = Lite[6];
    type metadata accessor for Apple_Parsec_Visualsearch_V2_ImageMetadata(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = Lite[7];
    type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualInfo(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v8, &qword_1EBAC9418, &unk_1B96B5780);
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_22();
    OUTLINED_FUNCTION_246();
    sub_1B92A813C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92A41DC(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Visualsearch_V2_VisualSearchRequest.includeDomains.setter(v2);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.includeDomains.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_23_18();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__includeDomains;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = *(v1 + *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest(v8) + 20));
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_57(v2);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(a1 + v12) = qword_1ED9D38C8;
    v13 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, Context);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_22();
    OUTLINED_FUNCTION_182();
    return sub_1B92A813C();
  }

  return result;
}

uint64_t sub_1B92A43F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  OUTLINED_FUNCTION_177_1();
  sub_1B92A8194();
  return a7(v13);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.queryContext.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_99_9(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_22();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B92A7D30(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_18_22();
  sub_1B92A813C();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Apple_Parsec_Visualsearch_V2_VisualSearchRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[4] = v8;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_59_1(Context);
  v11 = *(v10 + 64);
  v3[5] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[6] = v12;
  OUTLINED_FUNCTION_23_18();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *&v12[v16] = qword_1ED9D38C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v8, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_22();
    OUTLINED_FUNCTION_246();
    sub_1B92A813C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B92A4740()
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
    sub_1B92A8194();
    v2(v3);
    sub_1B92A81EC();
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

uint64_t sub_1B92A4814(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_23_18();
  v17 = *(v5 + v16);
  v18 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v19 = a4(0);
  OUTLINED_FUNCTION_178(v7, 1, v19);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  sub_1B8D9207C(v7, v6, v4);
  return v21;
}

void sub_1B92A4910()
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
  v12 = OUTLINED_FUNCTION_324_1();
  v13 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest(v12) + 20);
  v14 = *(v0 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_22();
    v17 = OUTLINED_FUNCTION_40_0();
    *(v5 + v13) = sub_1B92A7D30(v17);
  }

  v4(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B92A4A08(uint64_t *a1)
{
  OUTLINED_FUNCTION_23_18();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_521();
  v6 = *(v4 + v5);
}

uint64_t sub_1B92A4A50(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Visualsearch_V2_VisualSearchRequest.debugTweaks.setter(v2);
}

uint64_t sub_1B92A4A88(uint64_t a1, uint64_t *a2)
{
  v6 = OUTLINED_FUNCTION_313();
  v7 = OUTLINED_FUNCTION_99_9(v6);
  v8 = *(v3 + v4);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_22();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B92A7D30(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  v11 = *a2;
  OUTLINED_FUNCTION_18();
  v12 = *(v8 + v11);
  *(v8 + v11) = v2;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.debugTweaks.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_23_18();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__debugTweaks;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.thirdPartyTeamID.getter()
{
  OUTLINED_FUNCTION_23_18();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyTeamID);
  OUTLINED_FUNCTION_521();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_1B92A4BF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Visualsearch_V2_VisualSearchRequest.thirdPartyTeamID.setter();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.thirdPartyTeamID.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_99_9(0);
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_31_22();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B92A7D30(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  v8 = (v5 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyTeamID);
  OUTLINED_FUNCTION_18();
  v9 = v8[1];
  *v8 = v2;
  v8[1] = v0;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.thirdPartyTeamID.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_23_18();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyTeamID);
  OUTLINED_FUNCTION_521();
  v5 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B92A4D3C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 64);
    v6 = *(*a1 + 56);

    OUTLINED_FUNCTION_461();
    Apple_Parsec_Visualsearch_V2_VisualSearchRequest.thirdPartyTeamID.setter();
    v7 = *(v2 + 56);
  }

  else
  {
    v8 = *(v2 + 72);
    v9 = *(v2 + 64);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v2 + 72);
      v14 = *(v2 + 64);
      OUTLINED_FUNCTION_31_22();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B92A7D30(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyTeamID);
    OUTLINED_FUNCTION_18();
    v17 = v16[1];
    *v16 = v3;
    v16[1] = v4;
  }

  free(v2);
}

uint64_t sub_1B92A4E10(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Visualsearch_V2_VisualSearchRequest.thirdPartyCatalogIds.setter(v2);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.thirdPartyCatalogIds.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_23_18();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__thirdPartyCatalogIds;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B92A4EE4(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {
    v7 = *(v4 + 56);
    v8 = *(*a1 + 48);

    a4(v9);
    v10 = *(v4 + 48);
  }

  else
  {
    v12 = *(v4 + 64);
    v13 = *(v4 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v4 + 64);
      v18 = *(v4 + 56);
      OUTLINED_FUNCTION_31_22();
      v19 = OUTLINED_FUNCTION_40_0();
      v16 = sub_1B92A7D30(v19);
      *(v18 + v17) = v16;
    }

    v20 = *a3;
    OUTLINED_FUNCTION_18();
    v21 = *(v16 + v20);
    *(v16 + v20) = v5;
  }

  free(v4);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.queryID.getter()
{
  OUTLINED_FUNCTION_23_18();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryID;
  OUTLINED_FUNCTION_521();
  return *(v2 + v3);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.queryID.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_22();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B92A7D30(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryID;
  result = OUTLINED_FUNCTION_18();
  *(v7 + v9) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.queryID.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_23_18();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryID;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 72) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92A50D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_31_22();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B92A7D30(v10);
    *(v9 + v8) = v7;
  }

  v11 = OBJC_IVAR____TtCV10PegasusAPI48Apple_Parsec_Visualsearch_V2_VisualSearchRequestP33_1F725EDDD41BCD9020B948B0391513F513_StorageClass__queryID;
  OUTLINED_FUNCTION_18();
  *(v7 + v11) = v2;

  free(v1);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchRequest(0) + 20);
  if (qword_1EBAB7D00 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBACA978;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchResponse.regionOfInterestResponses.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchResponse.traceID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchResponse.traceID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchResponse(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_VisualSearchResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v1 = type metadata accessor for Apple_Parsec_Visualsearch_V2_VisualSearchResponse(0);
  return OUTLINED_FUNCTION_279(v1);
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse.boundingBox.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse(v7) + 28);
  OUTLINED_FUNCTION_100_0();
  v9 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  OUTLINED_FUNCTION_57(v1);
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v11 = a1 + *(v9 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8F48, &unk_1B964D740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_51();
    OUTLINED_FUNCTION_182();
    return sub_1B92A813C();
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB8F48, &unk_1B964D740);
  OUTLINED_FUNCTION_3_51();
  OUTLINED_FUNCTION_122_0();
  sub_1B92A813C();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse.boundingBox.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_85(v6);
  v7 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_0(v10);
  v12 = type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse(v11);
  OUTLINED_FUNCTION_64_0(*(v12 + 28));
  v13 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v13, v14, v7);
  if (v15)
  {
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = 0xE000000000000000;
    v16 = v9 + *(v7 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v17, v18, v7);
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8F48, &unk_1B964D740);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_51();
    OUTLINED_FUNCTION_461();
    sub_1B92A813C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse.sectionRenderings.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B92A580C()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B92A5894()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Apple_Parsec_Visualsearch_V2_RegionOfInterestResponse(0);
  OUTLINED_FUNCTION_279(v3);
  v4 = *(v3 + 28);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_BoundingBox();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Apple_Parsec_Visualsearch_V2_DomainResponse.domain.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Visualsearch_V2_DomainResponse.domain.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_DomainResponse.domainResults.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_DomainResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_DomainResponse(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_DomainResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Apple_Parsec_Visualsearch_V2_DomainResponse(0);
  return OUTLINED_FUNCTION_279(v1);
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionRendering.sectionResults.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionRendering.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionRendering.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionRendering.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionRendering.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  v2 = a1 + *(type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionRendering(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionResult.rendering.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  v8 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(v7) + 28);
  sub_1B8D92024();
  v9 = type metadata accessor for Apple_Parsec_Rendering_V2_Rendering();
  OUTLINED_FUNCTION_57(v1);
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = xmmword_1B9652FE0;
    *(a1 + 32) = xmmword_1B9652FE0;
    v11 = a1 + *(v9 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v9 + 32);
    sub_1B964C1C0();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8F30, &qword_1B964D730);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_49();
    return sub_1B92A813C();
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionResult.rendering.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB8F30, &qword_1B964D730);
  OUTLINED_FUNCTION_2_49();
  OUTLINED_FUNCTION_122_0();
  sub_1B92A813C();
  type metadata accessor for Apple_Parsec_Rendering_V2_Rendering();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Visualsearch_V2_SectionResult.rendering.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v0[1] = v5;
  v6 = type metadata accessor for Apple_Parsec_Rendering_V2_Rendering();
  v0[2] = v6;
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  v0[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_89_0(v9);
  v11 = type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(v10);
  OUTLINED_FUNCTION_116_0(*(v11 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v8 = 0;
    *(v8 + 8) = 1;
    *(v8 + 16) = xmmword_1B9652FE0;
    *(v8 + 32) = xmmword_1B9652FE0;
    v13 = v8 + *(v6 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v6 + 32);
    sub_1B964C1C0();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8F30, &qword_1B964D730);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_246();
    sub_1B92A813C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B92A6050()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = *(v1(0) + 28);
  OUTLINED_FUNCTION_24_3();
  sub_1B8D92024();
  v10 = v0(0);
  OUTLINED_FUNCTION_178(v2, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v13, v14, v15);
  return v12;
}

uint64_t sub_1B92A6140()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionResult.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(v7) + 32);
  OUTLINED_FUNCTION_100_0();
  v9 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(0);
  OUTLINED_FUNCTION_57(v1);
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0xE000000000000000;
    *(a1 + 64) = MEMORY[0x1E69E7CC0];
    v11 = a1 + *(v9 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8F10, &unk_1B964D710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_42();
    OUTLINED_FUNCTION_182();
    return sub_1B92A813C();
  }

  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionResult.metadata.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB8F10, &unk_1B964D710);
  OUTLINED_FUNCTION_4_42();
  OUTLINED_FUNCTION_122_0();
  sub_1B92A813C();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Visualsearch_V2_SectionResult.metadata.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v0[1] = v5;
  v6 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(0);
  v0[2] = v6;
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  v0[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_89_0(v9);
  v11 = type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(v10);
  OUTLINED_FUNCTION_116_0(*(v11 + 32));
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    *(v8 + 32) = 0;
    *(v8 + 40) = 1;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0xE000000000000000;
    *(v8 + 64) = MEMORY[0x1E69E7CC0];
    v13 = v8 + *(v6 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8F10, &unk_1B964D710);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_42();
    OUTLINED_FUNCTION_246();
    sub_1B92A813C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B92A6534(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
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
    OUTLINED_FUNCTION_128();
    sub_1B92A8194();
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B92A813C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
    sub_1B92A81EC();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B92A813C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionResult.hasMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(v6) + 32);
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v13, v14, &unk_1B964D710);
  return v12;
}

Swift::Void __swiftcall Apple_Parsec_Visualsearch_V2_SectionResult.clearMetadata()()
{
  v1 = type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB8F10, &unk_1B964D710);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_SectionResult.init()()
{
  OUTLINED_FUNCTION_92_0();
  v0 = type metadata accessor for Apple_Parsec_Visualsearch_V2_SectionResult(0);
  OUTLINED_FUNCTION_279(v0);
  v1 = *(v0 + 28);
  type metadata accessor for Apple_Parsec_Rendering_V2_Rendering();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(v0 + 32);
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Apple_Parsec_Visualsearch_V2_ResultMetadata.domain.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultMetadata.domain.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void Apple_Parsec_Visualsearch_V2_ResultMetadata.visualSearchDomain.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultMetadata.visualSearchDomain.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultMetadata.resultIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultMetadata.resultIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultMetadata.resultEntities.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultMetadata.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultMetadata.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultMetadata(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.id.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.title.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.resultEntity.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_111_7(v0);
  return sub_1B8D92024();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.resultEntity.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_111_7(v0);
  return sub_1B8DAA170();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.resultEntity.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_111_7(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Visualsearch_V2_ResultEntity.bookEntity.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_111_7(v7);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  OUTLINED_FUNCTION_57(v1);
  if (v8)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8F00, &unk_1B964D700);
LABEL_6:
    OUTLINED_FUNCTION_92_0();
    a1[4] = 0;
    a1[5] = v10;
    a1[6] = 0;
    a1[7] = v10;
    a1[8] = 0;
    a1[9] = v10;
    a1[10] = 0;
    a1[11] = v10;
    v11 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(0);
    v12 = a1 + *(v11 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v11 + 44);
    sub_1B964C110();
    OUTLINED_FUNCTION_83();
    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_461();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_0_79();
    sub_1B92A81EC();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_16_24();
  OUTLINED_FUNCTION_182();
  return sub_1B92A813C();
}

void Apple_Parsec_Visualsearch_V2_ResultEntity.bookEntity.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Apple_Parsec_Visualsearch_V2_BookEntity(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v1[2] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v1[3] = v11;
  OUTLINED_FUNCTION_111_7(0);
  OUTLINED_FUNCTION_64_0(v12);
  v13 = type metadata accessor for Apple_Parsec_Visualsearch_V2_ResultEntity.OneOf_ResultEntity(0);
  v1[4] = v13;
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v13);
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8F00, &unk_1B964D700);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_16_24();
      OUTLINED_FUNCTION_177_1();
      sub_1B92A813C();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_0_79();
    sub_1B92A81EC();
  }

  OUTLINED_FUNCTION_102_9();
  v11[6] = 0;
  v11[7] = v18;
  v11[8] = 0;
  v11[9] = v18;
  v11[10] = 0;
  v11[11] = v18;
  v19 = v11 + *(v8 + 40);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v20 = *(v8 + 44);
  sub_1B964C110();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
LABEL_8:
  OUTLINED_FUNCTION_242();
}