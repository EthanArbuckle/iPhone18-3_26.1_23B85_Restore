void static Apple_Parsec_Flights_V1alpha_FlightLegMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Searchfoundation_Date(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_137();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_212_0();
  v19 = *v1 == *v0 && v1[1] == v0[1];
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v20 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v42 = type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata(0);
  v21 = *(v15 + 48);
  sub_1B8DD9078(v1 + *(v42 + 28), v2, &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v22, v23, v24);
  if (v19)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v25, v26, v27);
    if (v19)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_25:
      v39 = *(v42 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_41();
      sub_1B8CD2498(v40, v41);
      v34 = sub_1B964C850();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_1B8DD9078(v2, v3, &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v28, v29, v30);
  if (v31)
  {
    sub_1B902F8E4();
LABEL_19:
    v32 = &qword_1EBAB8E38;
    v33 = &qword_1B96CD870;
LABEL_20:
    sub_1B8D9207C(v2, v32, v33);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_1_35();
  sub_1B902F83C();
  if (*v3 != *v10)
  {
    sub_1B902F8E4();
    sub_1B902F8E4();
    v32 = &qword_1EBAB8E30;
    v33 = &qword_1B964D630;
    goto LABEL_20;
  }

  v35 = *(v4 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_41();
  sub_1B8CD2498(v36, v37);
  v38 = sub_1B964C850();
  sub_1B902F8E4();
  sub_1B902F8E4();
  sub_1B8D9207C(v2, &qword_1EBAB8E30, &qword_1B964D630);
  if (v38)
  {
    goto LABEL_25;
  }

LABEL_21:
  v34 = 0;
LABEL_22:
  OUTLINED_FUNCTION_264(v34);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B902F5F4()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2498(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B902F6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2498(&qword_1EBAC23B0, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B902F74C(uint64_t a1)
{
  v2 = sub_1B8CD2498(&qword_1EBAC2280, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B902F7BC()
{
  sub_1B8CD2498(&qword_1EBAC2280, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B902F83C()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B902F890()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B902F8E4()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B90301E0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B903028C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_27Tm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
    v12 = OUTLINED_FUNCTION_128_1(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      OUTLINED_FUNCTION_128_1(v15);
      if (*(v16 + 84) == a2)
      {
        OUTLINED_FUNCTION_266();
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2230, &unk_1B967FDD0);
        v14 = *(a3 + 28);
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_index_28Tm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
    v14 = OUTLINED_FUNCTION_128_1(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      OUTLINED_FUNCTION_128_1(v17);
      if (*(v18 + 84) == a3)
      {
        OUTLINED_FUNCTION_258_0();
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2230, &unk_1B967FDD0);
        v16 = *(a4 + 28);
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_1B90305D8()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B903028C(319, &qword_1EBAB5CF0, type metadata accessor for Apple_Parsec_Search_PegasusSearchQuery, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B903028C(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B903028C(319, &qword_1EBAC2348, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightQueryContext, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void __swift_store_extra_inhabitant_index_37Tm()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
      v7 = *(v2 + 32);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_1B9030814(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B903028C(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      sub_1B903028C(319, &qword_1ED9EDE88, type metadata accessor for Apple_Parsec_Search_Error, MEMORY[0x1E69E6720]);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B903093C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B903028C(319, &qword_1EBAC2398, type metadata accessor for Apple_Parsec_Flights_V1alpha_FlightLegMetadata, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9030A28()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B903028C(319, &qword_1ED9F9798, type metadata accessor for Searchfoundation_Date, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_19_11@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1B8DD9078(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_21_11()
{

  return sub_1B964C580();
}

uint64_t OUTLINED_FUNCTION_35_7(uint64_t a1)
{
  v7 = *(a1 + 24);
  *(v3 + 40) = v7;

  return sub_1B8DD9078(v1 + v7, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_57_5()
{
  v2 = *(v0 - 72);

  return sub_1B964C730();
}

uint64_t OUTLINED_FUNCTION_70_6()
{
  v2 = *(v0 - 72);

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_74_9()
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = v0;
  v4 = v1 + *(v2 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_75_3()
{
  v2 = *(v0 - 72);

  return sub_1B964C700();
}

uint64_t OUTLINED_FUNCTION_81_4()
{

  return sub_1B964C680();
}

uint64_t OUTLINED_FUNCTION_82_4()
{

  return sub_1B902F83C();
}

uint64_t OUTLINED_FUNCTION_84_5()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v3 = v0 + *(v1 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_89_7()
{

  return sub_1B902F83C();
}

uint64_t OUTLINED_FUNCTION_106_5@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8DD9078(v1 + a1, v4, v3, v2);
}

uint64_t OUTLINED_FUNCTION_108_5()
{

  return sub_1B964C740();
}

uint64_t OUTLINED_FUNCTION_109_2(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest(v7) + 36);
  OUTLINED_FUNCTION_100_0();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(a1 + v11) = qword_1ED9D38C8;
    v12 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, Context);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_22();
    OUTLINED_FUNCTION_182();
    return sub_1B90386E0();
  }

  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.queryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_81_5();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.queryContext.modify())()
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 8) = v7;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  *(v0 + 40) = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest(v14) + 36);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v7, 1, Context);
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(v10 + v16) = qword_1ED9D38C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v7, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_22();
    sub_1B90386E0();
  }

  return sub_1B9031234;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.query.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.query.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.queryType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.queryType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

unint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.QueryType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9031490(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90388B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  v2 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest(0);
  v3 = v1 + *(v2 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 36);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t (*static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.QueryType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B90315EC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.QueryType.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.status.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.queryFeedback.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.queryFeedback.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse(v7) + 44);
  OUTLINED_FUNCTION_100_0();
  v9 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    v11 = a1 + *(v9 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC2520, &qword_1B96809F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_21();
    OUTLINED_FUNCTION_182();
    return sub_1B90386E0();
  }

  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.error.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBAC2520, &qword_1B96809F8);
  OUTLINED_FUNCTION_11_21();
  OUTLINED_FUNCTION_81_5();
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.error.modify())()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 44));
  OUTLINED_FUNCTION_75(v0);
  if (v18)
  {
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = -1;
    v19 = v12 + *(v10 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAC2520, &qword_1B96809F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_21();
    OUTLINED_FUNCTION_461();
    sub_1B90386E0();
  }

  return sub_1B9031980;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.hasError.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2520, &qword_1B96809F8);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse(v4) + 44);
  OUTLINED_FUNCTION_274_0();
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(0);
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
  sub_1B8D9207C(v11, v12, &qword_1B96809F8);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.clearError()()
{
  v1 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse(0);
  sub_1B8D9207C(v0 + *(v1 + 44), &qword_1EBAC2520, &qword_1B96809F8);
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.suggestions.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.results.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.moreResultsURL.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.moreResultsURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9031D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9038950();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1B90387E4(v2, v3, v4);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.error.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B903880C(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.message.getter()
{
  OUTLINED_FUNCTION_65_6();
  if (!v2 && (v1 & 1) == 0)
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = OUTLINED_FUNCTION_432();
    sub_1B90387FC(v5, v6, 0);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9031E28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.message.setter();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.message.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B903880C(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v0;
  *(v1 + 16) = 0;
  return result;
}

uint64_t (*Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.message.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_65_6();
  if (v4 || (v3 & 1) != 0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    v7 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v7, v8, 0);
  }

  *a1 = v5;
  a1[1] = v6;
  return sub_1B9031F18;
}

uint64_t sub_1B9031F18(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (a2)
  {
    v8 = a1[1];

    sub_1B903880C(v5, v6, v7);
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 0;
  }

  else
  {
    result = sub_1B903880C(*v3, *(v3 + 8), *(v3 + 16));
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 0;
  }

  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.encryptedMessage.getter()
{
  OUTLINED_FUNCTION_65_6();
  if (!v2 && (v1 & 1) != 0)
  {
    v3 = *v0;
    v4 = v0[1];
    v5 = OUTLINED_FUNCTION_432();
    sub_1B90387FC(v5, v6, 1);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.encryptedMessage.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B903880C(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v0;
  *(v1 + 16) = 1;
  return result;
}

uint64_t (*Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.encryptedMessage.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  OUTLINED_FUNCTION_65_6();
  if (v4 || (v3 & 1) == 0)
  {
    v6 = 0;
    v5 = 0xC000000000000000;
  }

  else
  {
    v6 = *v1;
    v5 = v1[1];
    v7 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v7, v8, 1);
  }

  *a1 = v6;
  a1[1] = v5;
  return sub_1B90320F8;
}

uint64_t sub_1B90320F8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);
  if ((a2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_85_3();
  }

  v8 = OUTLINED_FUNCTION_288();
  sub_1B8D91FCC(v8, v9);
  OUTLINED_FUNCTION_85_3();
  v10 = OUTLINED_FUNCTION_288();

  return sub_1B8D538A0(v10, v11);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.OneOf_Error.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v5 = OUTLINED_FUNCTION_461();
      sub_1B90387FC(v5, v6, 1);
      v7 = OUTLINED_FUNCTION_288();
      sub_1B90387FC(v7, v8, 1);
      v9 = OUTLINED_FUNCTION_288();
      v10 = MEMORY[0x1BFADC060](v9);
      v11 = OUTLINED_FUNCTION_288();
      sub_1B9038824(v11, v12, 1);
      v13 = OUTLINED_FUNCTION_461();
      v15 = 1;
LABEL_11:
      sub_1B9038824(v13, v14, v15);
      return v10 & 1;
    }

LABEL_5:
    v16 = OUTLINED_FUNCTION_42_0();
    sub_1B90387FC(v16, v17, v18);
    v19 = OUTLINED_FUNCTION_288();
    sub_1B90387FC(v19, v20, v4);
    v21 = OUTLINED_FUNCTION_288();
    sub_1B9038824(v21, v22, v4);
    v23 = OUTLINED_FUNCTION_42_0();
    sub_1B9038824(v23, v24, v25);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  v27 = *a1;
  if (v3 != *a2 || v2 != *(a2 + 8))
  {
    v10 = sub_1B964C9F0();
    v29 = OUTLINED_FUNCTION_461();
    sub_1B90387FC(v29, v30, 0);
    v31 = OUTLINED_FUNCTION_288();
    sub_1B90387FC(v31, v32, 0);
    v33 = OUTLINED_FUNCTION_288();
    sub_1B9038824(v33, v34, 0);
    v13 = OUTLINED_FUNCTION_461();
    v15 = 0;
    goto LABEL_11;
  }

  sub_1B90387FC(v27, v2, 0);
  v35 = OUTLINED_FUNCTION_288();
  sub_1B90387FC(v35, v36, 0);
  v37 = OUTLINED_FUNCTION_288();
  sub_1B9038824(v37, v38, 0);
  v39 = OUTLINED_FUNCTION_288();
  sub_1B9038824(v39, v40, 0);
  return 1;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = xmmword_1B9652FE0;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.app.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(v7) + 36);
  OUTLINED_FUNCTION_100_0();
  v9 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    a1[4] = 0;
    a1[5] = 0xE000000000000000;
    a1[6] = 0;
    a1[7] = 0xE000000000000000;
    v11 = a1 + *(v9 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC2528, &qword_1B9680A00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_36();
    OUTLINED_FUNCTION_182();
    return sub_1B90386E0();
  }

  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.app.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC2528, &qword_1B9680A00);
  OUTLINED_FUNCTION_1_36();
  OUTLINED_FUNCTION_81_5();
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v3 = v1 + *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.app.modify())()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 36));
  OUTLINED_FUNCTION_75(v0);
  if (v18)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = 0;
    v12[3] = 0xE000000000000000;
    v12[4] = 0;
    v12[5] = 0xE000000000000000;
    v12[6] = 0;
    v12[7] = 0xE000000000000000;
    v19 = v12 + *(v10 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAC2528, &qword_1B9680A00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_36();
    OUTLINED_FUNCTION_461();
    sub_1B90386E0();
  }

  return sub_1B9032874;
}

uint64_t sub_1B90328D8()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(v1(0) + 36);
  OUTLINED_FUNCTION_24_3();
  sub_1B8D92024();
  v11 = v0(0);
  OUTLINED_FUNCTION_178(v9, 1, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  OUTLINED_FUNCTION_12();
  sub_1B8D9207C(v14, v15, v16);
  return v13;
}

uint64_t sub_1B90329D0()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 36), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.thumbnail.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(v7) + 40);
  OUTLINED_FUNCTION_100_0();
  v9 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    v11 = a1 + *(v9 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC2530, &qword_1B9680A08);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_24();
    OUTLINED_FUNCTION_182();
    return sub_1B90386E0();
  }

  return result;
}

uint64_t sub_1B9032B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  sub_1B9038738();
  return a7(v7);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.thumbnail.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAC2530, &qword_1B9680A08);
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_81_5();
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.thumbnail.modify())()
{
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_202_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_89_0(v15);
  v17 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(v16);
  OUTLINED_FUNCTION_64_0(*(v17 + 40));
  OUTLINED_FUNCTION_75(v0);
  if (v18)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = 0;
    v19 = v12 + *(v10 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAC2530, &qword_1B9680A08);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_24();
    OUTLINED_FUNCTION_461();
    sub_1B90386E0();
  }

  return sub_1B9032D8C;
}

void sub_1B9032DB4()
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
    sub_1B9038738();
    sub_1B8D9207C(v10 + v5, v4, v3);
    sub_1B90386E0();
    OUTLINED_FUNCTION_187_1();
    sub_1B9038790();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v1, v2);
    sub_1B90386E0();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.hasThumbnail.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2530, &qword_1B9680A08);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(v4) + 40);
  OUTLINED_FUNCTION_274_0();
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(0);
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
  sub_1B8D9207C(v11, v12, &qword_1B9680A08);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.clearThumbnail()()
{
  v1 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(0);
  sub_1B8D9207C(v0 + *(v1 + 40), &qword_1EBAC2530, &qword_1B9680A08);
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.fbr.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.fbr.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_1B903302C()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B90330B4()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App.installURL.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App.installURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App.bundleID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App.bundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = xmmword_1B9652FE0;
  v3 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(0);
  v4 = v1 + v3[8];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = v3[9];
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v3[10];
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(0);
  v11 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1B9652FE0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  v3 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse(0);
  v4 = a1 + *(v3 + 40);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 44);
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(0);
  v6 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t (*static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.StatusCode.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B9033698@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.StatusCode.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B90336DC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC23F8);
  __swift_project_value_buffer(v0, qword_1EBAC23F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "query_context";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "query_type";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "page";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "show_more";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_9();
        sub_1B9033A48();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9033AFC();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9033A48()
{
  v0 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest(0) + 36);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B9038908(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.traverse<A>(visitor:)()
{
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
  v17 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest(0);
  v11 = *(v17 + 36);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v2, 1, Context) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    sub_1B90386E0();
    sub_1B9038908(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
    OUTLINED_FUNCTION_79_0();
    sub_1B964C740();
    result = sub_1B9038790();
    if (v1)
    {
      return result;
    }
  }

  v13 = *v0;
  v14 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v15 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
  {
    if (!v0[2] || (v18 = v0[2], v19 = *(v0 + 24), sub_1B90388B4(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v1))
    {
      if (!*(v0 + 7) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6C0(), !v1))
      {
        if (*(v0 + 32) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
        {
          v16 = v0 + *(v17 + 32);
          OUTLINED_FUNCTION_686();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

void static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v5 = OUTLINED_FUNCTION_59_1(Context);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_173();
  v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10) - 8);
  v16 = *(*v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_79();
  v36 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest(0);
  v18 = *(v36 + 36);
  v19 = v15[14];
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_178(v2, 1, Context);
  if (!v20)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2 + v19, 1, Context);
    if (!v20)
    {
      OUTLINED_FUNCTION_2_22();
      sub_1B90386E0();
      v23 = *(Context + 20);
      v24 = *(v3 + v23);
      v25 = *(v10 + v23);
      if (v24 == v25 || (v26 = *(v3 + v23), , , v27 = sub_1B9090820(v24, v25), , , v27))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_42();
        sub_1B9038908(v28, v29);
        OUTLINED_FUNCTION_259();
        v30 = sub_1B964C850();
        sub_1B9038790();
        OUTLINED_FUNCTION_686();
        sub_1B9038790();
        sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
        if ((v30 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      sub_1B9038790();
      sub_1B9038790();
      v21 = &qword_1EBABED40;
      v22 = &qword_1B96809F0;
LABEL_10:
      sub_1B8D9207C(v2, v21, v22);
      goto LABEL_11;
    }

    sub_1B9038790();
LABEL_9:
    v21 = &qword_1EBABED68;
    v22 = &qword_1B9680A10;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_178(v2 + v19, 1, Context);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
LABEL_15:
  v31 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (v31 || (sub_1B964C9F0() & 1) != 0)
  {
    v32 = *(v0 + 24);
    if (sub_1B8D92198(*(v1 + 16), *(v1 + 24), *(v0 + 16)) && *(v1 + 28) == *(v0 + 28) && *(v1 + 32) == *(v0 + 32))
    {
      v33 = *(v36 + 32);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_42();
      sub_1B9038908(v34, v35);
      OUTLINED_FUNCTION_199_0();
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B903423C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9038908(&qword_1EBAC2760, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90342BC(uint64_t a1)
{
  v2 = sub_1B9038908(&qword_1EBAC2618, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B903432C()
{
  sub_1B9038908(&qword_1EBAC2618, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B90343AC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2410);
  __swift_project_value_buffer(v0, qword_1EBAC2410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "QueryTypeSearch";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "QueryTypeZKW";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "QueryTypeCategories";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90345F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2428);
  __swift_project_value_buffer(v0, qword_1EBAC2428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B9650810;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "status";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "query_feedback";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v21 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 8;
  *v11 = "error";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 9;
  *v13 = "millisecond_duration";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 20;
  *v15 = "suggestions";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 21;
  *v17 = "results";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 22;
  *v19 = "more_results_url";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_9();
        sub_1B9034A14();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
        continue;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B9034A7C();
        break;
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      default:
        switch(result)
        {
          case 20:
            OUTLINED_FUNCTION_9();
            sub_1B9034B30();
            break;
          case 21:
            OUTLINED_FUNCTION_9();
            sub_1B9034BD0();
            break;
          case 22:
            OUTLINED_FUNCTION_12();
            sub_1B964C530();
            break;
        }

        break;
    }
  }
}

uint64_t sub_1B9034A7C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse(0) + 44);
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(0);
  sub_1B9038908(&qword_1EBAC2560, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error);
  return sub_1B964C580();
}

uint64_t sub_1B9034B30()
{
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult(0);
  sub_1B9038908(&qword_1EBAC2550, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult);
  return sub_1B964C570();
}

uint64_t sub_1B9034BD0()
{
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(0);
  sub_1B9038908(&qword_1EBAC2558, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_423_0();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2520, &qword_1B96809F8);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  if (!*v2 || (v15 = *(v2 + 8), v24 = *v2, v25 = v15, sub_1B9038950(), v1 = v0, result = sub_1B964C680(), !v0))
  {
    v26 = v4;
    if (sub_1B8D99EA8(v2[2], v2[3]) || (v1 = v0, result = sub_1B964C6A0(), !v0))
    {
      v23 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse(0);
      v17 = *(v23 + 44);
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {
        sub_1B8D9207C(v10, &qword_1EBAC2520, &qword_1B96809F8);
      }

      else
      {
        sub_1B90386E0();
        sub_1B9038908(&qword_1EBAC2560, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error);
        OUTLINED_FUNCTION_729();
        sub_1B964C740();
        v0 = v1;
        result = sub_1B9038790();
        if (v1)
        {
          return result;
        }
      }

      if (!v2[4] || (v1 = v0, result = sub_1B964C6D0(), !v0))
      {
        if (!*(v2[5] + 16) || (type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult(0), sub_1B9038908(&qword_1EBAC2550, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult), OUTLINED_FUNCTION_729(), result = sub_1B964C730(), !v1))
        {
          if (!*(v2[6] + 16) || (type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(0), sub_1B9038908(&qword_1EBAC2558, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult), OUTLINED_FUNCTION_729(), result = sub_1B964C730(), !v1))
          {
            v18 = v2[7];
            v19 = v2[8];
            OUTLINED_FUNCTION_1();
            if (!v20 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
            {
              v21 = *(v23 + 40);
              OUTLINED_FUNCTION_63_3();
              OUTLINED_FUNCTION_12();
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

void static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v2 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(0);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2520, &qword_1B96809F8);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_173();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2568, &qword_1B9680A18);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = *v1;
  v17 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        if (v16 != 1)
        {
          goto LABEL_31;
        }
      }

      else if (v16 != 2)
      {
        goto LABEL_31;
      }
    }

    else if (v16)
    {
      goto LABEL_31;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_31;
  }

  if ((MEMORY[0x1BFADC060](v1[2], v1[3], v0[2], v0[3]) & 1) == 0)
  {
    goto LABEL_31;
  }

  v35 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse(0);
  v18 = *(v35 + 44);
  v19 = *(v10 + 48);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  v20 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v20, v21, v2);
  if (!v22)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(&v15[v19], 1, v2);
    if (!v22)
    {
      sub_1B90386E0();
      v23 = static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.== infix(_:_:)();
      sub_1B9038790();
      OUTLINED_FUNCTION_259();
      sub_1B9038790();
      sub_1B8D9207C(v15, &qword_1EBAC2520, &qword_1B96809F8);
      if ((v23 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    sub_1B9038790();
LABEL_20:
    sub_1B8D9207C(v15, &qword_1EBAC2568, &qword_1B9680A18);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_178(&v15[v19], 1, v2);
  if (!v22)
  {
    goto LABEL_20;
  }

  sub_1B8D9207C(v15, &qword_1EBAC2520, &qword_1B96809F8);
LABEL_22:
  if (v1[4] == v0[4])
  {
    v24 = v1[5];
    v25 = v0[5];
    sub_1B8D5BFE8();
    if (v26)
    {
      v27 = v1[6];
      v28 = v0[6];
      sub_1B8D5C614();
      if (v29)
      {
        v30 = v1[7] == v0[7] && v1[8] == v0[8];
        if (v30 || (sub_1B964C9F0() & 1) != 0)
        {
          v31 = *(v35 + 40);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_42();
          sub_1B9038908(v32, v33);
          OUTLINED_FUNCTION_634();
        }
      }
    }
  }

LABEL_31:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B90353FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9038908(&qword_1EBAC2758, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B903547C(uint64_t a1)
{
  v2 = sub_1B9038908(&qword_1EBAC2630, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90354EC()
{
  sub_1B9038908(&qword_1EBAC2630, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B903556C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2440);
  __swift_project_value_buffer(v0, qword_1EBAC2440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "StatusOK";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "StatusError";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "StatusNoResults";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B90357D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2468);
  __swift_project_value_buffer(v0, qword_1EBAC2468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "message";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encrypted_message";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.decodeMessage<A>(decoder:)()
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
      sub_1B9035AFC();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9035A30(v3, v4);
    }
  }

  return result;
}

uint64_t sub_1B9035A30(uint64_t a1, uint64_t a2)
{
  result = sub_1B964C520();
  if (v2)
  {
  }

  if (v8)
  {
    if (*(a2 + 16) == 255)
    {
      v5 = -1;
    }

    else
    {
      sub_1B964C3D0();
      v5 = *(a2 + 16);
    }

    v6 = *a2;
    v7 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    return sub_1B903880C(v6, v7, v5);
  }

  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_65_6();
  if (v2 || ((OUTLINED_FUNCTION_24_3(), (v4 & 1) == 0) ? (result = sub_1B8DC2578(v3)) : (result = sub_1B9035C80(v3)), !v1))
  {
    v6 = v0 + *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9035C80(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *result;
    v3 = *(result + 8);
    sub_1B90387FC(*result, v3, 1);
    sub_1B964C6A0();
    return sub_1B903880C(v2, v3, v1);
  }

  return result;
}

uint64_t static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  if (v2 != 255)
  {
    v55[0] = *v0;
    v55[1] = v1;
    v56 = v2;
    if (v6 != 255)
    {
      v53[0] = v5;
      v53[1] = v4;
      v7 = v6 & 1;
      v54 = v6 & 1;
      v8 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v8, v9, v10);
      v11 = OUTLINED_FUNCTION_259();
      sub_1B90387E4(v11, v12, v6);
      v13 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v13, v14, v15);
      v16 = static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.OneOf_Error.== infix(_:_:)(v55, v53);
      v17 = OUTLINED_FUNCTION_259();
      sub_1B9038824(v17, v18, v7);
      v19 = OUTLINED_FUNCTION_461();
      sub_1B9038824(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_42_0();
      sub_1B903880C(v22, v23, v24);
      if (v16)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v29 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_259();
    sub_1B90387E4(v32, v33, 255);
    v34 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_461();
    sub_1B9038824(v37, v38, v39);
LABEL_8:
    v40 = OUTLINED_FUNCTION_42_0();
    sub_1B903880C(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_259();
    sub_1B903880C(v43, v44, v6);
    return 0;
  }

  v25 = OUTLINED_FUNCTION_461();
  sub_1B90387E4(v25, v26, 255);
  if (v6 != 255)
  {
    v27 = OUTLINED_FUNCTION_259();
    sub_1B90387E4(v27, v28, v6);
    goto LABEL_8;
  }

  v46 = OUTLINED_FUNCTION_259();
  sub_1B90387E4(v46, v47, 255);
  v48 = OUTLINED_FUNCTION_461();
  sub_1B903880C(v48, v49, 255);
LABEL_11:
  v50 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_42();
  sub_1B9038908(v51, v52);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9035F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9038908(&qword_1EBAC2750, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9035FBC(uint64_t a1)
{
  v2 = sub_1B9038908(&qword_1EBAC2560, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B903602C()
{
  sub_1B9038908(&qword_1EBAC2560, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error);

  return sub_1B964C5D0();
}

uint64_t sub_1B90360AC()
{
  result = MEMORY[0x1BFADC850](0xD000000000000011, 0x80000001B97023F0);
  qword_1EBAC2480 = 0xD000000000000038;
  *algn_1EBAC2488 = 0x80000001B9702360;
  return result;
}

uint64_t sub_1B9036140()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2490);
  __swift_project_value_buffer(v0, qword_1EBAC2490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "suggestion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fbr";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult.decodeMessage<A>(decoder:)()
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
      sub_1B964C470();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_423_0();
  OUTLINED_FUNCTION_12_8();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    if (sub_1B8D99EA8(*(v2 + 16), *(v2 + 24)) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
    {
      v7 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult(0) + 24);
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](*(v3 + 16), *(v3 + 24), *(v2 + 16), *(v2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_42();
  sub_1B9038908(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B903656C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9038908(&qword_1EBAC2748, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90365EC(uint64_t a1)
{
  v2 = sub_1B9038908(&qword_1EBAC2550, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B903665C()
{
  sub_1B9038908(&qword_1EBAC2550, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B9036708(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1BFADC850](a2, a3);
  *a4 = 0xD000000000000038;
  *a5 = 0x80000001B9702360;
  return result;
}

uint64_t sub_1B9036794()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC24B8);
  __swift_project_value_buffer(v0, qword_1EBAC24B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "adam_id";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "app";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "thumbnail";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "fbr";
  *(v19 + 1) = 3;
  v19[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9036B2C();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B9036BE0();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9036B2C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(0) + 36);
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App(0);
  sub_1B9038908(&qword_1EBAC2590, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App);
  return sub_1B964C580();
}

uint64_t sub_1B9036BE0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(0) + 40);
  type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(0);
  sub_1B9038908(&qword_1EBAC2588, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_423_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2530, &qword_1B9680A08);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_159();
  v36 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(0);
  v9 = OUTLINED_FUNCTION_59_1(v36);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2528, &qword_1B9680A00);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_173();
  v16 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App(0);
  v17 = OUTLINED_FUNCTION_59_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v20 = *v2;
  v21 = v2[1];
  OUTLINED_FUNCTION_1();
  if (!v22 || (result = OUTLINED_FUNCTION_70_7(), (v0 = v1) == 0))
  {
    v24 = v2[2];
    v25 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v26 || (result = OUTLINED_FUNCTION_70_7(), (v0 = v1) == 0))
    {
      v27 = v2[4];
      v28 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v29 || (result = OUTLINED_FUNCTION_70_7(), (v0 = v1) == 0))
      {
        v35 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(0);
        v30 = v35[9];
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v3, 1, v16) == 1)
        {
          sub_1B8D9207C(v3, &qword_1EBAC2528, &qword_1B9680A00);
        }

        else
        {
          OUTLINED_FUNCTION_1_36();
          sub_1B90386E0();
          sub_1B9038908(&qword_1EBAC2590, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App);
          sub_1B964C740();
          result = sub_1B9038790();
          if (v0)
          {
            return result;
          }
        }

        v31 = v35[10];
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v4, 1, v36) == 1)
        {
          sub_1B8D9207C(v4, &qword_1EBAC2530, &qword_1B9680A08);
        }

        else
        {
          sub_1B90386E0();
          sub_1B9038908(&qword_1EBAC2588, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail);
          sub_1B964C740();
          result = sub_1B9038790();
          if (v0)
          {
            return result;
          }
        }

        if (sub_1B8D99EA8(v2[6], v2[7]) || (v32 = v2[6], v33 = v2[7], result = sub_1B964C6A0(), !v0))
        {
          v34 = v2 + v35[8];
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

void static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v68 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(0);
  v4 = OUTLINED_FUNCTION_59_1(v68);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2530, &qword_1B9680A08);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2598, &qword_1B9680A20);
  OUTLINED_FUNCTION_59_1(v67);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  v21 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App(0);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v27 = (v26 - v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2528, &qword_1B9680A00);
  OUTLINED_FUNCTION_183(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_79();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC25A0, &qword_1B9680A28);
  OUTLINED_FUNCTION_59_1(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_159();
  v36 = *v1 == *v0 && v1[1] == v0[1];
  if (v36 || (sub_1B964C9F0() & 1) != 0)
  {
    v37 = v1[2] == v0[2] && v1[3] == v0[3];
    if (v37 || (sub_1B964C9F0() & 1) != 0)
    {
      v38 = v1[4] == v0[4] && v1[5] == v0[5];
      if (v38 || (sub_1B964C9F0() & 1) != 0)
      {
        v65 = v20;
        v66 = v15;
        v63 = v9;
        v64 = type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult(0);
        v39 = *(v64 + 36);
        v40 = *(v32 + 48);
        sub_1B8D92024();
        sub_1B8D92024();
        OUTLINED_FUNCTION_178(v3, 1, v21);
        if (v36)
        {
          OUTLINED_FUNCTION_178(v3 + v40, 1, v21);
          v41 = v66;
          if (v36)
          {
            sub_1B8D9207C(v3, &qword_1EBAC2528, &qword_1B9680A00);
            goto LABEL_26;
          }
        }

        else
        {
          sub_1B8D92024();
          OUTLINED_FUNCTION_178(v3 + v40, 1, v21);
          v41 = v66;
          if (!v42)
          {
            sub_1B90386E0();
            v46 = static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App.== infix(_:_:)(v2, v27);
            sub_1B9038790();
            sub_1B9038790();
            sub_1B8D9207C(v3, &qword_1EBAC2528, &qword_1B9680A00);
            if ((v46 & 1) == 0)
            {
              goto LABEL_49;
            }

LABEL_26:
            v48 = v64;
            v47 = v65;
            v49 = *(v64 + 40);
            v50 = *(v67 + 48);
            sub_1B8D92024();
            v51 = v47;
            sub_1B8D92024();
            v52 = v68;
            OUTLINED_FUNCTION_178(v47, 1, v68);
            if (v36)
            {
              OUTLINED_FUNCTION_75(v47 + v50);
              if (v36)
              {
                sub_1B8D9207C(v47, &qword_1EBAC2530, &qword_1B9680A08);
LABEL_31:
                if (MEMORY[0x1BFADC060](v1[6], v1[7], v0[6], v0[7]))
                {
                  v53 = *(v48 + 32);
                  sub_1B964C2B0();
                  OUTLINED_FUNCTION_0_42();
                  sub_1B9038908(v54, v55);
                  OUTLINED_FUNCTION_199_0();
                }

                goto LABEL_49;
              }
            }

            else
            {
              sub_1B8D92024();
              OUTLINED_FUNCTION_75(v47 + v50);
              if (!v56)
              {
                OUTLINED_FUNCTION_4_24();
                v57 = v63;
                sub_1B90386E0();
                v58 = *v41 == *v57 && *(v41 + 1) == *(v57 + 8);
                if (v58 || (sub_1B964C9F0()) && *(v41 + 4) == *(v57 + 16) && *(v41 + 5) == *(v57 + 20))
                {
                  v59 = *(v52 + 28);
                  sub_1B964C2B0();
                  OUTLINED_FUNCTION_0_42();
                  sub_1B9038908(v60, v61);
                  v62 = sub_1B964C850();
                  sub_1B9038790();
                  sub_1B9038790();
                  sub_1B8D9207C(v51, &qword_1EBAC2530, &qword_1B9680A08);
                  if ((v62 & 1) == 0)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_31;
                }

                sub_1B9038790();
                sub_1B9038790();
                v43 = &qword_1EBAC2530;
                v44 = &qword_1B9680A08;
                goto LABEL_47;
              }

              sub_1B9038790();
            }

            v43 = &qword_1EBAC2598;
            v44 = &qword_1B9680A20;
LABEL_47:
            v45 = v51;
            goto LABEL_48;
          }

          sub_1B9038790();
        }

        v43 = &qword_1EBAC25A0;
        v44 = &qword_1B9680A28;
        v45 = v3;
LABEL_48:
        sub_1B8D9207C(v45, v43, v44);
      }
    }
  }

LABEL_49:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B90376C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9038908(&qword_1EBAC2740, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9037744(uint64_t a1)
{
  v2 = sub_1B9038908(&qword_1EBAC2558, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90377B4()
{
  sub_1B9038908(&qword_1EBAC2558, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B9037870()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC24E0);
  __swift_project_value_buffer(v0, qword_1EBAC24E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "install_url";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "bundle_id";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App.decodeMessage<A>(decoder:)()
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
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_423_0();
  OUTLINED_FUNCTION_12_8();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v12 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        v13 = v2[6];
        v14 = v2[7];
        OUTLINED_FUNCTION_1();
        if (!v15 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
        {
          v16 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App(0) + 32);
          OUTLINED_FUNCTION_63_3();
          OUTLINED_FUNCTION_12();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2] == v2[2] && v3[3] == v2[3];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_42();
  sub_1B9038908(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9037DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9038908(&qword_1EBAC2738, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9037E3C(uint64_t a1)
{
  v2 = sub_1B9038908(&qword_1EBAC2590, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9037EAC()
{
  sub_1B9038908(&qword_1EBAC2590, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App);

  return sub_1B964C5D0();
}

uint64_t sub_1B9037F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  OUTLINED_FUNCTION_12_8();
  if (qword_1EBAB6F10 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBAC24A8;
  v10 = qword_1EBAC24B0;
  swift_bridgeObjectRetain_n();
  v7 = OUTLINED_FUNCTION_186();
  MEMORY[0x1BFADC850](v7);

  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t sub_1B9038020()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2508);
  __swift_project_value_buffer(v0, qword_1EBAC2508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
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
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail.decodeMessage<A>(decoder:)()
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

uint64_t Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_423_0();
  OUTLINED_FUNCTION_12_8();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
    {
      if (!*(v2 + 20) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
      {
        v7 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(0) + 28);
        OUTLINED_FUNCTION_63_3();
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 16) != *(v2 + 16) || *(v3 + 20) != *(v2 + 20))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_42();
  sub_1B9038908(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9038474()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B9038908(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9038530(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9038908(&qword_1EBAC2730, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90385B0(uint64_t a1)
{
  v2 = sub_1B9038908(&qword_1EBAC2588, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9038620()
{
  sub_1B9038908(&qword_1EBAC2588, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail);

  return sub_1B964C5D0();
}

uint64_t sub_1B90386E0()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B9038738()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B9038790()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B90387E4(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B90387FC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B90387FC(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B8D91FCC(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1B903880C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B9038824(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B9038824(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1B8D538A0(a1, a2);
  }

  else
  {
  }
}

unint64_t sub_1B90388B4()
{
  result = qword_1EBAC2538;
  if (!qword_1EBAC2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2538);
  }

  return result;
}

uint64_t sub_1B9038908(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B9038950()
{
  result = qword_1EBAC2548;
  if (!qword_1EBAC2548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2548);
  }

  return result;
}

unint64_t sub_1B90389A8()
{
  result = qword_1EBAC25C0;
  if (!qword_1EBAC25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC25C0);
  }

  return result;
}

unint64_t sub_1B9038A00()
{
  result = qword_1EBAC25C8;
  if (!qword_1EBAC25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC25C8);
  }

  return result;
}

unint64_t sub_1B9038A58()
{
  result = qword_1EBAC25D0;
  if (!qword_1EBAC25D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC25D0);
  }

  return result;
}

unint64_t sub_1B9038AE0()
{
  result = qword_1EBAC25E8;
  if (!qword_1EBAC25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC25E8);
  }

  return result;
}

unint64_t sub_1B9038B38()
{
  result = qword_1EBAC25F0;
  if (!qword_1EBAC25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC25F0);
  }

  return result;
}

unint64_t sub_1B9038B90()
{
  result = qword_1EBAC25F8;
  if (!qword_1EBAC25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC25F8);
  }

  return result;
}

void sub_1B903941C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B90396A8(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9039534()
{
  sub_1B90396A8(319, &qword_1EBAC26B0, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.SuggestionResult, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B90396A8(319, &qword_1EBAC26B8, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B90396A8(319, &qword_1EBAC26C0, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B90396A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9039744()
{
  sub_1B90397C8();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B90397C8()
{
  if (!qword_1EBAC26D8)
  {
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAC26D8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B9039878()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B9039924()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B90396A8(319, &qword_1EBAC2700, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.App, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B90396A8(319, &qword_1EBAC2708, type metadata accessor for Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.ImageResult.Thumbnail, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9039A8C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_70_7()
{

  return sub_1B964C700();
}

uint64_t OUTLINED_FUNCTION_81_5()
{

  return sub_1B90386E0();
}

uint64_t OUTLINED_FUNCTION_85_3()
{
  result = sub_1B903880C(v2, v3, v4);
  *v5 = v1;
  *(v5 + 8) = v0;
  *(v5 + 16) = 1;
  return result;
}

uint64_t sub_1B9039C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B90495B8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Apple_Parsec_Kg_V1alpha_PropertyID.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B9039D78@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Kg_V1alpha_PropertyID.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9039DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B904960C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Apple_Parsec_Kg_V1alpha_EntityType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9039ED0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Kg_V1alpha_EntityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_IDSearchRequest.queryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchRequest(v9) + 28);
  OUTLINED_FUNCTION_100_0();
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
    v14 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, Context);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_25();
    OUTLINED_FUNCTION_182();
    return sub_1B90492C4();
  }

  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_IDSearchRequest.queryContext.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchRequest(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBABED40, &qword_1B96809F0);
  OUTLINED_FUNCTION_4_25();
  OUTLINED_FUNCTION_143_3();
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Kg_V1alpha_IDSearchRequest.queryContext.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 8) = v7;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  *(v0 + 16) = Context;
  OUTLINED_FUNCTION_59_1(Context);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  *(v0 + 40) = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchRequest(v14) + 28);
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_178(v7, 1, Context);
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(Context + 20);
    if (qword_1ED9D38C0 != -1)
    {
      OUTLINED_FUNCTION_12_0();
    }

    *(v10 + v16) = qword_1ED9D38C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, Context);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v7, &qword_1EBABED40, &qword_1B96809F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_25();
    sub_1B90492C4();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B903A218()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B904931C();
    sub_1B8D9207C(v4 + v3, &qword_1EBABED40, &qword_1B96809F0);
    OUTLINED_FUNCTION_4_25();
    OUTLINED_FUNCTION_165_2();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_29_15();
    sub_1B9049374();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBABED40, &qword_1B96809F0);
    OUTLINED_FUNCTION_4_25();
    OUTLINED_FUNCTION_166_5();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Kg_V1alpha_IDSearchRequest.subRequests.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_IDSearchRequest.originatingAppBundleID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Kg_V1alpha_IDSearchRequest.originatingAppBundleID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_IDSearchRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchRequest(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Kg_V1alpha_IDSearchRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v1 = type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchRequest(0);
  OUTLINED_FUNCTION_279(v1);
  v2 = *(v1 + 28);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityRequestInfo.entityID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo(v9) + 24);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_131_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    v17 = a1 + *(v11 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9128, &qword_1B964D910);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_182();
    return sub_1B90492C4();
  }

  return result;
}

uint64_t sub_1B903A5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B904931C();
  return a7(v7);
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityRequestInfo.entityID.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB9128, &qword_1B964D910);
  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_143_3();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityID.init()()
{
  OUTLINED_FUNCTION_131_3();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  v4 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  return OUTLINED_FUNCTION_163_2(v4);
}

void Apple_Parsec_Kg_V1alpha_EntityRequestInfo.entityID.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(v9);
  v11 = OUTLINED_FUNCTION_53_6(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 64);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_202_0(v14);
  v16 = __swift_coroFrameAllocStub(v15);
  v17 = OUTLINED_FUNCTION_89_0(v16);
  v18 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo(v17);
  OUTLINED_FUNCTION_64_0(*(v18 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v19)
  {
    OUTLINED_FUNCTION_131_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = v13 + *(v1 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v19)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9128, &qword_1B964D910);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_461();
    sub_1B90492C4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B903A838()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B904931C();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9128, &qword_1B964D910);
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_165_2();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_7_23();
    sub_1B9049374();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9128, &qword_1B964D910);
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_166_5();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityRequestInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityRequestInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo(0);
  OUTLINED_FUNCTION_163_2(v1);
  v2 = *(v1 + 24);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Kg_V1alpha_KGID.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Kg_V1alpha_KGID.id.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1B903AB08()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B903AB90()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Kg_V1alpha_KGID.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Kg_V1alpha_AdamID.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B903AD04()
{
  v0 = OUTLINED_FUNCTION_61_3();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_163_2(v2);
}

uint64_t Apple_Parsec_Kg_V1alpha_UMCID.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Kg_V1alpha_WikiDataID.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Kg_V1alpha_StatsID.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityID.kgID.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = OUTLINED_FUNCTION_74_10();
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAB90E0, &qword_1B964D8D0);
LABEL_6:
    v10 = OUTLINED_FUNCTION_61_3();
    v11 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(v10);
    return OUTLINED_FUNCTION_163_2(v11);
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B9049374();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_1_37();
  OUTLINED_FUNCTION_288();
  return sub_1B90492C4();
}

void Apple_Parsec_Kg_V1alpha_EntityID.kgID.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_7(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_1_37();
      OUTLINED_FUNCTION_128();
      sub_1B90492C4();
      goto LABEL_7;
    }

    sub_1B9049374();
  }

  OUTLINED_FUNCTION_77_6();
LABEL_7:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityID.adamID.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = OUTLINED_FUNCTION_74_10();
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_34_8();
      OUTLINED_FUNCTION_288();
      return sub_1B90492C4();
    }

    sub_1B9049374();
  }

  v11 = OUTLINED_FUNCTION_61_3();
  v12 = type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID(v11);
  return OUTLINED_FUNCTION_163_2(v12);
}

void Apple_Parsec_Kg_V1alpha_EntityID.adamID.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_7(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB90E0, &qword_1B964D8D0);
LABEL_7:
    OUTLINED_FUNCTION_77_6();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9049374();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_128();
  sub_1B90492C4();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityID.umcID.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = OUTLINED_FUNCTION_74_10();
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_288();
      return sub_1B90492C4();
    }

    sub_1B9049374();
  }

  v11 = OUTLINED_FUNCTION_61_3();
  v12 = type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID(v11);
  return OUTLINED_FUNCTION_163_2(v12);
}

void Apple_Parsec_Kg_V1alpha_EntityID.umcID.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_7(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB90E0, &qword_1B964D8D0);
LABEL_7:
    OUTLINED_FUNCTION_77_6();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B9049374();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_128();
  sub_1B90492C4();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityID.wikiDataID.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = OUTLINED_FUNCTION_74_10();
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_32_10();
      OUTLINED_FUNCTION_288();
      return sub_1B90492C4();
    }

    sub_1B9049374();
  }

  v11 = OUTLINED_FUNCTION_61_3();
  v12 = type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID(v11);
  return OUTLINED_FUNCTION_163_2(v12);
}

void Apple_Parsec_Kg_V1alpha_EntityID.wikiDataID.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_7(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB90E0, &qword_1B964D8D0);
LABEL_7:
    OUTLINED_FUNCTION_77_6();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B9049374();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_128();
  sub_1B90492C4();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityID.statsID.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = OUTLINED_FUNCTION_74_10();
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_31_13();
      OUTLINED_FUNCTION_288();
      return sub_1B90492C4();
    }

    sub_1B9049374();
  }

  v11 = OUTLINED_FUNCTION_61_3();
  v12 = type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID(v11);
  return OUTLINED_FUNCTION_163_2(v12);
}

uint64_t sub_1B903BA60(uint64_t a1, uint64_t a2)
{
  sub_1B8D9207C(v2, &qword_1EBAB90E0, &qword_1B964D8D0);
  OUTLINED_FUNCTION_128();
  sub_1B90492C4();
  OUTLINED_FUNCTION_74_10();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, a2);
}

void Apple_Parsec_Kg_V1alpha_EntityID.statsID.modify()
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
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_7(v14);
  *(v1 + 32) = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB90E0, &qword_1B964D8D0);
LABEL_7:
    OUTLINED_FUNCTION_77_6();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B9049374();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_13();
  OUTLINED_FUNCTION_128();
  sub_1B90492C4();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B903BC58()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_461();
    sub_1B904931C();
    sub_1B8D9207C(v5, &qword_1EBAB90E0, &qword_1B964D8D0);
    sub_1B90492C4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B9049374();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAB90E0, &qword_1B964D8D0);
    sub_1B90492C4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityID.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void static Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v88 = v0;
  v89 = v1;
  v83 = type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID(0);
  v2 = OUTLINED_FUNCTION_59_1(v83);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v87 = (v6 - v5);
  v7 = OUTLINED_FUNCTION_201();
  v82 = type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID(v7);
  v8 = OUTLINED_FUNCTION_59_1(v82);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v86 = (v12 - v11);
  v13 = OUTLINED_FUNCTION_201();
  v81 = type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID(v13);
  v14 = OUTLINED_FUNCTION_59_1(v81);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v85 = (v18 - v17);
  v19 = OUTLINED_FUNCTION_201();
  v80 = type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID(v19);
  v20 = OUTLINED_FUNCTION_59_1(v80);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v84 = (v24 - v23);
  v25 = OUTLINED_FUNCTION_201();
  v79 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(v25);
  v26 = OUTLINED_FUNCTION_59_1(v79);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_62();
  v31 = (v30 - v29);
  v32 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  v33 = OUTLINED_FUNCTION_59_1(v32);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = (&v78 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = (&v78 - v40);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = (&v78 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = (&v78 - v46);
  MEMORY[0x1EEE9AC00](v45);
  v49 = (&v78 - v48);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2930, &qword_1B9681958);
  OUTLINED_FUNCTION_183(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_176();
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = &v78 - v55;
  v57 = *(v54 + 56);
  sub_1B904931C();
  sub_1B904931C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_6_14();
      sub_1B904931C();
      if (OUTLINED_FUNCTION_147_3() != 1)
      {
        OUTLINED_FUNCTION_8_24();
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_34_8();
      v71 = v84;
      sub_1B90492C4();
      v72 = *v47 == *v71 && v47[1] == v71[1];
      if (v72 || (sub_1B964C9F0() & 1) != 0)
      {
        OUTLINED_FUNCTION_551(v80);
        OUTLINED_FUNCTION_0_43();
        sub_1B8CD24E0(v73, v74);
        sub_1B964C850();
        OUTLINED_FUNCTION_8_24();
        sub_1B9049374();
      }

      else
      {
        OUTLINED_FUNCTION_8_24();
        sub_1B9049374();
      }

      OUTLINED_FUNCTION_8_24();
      goto LABEL_53;
    case 2u:
      OUTLINED_FUNCTION_6_14();
      sub_1B904931C();
      if (OUTLINED_FUNCTION_147_3() != 2)
      {
        OUTLINED_FUNCTION_9_18();
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_33_8();
      v62 = v85;
      sub_1B90492C4();
      v63 = *v44 == *v62 && v44[1] == v62[1];
      if (v63 || (sub_1B964C9F0() & 1) != 0)
      {
        OUTLINED_FUNCTION_551(v81);
        OUTLINED_FUNCTION_0_43();
        sub_1B8CD24E0(v64, v65);
        sub_1B964C850();
        OUTLINED_FUNCTION_9_18();
        sub_1B9049374();
      }

      else
      {
        OUTLINED_FUNCTION_9_18();
        sub_1B9049374();
      }

      OUTLINED_FUNCTION_9_18();
      goto LABEL_53;
    case 3u:
      OUTLINED_FUNCTION_6_14();
      sub_1B904931C();
      if (OUTLINED_FUNCTION_147_3() != 3)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_32_10();
      v66 = v86;
      sub_1B90492C4();
      v67 = *v41 == *v66 && v41[1] == v66[1];
      if (v67 || (sub_1B964C9F0() & 1) != 0)
      {
        v68 = *(v82 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_43();
        sub_1B8CD24E0(v69, v70);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_93_5();
      sub_1B9049374();
      goto LABEL_53;
    case 4u:
      OUTLINED_FUNCTION_6_14();
      sub_1B904931C();
      if (OUTLINED_FUNCTION_147_3() != 4)
      {
        OUTLINED_FUNCTION_10_17();
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_31_13();
      v58 = v87;
      sub_1B90492C4();
      v59 = *v38 == *v58 && v38[1] == v58[1];
      if (v59 || (sub_1B964C9F0() & 1) != 0)
      {
        OUTLINED_FUNCTION_551(v83);
        OUTLINED_FUNCTION_0_43();
        sub_1B8CD24E0(v60, v61);
        sub_1B964C850();
        OUTLINED_FUNCTION_10_17();
        sub_1B9049374();
      }

      else
      {
        OUTLINED_FUNCTION_10_17();
        sub_1B9049374();
      }

      OUTLINED_FUNCTION_10_17();
      goto LABEL_53;
    default:
      OUTLINED_FUNCTION_6_14();
      sub_1B904931C();
      if (OUTLINED_FUNCTION_147_3())
      {
        OUTLINED_FUNCTION_3_25();
LABEL_40:
        sub_1B9049374();
        sub_1B8D9207C(v56, &qword_1EBAC2930, &qword_1B9681958);
      }

      else
      {
        OUTLINED_FUNCTION_1_37();
        sub_1B90492C4();
        v75 = *v49 == *v31 && v49[1] == v31[1];
        if (v75 || (sub_1B964C9F0() & 1) != 0)
        {
          OUTLINED_FUNCTION_551(v79);
          OUTLINED_FUNCTION_0_43();
          sub_1B8CD24E0(v76, v77);
          sub_1B964C850();
          OUTLINED_FUNCTION_3_25();
          sub_1B9049374();
        }

        else
        {
          OUTLINED_FUNCTION_3_25();
          sub_1B9049374();
        }

        OUTLINED_FUNCTION_3_25();
LABEL_53:
        sub_1B9049374();
        OUTLINED_FUNCTION_17_13();
        sub_1B9049374();
      }

      OUTLINED_FUNCTION_283();
      return;
  }
}

uint64_t sub_1B903C5B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = OUTLINED_FUNCTION_51_2(a1) == *v3 && *(v4 + 8) == v3[1];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_43();
  sub_1B8CD24E0(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t Apple_Parsec_Kg_V1alpha_IDSearchResponse.entities.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B903C6D4()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B903C75C()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 24);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Apple_Parsec_Kg_V1alpha_IDSearchResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchResponse(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Kg_V1alpha_IDSearchResponse.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchResponse(0);
  return OUTLINED_FUNCTION_279(v3);
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityResponseInfo.entityID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(v9) + 20);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_131_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    v17 = a1 + *(v11 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9128, &qword_1B964D910);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_182();
    return sub_1B90492C4();
  }

  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityResponseInfo.entityID.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAB9128, &qword_1B964D910);
  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_143_3();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Kg_V1alpha_EntityResponseInfo.entityID.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(v9);
  v11 = OUTLINED_FUNCTION_53_6(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 64);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_202_0(v14);
  v16 = __swift_coroFrameAllocStub(v15);
  v17 = OUTLINED_FUNCTION_89_0(v16);
  v18 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(v17);
  OUTLINED_FUNCTION_64_0(*(v18 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v19)
  {
    OUTLINED_FUNCTION_131_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v24 = v13 + *(v1 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v19)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9128, &qword_1B964D910);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_461();
    sub_1B90492C4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityResponseInfo.hasEntityID.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9128, &qword_1B964D910);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(v4) + 20);
  OUTLINED_FUNCTION_274_0();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
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
  sub_1B8D9207C(v11, v12, &qword_1B964D910);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Kg_V1alpha_EntityResponseInfo.clearEntityID()()
{
  v1 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAB9128, &qword_1B964D910);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityResponseInfo.kgID.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(v7) + 24);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_158_4();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9110, &qword_1B964D900);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_182();
    return sub_1B90492C4();
  }

  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityResponseInfo.kgID.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB9110, &qword_1B964D900);
  OUTLINED_FUNCTION_1_37();
  OUTLINED_FUNCTION_143_3();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Kg_V1alpha_EntityResponseInfo.kgID.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(v8);
  v10 = OUTLINED_FUNCTION_53_6(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9110, &qword_1B964D900);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_461();
    sub_1B90492C4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B903CE28()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = *(v1(0) + 24);
  OUTLINED_FUNCTION_225_0();
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

uint64_t sub_1B903CF14()
{
  OUTLINED_FUNCTION_111_0();
  v2 = *(v1(0) + 24);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityResponseInfo.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityResponseInfo.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityResponseInfo.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(0);
  v1 = *(v0 + 20);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(v0 + 24);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  v7 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Kg_V1alpha_LocalizedEntityNames.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Kg_V1alpha_LocalizedEntityNames.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames(0);
  return OUTLINED_FUNCTION_279(v1);
}

uint64_t Apple_Parsec_Kg_V1alpha_Entity.kgID.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(v7) + 36);
  OUTLINED_FUNCTION_100_0();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_158_4();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB9110, &qword_1B964D900);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_182();
    return sub_1B90492C4();
  }

  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_Entity.kgID.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB9110, &qword_1B964D900);
  OUTLINED_FUNCTION_1_37();
  OUTLINED_FUNCTION_143_3();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Kg_V1alpha_Entity.kgID.modify()
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
  v9 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(v8);
  v10 = OUTLINED_FUNCTION_53_6(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9110, &qword_1B964D900);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_461();
    sub_1B90492C4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B903D3E8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B904931C();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9110, &qword_1B964D900);
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_165_2();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_3_25();
    sub_1B9049374();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9110, &qword_1B964D900);
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_166_5();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Apple_Parsec_Kg_V1alpha_Entity.localizedNames.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_Entity.alternateIds.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_Entity.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Kg_V1alpha_Entity.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(v2) + 32);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Apple_Parsec_Kg_V1alpha_Entity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Kg_V1alpha_Entity.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v2 = MEMORY[0x1E69E7CC0];
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = v2;
  v1[4] = v2;
  v3 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(0);
  v4 = v1 + *(v3 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 36);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  v6 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.object.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.object.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.typedQualifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(v9) + 28);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9100, &unk_1B964D8F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_18();
    OUTLINED_FUNCTION_182();
    return sub_1B90492C4();
  }

  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.typedQualifiers.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB9100, &unk_1B964D8F0);
  OUTLINED_FUNCTION_5_18();
  OUTLINED_FUNCTION_143_3();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(0);
  return OUTLINED_FUNCTION_279(v2);
}

void Apple_Parsec_Kg_V1alpha_Fact.typedQualifiers.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(v9);
  v11 = OUTLINED_FUNCTION_53_6(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 64);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_202_0(v14);
  v16 = __swift_coroFrameAllocStub(v15);
  v17 = OUTLINED_FUNCTION_89_0(v16);
  v18 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(v17);
  OUTLINED_FUNCTION_64_0(*(v18 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v19)
  {
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v13 + 16) = MEMORY[0x1E69E7CC0];
    v20 = v13 + *(v1 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v19)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9100, &unk_1B964D8F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_18();
    OUTLINED_FUNCTION_461();
    sub_1B90492C4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B903DADC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B904931C();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9100, &unk_1B964D8F0);
    OUTLINED_FUNCTION_5_18();
    OUTLINED_FUNCTION_165_2();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_35_8();
    sub_1B9049374();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9100, &unk_1B964D8F0);
    OUTLINED_FUNCTION_5_18();
    OUTLINED_FUNCTION_166_5();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B903DBEC()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = *(v1(0) + 28);
  OUTLINED_FUNCTION_225_0();
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

uint64_t sub_1B903DCD8()
{
  OUTLINED_FUNCTION_111_0();
  v2 = *(v1(0) + 28);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.lastUpdateTimestamp.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(v7) + 32);
  OUTLINED_FUNCTION_100_0();
  sub_1B964C110();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    sub_1B964C100();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_397();
    return v12();
  }

  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.lastUpdateTimestamp.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(v2) + 32);
  sub_1B8D9207C(v1 + v3, &off_1EBAB90F0, &unk_1B964D8E0);
  v4 = sub_1B964C110();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Apple_Parsec_Kg_V1alpha_Fact.lastUpdateTimestamp.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_686();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  *(v0 + 8) = v6;
  v7 = sub_1B964C110();
  v8 = OUTLINED_FUNCTION_53_6(v7);
  OUTLINED_FUNCTION_30_1(v8);
  v10 = v9;
  *(v0 + 24) = v9;
  v12 = *(v11 + 64);
  *(v0 + 32) = __swift_coroFrameAllocStub(v12);
  *(v0 + 40) = __swift_coroFrameAllocStub(v12);
  *(v0 + 48) = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0) + 32);
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_75(v6);
  if (v13)
  {
    sub_1B964C100();
    OUTLINED_FUNCTION_75(v6);
    if (!v13)
    {
      sub_1B8D9207C(v6, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    v14 = *(v10 + 32);
    v15 = OUTLINED_FUNCTION_461();
    v16(v15);
  }

  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.hasLastUpdateTimestamp.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(v4) + 32);
  OUTLINED_FUNCTION_274_0();
  sub_1B964C110();
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
  sub_1B8D9207C(v11, v12, &unk_1B964D8E0);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Kg_V1alpha_Fact.clearLastUpdateTimestamp()()
{
  v1 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &off_1EBAB90F0, &unk_1B964D8E0);
  sub_1B964C110();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.ttlTimestamp.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(v7) + 36);
  OUTLINED_FUNCTION_100_0();
  sub_1B964C110();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    sub_1B964C100();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_397();
    return v12();
  }

  return result;
}

