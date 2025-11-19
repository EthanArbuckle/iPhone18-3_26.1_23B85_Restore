uint64_t static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits.allCases.getter()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521();
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return j_j__swift_endAccess;
}

uint64_t sub_1B9161790@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.MeasurementUnits.allCases.getter();
  *a1 = result;
  return result;
}

void Apple_Parsec_Siri_V2alpha_ClockAppIntentData.appIntentTarget.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.appIntentTarget.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.placeAttributes.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v7) + 24);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC6350, &qword_1B9698610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_53();
    OUTLINED_FUNCTION_182();
    return sub_1B916402C();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.placeAttributes.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAC6350, &qword_1B9698610);
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_122_0();
  sub_1B916402C();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_ClockAppIntentData.placeAttributes.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v1);
  v2 = OUTLINED_FUNCTION_686();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  *(v0 + 8) = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v9);
  *(v0 + 32) = __swift_coroFrameAllocStub(v9);
  *(v0 + 40) = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0) + 24);
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_17_2();
  if (v10)
  {
    OUTLINED_FUNCTION_37_9();
    OUTLINED_FUNCTION_17_2();
    if (!v10)
    {
      sub_1B8D9207C(v6, &qword_1EBAC6350, &qword_1B9698610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_53();
    OUTLINED_FUNCTION_246();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9161A70()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9164080();
    sub_1B8D9207C(v5 + v4, &qword_1EBAC6350, &qword_1B9698610);
    OUTLINED_FUNCTION_1_53();
    sub_1B916402C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    OUTLINED_FUNCTION_13_22();
    sub_1B9163FB8();
  }

  else
  {
    sub_1B8D9207C(v5 + v4, &qword_1EBAC6350, &qword_1B9698610);
    OUTLINED_FUNCTION_1_53();
    sub_1B916402C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.hasPlaceAttributes.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v4) + 24);
  OUTLINED_FUNCTION_274_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
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
  sub_1B8D9207C(v11, v12, &qword_1B9698610);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ClockAppIntentData.clearPlaceAttributes()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAC6350, &qword_1B9698610);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.timestamp.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v5) + 28);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_176_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC6340, &qword_1B9698600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    OUTLINED_FUNCTION_182();
    return sub_1B916402C();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.timestamp.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_0_62();
  OUTLINED_FUNCTION_122_0();
  sub_1B916402C();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Siri_V2alpha_ClockAppIntentData.timestamp.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(v8);
  *(v1 + 16) = v9;
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 32) = v12;
  *(v1 + 40) = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0) + 28);
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_75(v0);
  if (v13)
  {
    OUTLINED_FUNCTION_215_0();
    v14 = &v12[*(v9 + 28)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAC6340, &qword_1B9698600);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_62();
    OUTLINED_FUNCTION_461();
    sub_1B916402C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9161EE8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9164080();
    sub_1B8D9207C(v5 + v4, &qword_1EBAC6340, &qword_1B9698600);
    OUTLINED_FUNCTION_0_62();
    sub_1B916402C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
    OUTLINED_FUNCTION_11_32();
    sub_1B9163FB8();
  }

  else
  {
    sub_1B8D9207C(v5 + v4, &qword_1EBAC6340, &qword_1B9698600);
    OUTLINED_FUNCTION_0_62();
    sub_1B916402C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v3);
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.hasTimestamp.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v4) + 28);
  OUTLINED_FUNCTION_274_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
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
  sub_1B8D9207C(v11, v12, &qword_1B9698600);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_ClockAppIntentData.clearTimestamp()()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAC6340, &qword_1B9698600);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B9162100()
{
  v2 = OUTLINED_FUNCTION_27();
  v4 = *(v3(v2) + 20);
  v5 = sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 16);

  return v8(v0, v1 + v4, v6);
}

uint64_t sub_1B9162190()
{
  v2 = OUTLINED_FUNCTION_313();
  v4 = *(v3(v2) + 20);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_ClockAppIntentData.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(v0) + 20);
  return nullsub_1;
}

uint64_t sub_1B9162280@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B91622B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9168120();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget.allCases.getter()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521();
}

uint64_t sub_1B9162354()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_18();
  v2 = *v0;
  *v0 = v1;
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_55_4();
  return j__swift_endAccess;
}

uint64_t sub_1B91623DC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_ClockAppIntentData.AppIntentTarget.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.requestURL.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.requestURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.response.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.response.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.unknownFields.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(v2) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_WdsResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(v0) + 24);
  return nullsub_1;
}

uint64_t sub_1B9162634()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6280);
  __swift_project_value_buffer(v0, qword_1EBAC6280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "weather_app_intent_data";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clock_app_intent_data";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B9162D84(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_432();
      OUTLINED_FUNCTION_24_3();
      sub_1B916288C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B916288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6330, &qword_1B96985F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC64A0, &qword_1B96991F8);
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
    sub_1B8D9207C(v12, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    sub_1B916402C();
    sub_1B916402C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9163FB8();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBAC64A0, &qword_1B96991F8);
      sub_1B916402C();
      sub_1B916402C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD2960(&qword_1EBAC6430, type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC64A0, &qword_1B96991F8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC64A0, &qword_1B96991F8);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC64A0, &qword_1B96991F8);
  }

  sub_1B916402C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC64A0, &qword_1B96991F8);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC6330, &qword_1B96985F0);
  sub_1B916402C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B9162D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6330, &qword_1B96985F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC64A8, &qword_1B9699200);
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
    sub_1B8D9207C(v12, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    sub_1B916402C();
    sub_1B916402C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBAC64A8, &qword_1B9699200);
      sub_1B916402C();
      sub_1B916402C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B9163FB8();
    }
  }

  sub_1B8CD2960(&qword_1EBAC6448, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBAC64A8, &qword_1B9699200);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC64A8, &qword_1B9699200);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBAC64A8, &qword_1B9699200);
  }

  sub_1B916402C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBAC64A8, &qword_1B9699200);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAC6330, &qword_1B96985F0);
  sub_1B916402C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6330, &qword_1B96985F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_686();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_7_6();
    sub_1B91635BC(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7_6();
    sub_1B91633A8(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_3_36();
  result = sub_1B9163FB8();
  if (!v1)
  {
LABEL_6:
    v18 = v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B91633A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6330, &qword_1B96985F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B916402C();
      sub_1B8CD2960(&qword_1EBAC6430, type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData);
      sub_1B964C740();
      return sub_1B9163FB8();
    }

    result = sub_1B9163FB8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91635BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6330, &qword_1B96985F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC6330, &qword_1B96985F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B916402C();
      sub_1B8CD2960(&qword_1EBAC6448, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData);
      sub_1B964C740();
      return sub_1B9163FB8();
    }

    result = sub_1B9163FB8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v20;
  a20 = v21;
  v22 = OUTLINED_FUNCTION_280();
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data(v22);
  v24 = OUTLINED_FUNCTION_59_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v27 = OUTLINED_FUNCTION_686();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_183(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_79();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6368, &qword_1B9698628);
  OUTLINED_FUNCTION_183(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_176();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &a9 - v38;
  v40 = *(v37 + 56);
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_643();
  v41 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v41, v42, v23);
  if (v43)
  {
    OUTLINED_FUNCTION_178(&v39[v40], 1, v23);
    if (v43)
    {
      sub_1B8D9207C(v39, &qword_1EBAC6330, &qword_1B96985F0);
LABEL_12:
      v46 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0) + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_36();
      sub_1B8CD2960(v47, v48);
      OUTLINED_FUNCTION_634();
      goto LABEL_13;
    }

LABEL_9:
    sub_1B8D9207C(v39, &qword_1EBAC6368, &qword_1B9698628);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v39[v40], 1, v23);
  if (v43)
  {
    OUTLINED_FUNCTION_3_36();
    sub_1B9163FB8();
    goto LABEL_9;
  }

  sub_1B916402C();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data.== infix(_:_:)();
  v45 = v44;
  sub_1B9163FB8();
  sub_1B9163FB8();
  sub_1B8D9207C(v39, &qword_1EBAC6330, &qword_1B96985F0);
  if (v45)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9163AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2960(&qword_1EBAC6488, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9163B50(uint64_t a1)
{
  v2 = sub_1B8CD2960(&qword_1EBAC6418, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9163BC0()
{
  sub_1B8CD2960(&qword_1EBAC6418, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData);

  return sub_1B964C5D0();
}

uint64_t sub_1B9163C4C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6298);
  __swift_project_value_buffer(v0, qword_1EBAC6298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "app_intent_target";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "place_attributes";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "timestamp";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "measurement_units_shown";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "request_start_time";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "request_end_time";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "wds_response";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9163F78()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B91640F4();
  qword_1EBAC62B0 = result;
  return result;
}

uint64_t sub_1B9163FB8()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B916402C()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B9164080()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B91640F4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__placeAttributes;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__timestamp;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown) = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestStartTime, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestEndTime, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__wdsResponse;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  return v0;
}

uint64_t sub_1B91641E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6360, &qword_1B9698620);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23[4] = v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v10 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__placeAttributes;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__timestamp;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown) = MEMORY[0x1E69E7CC0];
  v23[1] = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestStartTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestStartTime, 1, 1, v13);
  v23[2] = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestEndTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestEndTime, 1, 1, v13);
  v15 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__wdsResponse;
  v23[3] = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__wdsResponse;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  swift_beginAccess();
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v17;
  *(v1 + 24) = v18;
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
  v19 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  swift_beginAccess();
  v20 = *(a1 + v19);
  swift_beginAccess();
  v21 = *(v1 + v14);
  *(v1 + v14) = v20;

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

uint64_t sub_1B91646C0()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__placeAttributes, &qword_1EBAC6350, &qword_1B9698610);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__timestamp, &qword_1EBAC6340, &qword_1B9698600);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestStartTime, &qword_1EBAC6340, &qword_1B9698600);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__requestEndTime, &qword_1EBAC6340, &qword_1B9698600);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__wdsResponse, &qword_1EBAC6360, &qword_1B9698620);
  return v0;
}

uint64_t sub_1B9164790()
{
  v0 = sub_1B91646C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B91641E4(v9);
  }

  OUTLINED_FUNCTION_7_6();
  return sub_1B9164874();
}

uint64_t sub_1B9164874()
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
        sub_1B91649A8();
        break;
      case 2:
        sub_1B9164A3C();
        break;
      case 3:
        sub_1B9164B18();
        break;
      case 4:
        sub_1B9164BF4();
        break;
      case 6:
        sub_1B9164C90();
        break;
      case 7:
        sub_1B9164D6C();
        break;
      case 8:
        sub_1B9164E48();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91649A8()
{
  swift_beginAccess();
  sub_1B9169A44();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B9164A3C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  sub_1B8CD2960(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9164B18()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9164BF4()
{
  swift_beginAccess();
  sub_1B91699F0();
  sub_1B964C3E0();
  return swift_endAccess();
}

uint64_t sub_1B9164C90()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9164D6C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9164E48()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  sub_1B8CD2960(&qword_1EBAC6460, type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_WeatherAppIntentData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B9164F88(v7, v8, v9, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9164F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6360, &qword_1B9698620);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = v40 - v9;
  v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  v10 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40[1] = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v44 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v45 = v40 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v40 - v18;
  v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  v20 = *(*(v47 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v47);
  v40[2] = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v43 = v40 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v46 = v40 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = v40 - v28;
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  swift_beginAccess();
  if (!*(a1 + 16) || (v32 = *(a1 + 24), v48 = *(a1 + 16), v49 = v32, sub_1B9169A44(), result = sub_1B964C680(), !v4))
  {
    v50 = a4;
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
    {
      sub_1B8D9207C(v29, &qword_1EBAC6350, &qword_1B9698610);
      v34 = v4;
    }

    else
    {
      sub_1B916402C();
      sub_1B8CD2960(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
      sub_1B964C740();
      v34 = v4;
      result = sub_1B9163FB8();
      if (v4)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_1B8D92024();
    v35 = v47;
    if (__swift_getEnumTagSinglePayload(v19, 1, v47) == 1)
    {
      sub_1B8D9207C(v19, &qword_1EBAC6340, &qword_1B9698600);
    }

    else
    {
      sub_1B916402C();
      sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
      sub_1B964C740();
      result = sub_1B9163FB8();
      if (v34)
      {
        return result;
      }
    }

    v36 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
    swift_beginAccess();
    if (!*(*(a1 + v36) + 16) || (sub_1B91699F0(), , sub_1B964C600(), result = , !v34))
    {
      swift_beginAccess();
      v37 = v45;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v37, 1, v35) == 1)
      {
        sub_1B8D9207C(v37, &qword_1EBAC6340, &qword_1B9698600);
      }

      else
      {
        sub_1B916402C();
        sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
        sub_1B964C740();
        result = sub_1B9163FB8();
        if (v34)
        {
          return result;
        }
      }

      swift_beginAccess();
      v38 = v44;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v38, 1, v35) == 1)
      {
        sub_1B8D9207C(v38, &qword_1EBAC6340, &qword_1B9698600);
      }

      else
      {
        sub_1B916402C();
        sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
        sub_1B964C740();
        result = sub_1B9163FB8();
        if (v34)
        {
          return result;
        }
      }

      swift_beginAccess();
      v39 = v41;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v39, 1, v42) == 1)
      {
        return sub_1B8D9207C(v39, &qword_1EBAC6360, &qword_1B9698620);
      }

      else
      {
        sub_1B916402C();
        sub_1B8CD2960(&qword_1EBAC6460, type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse);
        sub_1B964C740();
        return sub_1B9163FB8();
      }
    }
  }

  return result;
}