uint64_t sub_1B903E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_1B964C110();
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

uint64_t Apple_Parsec_Kg_V1alpha_Fact.ttlTimestamp.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(v2) + 36);
  sub_1B8D9207C(v1 + v3, &off_1EBAB90F0, &unk_1B964D8E0);
  v4 = sub_1B964C110();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void Apple_Parsec_Kg_V1alpha_Fact.ttlTimestamp.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_686();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  *(v0 + 8) = v6;
  v7 = sub_1B964C110();
  v8 = OUTLINED_FUNCTION_53_6(v7);
  OUTLINED_FUNCTION_30_1(v8);
  v10 = v9;
  *(v0 + 24) = v9;
  v12 = *(v11 + 64);
  *(v0 + 32) = __swift_coroFrameAllocStub(v12);
  *(v0 + 40) = __swift_coroFrameAllocStub(v12);
  *(v0 + 48) = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0) + 36);
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_75(v6);
  if (v13)
  {
    sub_1B964C100();
    OUTLINED_FUNCTION_75(v6);
    if (!v13)
    {
      sub_1B8D9207C(v6, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    v14 = *(v10 + 32);
    v15 = OUTLINED_FUNCTION_461();
    v16(v15);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B903E4F8()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 12);
  v2 = (*v0)[4];
  v3 = (*v0)[5];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v7 = **v0;
  v6 = (*v0)[1];
  if (v8)
  {
    v9 = *(v5 + 16);
    v10 = OUTLINED_FUNCTION_543();
    v11(v10);
    sub_1B8D9207C(v7 + v1, &off_1EBAB90F0, &unk_1B964D8E0);
    (*(v5 + 32))(v7 + v1, v2, v4);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
    v15 = *(v5 + 8);
    v16 = OUTLINED_FUNCTION_236();
    v17(v16);
  }

  else
  {
    sub_1B8D9207C(v7 + v1, &off_1EBAB90F0, &unk_1B964D8E0);
    (*(v5 + 32))(v7 + v1, v3, v4);
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v4);
  }

  free(v3);
  free(v2);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v21);
}

uint64_t sub_1B903E664()
{
  OUTLINED_FUNCTION_111_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_137();
  v9 = *(v1(0) + 36);
  OUTLINED_FUNCTION_225_0();
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

uint64_t sub_1B903E750()
{
  OUTLINED_FUNCTION_111_0();
  v2 = *(v1(0) + 36);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.Qualifier.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.Qualifier.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier(0);
  return OUTLINED_FUNCTION_279(v2);
}

void Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers.qualifierType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers.qualifierType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers.qualifier.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0);
  OUTLINED_FUNCTION_279(v2);
  v3 = v2[7];
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v2[8];
  v9 = sub_1B964C110();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = v2[9];
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
}

uint64_t sub_1B903EAB4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2778);
  __swift_project_value_buffer(v0, qword_1EBAC2778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1B964EE50;
  v4 = v53 + v3;
  v5 = v53 + v3 + v1[14];
  *(v53 + v3) = 0;
  *v5 = "PROPERTY_ID_UNSPECIFIED";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PROPERTY_ID_PS1";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "PROPERTY_ID_PS33";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "PROPERTY_ID_PS3";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "PROPERTY_ID_PS10";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "PROPERTY_ID_PS16";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "PROPERTY_ID_PS53";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "PROPERTY_ID_PS102";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "PROPERTY_ID_PS106";
  *(v23 + 1) = 17;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "PROPERTY_ID_PS123";
  *(v25 + 1) = 17;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "PROPERTY_ID_PS137";
  *(v27 + 1) = 17;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "PROPERTY_ID_PS358";
  *(v29 + 1) = 17;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "PROPERTY_ID_PS359";
  *(v31 + 1) = 17;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "PROPERTY_ID_PS486";
  *(v33 + 1) = 17;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "PROPERTY_ID_PS7";
  *(v35 + 1) = 15;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "PROPERTY_ID_PS4";
  *(v37 + 1) = 15;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 16;
  *v39 = "PROPERTY_ID_PS5";
  *(v39 + 1) = 15;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 17;
  *v41 = "PROPERTY_ID_PS29";
  *(v41 + 1) = 16;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 18;
  *v43 = "PROPERTY_ID_PS232";
  *(v43 + 1) = 17;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 19;
  *v45 = "PROPERTY_ID_PS144";
  *(v45 + 1) = 17;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 20;
  *v47 = "PROPERTY_ID_PS143";
  *(v47 + 1) = 17;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 21;
  *v49 = "PROPERTY_ID_NM_homeTeam";
  *(v49 + 1) = 23;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 22;
  *v51 = "PROPERTY_ID_PS314";
  *(v51 + 1) = 17;
  v51[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B903F190()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2790);
  __swift_project_value_buffer(v0, qword_1EBAC2790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B9661280;
  v4 = v46 + v3 + v1[14];
  *(v46 + v3) = 0;
  *v4 = "ENTITY_TYPE_UNSPECIFIED";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v46 + v3 + v2 + v1[14];
  *(v46 + v3 + v2) = 1;
  *v8 = "ENTITY_TYPE_SB104";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  v7();
  v9 = (v46 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ENTITY_TYPE_SB152";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v7();
  v11 = (v46 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ENTITY_TYPE_SB44";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v46 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ENTITY_TYPE_SB199";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v46 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ENTITY_TYPE_SB399";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v46 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ENTITY_TYPE_CS2";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  v19 = (v46 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ENTITY_TYPE_SB461";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v46 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ENTITY_TYPE_CS3";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v46 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ENTITY_TYPE_SB198";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v7();
  v25 = (v46 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ENTITY_TYPE_SB56";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v7();
  v27 = (v46 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ENTITY_TYPE_CS15";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v7();
  v29 = (v46 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ENTITY_TYPE_CS31";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v7();
  v31 = (v46 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ENTITY_TYPE_CS113";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v7();
  v33 = (v46 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ENTITY_TYPE_SB170";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v7();
  v35 = (v46 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ENTITY_TYPE_SB138";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v7();
  v37 = (v46 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "ENTITY_TYPE_CS38";
  *(v38 + 1) = 16;
  v38[16] = 2;
  v7();
  v39 = (v46 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "ENTITY_TYPE_SB71";
  *(v40 + 1) = 16;
  v40[16] = 2;
  v7();
  v41 = (v46 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "ENTITY_TYPE_SB14";
  *(v42 + 1) = 16;
  v42[16] = 2;
  v7();
  v43 = (v46 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "ENTITY_TYPE_SB394";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B903F7B8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC27A8);
  __swift_project_value_buffer(v0, qword_1EBAC27A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
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
  *v10 = "sub_requests";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "originating_app_bundle_id";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Kg_V1alpha_IDSearchRequest.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B9044A40();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B903FAB4();
        break;
    }
  }
}

uint64_t sub_1B903FAB4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchRequest(0) + 28);
  type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  sub_1B8CD24E0(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
  return sub_1B964C580();
}

void Apple_Parsec_Kg_V1alpha_IDSearchRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_151();
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(v9);
  v11 = OUTLINED_FUNCTION_59_1(Context);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v14 = OUTLINED_FUNCTION_140_1();
  v23 = type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchRequest(v14);
  v15 = *(v23 + 28);
  OUTLINED_FUNCTION_161_4();
  v16 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v16, v17, Context);
  if (v18)
  {
    sub_1B8D9207C(v2, &qword_1EBABED40, &qword_1B96809F0);
  }

  else
  {
    OUTLINED_FUNCTION_4_25();
    OUTLINED_FUNCTION_2();
    sub_1B90492C4();
    sub_1B8CD24E0(&qword_1ED9CF498, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext);
    OUTLINED_FUNCTION_97_2();
    sub_1B964C740();
    OUTLINED_FUNCTION_29_15();
    sub_1B9049374();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo(0), sub_1B8CD24E0(&qword_1EBAC2938, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo), OUTLINED_FUNCTION_231(), sub_1B964C730(), !v1))
  {
    v19 = v0[1];
    v20 = v0[2];
    OUTLINED_FUNCTION_1();
    if (!v21 || (sub_1B964C700(), !v1))
    {
      v22 = v0 + *(v23 + 24);
      OUTLINED_FUNCTION_150_4();
      sub_1B964C290();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Kg_V1alpha_IDSearchRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v6 = v5;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext(0);
  v8 = OUTLINED_FUNCTION_59_1(Context);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v13 = v12 - v11;
  v14 = OUTLINED_FUNCTION_190_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_183(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_173();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED68, &qword_1B9680A10);
  OUTLINED_FUNCTION_120_4(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_79();
  v45 = type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchRequest(0);
  v24 = *(v45 + 28);
  v25 = *(v2 + 56);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (!v26)
  {
    OUTLINED_FUNCTION_467();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v0 + v25);
    if (!v26)
    {
      OUTLINED_FUNCTION_4_25();
      sub_1B90492C4();
      v29 = *(Context + 20);
      v30 = *(v1 + v29);
      v31 = *(v13 + v29);
      if (v30 == v31 || (v32 = *(v1 + v29), , , v33 = sub_1B9090820(v30, v31), , , v33))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_43();
        sub_1B8CD24E0(v34, v35);
        v36 = sub_1B964C850();
        sub_1B9049374();
        OUTLINED_FUNCTION_686();
        sub_1B9049374();
        sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
        if (v36)
        {
          goto LABEL_14;
        }

LABEL_21:
        v44 = 0;
        goto LABEL_22;
      }

      sub_1B9049374();
      sub_1B9049374();
      v27 = &qword_1EBABED40;
      v28 = &qword_1B96809F0;
LABEL_10:
      sub_1B8D9207C(v0, v27, v28);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_29_15();
    sub_1B9049374();
LABEL_9:
    v27 = &qword_1EBABED68;
    v28 = &qword_1B9680A10;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v0 + v25);
  if (!v26)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v0, &qword_1EBABED40, &qword_1B96809F0);
LABEL_14:
  v37 = *v6;
  v38 = *v4;
  sub_1B8D70D84();
  if ((v39 & 1) == 0)
  {
    goto LABEL_21;
  }

  v40 = v6[1] == v4[1] && v6[2] == v4[2];
  if (!v40 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_21;
  }

  v41 = *(v45 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_43();
  sub_1B8CD24E0(v42, v43);
  v44 = OUTLINED_FUNCTION_181();
LABEL_22:
  OUTLINED_FUNCTION_264(v44);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9040180(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C70, type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9040200(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2A60, type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9040270()
{
  sub_1B8CD24E0(&qword_1EBAC2A60, type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B9040308()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC27C0);
  __swift_project_value_buffer(v0, qword_1EBAC27C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B904053C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo(0) + 24);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  sub_1B8CD24E0(&qword_1EBAC2950, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID);
  return sub_1B964C580();
}

void Apple_Parsec_Kg_V1alpha_EntityRequestInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_151();
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(v9);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v14 = OUTLINED_FUNCTION_140_1();
  v22 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo(v14);
  v15 = *(v22 + 24);
  OUTLINED_FUNCTION_161_4();
  v16 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v16, v17, v10);
  if (v18)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9128, &qword_1B964D910);
  }

  else
  {
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_2();
    sub_1B90492C4();
    OUTLINED_FUNCTION_28_12();
    sub_1B8CD24E0(v19, v20);
    OUTLINED_FUNCTION_97_2();
    OUTLINED_FUNCTION_151_3();
    sub_1B964C740();
    OUTLINED_FUNCTION_7_23();
    sub_1B9049374();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  if (!*(*v0 + 16) || (sub_1B90495B8(), OUTLINED_FUNCTION_151_3(), sub_1B964C600(), !v1))
  {
    v21 = v0 + *(v22 + 20);
    OUTLINED_FUNCTION_150_4();
    sub_1B964C290();
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9040B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C68, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9040BB4(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2938, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9040C24()
{
  sub_1B8CD24E0(&qword_1EBAC2938, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B9040DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C60, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9040E3C(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC29A8, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9040EAC()
{
  sub_1B8CD24E0(&qword_1EBAC29A8, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID);

  return sub_1B964C5D0();
}

uint64_t sub_1B9040FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  v7 = *v4;
  v8 = v4[1];
  OUTLINED_FUNCTION_1();
  if (!v9 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v5))
  {
    v11 = *(a4(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B90410A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C58, type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9041128(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2A98, type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9041198()
{
  sub_1B8CD24E0(&qword_1EBAC2A98, type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID);

  return sub_1B964C5D0();
}

uint64_t sub_1B9041318(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C50, type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9041398(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2AB0, type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9041408()
{
  sub_1B8CD24E0(&qword_1EBAC2AB0, type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID);

  return sub_1B964C5D0();
}

uint64_t sub_1B9041588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C48, type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9041608(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2AC8, type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9041678()
{
  sub_1B8CD24E0(&qword_1EBAC2AC8, type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID);

  return sub_1B964C5D0();
}

uint64_t sub_1B904171C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B964C780();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_288();
  __swift_project_value_buffer(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B964D050;
  v10 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v10 = "id";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v12);
  (*(v13 + 104))(v10, v11);
  return sub_1B964C760();
}

uint64_t sub_1B9041898()
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
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B90419A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C40, type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9041A20(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2AE0, type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9041A90()
{
  sub_1B8CD24E0(&qword_1EBAC2AE0, type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID);

  return sub_1B964C5D0();
}

uint64_t sub_1B9041B28()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2850);
  __swift_project_value_buffer(v0, qword_1EBAC2850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "kg_id";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "adam_id";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "umc_id";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "wiki_data_id";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "stats_id";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityID.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B9041E80(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_17_3();
        sub_1B9042378(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B9042870(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B9042D68(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B9043260(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9041E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9110, &qword_1B964D900);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    sub_1B90492C4();
    sub_1B90492C4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9049374();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAB9110, &qword_1B964D900);
      sub_1B90492C4();
      sub_1B90492C4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD24E0(&qword_1EBAC29A8, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAB9110, &qword_1B964D900);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAB9110, &qword_1B964D900);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAB9110, &qword_1B964D900);
  }

  sub_1B90492C4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAB9110, &qword_1B964D900);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB90E0, &qword_1B964D8D0);
  sub_1B90492C4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9042378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2C78, &qword_1B9683598);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    sub_1B90492C4();
    sub_1B90492C4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2C78, &qword_1B9683598);
      sub_1B90492C4();
      sub_1B90492C4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9049374();
    }
  }

  sub_1B8CD24E0(&qword_1EBAC2A98, type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2C78, &qword_1B9683598);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2C78, &qword_1B9683598);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2C78, &qword_1B9683598);
  }

  sub_1B90492C4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2C78, &qword_1B9683598);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB90E0, &qword_1B964D8D0);
  sub_1B90492C4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9042870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2C80, &qword_1B96835A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    sub_1B90492C4();
    sub_1B90492C4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2C80, &qword_1B96835A0);
      sub_1B90492C4();
      sub_1B90492C4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9049374();
    }
  }

  sub_1B8CD24E0(&qword_1EBAC2AB0, type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2C80, &qword_1B96835A0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2C80, &qword_1B96835A0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2C80, &qword_1B96835A0);
  }

  sub_1B90492C4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2C80, &qword_1B96835A0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB90E0, &qword_1B964D8D0);
  sub_1B90492C4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9042D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2C88, &qword_1B96835A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    sub_1B90492C4();
    sub_1B90492C4();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2C88, &qword_1B96835A8);
      sub_1B90492C4();
      sub_1B90492C4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9049374();
    }
  }

  sub_1B8CD24E0(&qword_1EBAC2AC8, type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2C88, &qword_1B96835A8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2C88, &qword_1B96835A8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2C88, &qword_1B96835A8);
  }

  sub_1B90492C4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2C88, &qword_1B96835A8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB90E0, &qword_1B964D8D0);
  sub_1B90492C4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9043260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2C90, &unk_1B96835B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    sub_1B90492C4();
    sub_1B90492C4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v22, &qword_1EBAC2C90, &unk_1B96835B0);
      sub_1B90492C4();
      sub_1B90492C4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9049374();
    }
  }

  sub_1B8CD24E0(&qword_1EBAC2AE0, type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC2C90, &unk_1B96835B0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC2C90, &unk_1B96835B0);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC2C90, &unk_1B96835B0);
  }

  sub_1B90492C4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC2C90, &unk_1B96835B0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB90E0, &qword_1B964D8D0);
  sub_1B90492C4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Apple_Parsec_Kg_V1alpha_EntityID.traverse<A>(visitor:)()
{
  v3 = OUTLINED_FUNCTION_190_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  v9 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  OUTLINED_FUNCTION_178(v2, 1, v9);
  if (v10)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_686();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = OUTLINED_FUNCTION_7_6();
      sub_1B9043AC0(v27, v28, v29, v30);
      break;
    case 2u:
      v19 = OUTLINED_FUNCTION_7_6();
      sub_1B9043CD4(v19, v20, v21, v22);
      break;
    case 3u:
      v23 = OUTLINED_FUNCTION_7_6();
      sub_1B9043EE8(v23, v24, v25, v26);
      break;
    case 4u:
      v15 = OUTLINED_FUNCTION_7_6();
      sub_1B90440FC(v15, v16, v17, v18);
      break;
    default:
      v11 = OUTLINED_FUNCTION_7_6();
      sub_1B90438B0(v11, v12, v13, v14);
      break;
  }

  OUTLINED_FUNCTION_17_13();
  result = sub_1B9049374();
  if (!v1)
  {
LABEL_9:
    v32 = v0 + *(type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B90438B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B90492C4();
      sub_1B8CD24E0(&qword_1EBAC29A8, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID);
      sub_1B964C740();
      return sub_1B9049374();
    }

    result = sub_1B9049374();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9043AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B90492C4();
      sub_1B8CD24E0(&qword_1EBAC2A98, type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID);
      sub_1B964C740();
      return sub_1B9049374();
    }

    result = sub_1B9049374();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9043CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B90492C4();
      sub_1B8CD24E0(&qword_1EBAC2AB0, type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID);
      sub_1B964C740();
      return sub_1B9049374();
    }

    result = sub_1B9049374();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9043EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B90492C4();
      sub_1B8CD24E0(&qword_1EBAC2AC8, type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID);
      sub_1B964C740();
      return sub_1B9049374();
    }

    result = sub_1B9049374();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B90440FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB90E0, &qword_1B964D8D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B90492C4();
      sub_1B8CD24E0(&qword_1EBAC2AE0, type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID);
      sub_1B964C740();
      return sub_1B9049374();
    }

    result = sub_1B9049374();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Kg_V1alpha_EntityID.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_468();
  v22 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(0);
  v23 = OUTLINED_FUNCTION_59_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v26 = OUTLINED_FUNCTION_686();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_183(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_79();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E8, &qword_1B964D8D8);
  OUTLINED_FUNCTION_183(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &a9 - v37;
  v39 = *(v36 + 56);
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_643();
  v40 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v40, v41, v22);
  if (v42)
  {
    OUTLINED_FUNCTION_178(&v38[v39], 1, v22);
    if (v42)
    {
      sub_1B8D9207C(v38, &qword_1EBAB90E0, &qword_1B964D8D0);
LABEL_12:
      v46 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0) + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_43();
      sub_1B8CD24E0(v47, v48);
      v43 = OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v38[v39], 1, v22);
  if (v42)
  {
    OUTLINED_FUNCTION_17_13();
    sub_1B9049374();
LABEL_9:
    sub_1B8D9207C(v38, &qword_1EBAB90E8, &qword_1B964D8D8);
    goto LABEL_10;
  }

  sub_1B90492C4();
  static Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID.== infix(_:_:)();
  v45 = v44;
  sub_1B9049374();
  OUTLINED_FUNCTION_467();
  sub_1B9049374();
  sub_1B8D9207C(v38, &qword_1EBAB90E0, &qword_1B964D8D0);
  if (v45)
  {
    goto LABEL_12;
  }