BOOL sub_1B91658A0(uint64_t a1, uint64_t a2)
{
  v112 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0);
  v4 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v109 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC64B0, &unk_1B9699208);
  v6 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v8 = &v107 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6360, &qword_1B9698620);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v107 - v14;
  v123 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  v15 = *(*(v123 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v123);
  v110 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v115 = &v107 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v120 = &v107 - v20;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6348, &qword_1B9698608);
  v21 = *(*(v125 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v125);
  v117 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v119 = &v107 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v126 = &v107 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v114 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v116 = &v107 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v118 = &v107 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v124 = &v107 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v121 = &v107 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v128 = &v107 - v39;
  v129 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  v40 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v122 = &v107 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6358, &qword_1B9698618);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v107 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v127 = &v107 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v107 - v50;
  swift_beginAccess();
  v52 = *(a1 + 16);
  v53 = *(a1 + 24);
  swift_beginAccess();
  if (!sub_1B8D580A8(v52, v53, *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  v107 = v13;
  v108 = v8;
  v54 = a2;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v55 = *(v42 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v56 = v129;
  if (__swift_getEnumTagSinglePayload(v45, 1, v129) == 1)
  {

    sub_1B8D9207C(v51, &qword_1EBAC6350, &qword_1B9698610);
    if (__swift_getEnumTagSinglePayload(&v45[v55], 1, v56) == 1)
    {
      sub_1B8D9207C(v45, &qword_1EBAC6350, &qword_1B9698610);
      goto LABEL_9;
    }

LABEL_7:
    v58 = &qword_1EBAC6358;
    v59 = &qword_1B9698618;
LABEL_26:
    v84 = v45;
LABEL_27:
    sub_1B8D9207C(v84, v58, v59);
    goto LABEL_28;
  }

  v57 = v127;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(&v45[v55], 1, v56) == 1)
  {

    sub_1B8D9207C(v51, &qword_1EBAC6350, &qword_1B9698610);
    sub_1B9163FB8();
    goto LABEL_7;
  }

  v60 = v122;
  sub_1B916402C();

  LODWORD(v129) = static Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes.== infix(_:_:)(v57, v60);
  sub_1B9163FB8();
  sub_1B8D9207C(v51, &qword_1EBAC6350, &qword_1B9698610);
  sub_1B9163FB8();
  sub_1B8D9207C(v45, &qword_1EBAC6350, &qword_1B9698610);
  if ((v129 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  swift_beginAccess();
  v61 = v128;
  sub_1B8D92024();
  swift_beginAccess();
  v62 = v126;
  v63 = *(v125 + 48);
  sub_1B8D92024();
  v45 = v62;
  sub_1B8D92024();
  v64 = v62;
  v65 = v123;
  if (__swift_getEnumTagSinglePayload(v64, 1, v123) == 1)
  {
    sub_1B8D9207C(v61, &qword_1EBAC6340, &qword_1B9698600);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v45[v63], 1, v65);
    v67 = v124;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v45, &qword_1EBAC6340, &qword_1B9698600);
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  v82 = v121;
  sub_1B8D92024();
  v83 = __swift_getEnumTagSinglePayload(&v45[v63], 1, v65);
  v67 = v124;
  if (v83 == 1)
  {
    sub_1B8D9207C(v128, &qword_1EBAC6340, &qword_1B9698600);
    sub_1B9163FB8();
LABEL_25:
    v58 = &qword_1EBAC6348;
    v59 = &qword_1B9698608;
    goto LABEL_26;
  }

  v85 = v120;
  sub_1B916402C();
  if (*v82 != *v85 || v82[1] != v85[1] || (v82[2] == v85[2] ? (v86 = v82[3] == v85[3]) : (v86 = 0), !v86 && (sub_1B964C9F0() & 1) == 0))
  {
    sub_1B8D9207C(v128, &qword_1EBAC6340, &qword_1B9698600);
    sub_1B9163FB8();
    sub_1B9163FB8();
    v84 = v126;
LABEL_41:
    v58 = &qword_1EBAC6340;
    v59 = &qword_1B9698600;
    goto LABEL_27;
  }

  v87 = *(v65 + 28);
  sub_1B964C2B0();
  sub_1B8CD2960(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v88 = sub_1B964C850();
  sub_1B8D9207C(v128, &qword_1EBAC6340, &qword_1B9698600);
  sub_1B9163FB8();
  sub_1B9163FB8();
  sub_1B8D9207C(v126, &qword_1EBAC6340, &qword_1B9698600);
  if ((v88 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  v68 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  swift_beginAccess();
  v69 = *(a1 + v68);
  v70 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_WeatherAppIntentDataP33_9BB8831FA1079DCA8413A25D0627561213_StorageClass__measurementUnitsShown;
  swift_beginAccess();
  if ((sub_1B8D8DA04(v69, *(v54 + v70)) & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v71 = *(v125 + 48);
  v72 = v119;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v72, 1, v65) == 1)
  {
    sub_1B8D9207C(v67, &qword_1EBAC6340, &qword_1B9698600);
    if (__swift_getEnumTagSinglePayload(v72 + v71, 1, v65) != 1)
    {
LABEL_57:
      v58 = &qword_1EBAC6348;
      v59 = &qword_1B9698608;
      v84 = v72;
      goto LABEL_27;
    }

    sub_1B8D9207C(v72, &qword_1EBAC6340, &qword_1B9698600);
  }

  else
  {
    v89 = v118;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v72 + v71, 1, v65) == 1)
    {
      sub_1B8D9207C(v124, &qword_1EBAC6340, &qword_1B9698600);
LABEL_56:
      sub_1B9163FB8();
      goto LABEL_57;
    }

    v90 = v115;
    sub_1B916402C();
    if (*v89 != *v90 || v89[1] != v90[1] || (v89[2] == v90[2] ? (v91 = v89[3] == v90[3]) : (v91 = 0), !v91 && (sub_1B964C9F0() & 1) == 0))
    {
      sub_1B8D9207C(v124, &qword_1EBAC6340, &qword_1B9698600);
      sub_1B9163FB8();
LABEL_68:
      sub_1B9163FB8();
      v84 = v72;
      goto LABEL_41;
    }

    v92 = *(v65 + 28);
    sub_1B964C2B0();
    sub_1B8CD2960(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
    v93 = sub_1B964C850();
    sub_1B8D9207C(v124, &qword_1EBAC6340, &qword_1B9698600);
    sub_1B9163FB8();
    sub_1B9163FB8();
    sub_1B8D9207C(v72, &qword_1EBAC6340, &qword_1B9698600);
    if ((v93 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  swift_beginAccess();
  v73 = v116;
  sub_1B8D92024();
  swift_beginAccess();
  v74 = *(v125 + 48);
  v75 = v117;
  sub_1B8D92024();
  v72 = v75;
  v76 = v123;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v72, 1, v76) != 1)
  {
    v94 = v114;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v72 + v74, 1, v76) == 1)
    {
      sub_1B8D9207C(v73, &qword_1EBAC6340, &qword_1B9698600);
      goto LABEL_56;
    }

    v95 = v110;
    sub_1B916402C();
    if (*v94 == *v95 && v94[1] == v95[1])
    {
      v96 = v94[2] == v95[2] && v94[3] == v95[3];
      if (v96 || (sub_1B964C9F0() & 1) != 0)
      {
        v97 = *(v123 + 28);
        sub_1B964C2B0();
        sub_1B8CD2960(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
        v98 = sub_1B964C850();
        sub_1B8D9207C(v73, &qword_1EBAC6340, &qword_1B9698600);
        sub_1B9163FB8();
        sub_1B9163FB8();
        sub_1B8D9207C(v72, &qword_1EBAC6340, &qword_1B9698600);
        if (v98)
        {
          goto LABEL_19;
        }

LABEL_28:

        return 0;
      }
    }

    sub_1B8D9207C(v73, &qword_1EBAC6340, &qword_1B9698600);
    sub_1B9163FB8();
    goto LABEL_68;
  }

  sub_1B8D9207C(v73, &qword_1EBAC6340, &qword_1B9698600);
  if (__swift_getEnumTagSinglePayload(v72 + v74, 1, v76) != 1)
  {
    goto LABEL_57;
  }

  sub_1B8D9207C(v72, &qword_1EBAC6340, &qword_1B9698600);
LABEL_19:
  swift_beginAccess();
  v77 = v113;
  sub_1B8D92024();
  swift_beginAccess();
  v78 = *(v111 + 48);
  v79 = v108;
  sub_1B8D92024();
  sub_1B8D92024();
  v80 = v112;
  if (__swift_getEnumTagSinglePayload(v79, 1, v112) == 1)
  {

    sub_1B8D9207C(v77, &qword_1EBAC6360, &qword_1B9698620);
    if (__swift_getEnumTagSinglePayload(v79 + v78, 1, v80) == 1)
    {
      sub_1B8D9207C(v79, &qword_1EBAC6360, &qword_1B9698620);
      return 1;
    }

    goto LABEL_71;
  }

  v99 = v107;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v79 + v78, 1, v80) == 1)
  {

    sub_1B8D9207C(v113, &qword_1EBAC6360, &qword_1B9698620);
    sub_1B9163FB8();
LABEL_71:
    v100 = &qword_1EBAC64B0;
    v101 = &unk_1B9699208;
    v102 = v79;
LABEL_81:
    sub_1B8D9207C(v102, v100, v101);
    return 0;
  }

  v103 = v109;
  sub_1B916402C();
  v104 = *v99 == *v103 && v99[1] == v103[1];
  if (!v104 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](v99[2], v99[3], v103[2], v103[3]) & 1) == 0)
  {

    sub_1B9163FB8();
    sub_1B8D9207C(v113, &qword_1EBAC6360, &qword_1B9698620);
    sub_1B9163FB8();
    v102 = v108;
    v100 = &qword_1EBAC6360;
    v101 = &qword_1B9698620;
    goto LABEL_81;
  }

  v105 = *(v80 + 24);
  sub_1B964C2B0();
  sub_1B8CD2960(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v106 = sub_1B964C850();

  sub_1B9163FB8();
  sub_1B8D9207C(v113, &qword_1EBAC6360, &qword_1B9698620);
  sub_1B9163FB8();
  sub_1B8D9207C(v108, &qword_1EBAC6360, &qword_1B9698620);
  return (v106 & 1) != 0;
}

uint64_t sub_1B9166D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2960(&qword_1EBAC6480, type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9166DA4(uint64_t a1)
{
  v2 = sub_1B8CD2960(&qword_1EBAC6430, type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9166E14()
{
  sub_1B8CD2960(&qword_1EBAC6430, type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData);

  return sub_1B964C5D0();
}

uint64_t sub_1B9166E94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC62B8);
  __swift_project_value_buffer(v0, qword_1EBAC62B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 0;
  *v4 = "UNDEFINED_CONDITION";
  *(v4 + 8) = 19;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "AIR_QUALITY";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "FEELS_LIKE";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "MOON_PHASE";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "SUNRISE_SUNSET";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "TEMPERATURE";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "HUMIDITY";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "WIND_SPEED";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "BAROMETRIC_PRESSURE";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "UV_INDEX";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "VISIBILITY";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "PRECIPITATION";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "SPECIFIC_CONDITION";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "SUNRISE";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "SUNSET";
  *(v34 + 1) = 6;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9167388()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC62D0);
  __swift_project_value_buffer(v0, qword_1EBAC62D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1B96566C0;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 0;
  *v4 = "UNDEFINED_UNIT";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 1;
  *v8 = "TEMPERATURE_CELSIUS";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "TEMPERATURE_FAHRENHEIT";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "WIND_MPH";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "WIND_KPH";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 12;
  *v16 = "WIND_MPS";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 13;
  *v18 = "WIND_BEAUFORT";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 14;
  *v20 = "WIND_KNOTS";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 20;
  *v22 = "PRECIPITATION_INCHES";
  *(v22 + 1) = 20;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 21;
  *v24 = "PRECIPITATION_MM";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 30;
  *v26 = "PRESSURE_MBAR";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 31;
  *v28 = "PRESSURE_INHG";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 32;
  *v30 = "PRESSURE_MMHG";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 33;
  *v32 = "PRESSURE_HPA";
  *(v32 + 1) = 12;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 34;
  *v34 = "PRESSURE_KPA";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 40;
  *v36 = "DISTANCE_MI";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 41;
  *v38 = "DISTANCE_KM";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B916791C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC62E8);
  __swift_project_value_buffer(v0, qword_1EBAC62E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "app_intent_target";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "place_attributes";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "timestamp";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B9167CF4();
        break;
      case 2:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B9167C40();
        break;
      case 1:
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B9167BD8();
        break;
    }
  }

  return result;
}

uint64_t sub_1B9167C40()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0) + 24);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(0);
  sub_1B8CD2960(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
  return sub_1B964C580();
}