LABEL_10:
  v43 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v43);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9044610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C38, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9044690(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2950, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9044700()
{
  sub_1B8CD24E0(&qword_1EBAC2950, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID);

  return sub_1B964C5D0();
}

uint64_t sub_1B9044798()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2868);
  __swift_project_value_buffer(v0, qword_1EBAC2868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sub_responses";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entities";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Kg_V1alpha_IDSearchResponse.decodeMessage<A>(decoder:)()
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
      sub_1B9044A94();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9044A40();
    }
  }
}

void sub_1B9044A40()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD24E0(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9044A94()
{
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(0);
  sub_1B8CD24E0(&qword_1EBAC2998, type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Kg_V1alpha_IDSearchResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(0), sub_1B8CD24E0(&qword_1EBAC2990, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C730(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(0), sub_1B8CD24E0(&qword_1EBAC2998, type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C730(), !v1))
    {
      v4 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchResponse(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B9044D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C30, type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9044E08(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2B08, type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9044E78()
{
  sub_1B8CD24E0(&qword_1EBAC2B08, type metadata accessor for Apple_Parsec_Kg_V1alpha_IDSearchResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B9044F10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2880);
  __swift_project_value_buffer(v0, qword_1EBAC2880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "kg_id";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B904513C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
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
      v11 = OUTLINED_FUNCTION_44_5();
      a5(v11);
    }

    else if (result == 1)
    {
      v10 = OUTLINED_FUNCTION_44_5();
      a4(v10);
    }
  }

  return result;
}

uint64_t sub_1B90451C8()
{
  v0 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(0) + 20);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  sub_1B8CD24E0(&qword_1EBAC2950, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID);
  return sub_1B964C580();
}

uint64_t sub_1B904527C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(0) + 24);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  sub_1B8CD24E0(&qword_1EBAC29A8, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID);
  return sub_1B964C580();
}

void Apple_Parsec_Kg_V1alpha_EntityResponseInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = v0;
  v37 = v4;
  v38 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9110, &qword_1B964D900);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_140_1();
  v35 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(v10);
  v11 = OUTLINED_FUNCTION_59_1(v35);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v34[1] = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9128, &qword_1B964D910);
  OUTLINED_FUNCTION_183(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v34 - v20;
  v22 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  v23 = OUTLINED_FUNCTION_59_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v26 = type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo(0);
  v27 = *(v26 + 20);
  v36 = v3;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v21, 1, v22);
  if (v28)
  {
    sub_1B8D9207C(v21, &qword_1EBAB9128, &qword_1B964D910);
  }

  else
  {
    OUTLINED_FUNCTION_2_23();
    sub_1B90492C4();
    OUTLINED_FUNCTION_28_12();
    sub_1B8CD24E0(v29, v30);
    OUTLINED_FUNCTION_151_3();
    sub_1B964C740();
    OUTLINED_FUNCTION_7_23();
    sub_1B9049374();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  v31 = *(v26 + 24);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2, 1, v35);
  if (v28)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9110, &qword_1B964D900);