uint64_t sub_1B9167CF4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0) + 28);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClockAppIntentData.traverse<A>(visitor:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6340, &qword_1B9698600);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v31 - v7;
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp(0);
  v9 = OUTLINED_FUNCTION_59_1(v33);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v31[1] = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6350, &qword_1B9698610);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_22_3();
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes(v18);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  if (!*v0 || (v23 = *(v0 + 8), v31[2] = *v0, v32 = v23, sub_1B9168120(), result = sub_1B964C680(), !v1))
  {
    v31[0] = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0);
    v25 = *(v31[0] + 24);
    sub_1B8D92024();
    v26 = OUTLINED_FUNCTION_493();
    if (__swift_getEnumTagSinglePayload(v26, v27, v19) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAC6350, &qword_1B9698610);
    }

    else
    {
      OUTLINED_FUNCTION_1_53();
      OUTLINED_FUNCTION_177_1();
      sub_1B916402C();
      sub_1B8CD2960(&qword_1EBAC6230, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
      sub_1B964C740();
      OUTLINED_FUNCTION_13_22();
      result = sub_1B9163FB8();
      if (v1)
      {
        return result;
      }
    }

    v28 = v31[0];
    v29 = *(v31[0] + 28);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v8, 1, v33) == 1)
    {
      sub_1B8D9207C(v8, &qword_1EBAC6340, &qword_1B9698600);
    }

    else
    {
      OUTLINED_FUNCTION_0_62();
      sub_1B916402C();
      sub_1B8CD2960(&qword_1EBAC6248, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
      sub_1B964C740();
      OUTLINED_FUNCTION_11_32();
      result = sub_1B9163FB8();
      if (v1)
      {
        return result;
      }
    }

    v30 = v0 + *(v28 + 20);
    return sub_1B964C290();
  }

  return result;
}

unint64_t sub_1B9168120()
{
  result = qword_1EBAC6380;
  if (!qword_1EBAC6380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6380);
  }

  return result;
}

uint64_t sub_1B9168218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2960(&qword_1EBAC6478, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9168298(uint64_t a1)
{
  v2 = sub_1B8CD2960(&qword_1EBAC6448, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9168308()
{
  sub_1B8CD2960(&qword_1EBAC6448, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData);

  return sub_1B964C5D0();
}

uint64_t sub_1B9168388()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6300);
  __swift_project_value_buffer(v0, qword_1EBAC6300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNDEFINED_CONDITION";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FIND_TIME_IN_LOCATION";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FIND_DATE_IN_LOCATION";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FIND_TIMEZONE";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "HOLIDAY_SCHEDULE";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9168648()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6318);
  __swift_project_value_buffer(v0, qword_1EBAC6318);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "requestUrl";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.decodeMessage<A>(decoder:)()
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

uint64_t Apple_Parsec_Siri_V2alpha_WdsResponse.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = *v0;
  v4 = v0[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v7 = v0[2];
    if (sub_1B8D99EA8(v2[2], v2[3]) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
    {
      v8 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0) + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_WdsResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](v1[2], v1[3], v0[2], v0[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_36();
  sub_1B8CD2960(v5, v6);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9168A5C(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2960(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9168B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2960(&qword_1EBAC6470, type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9168BBC(uint64_t a1)
{
  v2 = sub_1B8CD2960(&qword_1EBAC6460, type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9168C2C()
{
  sub_1B8CD2960(&qword_1EBAC6460, type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse);

  return sub_1B964C5D0();
}

unint64_t sub_1B9168CAC()
{
  result = qword_1EBAC6398;
  if (!qword_1EBAC6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6398);
  }

  return result;
}

unint64_t sub_1B9168D04()
{
  result = qword_1EBAC63A0;
  if (!qword_1EBAC63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC63A0);
  }

  return result;
}

unint64_t sub_1B9168D5C()
{
  result = qword_1EBAC63A8;
  if (!qword_1EBAC63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC63A8);
  }

  return result;
}

unint64_t sub_1B9168DB4()
{
  result = qword_1EBAC63B0;
  if (!qword_1EBAC63B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC63B0);
  }

  return result;
}

unint64_t sub_1B9168E0C()
{
  result = qword_1EBAC63B8;
  if (!qword_1EBAC63B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC63B8);
  }

  return result;
}

unint64_t sub_1B9168E64()
{
  result = qword_1EBAC63C0;
  if (!qword_1EBAC63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC63C0);
  }

  return result;
}

unint64_t sub_1B9168F1C()
{
  result = qword_1EBAC63E8;
  if (!qword_1EBAC63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC63E8);
  }

  return result;
}

unint64_t sub_1B9168F74()
{
  result = qword_1EBAC63F0;
  if (!qword_1EBAC63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC63F0);
  }

  return result;
}

unint64_t sub_1B9168FCC()
{
  result = qword_1EBAC63F8;
  if (!qword_1EBAC63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC63F8);
  }

  return result;
}

void sub_1B91694FC()
{
  sub_1B91697E8(319, qword_1ED9D37D0, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.OneOf_Data);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B916959C()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B9169638()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9169704()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B91697E8(319, qword_1ED9CFE78, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
    if (v1 <= 0x3F)
    {
      sub_1B91697E8(319, qword_1ED9D2870, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B91697E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1B916987C()
{
  sub_1B91697E8(319, qword_1ED9CFE78, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntityPlaceAttributes);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B91697E8(319, qword_1ED9D2870, type metadata accessor for Apple_Parsec_Siri_V2alpha_Timestamp);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B91697E8(319, qword_1ED9CA5F8, type metadata accessor for Apple_Parsec_Siri_V2alpha_WdsResponse);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1B91699F0()
{
  result = qword_1EBAC6490;
  if (!qword_1EBAC6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6490);
  }

  return result;
}

unint64_t sub_1B9169A44()
{
  result = qword_1EBAC6498;
  if (!qword_1EBAC6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6498);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_28()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_17_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_17()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_14()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37_9()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  v0[20] = 0;
  v0[21] = 0;
  v3 = v0 + *(v1 + 64);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_38_6()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_WeatherAppIntentData(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_84_7()
{

  return sub_1B916402C();
}

uint64_t OUTLINED_FUNCTION_92_8()
{
  *(v0 + 8) = 1;
  v1 = v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockAppIntentData(0) + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

unint64_t Apple_Parsec_Siri_V2alpha_AudioFormat.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9169DB0@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_AudioFormat.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9169DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B916CE00();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioFormat.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC64B8 = a1;
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_AudioFormat.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9169F1C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_AudioFormat.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.audioBuffer.getter()
{
  OUTLINED_FUNCTION_6_23();
  OUTLINED_FUNCTION_521();
  v1 = *(v0 + 16);
  sub_1B8D91FCC(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1B9169FB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B8D91FCC(*a1, v2);
  return Apple_Parsec_Siri_V2alpha_AudioData.audioBuffer.setter(v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.audioBuffer.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_29();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B916B424(v10);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  return sub_1B8D538A0(v11, v12);
}

void (*Apple_Parsec_Siri_V2alpha_AudioData.audioBuffer.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0) + 20);
  *(v3 + 18) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_521();
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v3[6] = v6;
  v3[7] = v7;
  sub_1B8D91FCC(v6, v7);
  return sub_1B916A12C;
}

void sub_1B916A12C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 64);
    v6 = OUTLINED_FUNCTION_461();
    sub_1B8D91FCC(v6, v7);
    v8 = OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioData.audioBuffer.setter(v8, v9);
    v10 = *(v2 + 48);
    v11 = *(v2 + 56);
  }

  else
  {
    v12 = *(v2 + 72);
    v13 = *(v2 + 64);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v2 + 72);
      v18 = *(v2 + 64);
      OUTLINED_FUNCTION_7_29();
      v19 = OUTLINED_FUNCTION_40_0();
      v16 = sub_1B916B424(v19);
      *(v18 + v17) = v16;
    }

    swift_beginAccess();
    v10 = *(v16 + 16);
    v11 = *(v16 + 24);
    *(v16 + 16) = v3;
    *(v16 + 24) = v4;
  }

  sub_1B8D538A0(v10, v11);

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDescription.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v3 = a1 + *(v2 + 56);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Apple_Parsec_Siri_V2alpha_AudioData.decoderStreamDescription.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_6_23();
  v11 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  OUTLINED_FUNCTION_521();
  sub_1B916B60C(v1 + v11, v6);
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_9_24();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAC6510, &qword_1B9699320);
    }
  }

  else
  {
    sub_1B916B69C(v6, v10);
  }

  return sub_1B916A3A0;
}

uint64_t sub_1B916A3DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  OUTLINED_FUNCTION_6_23();
  v11 = *a1;
  OUTLINED_FUNCTION_521();
  sub_1B916B60C(v2 + v11, v10);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
  {
    return sub_1B916B69C(v10, a2);
  }

  Apple_Parsec_Siri_V2alpha_AudioDescription.init()(a2);
  result = __swift_getEnumTagSinglePayload(v10, 1, v12);
  if (result != 1)
  {
    return sub_1B8D9207C(v10, &qword_1EBAC6510, &qword_1B9699320);
  }

  return result;
}

uint64_t sub_1B916A4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  v8 = OUTLINED_FUNCTION_183(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B916B770(a1, v12);
  return a5(v12);
}

uint64_t sub_1B916A578(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(OUTLINED_FUNCTION_20_7() + 20);
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_29();
    v14 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B916B424(v14);
    *(v5 + v10) = v13;
  }

  v15 = OUTLINED_FUNCTION_461();
  sub_1B916B69C(v15, v16);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v17);
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B916B700(v3, v13 + a2);
  return swift_endAccess();
}

void (*Apple_Parsec_Siri_V2alpha_AudioData.playerStreamDescription.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_6_23();
  v11 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
  OUTLINED_FUNCTION_521();
  sub_1B916B60C(v1 + v11, v6);
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_9_24();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAC6510, &qword_1B9699320);
    }
  }

  else
  {
    sub_1B916B69C(v6, v10);
  }

  return sub_1B916A7A4;
}

void sub_1B916A7BC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_1B916B770(v6, v5);
    a3(v5);
    sub_1B916B7D4(v6);
  }

  else
  {
    a3(v6);
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

BOOL sub_1B916A860(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  OUTLINED_FUNCTION_6_23();
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_521();
  sub_1B916B60C(v1 + a1, v8);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  v10 = __swift_getEnumTagSinglePayload(v8, 1, v9) != 1;
  sub_1B8D9207C(v8, &qword_1EBAC6510, &qword_1B9699320);
  return v10;
}

uint64_t sub_1B916A93C(uint64_t a1)
{
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(OUTLINED_FUNCTION_20_7() + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_29();
    v13 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B916B424(v13);
    *(v4 + v9) = v12;
  }

  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v14);
  OUTLINED_FUNCTION_11_33();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B916B700(v2, v12 + a1);
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B964C2B0();
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0) + 20);
  if (qword_1EBAB7608 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBAC64F0;
}

void Apple_Parsec_Siri_V2alpha_AudioDescription.audioFormat.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDescription.audioFormat.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDescription.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0) + 56);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDescription.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(v2) + 56);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_AudioDescription.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(v0) + 56);
  return nullsub_1;
}

uint64_t sub_1B916AE8C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC64C0);
  __swift_project_value_buffer(v0, qword_1EBAC64C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_FORMAT_UNDEFINED";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_FORMAT_OPUS";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_FORMAT_SPEEX";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_FORMAT_MP3";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_FORMAT_LINEAR_PCM";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B916B150()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC64D8);
  __swift_project_value_buffer(v0, qword_1EBAC64D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "audio_buffer";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "decoder_stream_description";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "player_stream_description";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B916B37C()
{
  OUTLINED_FUNCTION_7_29();
  result = sub_1B916B3AC();
  qword_1EBAC64F0 = result;
  return result;
}

uint64_t sub_1B916B3AC()
{
  *(v0 + 16) = xmmword_1B9652FE0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription, 1, 1, v2);
  return v0;
}

uint64_t sub_1B916B424(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  *(v1 + 16) = xmmword_1B9652FE0;
  v7 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription, 1, 1, v8);
  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_beginAccess();
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  *(v1 + 16) = v10;
  *(v1 + 24) = v11;
  sub_1B8D91FCC(v10, v11);
  sub_1B8D538A0(v12, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  swift_beginAccess();
  sub_1B916B60C(a1 + v14, v6);
  swift_beginAccess();
  sub_1B916B700(v6, v1 + v7);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
  swift_beginAccess();
  sub_1B916B60C(a1 + v15, v6);

  swift_beginAccess();
  sub_1B916B700(v6, v1 + v9);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B916B60C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B916B69C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B916B700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B916B770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B916B7D4(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B916B830()
{
  sub_1B8D538A0(*(v0 + 16), *(v0 + 24));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription, &qword_1EBAC6510, &qword_1B9699320);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription, &qword_1EBAC6510, &qword_1B9699320);
  return v0;
}

uint64_t sub_1B916B8A0()
{
  v0 = sub_1B916B830();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B916B424(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B916B994(v11, a1, a2, a3);
}

uint64_t sub_1B916B994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
LABEL_9:
        sub_1B916BA5C(v11, v12, v13, v14, v15);
        break;
      case 2:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
        goto LABEL_9;
      case 1:
        sub_1B8E9AE04();
        break;
    }
  }
}