LABEL_9:
    sub_1B964C290();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_37();
  sub_1B90492C4();
  OUTLINED_FUNCTION_94_7();
  sub_1B8CD24E0(v32, v33);
  OUTLINED_FUNCTION_151_3();
  sub_1B964C740();
  OUTLINED_FUNCTION_3_25();
  sub_1B9049374();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9045BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C28, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9045C64(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2990, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9045CD4()
{
  sub_1B8CD24E0(&qword_1EBAC2990, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B9045D6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2898);
  __swift_project_value_buffer(v0, qword_1EBAC2898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "locale";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "primary_name";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Kg_V1alpha_LocalizedEntityNames.decodeMessage<A>(decoder:)()
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

uint64_t Apple_Parsec_Kg_V1alpha_LocalizedEntityNames.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
    {
      v10 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Kg_V1alpha_LocalizedEntityNames.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1) == *v1 && v2[1] == v1[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames(0);
  OUTLINED_FUNCTION_188_1(v5);
  OUTLINED_FUNCTION_0_43();
  sub_1B8CD24E0(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B90461A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C20, type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9046220(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC29D0, type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9046290()
{
  sub_1B8CD24E0(&qword_1EBAC29D0, type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames);

  return sub_1B964C5D0();
}

uint64_t sub_1B9046328()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC28B0);
  __swift_project_value_buffer(v0, qword_1EBAC28B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "kg_id";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entity_type";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "facts";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "localized_names";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "alternate_ids";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Kg_V1alpha_Entity.decodeMessage<A>(decoder:)()
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
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B90466D4();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8CFC4BC();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9048E0C();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9046788();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B9046828();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B90466D4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(0) + 36);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  sub_1B8CD24E0(&qword_1EBAC29A8, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID);
  return sub_1B964C580();
}

uint64_t sub_1B9046788()
{
  type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames(0);
  sub_1B8CD24E0(&qword_1EBAC29D0, type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames);
  return sub_1B964C570();
}

uint64_t sub_1B9046828()
{
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0);
  sub_1B8CD24E0(&qword_1EBAC2950, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID);
  return sub_1B964C570();
}

void Apple_Parsec_Kg_V1alpha_Entity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9110, &qword_1B964D900);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_151();
  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(v7);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = OUTLINED_FUNCTION_140_1();
  v22 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(v12);
  v13 = *(v22 + 36);
  sub_1B8D92024();
  v14 = OUTLINED_FUNCTION_443();
  OUTLINED_FUNCTION_178(v14, v15, v8);
  if (v16)
  {
    sub_1B8D9207C(v2, &qword_1EBAB9110, &qword_1B964D900);
  }

  else
  {
    OUTLINED_FUNCTION_1_37();
    OUTLINED_FUNCTION_2();
    sub_1B90492C4();
    OUTLINED_FUNCTION_94_7();
    sub_1B8CD24E0(v17, v18);
    OUTLINED_FUNCTION_97_2();
    OUTLINED_FUNCTION_39_4();
    sub_1B964C740();
    OUTLINED_FUNCTION_3_25();
    sub_1B9049374();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  if (!*v0 || (v23 = *v0, v24 = *(v0 + 8), sub_1B904960C(), OUTLINED_FUNCTION_39_4(), sub_1B964C680(), !v1))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0), sub_1B8CD24E0(&qword_1EBAC29C8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), !v1))
    {
      if (!*(v0[3] + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames(0), sub_1B8CD24E0(&qword_1EBAC29D0, type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), !v1))
      {
        if (!*(v0[4] + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(0), OUTLINED_FUNCTION_28_12(), sub_1B8CD24E0(v19, v20), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), sub_1B964C730(), !v1))
        {
          v21 = v0 + *(v22 + 32);
          sub_1B964C290();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Kg_V1alpha_Entity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v5 = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v11 = (v10 - v9);
  v12 = OUTLINED_FUNCTION_190_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_173();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9118, &unk_1B9681970);
  OUTLINED_FUNCTION_120_4(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_79();
  v50 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity(0);
  v22 = *(v50 + 36);
  v23 = *(v4 + 56);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v24)
  {
    OUTLINED_FUNCTION_467();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v23);
    if (!v24)
    {
      OUTLINED_FUNCTION_1_37();
      sub_1B90492C4();
      v27 = *v3 == *v11 && v3[1] == v11[1];
      if (v27 || (sub_1B964C9F0() & 1) != 0)
      {
        v28 = *(v5 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_43();
        sub_1B8CD24E0(v29, v30);
        v31 = sub_1B964C850();
        sub_1B9049374();
        OUTLINED_FUNCTION_686();
        sub_1B9049374();
        sub_1B8D9207C(v2, &qword_1EBAB9110, &qword_1B964D900);
        if (v31)
        {
          goto LABEL_17;
        }

LABEL_22:
        v49 = 0;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_95_5();
      sub_1B9049374();
      sub_1B9049374();
      v25 = &qword_1EBAB9110;
      v26 = &qword_1B964D900;
LABEL_10:
      sub_1B8D9207C(v2, v25, v26);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_3_25();
    sub_1B9049374();
LABEL_9:
    v25 = &qword_1EBAB9118;
    v26 = &unk_1B9681970;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_0(v2 + v23);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAB9110, &qword_1B964D900);
LABEL_17:
  v32 = *v1;
  v33 = *(v1 + 8);
  OUTLINED_FUNCTION_148_2();
  if (!sub_1B8D92198(v34, v35, v36))
  {
    goto LABEL_22;
  }

  v37 = v1[2];
  v38 = v0[2];
  sub_1B8D78718();
  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

  v40 = v1[3];
  v41 = v0[3];
  sub_1B8D7876C();
  if ((v42 & 1) == 0)
  {
    goto LABEL_22;
  }

  v43 = v1[4];
  v44 = v0[4];
  sub_1B8D787AC();
  if ((v45 & 1) == 0)
  {
    goto LABEL_22;
  }

  v46 = *(v50 + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_43();
  sub_1B8CD24E0(v47, v48);
  v49 = OUTLINED_FUNCTION_199_0();
LABEL_23:
  OUTLINED_FUNCTION_264(v49);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9046F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C18, type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B904700C(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC2998, type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B904707C()
{
  sub_1B8CD24E0(&qword_1EBAC2998, type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity);

  return sub_1B964C5D0();
}

uint64_t sub_1B9047114()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC28C8);
  __swift_project_value_buffer(v0, qword_1EBAC28C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "object";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "typed_qualifiers";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "last_update_timestamp";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ttl_timestamp";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_9();
        sub_1B8CFC46C();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B904747C();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B9047530();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B90475E4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B904747C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0) + 28);
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(0);
  sub_1B8CD24E0(&qword_1EBAC29E0, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers);
  return sub_1B964C580();
}

uint64_t sub_1B9047530()
{
  v0 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0) + 32);
  sub_1B964C110();
  sub_1B8CD24E0(&qword_1EBABD1B8, MEMORY[0x1E69AA900]);
  return sub_1B964C580();
}