uint64_t sub_1B916BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  sub_1B8CD29A8(&qword_1EBAC6578, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioData.traverse<A>(visitor:)()
{
  v2 = *(v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B916BB98(v3);
  if (!v1)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B916BB98(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v26 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  swift_beginAccess();
  if (!sub_1B8D99EA8(*(a1 + 16), *(a1 + 24)))
  {
    v25 = v9;
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    sub_1B8D91FCC(v15, v16);
    sub_1B964C6A0();
    result = sub_1B8D538A0(v15, v16);
    if (v1)
    {
      return result;
    }

    v9 = v25;
  }

  v18 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  swift_beginAccess();
  sub_1B916B60C(a1 + v18, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAC6510, &qword_1B9699320);
  }

  else
  {
    sub_1B916B69C(v8, v14);
    sub_1B8CD29A8(&qword_1EBAC6578, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription);
    sub_1B964C740();
    result = sub_1B916B7D4(v14);
    if (v1)
    {
      return result;
    }
  }

  v19 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
  swift_beginAccess();
  v20 = a1 + v19;
  v21 = v27;
  sub_1B916B60C(v20, v27);
  if (__swift_getEnumTagSinglePayload(v21, 1, v9) == 1)
  {
    return sub_1B8D9207C(v21, &qword_1EBAC6510, &qword_1B9699320);
  }

  v22 = v21;
  v23 = v26;
  sub_1B916B69C(v22, v26);
  sub_1B8CD29A8(&qword_1EBAC6578, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription);
  sub_1B964C740();
  return sub_1B916B7D4(v23);
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1B916BFC0(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_37();
  sub_1B8CD29A8(v9, v10);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B916BFC0(uint64_t a1, uint64_t a2)
{
  v55 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0);
  v4 = OUTLINED_FUNCTION_59_1(v55);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6598, &unk_1B9699860);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_0();
  v53 = v12;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6510, &qword_1B9699320);
  v17 = OUTLINED_FUNCTION_183(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44_0();
  v50 = v20;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v21);
  v52 = &v49 - v22;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v23);
  v54 = &v49 - v24;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v49 - v26;
  OUTLINED_FUNCTION_521();
  v29 = *(a1 + 16);
  v28 = *(a1 + 24);
  OUTLINED_FUNCTION_521();
  v30 = *(a2 + 16);
  v31 = *(a2 + 24);

  sub_1B8D91FCC(v29, v28);
  sub_1B8D91FCC(v30, v31);
  v32 = MEMORY[0x1BFADC060](v29, v28, v30, v31);
  sub_1B8D538A0(v30, v31);
  sub_1B8D538A0(v29, v28);
  if ((v32 & 1) == 0)
  {
    goto LABEL_10;
  }

  v33 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  OUTLINED_FUNCTION_521();
  sub_1B916B60C(a1 + v33, v27);
  v34 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__decoderStreamDescription;
  OUTLINED_FUNCTION_521();
  v35 = *(v8 + 48);
  sub_1B916B60C(v27, v15);
  sub_1B916B60C(a2 + v34, &v15[v35]);
  if (__swift_getEnumTagSinglePayload(v15, 1, v55) == 1)
  {
    sub_1B8D9207C(v27, &qword_1EBAC6510, &qword_1B9699320);
    OUTLINED_FUNCTION_90(&v15[v35]);
    if (!v46)
    {
      goto LABEL_9;
    }

    sub_1B8D9207C(v15, &qword_1EBAC6510, &qword_1B9699320);
LABEL_14:
    v40 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
    OUTLINED_FUNCTION_521();
    v41 = v52;
    sub_1B916B60C(a1 + v40, v52);
    v42 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioDataP33_8E596054D932A42EC610BB2E9618667013_StorageClass__playerStreamDescription;
    OUTLINED_FUNCTION_521();
    v43 = *(v8 + 48);
    v44 = v53;
    sub_1B916B60C(v41, v53);
    sub_1B916B60C(a2 + v42, v44 + v43);
    OUTLINED_FUNCTION_90(v44);
    if (v46)
    {

      sub_1B8D9207C(v41, &qword_1EBAC6510, &qword_1B9699320);
      OUTLINED_FUNCTION_90(v44 + v43);
      if (v46)
      {
        sub_1B8D9207C(v44, &qword_1EBAC6510, &qword_1B9699320);
        return 1;
      }
    }

    else
    {
      v45 = v50;
      sub_1B916B60C(v44, v50);
      OUTLINED_FUNCTION_90(v44 + v43);
      if (!v46)
      {
        v47 = v51;
        sub_1B916B69C(v44 + v43, v51);
        v48 = static Apple_Parsec_Siri_V2alpha_AudioDescription.== infix(_:_:)(v45, v47);

        sub_1B916B7D4(v47);
        sub_1B8D9207C(v41, &qword_1EBAC6510, &qword_1B9699320);
        sub_1B916B7D4(v45);
        sub_1B8D9207C(v44, &qword_1EBAC6510, &qword_1B9699320);
        return (v48 & 1) != 0;
      }

      sub_1B8D9207C(v41, &qword_1EBAC6510, &qword_1B9699320);
      sub_1B916B7D4(v45);
    }

    sub_1B8D9207C(v44, &qword_1EBAC6598, &unk_1B9699860);
    return 0;
  }

  v36 = v54;
  sub_1B916B60C(v15, v54);
  OUTLINED_FUNCTION_90(&v15[v35]);
  if (!v46)
  {
    v38 = v51;
    sub_1B916B69C(&v15[v35], v51);
    v39 = static Apple_Parsec_Siri_V2alpha_AudioDescription.== infix(_:_:)(v36, v38);
    sub_1B916B7D4(v38);
    sub_1B8D9207C(v27, &qword_1EBAC6510, &qword_1B9699320);
    sub_1B916B7D4(v36);
    sub_1B8D9207C(v15, &qword_1EBAC6510, &qword_1B9699320);
    if ((v39 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_1B8D9207C(v27, &qword_1EBAC6510, &qword_1B9699320);
  sub_1B916B7D4(v36);
LABEL_9:
  sub_1B8D9207C(v15, &qword_1EBAC6598, &unk_1B9699860);
LABEL_10:

  return 0;
}

uint64_t sub_1B916C59C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD29A8(&qword_1EBAC6590, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B916C61C(uint64_t a1)
{
  v2 = sub_1B8CD29A8(&qword_1EBAC6560, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B916C68C()
{
  sub_1B8CD29A8(&qword_1EBAC6560, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData);

  return sub_1B964C5D0();
}

uint64_t sub_1B916C728()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC64F8);
  __swift_project_value_buffer(v0, qword_1EBAC64F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sample_rate";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "audio_format";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "format_id";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "format_flags";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "bytes_per_packet";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "frames_per_packet";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "bytes_per_frame";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "channels_per_frame";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "bits_per_channel";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "reserved";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v27 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDescription.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 2:
        OUTLINED_FUNCTION_288();
        sub_1B916CBF4();
        break;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioDescription.traverse<A>(visitor:)()
{
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
  {
    if (!*(v0 + 8) || (v4 = *(v0 + 8), v5 = *(v0 + 16), sub_1B916CE00(), result = sub_1B964C680(), !v1))
    {
      if (!*(v0 + 24) || (result = OUTLINED_FUNCTION_4_13(), !v1))
      {
        if (!*(v0 + 32) || (result = OUTLINED_FUNCTION_4_13(), !v1))
        {
          if (!*(v0 + 40) || (result = OUTLINED_FUNCTION_4_13(), !v1))
          {
            if (!*(v0 + 48) || (result = OUTLINED_FUNCTION_4_13(), !v1))
            {
              if (!*(v0 + 56) || (result = OUTLINED_FUNCTION_4_13(), !v1))
              {
                if (!*(v0 + 64) || (result = OUTLINED_FUNCTION_4_13(), !v1))
                {
                  if (!*(v0 + 72) || (result = OUTLINED_FUNCTION_4_13(), !v1))
                  {
                    if (!*(v0 + 80) || (result = OUTLINED_FUNCTION_4_13(), !v1))
                    {
                      v3 = v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0) + 56);
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

unint64_t sub_1B916CE00()
{
  result = qword_1EBAC6520;
  if (!qword_1EBAC6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6520);
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8);
    v3 = *(a2 + 8);
    if (*(a2 + 16) == 1)
    {
      switch(v3)
      {
        case 1:
          if (v2 != 1)
          {
            return 0;
          }

          goto LABEL_7;
        case 2:
          if (v2 != 2)
          {
            return 0;
          }

          goto LABEL_7;
        case 3:
          if (v2 != 3)
          {
            return 0;
          }

          goto LABEL_7;
        case 4:
          if (v2 != 4)
          {
            return 0;
          }

          goto LABEL_7;
        default:
          if (!v2)
          {
            goto LABEL_7;
          }

          return 0;
      }
    }

    if (v2 == v3)
    {
LABEL_7:
      if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
      {
        v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(0) + 56);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_37();
        sub_1B8CD29A8(v5, v6);
        return sub_1B964C850() & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B916D028(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD29A8(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B916D108(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD29A8(&qword_1EBAC6588, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B916D188(uint64_t a1)
{
  v2 = sub_1B8CD29A8(&qword_1EBAC6578, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B916D1F8()
{
  sub_1B8CD29A8(&qword_1EBAC6578, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription);

  return sub_1B964C5D0();
}

unint64_t sub_1B916D278()
{
  result = qword_1EBAC6530;
  if (!qword_1EBAC6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6530);
  }

  return result;
}

unint64_t sub_1B916D2D0()
{
  result = qword_1EBAC6538;
  if (!qword_1EBAC6538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6538);
  }

  return result;
}

unint64_t sub_1B916D328()
{
  result = qword_1EBAC6540;
  if (!qword_1EBAC6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6540);
  }

  return result;
}

unint64_t sub_1B916D380()
{
  result = qword_1EBAC6548;
  if (!qword_1EBAC6548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC6550, &qword_1B9699410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6548);
  }

  return result;
}

uint64_t sub_1B916D660()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B916D70C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B916D7B8()
{
  sub_1B916D854();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B916D854()
{
  if (!qword_1ED9EC210)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription(255);
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9EC210);
    }
  }
}

uint64_t OUTLINED_FUNCTION_6_23()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_7_29()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_24()
{
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = v0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  v4 = v1 + *(v2 + 56);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData(0);
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.cityName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.cityName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.countryCode.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.countryCode.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.countryName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.countryName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.timeZoneID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.timeZoneID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock() + 32);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock()
{
  result = qword_1ED9D2D50;
  if (!qword_1ED9D2D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock() + 32);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock() + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B916DD68()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC65A0);
  __swift_project_value_buffer(v0, qword_1EBAC65A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "city_name";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "country_code";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "country_name";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "time_zone_id";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Apple_Parsec_Siri_V2alpha_Clock._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7618 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAC65A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.decodeMessage<A>(decoder:)()
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
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v9 = v0[4];
      v10 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v12 = v0[6];
        v13 = v0[7];
        OUTLINED_FUNCTION_1();
        if (!v14 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          v15 = v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock() + 32);
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_Clock.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock() + 32);
  sub_1B964C2B0();
  sub_1B8CD29F0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_Clock.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock();
  sub_1B8CD29F0(&qword_1EBAC65B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B916E3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD29F0(&qword_1EBAC65D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B916E44C(uint64_t a1)
{
  v2 = sub_1B8CD29F0(&qword_1EBAC65C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B916E4BC()
{
  sub_1B8CD29F0(&qword_1EBAC65C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_Clock);

  return sub_1B964C5D0();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.companionName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.companionName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.deviceName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.deviceName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.inputOrigin.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.inputOrigin.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.userAssignedDeviceName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.userAssignedDeviceName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.carplaySessionData.getter@<X0>(_WORD *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC65F8, &qword_1B9699A20);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  sub_1B916ECA4(v1 + *(v8 + 76), v2);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v9);
  if (!v12)
  {
    return sub_1B916ED34(v2, a1);
  }

  *a1 = 0;
  v13 = a1 + *(v9 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v14 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v14, v15, v9);
  if (!v12)
  {
    return sub_1B8D9207C(v2, &qword_1EBAC65F8, &qword_1B9699A20);
  }

  return result;
}

uint64_t sub_1B916EB48(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B916EFD0(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Apple_Parsec_Siri_V2alpha_DeviceState.carplaySessionData.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.carplaySessionData.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(v2) + 76);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC65F8, &qword_1B9699A20);
  sub_1B916ED34(v0, v1 + v3);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_CarPlaySessionData.init()@<X0>(_WORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B916ECA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC65F8, &qword_1B9699A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B916ED34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Apple_Parsec_Siri_V2alpha_DeviceState.carplaySessionData.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC65F8, &qword_1B9699A20);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0) + 76);
  *(v3 + 10) = v11;
  sub_1B916ECA4(v1 + v11, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    *v10 = 0;
    v13 = v10 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAC65F8, &qword_1B9699A20);
    }
  }

  else
  {
    sub_1B916ED34(v6, v10);
  }

  return sub_1B916EEF0;
}

void sub_1B916EEF0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1B916EFD0((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBAC65F8, &qword_1B9699A20);
    sub_1B916ED34(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B916F034(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAC65F8, &qword_1B9699A20);
    sub_1B916ED34(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B916EFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B916F034(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.hasCarplaySessionData.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC65F8, &qword_1B9699A20);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  sub_1B916ECA4(v0 + *(v6 + 76), v1);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBAC65F8, &qword_1B9699A20);
  return v11;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_DeviceState.clearCarplaySessionData()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0) + 76);
  sub_1B8D9207C(v0 + v1, &qword_1EBAC65F8, &qword_1B9699A20);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0) + 72);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(v2) + 72);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_DeviceState.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(v0) + 72);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  v3 = a1 + *(v2 + 72);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 76);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_CarPlaySessionData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_CarPlaySessionData.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_CarPlaySessionData.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(v0) + 24);
  return nullsub_1;
}

uint64_t sub_1B916F4F4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB49F8);
  __swift_project_value_buffer(v0, qword_1EBAB49F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "companion_name";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "device_name";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "input_origin";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "is_car_dnd";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "is_carplay";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 9;
  *v16 = "is_eyes_free";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "is_locked_with_passcode";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "is_multi_user";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 16;
  *v22 = "is_text_to_speech_enabled";
  *(v22 + 1) = 25;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 18;
  *v24 = "is_voice_gender_female";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 19;
  *v26 = "is_voice_gender_male";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 20;
  *v28 = "is_voice_gender_unknown";
  *(v28 + 1) = 23;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 21;
  *v30 = "is_voice_trigger_enabled";
  *(v30 + 1) = 24;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 24;
  *v32 = "user_assigned_device_name";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 25;
  *v34 = "carplay_session_data";
  *(v34 + 1) = 20;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
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
      case 24:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
      case 6:
      case 9:
      case 11:
      case 13:
      case 16:
      case 18:
      case 19:
      case 20:
      case 21:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 25:
        sub_1B916FB08();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B916FB08()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0) + 76);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  sub_1B91708E8(&qword_1EBAC6600, type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_DeviceState.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC65F8, &qword_1B9699A20);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v0;
  v16 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v17 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(), !v1))
  {
    v19 = *(v2 + 16);
    v20 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v21 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(), !v1))
    {
      v22 = *(v2 + 32);
      v23 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v24 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(), !v1))
      {
        if (*(v2 + 48) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
        {
          if (*(v2 + 49) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
          {
            if (*(v2 + 50) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
            {
              if (*(v2 + 51) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
              {
                if (*(v2 + 52) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
                {
                  if (*(v2 + 53) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
                  {
                    if (*(v2 + 54) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
                    {
                      if (*(v2 + 55) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
                      {
                        if (*(v2 + 56) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
                        {
                          if (*(v2 + 57) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
                          {
                            v25 = *(v2 + 64);
                            v26 = *(v2 + 72);
                            OUTLINED_FUNCTION_1();
                            if (!v27 || (OUTLINED_FUNCTION_79_0(), result = OUTLINED_FUNCTION_18_18(), !v1))
                            {
                              v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
                              sub_1B916ECA4(v2 + *(v28 + 76), v8);
                              if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
                              {
                                sub_1B8D9207C(v8, &qword_1EBAC65F8, &qword_1B9699A20);
                              }

                              else
                              {
                                v31 = v28;
                                sub_1B916ED34(v8, v14);
                                sub_1B91708E8(&qword_1EBAC6600, type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData);
                                OUTLINED_FUNCTION_79_0();
                                sub_1B964C740();
                                result = sub_1B916F034(v14);
                                if (v1)
                                {
                                  return result;
                                }

                                v28 = v31;
                              }

                              v29 = v2 + *(v28 + 72);
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
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_DeviceState.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC65F8, &qword_1B9699A20);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6608, &qword_1B9699A28);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v19 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v20 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v21 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v21 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  if (*(v1 + 48) != *(v0 + 48) || *(v1 + 49) != *(v0 + 49) || *(v1 + 50) != *(v0 + 50) || *(v1 + 51) != *(v0 + 51) || *(v1 + 52) != *(v0 + 52) || *(v1 + 53) != *(v0 + 53) || *(v1 + 54) != *(v0 + 54) || *(v1 + 55) != *(v0 + 55) || *(v1 + 56) != *(v0 + 56) || *(v1 + 57) != *(v0 + 57))
  {
    goto LABEL_45;
  }

  v22 = *(v1 + 64) == *(v0 + 64) && *(v1 + 72) == *(v0 + 72);
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState(0);
  v24 = *(v23 + 76);
  v25 = *(v15 + 48);
  sub_1B916ECA4(v1 + v24, v2);
  sub_1B916ECA4(v0 + v24, v2 + v25);
  v26 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v26, v27, v3);
  if (v19)
  {
    OUTLINED_FUNCTION_178(v2 + v25, 1, v3);
    if (v19)
    {
      sub_1B8D9207C(v2, &qword_1EBAC65F8, &qword_1B9699A20);
      goto LABEL_36;
    }

LABEL_40:
    v33 = &qword_1EBAC6608;
    v34 = &qword_1B9699A28;
LABEL_44:
    sub_1B8D9207C(v2, v33, v34);
LABEL_45:
    v31 = 0;
    return v31 & 1;
  }

  sub_1B916ECA4(v2, v14);
  OUTLINED_FUNCTION_178(v2 + v25, 1, v3);
  if (v32)
  {
    sub_1B916F034(v14);
    goto LABEL_40;
  }

  sub_1B916ED34(v2 + v25, v8);
  if (*v14 != *v8 || v14[1] != v8[1])
  {
    sub_1B916F034(v8);
    sub_1B916F034(v14);
    v33 = &qword_1EBAC65F8;
    v34 = &qword_1B9699A20;
    goto LABEL_44;
  }

  v36 = *(v3 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_63();
  sub_1B91708E8(v37, v38);
  v39 = sub_1B964C850();
  sub_1B916F034(v8);
  sub_1B916F034(v14);
  sub_1B8D9207C(v2, &qword_1EBAC65F8, &qword_1B9699A20);
  if ((v39 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_36:
  v28 = *(v23 + 72);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_63();
  sub_1B91708E8(v29, v30);
  v31 = sub_1B964C850();
  return v31 & 1;
}

uint64_t sub_1B91703C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91708E8(&qword_1EBAC6640, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9170448(uint64_t a1)
{
  v2 = sub_1B91708E8(&qword_1EBAB49E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91704B8()
{
  sub_1B91708E8(&qword_1EBAB49E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState);

  return sub_1B964C5D0();
}

uint64_t sub_1B9170554()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC65E0);
  __swift_project_value_buffer(v0, qword_1EBAC65E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "video_playback_supported";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "video_playback_available";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_CarPlaySessionData.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_CarPlaySessionData.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
  {
    if (*(v2 + 1) != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
    {
      v4 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0) + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_CarPlaySessionData.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_63();
  sub_1B91708E8(v4, v5);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B91708E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B9170978(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B91708E8(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9170A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91708E8(&qword_1EBAC6638, type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9170ADC(uint64_t a1)
{
  v2 = sub_1B91708E8(&qword_1EBAC6600, type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9170B4C()
{
  sub_1B91708E8(&qword_1EBAC6600, type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData);

  return sub_1B964C5D0();
}

void sub_1B9170E34()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9170EF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9170EF4()
{
  if (!qword_1ED9C9D00)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_CarPlaySessionData(255);
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9C9D00);
    }
  }
}

uint64_t sub_1B9170F74()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_18()
{

  return sub_1B964C700();
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.geoObject.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_VideoObjectComponent.videoUseCase.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.videoUseCase.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.relativeUtsSearchURL.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.relativeUtsSearchURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

unint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B9171440@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9171474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9178324();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_211_0();
  off_1EBAC6648 = a1;
}

uint64_t (*static Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B91715F0@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_VideoObjectComponent.VideoUseCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.getter()
{
  OUTLINED_FUNCTION_16_22();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_209();
  return sub_1B8D92024();
}

uint64_t sub_1B917169C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B8D92024();
  return Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_28_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9174D4C(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B9174F28(v0, v7 + v9);
  return swift_endAccess();
}

void (*Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[6] = v1;
  v4 = OUTLINED_FUNCTION_177_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  v3[7] = __swift_coroFrameAllocStub(v8);
  v3[8] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_16_22();
  *(v3 + 18) = v9;
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  return sub_1B91718DC;
}

void sub_1B91718DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v5 = *(v2 + 48);
    OUTLINED_FUNCTION_303();
    sub_1B8D92024();
    Apple_Parsec_Siri_V2alpha_TvOrMovieObject.object.setter();
    sub_1B8D9207C(v3, &qword_1EBAC66E8, &qword_1B9699DC0);
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
      OUTLINED_FUNCTION_28_15();
      v13 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B9174D4C(v13);
      *(v12 + v11) = v10;
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v14 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
    OUTLINED_FUNCTION_131();
    swift_beginAccess();
    sub_1B9174F28(v3, v10 + v14);
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.tv.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_16_22();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v12 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v12, v13, v11) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAC66E8, &qword_1B9699DC0);
    return Apple_Parsec_Siri_V2alpha_TvObject.init()(a1);
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_0_64();
    sub_1B9174FD8();
    return Apple_Parsec_Siri_V2alpha_TvObject.init()(a1);
  }

  OUTLINED_FUNCTION_5_30();
  return sub_1B917502C();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 64) = MEMORY[0x1E69E7CC0];
  *(a1 + 72) = v1;
  *(a1 + 80) = 0;
  *(a1 + 92) = 0;
  *(a1 + 84) = 0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = v1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xE000000000000000;
  v2 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0) + 76);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_TvOrMovieObject.tv.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_16_22();
  v12 = *(v0 + v11);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_30_7();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v14 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v14, v15, v13) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_5_30();
      OUTLINED_FUNCTION_177_1();
      sub_1B917502C();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_0_64();
    sub_1B9174FD8();
  }

  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  v10[4] = 0;
  v10[5] = 0xE000000000000000;
  v10[6] = 0;
  v10[7] = 0xE000000000000000;
  v16 = MEMORY[0x1E69E7CC0];
  v10[8] = MEMORY[0x1E69E7CC0];
  v10[9] = v16;
  *(v10 + 80) = 0;
  *(v10 + 92) = 0;
  *(v10 + 84) = 0;
  *(v10 + 25) = 0;
  v10[13] = 0xE000000000000000;
  v10[14] = v16;
  v10[15] = 0;
  v10[16] = 0;
  v10[17] = 0;
  v10[18] = 0xE000000000000000;
  v17 = v10 + *(v7 + 76);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.movie.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_16_22();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v12 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v12, v13, v11) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_7_30();
      return sub_1B917502C();
    }

    OUTLINED_FUNCTION_0_64();
    sub_1B9174FD8();
  }

  return Apple_Parsec_Siri_V2alpha_MovieObject.init()(a1);
}

uint64_t sub_1B9171E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  OUTLINED_FUNCTION_177_1();
  sub_1B91750A4();
  return a7(v13);
}

uint64_t sub_1B9171F3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0) + 20);
  v9 = *(v0 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_28_15();
    v12 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9174D4C(v12);
    *(v1 + v8) = v11;
  }

  sub_1B917502C();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B9174F28(v7, v11 + v14);
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  *(a1 + 120) = v2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xE000000000000000;
  v3 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0) + 72);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Apple_Parsec_Siri_V2alpha_TvOrMovieObject.movie.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_16_22();
  v12 = *(v0 + v11);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_30_7();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v14 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v14, v15, v13) == 1)
  {
    sub_1B8D9207C(v6, &qword_1EBAC66E8, &qword_1B9699DC0);
LABEL_6:
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v16 = MEMORY[0x1E69E7CC0];
    v10[2] = MEMORY[0x1E69E7CC0];
    v10[3] = v16;
    v10[4] = v16;
    v10[5] = v16;
    v10[6] = 0;
    v10[7] = 0;
    v10[8] = 0xE000000000000000;
    *(v10 + 18) = 0;
    *(v10 + 76) = 0;
    v10[10] = 0;
    v10[11] = 0xE000000000000000;
    *(v10 + 24) = 0;
    v10[13] = 0;
    v10[14] = 0xE000000000000000;
    v10[15] = v16;
    v10[16] = 0;
    v10[17] = 0xE000000000000000;
    v17 = v10 + *(v7 + 72);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_128();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_0_64();
    sub_1B9174FD8();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_7_30();
  OUTLINED_FUNCTION_177_1();
  sub_1B917502C();
LABEL_7:
  OUTLINED_FUNCTION_283();
}

void sub_1B91722C8(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_186();
    sub_1B91750A4();
    a3(v5);
    sub_1B9174FD8();
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

uint64_t sub_1B9172380(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Siri_V2alpha_TvOrMovieObject.machineUtterance.setter(v1, v2);
}

void (*Apple_Parsec_Siri_V2alpha_TvOrMovieObject.machineUtterance.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_16_22();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
  OUTLINED_FUNCTION_521();
  v6 = v5[1];
  v3[6] = *v5;
  v3[7] = v6;

  return sub_1B917245C;
}

uint64_t sub_1B9172488(void *a1)
{
  OUTLINED_FUNCTION_16_22();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B91724DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Apple_Parsec_Siri_V2alpha_TvOrMovieObject.contentRowDescriptionData.setter(v1, v2);
}

uint64_t sub_1B9172528(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_16();
  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_28_15();
    v12 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9174D4C(v12);
    *(v7 + v8) = v11;
  }

  v13 = (v11 + *a3);
  OUTLINED_FUNCTION_211_0();
  v14 = v13[1];
  *v13 = v5;
  v13[1] = v3;
}

void (*Apple_Parsec_Siri_V2alpha_TvOrMovieObject.contentRowDescriptionData.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_16_22();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
  OUTLINED_FUNCTION_521();
  v6 = v5[1];
  v3[6] = *v5;
  v3[7] = v6;

  return sub_1B9172644;
}

void sub_1B9172664(uint64_t *a1, char a2, void *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v8 = *(v4 + 64);
    v9 = *(*a1 + 56);

    v10 = OUTLINED_FUNCTION_461();
    a4(v10);
    v11 = *(v4 + 56);
  }

  else
  {
    v13 = *(v4 + 72);
    v14 = *(v4 + 64);
    v15 = *(v14 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = *(v4 + 72);
      v19 = *(v4 + 64);
      OUTLINED_FUNCTION_28_15();
      v20 = OUTLINED_FUNCTION_40_0();
      v17 = sub_1B9174D4C(v20);
      *(v19 + v18) = v17;
    }

    v21 = (v17 + *a3);
    OUTLINED_FUNCTION_211_0();
    v22 = v21[1];
    *v21 = v5;
    v21[1] = v6;
  }

  free(v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

void static Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v20;
  a20 = v21;
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0);
  v23 = OUTLINED_FUNCTION_183(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0);
  v27 = OUTLINED_FUNCTION_183(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v31 = OUTLINED_FUNCTION_59_1(v30);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &a9 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66F0, &qword_1B9699DC8);
  OUTLINED_FUNCTION_183(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_176();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &a9 - v42;
  v44 = *(v41 + 56);
  sub_1B91750A4();
  sub_1B91750A4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_24();
    sub_1B91750A4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_7_30();
      sub_1B917502C();
      v45 = OUTLINED_FUNCTION_128();
      static Apple_Parsec_Siri_V2alpha_MovieObject.== infix(_:_:)(v45);
      sub_1B9174FD8();
      OUTLINED_FUNCTION_461();
LABEL_7:
      sub_1B9174FD8();
      OUTLINED_FUNCTION_0_64();
      sub_1B9174FD8();
      goto LABEL_8;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_24();
    sub_1B91750A4();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_5_30();
      sub_1B917502C();
      static Apple_Parsec_Siri_V2alpha_TvObject.== infix(_:_:)(v36);
      sub_1B9174FD8();
      goto LABEL_7;
    }
  }

  sub_1B9174FD8();
  sub_1B8D9207C(v43, &qword_1EBAC66F0, &qword_1B9699DC8);
LABEL_8:
  OUTLINED_FUNCTION_283();
}

uint64_t static Apple_Parsec_Siri_V2alpha_TvObject.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1) == *v1 && *(v2 + 8) == *(v1 + 8);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 48) == *(v1 + 48) && *(v2 + 56) == *(v1 + 56);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v2 + 64), *(v1 + 64)) & 1) == 0 || (sub_1B8D6123C(*(v2 + 72), *(v1 + 72)) & 1) == 0 || *(v2 + 80) != *(v1 + 80) || *(v2 + 84) != *(v1 + 84) || *(v2 + 88) != *(v1 + 88) || *(v2 + 92) != *(v1 + 92))
  {
    return 0;
  }

  v7 = *(v2 + 96) == *(v1 + 96) && *(v2 + 104) == *(v1 + 104);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v2 + 112);
  v9 = *(v1 + 112);
  sub_1B8D758CC();
  if ((v10 & 1) == 0 || *(v2 + 120) != *(v1 + 120) || *(v2 + 128) != *(v1 + 128))
  {
    return 0;
  }

  v11 = *(v2 + 136) == *(v1 + 136) && *(v2 + 144) == *(v1 + 144);
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0) + 76);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_54();
  sub_1B8CD2A38(v13, v14);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Apple_Parsec_Siri_V2alpha_MovieObject.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1) == *v1 && *(v2 + 8) == *(v1 + 8);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v2 + 16), *(v1 + 16)) & 1) == 0 || (sub_1B8D6123C(*(v2 + 24), *(v1 + 24)) & 1) == 0 || (sub_1B8D6123C(*(v2 + 32), *(v1 + 32)) & 1) == 0 || (sub_1B8D6123C(*(v2 + 40), *(v1 + 40)) & 1) == 0 || *(v2 + 48) != *(v1 + 48))
  {
    return 0;
  }

  v4 = *(v2 + 56) == *(v1 + 56) && *(v2 + 64) == *(v1 + 64);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 72) != *(v1 + 72) || *(v2 + 76) != *(v1 + 76))
  {
    return 0;
  }

  v5 = *(v2 + 80) == *(v1 + 80) && *(v2 + 88) == *(v1 + 88);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 96) != *(v1 + 96))
  {
    return 0;
  }

  v6 = *(v2 + 104) == *(v1 + 104) && *(v2 + 112) == *(v1 + 112);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v2 + 120);
  v8 = *(v1 + 120);
  sub_1B8D748B8();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(v2 + 128) == *(v1 + 128) && *(v2 + 136) == *(v1 + 136);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0) + 72);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_54();
  sub_1B8CD2A38(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0) + 20);
  if (qword_1EBAB7648 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBAC66B0;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.canonicalID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.canonicalID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.title.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.contentRatingValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.contentRatingValue.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.thumbnail.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.thumbnail.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.genres.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.actors.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.url.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.url.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.coverArt.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.contentRatingSystem.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.contentRatingSystem.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(v0) + 76);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(v0) + 76);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(v0) + 76);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.titles.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.genres.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.actors.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.directors.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.thumbnail.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.thumbnail.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.contentRatingValue.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.contentRatingValue.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.url.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.url.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.coverArt.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.contentRatingSystem.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.contentRatingSystem.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(v0) + 72);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(v0) + 72);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(v0) + 72);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9173A24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6650);
  __swift_project_value_buffer(v0, qword_1EBAC6650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "geo_object";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.decodeMessage<A>(decoder:)()
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
      v3 = OUTLINED_FUNCTION_9();
      sub_1B91742C0(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_GeoObjectComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Mapspb_LocalSearchBusiness(0), sub_1B8CD2A38(&qword_1EBABAFC8, type metadata accessor for Mapspb_LocalSearchBusiness), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v4 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_GeoObjectComponent.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  v2 = *v1;
  sub_1B8D67AC8();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_54();
  sub_1B8CD2A38(v5, v6);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9173E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A38(&qword_1EBAC67E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9173EBC(uint64_t a1)
{
  v2 = sub_1B8CD2A38(&qword_1EBAC6760, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9173F2C()
{
  sub_1B8CD2A38(&qword_1EBAC6760, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoObjectComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B9173FC4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6668);
  __swift_project_value_buffer(v0, qword_1EBAC6668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tv_or_movie_object";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "video_use_case";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "relative_uts_search_url";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.decodeMessage<A>(decoder:)()
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
        sub_1B9174358();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91742C0(v3, v4, v5, v6, v7);
        break;
    }
  }

  return result;
}

uint64_t sub_1B91742C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  v5 = OUTLINED_FUNCTION_128();
  sub_1B8CD2A38(v5, v6);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_VideoObjectComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0), sub_1B8CD2A38(&qword_1EBAC6700, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2 + 8) || (v8 = *(v2 + 8), v9 = *(v2 + 16), sub_1B9178324(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      v4 = *(v2 + 24);
      v5 = *(v2 + 32);
      OUTLINED_FUNCTION_1();
      if (!v6 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v7 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(0) + 28);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_VideoObjectComponent.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  v4 = *v3;
  sub_1B8D67D6C();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16);
  if (!sub_1B8D92198(*(v2 + 8), *(v2 + 16), *(v1 + 8)))
  {
    return 0;
  }

  v7 = *(v2 + 24) == *(v1 + 24) && *(v2 + 32) == *(v1 + 32);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_54();
  sub_1B8CD2A38(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9174644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A38(&qword_1EBAC67E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91746C4(uint64_t a1)
{
  v2 = sub_1B8CD2A38(&qword_1EBAC6778, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9174734()
{
  sub_1B8CD2A38(&qword_1EBAC6778, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B91747B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6680);
  __swift_project_value_buffer(v0, qword_1EBAC6680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VIDEO_USE_CASE_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VIDEO_USE_CASE_CONTENT_SEARCH";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VIDEO_USE_CASE_TRAILER_DISAMBIGUATE";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VIDEO_USE_CASE_DISAMBIGUATE";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9174A34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6698);
  __swift_project_value_buffer(v0, qword_1EBAC6698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tv";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "movie";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "machine_utterance";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "content_row_description_data";
  *(v15 + 1) = 28;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9174CA4()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B9174CE4();
  qword_1EBAC66B0 = result;
  return result;
}

uint64_t sub_1B9174CE4()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B9174D4C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B9174F28(v6, v1 + v7);
  swift_endAccess();
  v11 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
  swift_beginAccess();
  v13 = *v11;
  v12 = v11[1];
  swift_beginAccess();
  v14 = v9[1];
  *v9 = v13;
  v9[1] = v12;

  v15 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
  swift_beginAccess();
  v17 = *v15;
  v16 = v15[1];

  swift_beginAccess();
  v18 = v10[1];
  *v10 = v17;
  v10[1] = v16;

  return v1;
}

uint64_t sub_1B9174F28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9174FD8()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B917502C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B91750A4()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B91750FC()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object, &qword_1EBAC66E8, &qword_1B9699DC0);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData + 8);

  return v0;
}

uint64_t sub_1B917515C()
{
  v0 = sub_1B91750FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9174D4C(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B9175250(v11, a1, a2, a3);
}

uint64_t sub_1B9175250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B9175348(a1, a2, a3, a4);
        break;
      case 2:
        sub_1B91758A8(a1, a2, a3, a4);
        break;
      case 3:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance;
        goto LABEL_7;
      case 4:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData;
LABEL_7:
        sub_1B8DAB218(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9175348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v43 = a3;
  v42 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC67F8, &qword_1B969A848);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v33 - v24;
  __swift_storeEnumTagSinglePayload(&v33 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
  swift_beginAccess();
  v34 = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v37 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    v33 = a1;
    sub_1B917502C();
    sub_1B917502C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9174FD8();
    }

    else
    {
      sub_1B8D9207C(v25, &qword_1EBAC67F8, &qword_1B969A848);
      sub_1B917502C();
      sub_1B917502C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    a1 = v33;
  }

  sub_1B8CD2A38(&qword_1EBAC67A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject);
  v27 = v40;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAC67F8, &qword_1B969A848);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC67F8, &qword_1B969A848);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAC67F8, &qword_1B969A848);
  }

  sub_1B917502C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v37;
  sub_1B8D9207C(v25, &qword_1EBAC67F8, &qword_1B969A848);
  v31 = v35;
  sub_1B917502C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  v32 = v34;
  swift_beginAccess();
  sub_1B9174F28(v31, a1 + v32);
  return swift_endAccess();
}

uint64_t sub_1B91758A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v43 = a3;
  v42 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6800, &unk_1B969A850);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v33 - v24;
  __swift_storeEnumTagSinglePayload(&v33 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__object;
  swift_beginAccess();
  v34 = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v37 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    v33 = a1;
    sub_1B917502C();
    sub_1B917502C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBAC6800, &unk_1B969A850);
      sub_1B917502C();
      sub_1B917502C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B9174FD8();
    }

    a1 = v33;
  }

  sub_1B8CD2A38(&qword_1EBAC67B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject);
  v27 = v40;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAC6800, &unk_1B969A850);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAC6800, &unk_1B969A850);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAC6800, &unk_1B969A850);
  }

  sub_1B917502C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v37;
  sub_1B8D9207C(v25, &qword_1EBAC6800, &unk_1B969A850);
  v31 = v35;
  sub_1B917502C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  v32 = v34;
  swift_beginAccess();
  sub_1B9174F28(v31, a1 + v32);
  return swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvOrMovieObject.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B9175E6C(v7, v8, v9, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9175E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - v12;
  swift_beginAccess();
  sub_1B8D92024();
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B91762E4(a1, a2, a3, a4);
  }

  else
  {
    sub_1B91760B0(a1, a2, a3, a4);
  }

  v5 = v4;
  result = sub_1B9174FD8();
  if (!v4)
  {
LABEL_6:
    v16 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
    swift_beginAccess();
    v17 = *v16;
    v18 = v16[1];
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19 || (, sub_1B964C700(), result = , !v5))
    {
      v20 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
      result = swift_beginAccess();
      v21 = *v20;
      v22 = v20[1];
      v23 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v23 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {

        sub_1B964C700();
      }
    }
  }

  return result;
}