uint64_t sub_1B90475E4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0) + 36);
  sub_1B964C110();
  sub_1B8CD24E0(&qword_1EBABD1B8, MEMORY[0x1E69AA900]);
  return sub_1B964C580();
}

void Apple_Parsec_Kg_V1alpha_Fact.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  v4 = OUTLINED_FUNCTION_183(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44_0();
  v55 = v7;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v59 = sub_1B964C110();
  v11 = OUTLINED_FUNCTION_30_1(v59);
  v56 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44_0();
  v54 = v15;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9100, &unk_1B964D8F0);
  OUTLINED_FUNCTION_183(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_151();
  v23 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(v22);
  v24 = OUTLINED_FUNCTION_59_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  if (!*v0 || (v27 = *(v0 + 8), v57 = *v0, v58 = v27, sub_1B90495B8(), sub_1B964C680(), !v1))
  {
    v28 = v0[2];
    v29 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v30 || (sub_1B964C700(), !v1))
    {
      v52 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0);
      v31 = v52[7];
      sub_1B8D92024();
      v32 = OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_178(v32, v33, v23);
      if (v34)
      {
        sub_1B8D9207C(v2, &qword_1EBAB9100, &unk_1B964D8F0);
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_5_18();
      OUTLINED_FUNCTION_292();
      sub_1B90492C4();
      sub_1B8CD24E0(&qword_1EBAC29E0, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers);
      sub_1B964C740();
      OUTLINED_FUNCTION_35_8();
      sub_1B9049374();
      if (!v1)
      {
LABEL_9:
        v35 = v52[8];
        sub_1B8D92024();
        OUTLINED_FUNCTION_178(v10, 1, v59);
        v37 = v55;
        v36 = v56;
        if (v34)
        {
          sub_1B8D9207C(v10, &off_1EBAB90F0, &unk_1B964D8E0);
        }

        else
        {
          (*(v56 + 32))();
          OUTLINED_FUNCTION_18_12();
          sub_1B8CD24E0(v38, v39);
          OUTLINED_FUNCTION_150_4();
          sub_1B964C740();
          if (v1)
          {
            goto LABEL_18;
          }

          v40 = *(v36 + 8);
          v41 = OUTLINED_FUNCTION_467();
          v42(v41);
        }

        v43 = v52[9];
        sub_1B8D92024();
        OUTLINED_FUNCTION_178(v37, 1, v59);
        v44 = v54;
        if (v34)
        {
          sub_1B8D9207C(v37, &off_1EBAB90F0, &unk_1B964D8E0);
        }

        else
        {
          (*(v36 + 32))(v54, v37, v59);
          OUTLINED_FUNCTION_18_12();
          sub_1B8CD24E0(v45, v46);
          OUTLINED_FUNCTION_150_4();
          sub_1B964C740();
          if (v1)
          {
LABEL_18:
            v47 = *(v36 + 8);
            v48 = OUTLINED_FUNCTION_467();
            v49(v48);
            goto LABEL_21;
          }

          (*(v36 + 8))(v44, v59);
        }

        v50 = v0 + v52[6];
        sub_1B964C290();
      }
    }
  }