uint64_t sub_1B91760B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B917502C();
      sub_1B8CD2A38(&qword_1EBAC67A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject);
      sub_1B964C740();
      return sub_1B9174FD8();
    }

    result = sub_1B9174FD8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B91762E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAC66E8, &qword_1B9699DC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B917502C();
      sub_1B8CD2A38(&qword_1EBAC67B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject);
      sub_1B964C740();
      return sub_1B9174FD8();
    }

    result = sub_1B9174FD8();
  }

  __break(1u);
  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_TvOrMovieObject.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_16_22();
  if (*(v1 + v2) != *(v0 + v2))
  {
    v3 = *(v1 + v2);

    OUTLINED_FUNCTION_303();
    sub_1B91765DC();
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_54();
  sub_1B8CD2A38(v6, v7);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B91765DC()
{
  OUTLINED_FUNCTION_284();
  v50 = v0;
  v2 = v1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v49 = v8 - v7;
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC67F0, &qword_1B969A840) - 8);
  v10 = *(*v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC66E8, &qword_1B9699DC0);
  v15 = OUTLINED_FUNCTION_183(v14);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  OUTLINED_FUNCTION_521();
  v23 = v50;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v24 = v9[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v13);
  if (!v26)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_75(&v13[v24]);
    if (!v26)
    {
      OUTLINED_FUNCTION_6_24();
      v27 = v49;
      sub_1B917502C();
      v25 = v2;

      static Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object.== infix(_:_:)(v20, v27, v28, v29, v30, v31, v32, v33, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
      v35 = v34;
      sub_1B9174FD8();
      sub_1B8D9207C(v22, &qword_1EBAC66E8, &qword_1B9699DC0);
      sub_1B9174FD8();
      v36 = OUTLINED_FUNCTION_303();
      sub_1B8D9207C(v36, v37, &qword_1B9699DC0);
      if ((v35 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    sub_1B8D9207C(v22, &qword_1EBAC66E8, &qword_1B9699DC0);
    OUTLINED_FUNCTION_0_64();
    sub_1B9174FD8();
LABEL_9:
    sub_1B8D9207C(v13, &qword_1EBAC67F0, &qword_1B969A840);
    goto LABEL_22;
  }

  sub_1B8D9207C(v22, &qword_1EBAC66E8, &qword_1B9699DC0);
  OUTLINED_FUNCTION_75(&v13[v24]);
  v25 = v2;
  if (!v26)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v13, &qword_1EBAC66E8, &qword_1B9699DC0);
LABEL_12:
  v38 = (v25 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
  OUTLINED_FUNCTION_521();
  v39 = *v38;
  v40 = v38[1];
  v41 = (v23 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__machineUtterance);
  OUTLINED_FUNCTION_521();
  v42 = v39 == *v41 && v40 == v41[1];
  if (v42 || (OUTLINED_FUNCTION_303(), (sub_1B964C9F0() & 1) != 0))
  {
    v43 = (v25 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
    OUTLINED_FUNCTION_521();
    v44 = *v43;
    v45 = v43[1];
    v46 = (v23 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_TvOrMovieObjectP33_1C978046C205859C630EFD0B185B6EA513_StorageClass__contentRowDescriptionData);
    OUTLINED_FUNCTION_521();
    if (v44 != *v46 || v45 != v46[1])
    {
      OUTLINED_FUNCTION_303();
      sub_1B964C9F0();
    }
  }

LABEL_22:

  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9176A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A38(&qword_1EBAC67D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9176AF8(uint64_t a1)
{
  v2 = sub_1B8CD2A38(&qword_1EBAC6700, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9176B68()
{
  sub_1B8CD2A38(&qword_1EBAC6700, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject);

  return sub_1B964C5D0();
}

uint64_t sub_1B9176C00()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC66B8);
  __swift_project_value_buffer(v0, qword_1EBAC66B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1B966F8E0;
  v4 = v37 + v3 + v1[14];
  *(v37 + v3) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v37 + v3 + v2 + v1[14];
  *(v37 + v3 + v2) = 2;
  *v8 = "title";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v7();
  v10 = (v37 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "content_rating_value";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v7();
  v12 = (v37 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "thumbnail";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v7();
  v14 = (v37 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "genres";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v7();
  v16 = (v37 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "actors";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v7();
  v18 = (v37 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "apple_original";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v7();
  v20 = (v37 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "runtime_in_minutes";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v7();
  v22 = (v37 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "season_number";
  *(v23 + 1) = 13;
  v23[16] = 2;
  v7();
  v24 = (v37 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "episode_number_float";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v7();
  v26 = (v37 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "url";
  *(v27 + 1) = 3;
  v27[16] = 2;
  v7();
  v28 = (v37 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "cover_art";
  *(v29 + 1) = 9;
  v29[16] = 2;
  v7();
  v30 = (v37 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "premiere_date";
  *(v31 + 1) = 13;
  v31[16] = 2;
  v7();
  v32 = (v37 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "finale_date";
  *(v33 + 1) = 11;
  v33[16] = 2;
  v7();
  v34 = (v37 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "content_rating_system";
  *(v35 + 1) = 21;
  v35[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.decodeMessage<A>(decoder:)()
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
      case 11:
      case 15:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 12:
        OUTLINED_FUNCTION_9();
        sub_1B9177230();
        break;
      case 13:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9177230()
{
  type metadata accessor for Tvpb_CoverArt(0);
  sub_1B8CD2A38(&qword_1EBABD828, type metadata accessor for Tvpb_CoverArt);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_TvObject.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v4 = *v1;
  v5 = v1[1];
  OUTLINED_FUNCTION_1();
  if (!v6 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
  {
    v8 = *(v3 + 16);
    v9 = *(v3 + 24);
    OUTLINED_FUNCTION_1();
    if (!v10 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
    {
      v11 = *(v3 + 32);
      v12 = *(v3 + 40);
      OUTLINED_FUNCTION_1();
      if (!v13 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
      {
        v14 = *(v3 + 48);
        v15 = *(v3 + 56);
        OUTLINED_FUNCTION_1();
        if (!v16 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
        {
          if (!*(*(v3 + 64) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), (v0 = v2) == 0))
          {
            if (!*(*(v3 + 72) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), (v0 = v2) == 0))
            {
              if (*(v3 + 80) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v0 = v2) == 0))
              {
                if (!*(v3 + 84) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), (v0 = v2) == 0))
                {
                  if (!*(v3 + 88) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), (v0 = v2) == 0))
                  {
                    if (*(v3 + 92) == 0.0 || (v2 = v0, OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
                    {
                      v17 = *(v3 + 96);
                      v18 = *(v3 + 104);
                      OUTLINED_FUNCTION_1();
                      if (!v19 || (result = OUTLINED_FUNCTION_3(), !v2))
                      {
                        if (!*(*(v3 + 112) + 16) || (type metadata accessor for Tvpb_CoverArt(0), sub_1B8CD2A38(&qword_1EBABD828, type metadata accessor for Tvpb_CoverArt), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v2))
                        {
                          if (!*(v3 + 120) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v2))
                          {
                            if (!*(v3 + 128) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v2))
                            {
                              v20 = *(v3 + 136);
                              v21 = *(v3 + 144);
                              OUTLINED_FUNCTION_1();
                              if (!v22 || (result = OUTLINED_FUNCTION_3(), !v2))
                              {
                                v23 = v3 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(0) + 76);
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
          }
        }
      }
    }
  }

  return result;
}

uint64_t (*sub_1B91775B4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 76);
  return result;
}

uint64_t sub_1B9177608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A38(&qword_1EBAC67D0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9177688(uint64_t a1)
{
  v2 = sub_1B8CD2A38(&qword_1EBAC67A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91776F8()
{
  sub_1B8CD2A38(&qword_1EBAC67A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject);

  return sub_1B964C5D0();
}

uint64_t sub_1B9177790()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC66D0);
  __swift_project_value_buffer(v0, qword_1EBAC66D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B9656D00;
  v4 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v4 = "canonical_id";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v35 + v3 + v2 + v1[14];
  *(v35 + v3 + v2) = 2;
  *v8 = "titles";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v7();
  v10 = (v35 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "genres";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v7();
  v12 = (v35 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "actors";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v7();
  v14 = (v35 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "directors";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v7();
  v16 = (v35 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "release_date_secs";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v7();
  v18 = (v35 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "thumbnail";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v7();
  v20 = (v35 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "runtime_in_minutes";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v7();
  v22 = (v35 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "is_apple_original";
  *(v23 + 1) = 17;
  v23[16] = 2;
  v7();
  v24 = (v35 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "content_rating_value";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v7();
  v26 = (v35 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "tomato_meter";
  *(v27 + 1) = 12;
  v27[16] = 2;
  v7();
  v28 = (v35 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "url";
  *(v29 + 1) = 3;
  v29[16] = 2;
  v7();
  v30 = (v35 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "cover_art";
  *(v31 + 1) = 9;
  v31[16] = 2;
  v7();
  v32 = (v35 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "content_rating_system";
  *(v33 + 1) = 21;
  v33[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.decodeMessage<A>(decoder:)()
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
      case 7:
      case 10:
      case 12:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 8:
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 13:
        OUTLINED_FUNCTION_9();
        sub_1B9177DA0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9177DA0()
{
  type metadata accessor for Moviespb_CoverArt(0);
  sub_1B8CD2A38(&qword_1EBABD3E8, type metadata accessor for Moviespb_CoverArt);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_MovieObject.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
    {
      if (!*(*(v2 + 24) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
      {
        if (!*(*(v2 + 32) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
        {
          if (!*(*(v2 + 40) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
          {
            if (!*(v2 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
            {
              v7 = *(v2 + 56);
              v8 = *(v2 + 64);
              OUTLINED_FUNCTION_1();
              if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
              {
                if (!*(v2 + 72) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
                {
                  if (*(v2 + 76) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
                  {
                    v10 = *(v2 + 80);
                    v11 = *(v2 + 88);
                    OUTLINED_FUNCTION_1();
                    if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
                    {
                      if (!*(v2 + 96) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
                      {
                        v13 = *(v2 + 104);
                        v14 = *(v2 + 112);
                        OUTLINED_FUNCTION_1();
                        if (!v15 || (result = OUTLINED_FUNCTION_3(), !v1))
                        {
                          if (!*(*(v2 + 120) + 16) || (type metadata accessor for Moviespb_CoverArt(0), sub_1B8CD2A38(&qword_1EBABD3E8, type metadata accessor for Moviespb_CoverArt), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
                          {
                            v16 = *(v2 + 128);
                            v17 = *(v2 + 136);
                            OUTLINED_FUNCTION_1();
                            if (!v18 || (result = OUTLINED_FUNCTION_3(), !v1))
                            {
                              v19 = v2 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(0) + 72);
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
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B91780D4(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2A38(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B91781B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2A38(&qword_1EBAC67C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9178234(uint64_t a1)
{
  v2 = sub_1B8CD2A38(&qword_1EBAC67B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91782A4()
{
  sub_1B8CD2A38(&qword_1EBAC67B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject);

  return sub_1B964C5D0();
}

unint64_t sub_1B9178324()
{
  result = qword_1EBAC6708;
  if (!qword_1EBAC6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6708);
  }

  return result;
}

unint64_t sub_1B917837C()
{
  result = qword_1EBAC6730;
  if (!qword_1EBAC6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6730);
  }

  return result;
}

unint64_t sub_1B91783D4()
{
  result = qword_1EBAC6738;
  if (!qword_1EBAC6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6738);
  }

  return result;
}

unint64_t sub_1B917842C()
{
  result = qword_1EBAC6740;
  if (!qword_1EBAC6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6740);
  }

  return result;
}

unint64_t sub_1B9178484()
{
  result = qword_1EBAC6748;
  if (!qword_1EBAC6748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC6750, &qword_1B9699EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6748);
  }

  return result;
}

void sub_1B9178AB0()
{
  sub_1B9178C58(319, &qword_1ED9CF6B8, type metadata accessor for Mapspb_LocalSearchBusiness, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9178B8C()
{
  sub_1B9178C58(319, &qword_1ED9CF610, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9178C58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9178CF4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B9178D78()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvObject(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_MovieObject(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9178E14()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B9178C58(319, &qword_1ED9CF6C8, type metadata accessor for Tvpb_CoverArt, MEMORY[0x1E69E62F8]);
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

void sub_1B9178F54()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B9178C58(319, &qword_1ED9CF6C0, type metadata accessor for Moviespb_CoverArt, MEMORY[0x1E69E62F8]);
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

void sub_1B9179070()
{
  sub_1B9178C58(319, &qword_1ED9D9B78, type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject.OneOf_Object, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_16_22()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_15()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_TvOrMovieObject._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

unint64_t Apple_Parsec_Siri_V2alpha_DomainUseCase.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!v3 & v2)
  {
    v4 = 6;
    v5 = 7;
    if (result == 300)
    {
      v6 = 1;
    }

    else
    {
      v5 = result;
      v6 = 0;
    }

    if (result == 200)
    {
      v6 = 1;
    }

    else
    {
      v4 = v5;
    }

    if (result >= 2)
    {
      v7 = v4;
    }

    else
    {
      v7 = result;
    }

    if (result >= 2)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    switch(result)
    {
      case 'd':
        v8 = 1;
        v7 = 2;
        break;
      case 'e':
        v8 = 1;
        v7 = 3;
        break;
      case 'f':
        v8 = 1;
        v7 = 4;
        break;
      case 'g':
        v8 = 1;
        v7 = 5;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCase.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1B969AD68[result];
  }

  return result;
}

uint64_t sub_1B9179304@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_DomainUseCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9179338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917B30C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_DomainUseCase.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC6808 = a1;
}

uint64_t sub_1B917949C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_DomainUseCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0);
  sub_1B9179680(v1 + *(v9 + 24), v8);
  v10 = sub_1B964C1E0();
  OUTLINED_FUNCTION_178(v8, 1, v10);
  if (!v11)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  sub_1B964C1D0();
  result = OUTLINED_FUNCTION_178(v8, 1, v10);
  if (!v11)
  {
    return sub_1B8D9207C(v8, &qword_1EBAB8F88, &qword_1B964D780);
  }

  return result;
}

uint64_t sub_1B9179680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B91796F0(uint64_t a1)
{
  v2 = sub_1B964C1E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(v2) + 24);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F88, &qword_1B964D780);
  v4 = sub_1B964C1E0();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C1E0();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1(v7);
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0) + 24);
  *(v3 + 12) = v13;
  sub_1B9179680(v1 + v13, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v14)
  {
    sub_1B964C1D0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8F88, &qword_1B964D780);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  return sub_1B91799EC;
}

void sub_1B91799EC(uint64_t **a1, char a2)
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
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F88, &qword_1B964D780);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_43_1();
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F88, &qword_1B964D780);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_43_1();
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.hasValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0);
  sub_1B9179680(v0 + *(v7 + 24), v6);
  v8 = sub_1B964C1E0();
  OUTLINED_FUNCTION_178(v6, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  sub_1B8D9207C(v6, &qword_1EBAB8F88, &qword_1B964D780);
  return v10;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.clearValue()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0) + 24);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB8F88, &qword_1B964D780);
  v2 = sub_1B964C1E0();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(v0) + 20);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0);
  v3 = a1 + *(v2 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 24);
  v5 = sub_1B964C1E0();

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

void Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(0) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(v0) + 24);
  return nullsub_1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9179FFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB46A0);
  __swift_project_value_buffer(v0, qword_1EBAB46A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DOMAIN_USECASE_UNKNOWN";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DOMAIN_USECASE_WEATHER_GET_WEATHER";
  *(v10 + 8) = 34;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "DOMAIN_USECASE_SPORTS_GET_TEAM_SCORE";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 101;
  *v14 = "DOMAIN_USECASE_SPORTS_GET_TEAM_SCHEDULE";
  *(v14 + 1) = 39;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 102;
  *v16 = "DOMAIN_USECASE_SPORTS_GET_LEAGUE_SCORE";
  *(v16 + 1) = 38;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 103;
  *v18 = "DOMAIN_USECASE_SPORTS_GET_LEAGUE_SCHEDULE";
  *(v18 + 1) = 41;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 200;
  *v20 = "DOMAIN_USECASE_STOCKS_GET_SYMBOL_QUOTE";
  *(v20 + 1) = 38;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 300;
  *v22 = "DOMAIN_USECASE_GEO_GET_DIRECTIONS";
  *(v22 + 1) = 33;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B917A388()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3FA0);
  __swift_project_value_buffer(v0, qword_1EBAB3FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B917A5E4();
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B917A5E4()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0) + 24);
  sub_1B964C1E0();
  sub_1B917AC0C(&qword_1ED9C8FC8, MEMORY[0x1E69AAB40]);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = sub_1B964C1E0();
  v12 = OUTLINED_FUNCTION_30_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v2;
  v20 = v2[1];
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21 || (result = sub_1B964C700(), !v3))
  {
    v27[1] = a2;
    v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0);
    sub_1B9179680(v2 + *(v23 + 24), v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1B8D9207C(v10, &qword_1EBAB8F88, &qword_1B964D780);
    }

    else
    {
      (*(v14 + 32))(v18, v10, v11);
      OUTLINED_FUNCTION_1_55();
      sub_1B917AC0C(v24, v25);
      sub_1B964C740();
      if (v3)
      {
        return (*(v14 + 8))(v18, v11);
      }

      (*(v14 + 8))(v18, v11);
    }

    v26 = v2 + *(v23 + 20);
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1B964C1E0();
  v5 = OUTLINED_FUNCTION_30_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F88, &qword_1B964D780);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F90, &qword_1B964D788);
  OUTLINED_FUNCTION_59_1(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  v24 = *a1 == *a2 && a1[1] == a2[1];
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0);
  v26 = *(v25 + 24);
  v27 = *(v18 + 48);
  sub_1B9179680(a1 + v26, v23);
  sub_1B9179680(a2 + v26, &v23[v27]);
  OUTLINED_FUNCTION_178(v23, 1, v4);
  if (v24)
  {
    OUTLINED_FUNCTION_178(&v23[v27], 1, v4);
    if (v24)
    {
      sub_1B8D9207C(v23, &qword_1EBAB8F88, &qword_1B964D780);
LABEL_17:
      v34 = *(v25 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_37();
      sub_1B917AC0C(v35, v36);
      v29 = sub_1B964C850();
      return v29 & 1;
    }

    goto LABEL_14;
  }

  sub_1B9179680(v23, v17);
  OUTLINED_FUNCTION_178(&v23[v27], 1, v4);
  if (v28)
  {
    (*(v7 + 8))(v17, v4);
LABEL_14:
    sub_1B8D9207C(v23, &qword_1EBAB8F90, &qword_1B964D788);
    goto LABEL_15;
  }

  (*(v7 + 32))(v11, &v23[v27], v4);
  OUTLINED_FUNCTION_1_55();
  sub_1B917AC0C(v30, v31);
  v32 = sub_1B964C850();
  v33 = *(v7 + 8);
  v33(v11, v4);
  v33(v17, v4);
  sub_1B8D9207C(v23, &qword_1EBAB8F88, &qword_1B964D780);
  if (v32)
  {
    goto LABEL_17;
  }

LABEL_15:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_1B917AC0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B917ACF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917AC0C(&qword_1EBAC6848, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B917AD78(uint64_t a1)
{
  v2 = sub_1B917AC0C(qword_1ED9C9910, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B917ADE8()
{
  sub_1B917AC0C(qword_1ED9C9910, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter);

  return sub_1B964C5D0();
}

uint64_t sub_1B917AE84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3FF8);
  __swift_project_value_buffer(v0, qword_1EBAB3FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "use_case";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameters";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B917B148();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B917B0E0();
    }
  }

  return result;
}

uint64_t sub_1B917B148()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0);
  sub_1B917AC0C(qword_1ED9C9910, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_1B917B30C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (!*(v0[2] + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter(0), sub_1B917AC0C(qword_1ED9C9910, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(0) + 24);
      return sub_1B964C290();
    }
  }

  return result;
}

unint64_t sub_1B917B30C()
{
  result = qword_1ED9CA300;
  if (!qword_1ED9CA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA300);
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1B969AD68[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    switch(v3)
    {
      case 1:
        if (v2 != 1)
        {
          return 0;
        }

        goto LABEL_8;
      case 2:
        if (v2 != 100)
        {
          return 0;
        }

        goto LABEL_8;
      case 3:
        if (v2 != 101)
        {
          return 0;
        }

        goto LABEL_8;
      case 4:
        if (v2 != 102)
        {
          return 0;
        }

        goto LABEL_8;
      case 5:
        if (v2 != 103)
        {
          return 0;
        }

        goto LABEL_8;
      case 6:
        if (v2 != 200)
        {
          return 0;
        }

        goto LABEL_8;
      case 7:
        if (v2 != 300)
        {
          return 0;
        }

        goto LABEL_8;
      default:
        if (!v2)
        {
          goto LABEL_8;
        }

        return 0;
    }
  }

  if (v2 == v3)
  {
LABEL_8:
    v4 = a1[2];
    v5 = a2[2];
    sub_1B8D6769C();
    if (v6)
    {
      v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(0) + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_37();
      sub_1B917AC0C(v8, v9);
      return sub_1B964C850() & 1;
    }
  }

  return 0;
}

uint64_t sub_1B917B4EC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B917AC0C(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B917B5D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B917AC0C(&qword_1EBAC6840, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B917B650(uint64_t a1)
{
  v2 = sub_1B917AC0C(&qword_1EBAB3FE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B917B6C0()
{
  sub_1B917AC0C(&qword_1EBAB3FE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata);

  return sub_1B964C5D0();
}

unint64_t sub_1B917B744()
{
  result = qword_1ED9CA2F8;
  if (!qword_1ED9CA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA2F8);
  }

  return result;
}

unint64_t sub_1B917B79C()
{
  result = qword_1ED9CA2E8;
  if (!qword_1ED9CA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA2E8);
  }

  return result;
}

unint64_t sub_1B917B7F4()
{
  result = qword_1ED9CA2F0;
  if (!qword_1ED9CA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA2F0);
  }

  return result;
}

unint64_t sub_1B917B84C()
{
  result = qword_1EBAC6820;
  if (!qword_1EBAC6820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAC6828, &qword_1B969A948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC6820);
  }

  return result;
}

void sub_1B917BB28()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B917BCD8(319, &qword_1ED9C8FC0, MEMORY[0x1E69AAB40], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B917BC14()
{
  sub_1B917BCD8(319, &qword_1ED9C8F50, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B917BCD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = v3;
  *(v1 + 56) = 0;
  *(v1 + 64) = v3;
  *(v1 + 72) = v3;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  v5 = v1 + *(v4 + 48);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v6 = *(v4 + 52);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);

  return __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
}

unint64_t Apple_Parsec_Siri_V2alpha_RewriteType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 7;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B917BE70@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Siri_V2alpha_RewriteType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B917BEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B918019C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Apple_Parsec_Siri_V2alpha_RewriteType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAC6850 = a1;
}

uint64_t sub_1B917BFEC@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_RewriteType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.utterance.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.utterance.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.queryID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.queryID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretation.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6858, &qword_1B969ADB0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  sub_1B917C394(v1 + *(v8 + 52), v2);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v9);
  if (!v12)
  {
    return sub_1B917C404(v2, a1);
  }

  v13 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v13;
  v14 = a1 + *(v9 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v15, v16, v9);
  if (!v12)
  {
    return sub_1B8D9207C(v2, &qword_1EBAC6858, &qword_1B969ADB0);
  }

  return result;
}

uint64_t sub_1B917C250(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B917C6A8(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretation.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretation.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v2) + 52);
  sub_1B8D9207C(v1 + v3, &qword_1EBAC6858, &qword_1B969ADB0);
  sub_1B917C404(v0, v1 + v3);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = a1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B917C394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6858, &qword_1B969ADB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B917C404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6858, &qword_1B969ADB0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0) + 52);
  *(v3 + 10) = v11;
  sub_1B917C394(v1 + v11, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    v13 = MEMORY[0x1E69E7CC0];
    *v10 = MEMORY[0x1E69E7CC0];
    v10[1] = v13;
    v14 = v10 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAC6858, &qword_1B969ADB0);
    }
  }

  else
  {
    sub_1B917C404(v6, v10);
  }

  return sub_1B917C5C8;
}

void sub_1B917C5C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1B917C6A8((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBAC6858, &qword_1B969ADB0);
    sub_1B917C404(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B917C70C(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAC6858, &qword_1B969ADB0);
    sub_1B917C404(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B917C6A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B917C70C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.hasAsrInterpretation.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC6858, &qword_1B969ADB0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0);
  sub_1B917C394(v0 + *(v6 + 52), v1);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_1B8D9207C(v1, &qword_1EBAC6858, &qword_1B969ADB0);
  return v11;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.clearAsrInterpretation()()
{
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(0) + 52);
  sub_1B8D9207C(v0 + v1, &qword_1EBAC6858, &qword_1B969ADB0);
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.asrInterpretations.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.rewrittenUtterances.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.profileSlices.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v0) + 48);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v0) + 48);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery(v0) + 48);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.preItnToken.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.postItnToken.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_ASRInterpretation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ASRInterpretation(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.phoneSequence.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.phoneSequence.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.ipaPhoneSequence.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.ipaPhoneSequence.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.recognitionStability.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.recognitionStability.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_InterpretationToken.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_InterpretationToken(v0) + 72);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}