LABEL_21:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Kg_V1alpha_Fact.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = sub_1B964C110();
  v5 = OUTLINED_FUNCTION_30_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v101 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  v103 = &v96 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90F8, &qword_1B9687990);
  v20 = OUTLINED_FUNCTION_59_1(v105);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  v102 = v23;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v24);
  v104 = &v96 - v25;
  v26 = OUTLINED_FUNCTION_201();
  v27 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(v26);
  v28 = OUTLINED_FUNCTION_59_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9100, &unk_1B964D8F0);
  OUTLINED_FUNCTION_183(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_137();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9108, &qword_1B9681980);
  OUTLINED_FUNCTION_59_1(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_173();
  v42 = *v1;
  v43 = *(v1 + 8);
  OUTLINED_FUNCTION_148_2();
  if (!sub_1B8D92198(v44, v45, v46))
  {
    goto LABEL_39;
  }

  v47 = v1[2] == *(v0 + 16) && v1[3] == *(v0 + 24);
  if (!v47 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_39;
  }

  v97 = v12;
  v98 = v7;
  v99 = v4;
  v100 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact(0);
  v48 = v100[7];
  v49 = *(v38 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3);
  if (v47)
  {
    OUTLINED_FUNCTION_37_0(v3 + v49);
    if (v47)
    {
      sub_1B8D9207C(v3, &qword_1EBAB9100, &unk_1B964D8F0);
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3 + v49);
  if (v58)
  {
    OUTLINED_FUNCTION_35_8();
    sub_1B9049374();
LABEL_20:
    v59 = &qword_1EBAB9108;
    v60 = &qword_1B9681980;
LABEL_26:
    v69 = v3;
LABEL_38:
    sub_1B8D9207C(v69, v59, v60);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_5_18();
  sub_1B90492C4();
  v61 = *(v33 + 8);
  if (!sub_1B8D92198(*v2, *(v2 + 8), *v33) || (v62 = *(v2 + 16), v63 = *(v33 + 16), sub_1B8D7AE94(), (v64 & 1) == 0))
  {
    sub_1B9049374();
    sub_1B9049374();
    v59 = &qword_1EBAB9100;
    v60 = &unk_1B964D8F0;
    goto LABEL_26;
  }

  v65 = *(v27 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_43();
  sub_1B8CD24E0(v66, v67);
  v68 = sub_1B964C850();
  sub_1B9049374();
  sub_1B9049374();
  sub_1B8D9207C(v3, &qword_1EBAB9100, &unk_1B964D8F0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_12:
  v50 = v100[8];
  v51 = v104;
  v52 = *(v105 + 48);
  OUTLINED_FUNCTION_164_1();
  v53 = v51;
  OUTLINED_FUNCTION_164_1();
  v54 = v51;
  v55 = v99;
  OUTLINED_FUNCTION_178(v54, 1, v99);
  if (v47)
  {
    OUTLINED_FUNCTION_99_0(v53 + v52);
    v57 = v97;
    v56 = v98;
    if (!v47)
    {
      goto LABEL_37;
    }

    sub_1B8D9207C(v53, &off_1EBAB90F0, &unk_1B964D8E0);
    goto LABEL_29;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v53 + v52);
  v57 = v97;
  v56 = v98;
  if (v70)
  {
LABEL_36:
    v82 = *(v56 + 8);
    v83 = OUTLINED_FUNCTION_292();
    v84(v83);
LABEL_37:
    v59 = &qword_1EBAB90F8;
    v60 = &qword_1B9687990;
    v69 = v53;
    goto LABEL_38;
  }

  v71 = OUTLINED_FUNCTION_135_5();
  v72(v71);
  OUTLINED_FUNCTION_18_12();
  sub_1B8CD24E0(v73, v74);
  OUTLINED_FUNCTION_2();
  v75 = sub_1B964C850();
  v76 = *(v56 + 8);
  v76(v57, v55);
  v77 = OUTLINED_FUNCTION_292();
  (v76)(v77);
  sub_1B8D9207C(v53, &off_1EBAB90F0, &unk_1B964D8E0);
  if (v75)
  {
LABEL_29:
    v78 = v100[9];
    v79 = *(v105 + 48);
    v80 = v102;
    OUTLINED_FUNCTION_164_1();
    v53 = v80;
    OUTLINED_FUNCTION_164_1();
    OUTLINED_FUNCTION_99_0(v80);
    if (v47)
    {
      OUTLINED_FUNCTION_99_0(v80 + v79);
      if (v47)
      {
        sub_1B8D9207C(v80, &off_1EBAB90F0, &unk_1B964D8E0);
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v80 + v79);
    if (!v81)
    {
      v86 = OUTLINED_FUNCTION_135_5();
      v87(v86);
      OUTLINED_FUNCTION_18_12();
      sub_1B8CD24E0(v88, v89);
      OUTLINED_FUNCTION_2();
      v90 = sub_1B964C850();
      v91 = *(v56 + 8);
      v91(v57, v55);
      v92 = OUTLINED_FUNCTION_292();
      (v91)(v92);
      sub_1B8D9207C(v80, &off_1EBAB90F0, &unk_1B964D8E0);
      if ((v90 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_42:
      v93 = v100[6];
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_43();
      sub_1B8CD24E0(v94, v95);
      v85 = OUTLINED_FUNCTION_199_0();
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_39:
  v85 = 0;
LABEL_40:
  OUTLINED_FUNCTION_264(v85);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9048334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C10, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90483B4(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC29C8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9048424()
{
  sub_1B8CD24E0(&qword_1EBAC29C8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact);

  return sub_1B964C5D0();
}

uint64_t sub_1B90484A4()
{
  result = MEMORY[0x1BFADC850](0x6966696C6175512ELL, 0xEA00000000007265);
  qword_1EBAC28E0 = 0xD00000000000001CLL;
  *algn_1EBAC28E8 = 0x80000001B97026D0;
  return result;
}

uint64_t sub_1B9048534()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC28F0);
  __swift_project_value_buffer(v0, qword_1EBAC28F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "object";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.Qualifier.decodeMessage<A>(decoder:)()
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
      sub_1B8CFC46C();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.Qualifier.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v8 = *v0, v9 = *(v2 + 8), sub_1B90495B8(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C680(), !v1))
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
    {
      v7 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Kg_V1alpha_Fact.Qualifier.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_148_2();
  if (!sub_1B8D92198(v4, v5, v6))
  {
    return 0;
  }

  v7 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier(0);
  OUTLINED_FUNCTION_188_1(v8);
  OUTLINED_FUNCTION_0_43();
  sub_1B8CD24E0(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9048960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C08, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B90489E0(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC29F8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9048A50()
{
  sub_1B8CD24E0(&qword_1EBAC29F8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier);

  return sub_1B964C5D0();
}

uint64_t sub_1B9048AD0()
{
  result = MEMORY[0x1BFADC850](0xD000000000000010, 0x80000001B9702710);
  qword_1EBAC2908 = 0xD00000000000001CLL;
  unk_1EBAC2910 = 0x80000001B97026D0;
  return result;
}

uint64_t sub_1B9048B64()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC2918);
  __swift_project_value_buffer(v0, qword_1EBAC2918);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "qualifier_type";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "qualifier";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers.decodeMessage<A>(decoder:)()
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
      sub_1B9048E0C();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8CFC4BC();
    }
  }
}

void sub_1B9048E0C()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD24E0(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v5 = *v0, v6 = *(v2 + 8), sub_1B904960C(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C680(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier(0), sub_1B8CD24E0(&qword_1EBAC29F8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), result = sub_1B964C730(), !v1))
    {
      v4 = *(type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_148_2();
  if (!sub_1B8D92198(v4, v5, v6))
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v8 = *(v1 + 16);
  sub_1B8D7AE94();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers(0);
  OUTLINED_FUNCTION_188_1(v10);
  OUTLINED_FUNCTION_0_43();
  sub_1B8CD24E0(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9049038()
{
  OUTLINED_FUNCTION_111_0();
  v1 = v0;
  sub_1B964CA70();
  v1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD24E0(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B90490F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD24E0(&qword_1EBAC2C00, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9049174(uint64_t a1)
{
  v2 = sub_1B8CD24E0(&qword_1EBAC29E0, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90491E4()
{
  sub_1B8CD24E0(&qword_1EBAC29E0, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers);

  return sub_1B964C5D0();
}

uint64_t sub_1B90492C4()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B904931C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B9049374()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B9049468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B90495B8()
{
  result = qword_1EBAC2948;
  if (!qword_1EBAC2948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2948);
  }

  return result;
}

unint64_t sub_1B904960C()
{
  result = qword_1EBAC29C0;
  if (!qword_1EBAC29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC29C0);
  }

  return result;
}

unint64_t sub_1B9049664()
{
  result = qword_1EBAC2A08;
  if (!qword_1EBAC2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2A08);
  }

  return result;
}

unint64_t sub_1B90496BC()
{
  result = qword_1EBAC2A10;
  if (!qword_1EBAC2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2A10);
  }

  return result;
}

unint64_t sub_1B9049714()
{
  result = qword_1EBAC2A18;
  if (!qword_1EBAC2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2A18);
  }

  return result;
}

unint64_t sub_1B904979C()
{
  result = qword_1EBAC2A30;
  if (!qword_1EBAC2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2A30);
  }

  return result;
}

unint64_t sub_1B90497F4()
{
  result = qword_1EBAC2A38;
  if (!qword_1EBAC2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2A38);
  }

  return result;
}

unint64_t sub_1B904984C()
{
  result = qword_1EBAC2A40;
  if (!qword_1EBAC2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC2A40);
  }

  return result;
}

void sub_1B904A9F8()
{
  sub_1B904AAFC(319, &qword_1EBAC2B78, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityRequestInfo, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B904AAFC(319, &qword_1EDA04118, type metadata accessor for Apple_Parsec_Search_PegasusQueryContext, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B904AAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B904AB88()
{
  sub_1B904AC54();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B904AAFC(319, &qword_1EBAB4FE0, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B904AC54()
{
  if (!qword_1EBAC2B80)
  {
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAC2B80);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_54Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_194_1();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_55Tm()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_196_2();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1B904AE54()
{
  sub_1B904AAFC(319, &qword_1EBAB4FF8, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B904AF08()
{
  result = type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Kg_V1alpha_AdamID(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Kg_V1alpha_UMCID(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Parsec_Kg_V1alpha_WikiDataID(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Parsec_Kg_V1alpha_StatsID(319);
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

void sub_1B904AFE0()
{
  sub_1B904AAFC(319, &qword_1EBAC2B88, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityResponseInfo, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B904AAFC(319, &qword_1EBAC2B90, type metadata accessor for Apple_Parsec_Kg_V1alpha_Entity, MEMORY[0x1E69E62F8]);
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

void sub_1B904B104()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B904AAFC(319, &qword_1EBAB4FE0, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B904AAFC(319, &qword_1EBAB53D0, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B904B250()
{
  sub_1B904AAFC(319, &qword_1EBAC2BA8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B904AAFC(319, &qword_1EBAC2BB0, type metadata accessor for Apple_Parsec_Kg_V1alpha_LocalizedEntityNames, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B904AAFC(319, &qword_1EBAC2BB8, type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1B964C2B0();
        if (v3 <= 0x3F)
        {
          sub_1B904AAFC(319, &qword_1EBAB53D0, type metadata accessor for Apple_Parsec_Kg_V1alpha_KGID, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B904B414()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B904AAFC(319, &qword_1EBAC2BD0, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.TypedQualifiers, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B904AAFC(319, &qword_1ED9EB350, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B904B584()
{
  sub_1B904AAFC(319, &qword_1EBAC2BF8, type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_27_9()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_43_7(uint64_t a1)
{
  *(v1 + 24) = a1;

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_61_3()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_77_6()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v3 = v0 + *(v1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_143_3()
{

  return sub_1B90492C4();
}

uint64_t OUTLINED_FUNCTION_147_3()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_158_4()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v3 = v0 + *(v1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_161_4()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_164_1()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_165_2()
{

  return sub_1B90492C4();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.prefix.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Lookup_V1alpha_LookupSearchResults.prefix.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}