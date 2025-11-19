uint64_t Searchfoundation_FlightCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_FlightCardSection(0);
  sub_1B8CD32A8(&qword_1EBACEE18, type metadata accessor for Searchfoundation_FlightCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B949ACFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD32A8(&qword_1EBACEE30, type metadata accessor for Searchfoundation_FlightCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B949AD7C(uint64_t a1)
{
  v2 = sub_1B8CD32A8(&qword_1EBACE710, type metadata accessor for Searchfoundation_FlightCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B949ADEC()
{
  sub_1B8CD32A8(&qword_1EBACE710, type metadata accessor for Searchfoundation_FlightCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B949AFB4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_FlightCardSection._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B949B040()
{
  sub_1B949B180(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B949B180(319, &qword_1ED9F2E90, type metadata accessor for Searchfoundation_Flight);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B949B180(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_63()
{
  result = type metadata accessor for Searchfoundation_FlightCardSection(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_52()
{
  v0 = type metadata accessor for Searchfoundation_FlightCardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_37()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_FlightCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_11_38()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_FlightCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Searchfoundation_Flight.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_148_5(a1);
  v1[8] = MEMORY[0x1E69E7CC0];
  v1[9] = 0;
  v1[10] = v2;
  v1[11] = 0;
  v1[12] = v2;
  v1[13] = 0;
  v1[14] = v2;
  v1[15] = 0;
  v1[16] = v2;
  v3 = v1 + *(type metadata accessor for Searchfoundation_Flight(0) + 52);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B949B334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AF82C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_FlightStatus.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B949B41C@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_FlightStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B949B478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AF7D8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_PegasusFlightState.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B949B560@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_PegasusFlightState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_ApiResultType.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B949B5C4@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_ApiResultType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B949B5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE3E8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_ApiResultType.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B949B6E0@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ApiResultType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B949B730(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE394();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_ApiStatus.allCases.modify()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return OUTLINED_FUNCTION_19_2();
}

uint64_t sub_1B949B818@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_ApiStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_Flight.carrierCode.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Flight.carrierCode.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.carrierName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Flight.carrierName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.flightNumber.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Flight.flightNumber.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.legs.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t Searchfoundation_Flight.operatorCarrierCode.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Flight.operatorCarrierCode.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.operatorFlightNumber.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Flight.operatorFlightNumber.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.carrierPhoneNumber.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Flight.carrierPhoneNumber.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.carrierWebsite.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Flight.carrierWebsite.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t Searchfoundation_Flight.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_Flight(v0) + 52);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_FlightLeg.status.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_15_25();
  result = OUTLINED_FUNCTION_521();
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t Searchfoundation_FlightLeg.status.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = type metadata accessor for Searchfoundation_FlightLeg(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v1 + v2);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94A38C0(v9);
    *(v3 + v2) = v8;
  }

  result = OUTLINED_FUNCTION_18();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  return result;
}

uint64_t Searchfoundation_FlightLeg.status.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_33_14();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_521();
  v6 = *(v5 + 24);
  v3[9] = *(v5 + 16);
  *(v3 + 80) = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B949BE08()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_47_14();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B94A38C0(v10);
    *(v9 + v8) = v7;
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  OUTLINED_FUNCTION_242();

  free(v11);
}

uint64_t Searchfoundation_FlightLeg.departurePublishedTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.departurePublishedTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  v6 = type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B949C110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B94A474C();
  return a7(v13);
}

uint64_t Searchfoundation_FlightLeg.departureActualTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.departureActualTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  v6 = type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B949C3B0()
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
    sub_1B94A474C();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B94A47A4();
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

uint64_t sub_1B949C480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  OUTLINED_FUNCTION_15_25();
  v15 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v16 = a4(0);
  OUTLINED_FUNCTION_178(v14, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = OUTLINED_FUNCTION_196();
  sub_1B8D9207C(v19, v20, v4);
  return v18;
}

void sub_1B949C57C()
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
  v12 = OUTLINED_FUNCTION_35();
  v13 = *(type metadata accessor for Searchfoundation_FlightLeg(v12) + 20);
  v14 = *(v0 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v17 = OUTLINED_FUNCTION_40_0();
    *(v5 + v13) = sub_1B94A38C0(v17);
  }

  v4(0);
  OUTLINED_FUNCTION_257_0();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B949C66C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightLeg.departureTerminal.setter(v1, v2);
}

uint64_t Searchfoundation_FlightLeg.departureTerminal.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_26_23(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B949C748(void *a1)
{
  OUTLINED_FUNCTION_33_14();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_6_2();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B949C794(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightLeg.departureGate.setter(v1, v2);
}

uint64_t sub_1B949C7E0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_16();
  v8 = *(type metadata accessor for Searchfoundation_FlightLeg(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v12 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B94A38C0(v12);
    *(v7 + v8) = v11;
  }

  v13 = (v11 + *a3);
  OUTLINED_FUNCTION_18();
  v14 = v13[1];
  *v13 = v5;
  v13[1] = v3;
}

uint64_t Searchfoundation_FlightLeg.departureGate.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_26_23(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_FlightLeg.departureAirport.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF58, &qword_1B96CD858);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_Airport(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_Airport.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_148_5(a1);
  v1[8] = 0;
  v1[9] = v2;
  v1[10] = 0;
  v1[11] = v2;
  v1[12] = 0;
  v1[13] = v2;
  v1[14] = 0;
  v1[15] = v2;
  v1[16] = 0;
  v1[17] = v2;
  v3 = type metadata accessor for Searchfoundation_Airport(0);
  v4 = v1 + v3[13];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = v3[14];
  type metadata accessor for Searchfoundation_TimeZone(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = v3[15];
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void Searchfoundation_FlightLeg.departureAirport.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  v7 = type metadata accessor for Searchfoundation_Airport(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_8_40(v11);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_53_16();
    v13 = *(v7 + 56);
    type metadata accessor for Searchfoundation_TimeZone(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = *(v7 + 60);
    type metadata accessor for Searchfoundation_LatLng(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF58, &qword_1B96CD858);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_32();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.arrivalPublishedTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.arrivalPublishedTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  v6 = type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.arrivalActualTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.arrivalActualTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  v6 = type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B949D11C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightLeg.arrivalTerminal.setter(v1, v2);
}

uint64_t Searchfoundation_FlightLeg.arrivalTerminal.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_26_23(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B949D1F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightLeg.arrivalGate.setter(v1, v2);
}

uint64_t Searchfoundation_FlightLeg.arrivalGate.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_26_23(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_FlightLeg.arrivalAirport.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF58, &qword_1B96CD858);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_Airport(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.arrivalAirport.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  v7 = type metadata accessor for Searchfoundation_Airport(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_8_40(v11);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_53_16();
    v13 = *(v7 + 56);
    type metadata accessor for Searchfoundation_TimeZone(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = *(v7 + 60);
    type metadata accessor for Searchfoundation_LatLng(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF58, &qword_1B96CD858);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_32();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B949D578()
{
  OUTLINED_FUNCTION_79_4();
  v1 = OUTLINED_FUNCTION_690();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Airport(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    Searchfoundation_Airport.init()(v0);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v8, &qword_1EBACEF58, &qword_1B96CD858);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t Searchfoundation_FlightLeg.divertedAirport.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF58, &qword_1B96CD858);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_Airport(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.divertedAirport.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  v7 = type metadata accessor for Searchfoundation_Airport(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_8_40(v11);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_53_16();
    v13 = *(v7 + 56);
    type metadata accessor for Searchfoundation_TimeZone(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = *(v7 + 60);
    type metadata accessor for Searchfoundation_LatLng(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF58, &qword_1B96CD858);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_32();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B949D910(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightLeg.title.setter(v1, v2);
}

uint64_t Searchfoundation_FlightLeg.title.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_26_23(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B949D9EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightLeg.baggageClaim.setter(v1, v2);
}

uint64_t Searchfoundation_FlightLeg.baggageClaim.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_26_23(v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B949DABC()
{
  OUTLINED_FUNCTION_243();
  v3 = *v0;
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 56);
  if (v6)
  {
    v7 = v2;
    v8 = *(v3 + 64);
    v9 = *(*v0 + 56);

    v10 = OUTLINED_FUNCTION_461();
    v7(v10);
    v11 = *(v3 + 56);
  }

  else
  {
    v12 = v1;
    v13 = *(v3 + 72);
    v14 = *(v3 + 64);
    v15 = *(v14 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = *(v3 + 72);
      v19 = *(v3 + 64);
      OUTLINED_FUNCTION_47_14();
      v20 = OUTLINED_FUNCTION_40_0();
      v17 = sub_1B94A38C0(v20);
      *(v19 + v18) = v17;
    }

    v21 = (v17 + *v12);
    OUTLINED_FUNCTION_18();
    v22 = v21[1];
    *v21 = v4;
    v21[1] = v5;
  }

  OUTLINED_FUNCTION_242();

  free(v23);
}

uint64_t Searchfoundation_FlightLeg.departureGateClosedTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.departureGateClosedTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  v6 = type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.departureRunwayTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.departureRunwayTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  v6 = type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.arrivalRunwayTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.arrivalRunwayTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  v6 = type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.arrivalGateTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.arrivalGateTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  v6 = type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B949E558()
{
  OUTLINED_FUNCTION_79_4();
  v0 = OUTLINED_FUNCTION_690();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_157_10();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t Searchfoundation_FlightLeg.lastUpdatedTime.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.lastUpdatedTime.modify()
{
  OUTLINED_FUNCTION_284();
  v0 = OUTLINED_FUNCTION_185_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_66_0(v1);
  v2 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v5 = OUTLINED_FUNCTION_306_1(v4);
  v6 = type metadata accessor for Searchfoundation_Date(v5);
  OUTLINED_FUNCTION_59_1(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_187(v8);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_8_40(v10);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_16_2();
  if (v11)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v11)
    {
      sub_1B8D9207C(v4, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.pegasusDisplayFields.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF60, &qword_1B96CD860);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  OUTLINED_FUNCTION_57(v7);
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v10 = a1 + v8[5];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = v8[6];
    v12 = type metadata accessor for Searchfoundation_Date(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    v16 = v8[7];
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
    result = OUTLINED_FUNCTION_57(v7);
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBACEF60, &qword_1B96CD860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_15();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t Searchfoundation_FlightLeg.pegasusDisplayFields.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF60, &qword_1B96CD860);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_43_15();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_PegasusDisplayFields.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  v3 = a1 + v2[5];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = v2[7];
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
}

void Searchfoundation_FlightLeg.pegasusDisplayFields.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  v7 = type metadata accessor for Searchfoundation_PegasusDisplayFields(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_8_40(v12);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v14 = v9 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_167_8();
    OUTLINED_FUNCTION_11_39(v15);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF60, &qword_1B96CD860);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_15();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.pegasusDefinedState.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_33_14();
  v4 = *(v1 + v3) + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
  result = OUTLINED_FUNCTION_521();
  v6 = *(v4 + 8);
  *a1 = *v4;
  *(a1 + 8) = v6;
  return result;
}

void *sub_1B949ED48@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B949ED90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t Searchfoundation_FlightLeg.pegasusDefinedState.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = type metadata accessor for Searchfoundation_FlightLeg(0);
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v1 + v2);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B94A38C0(v9);
    *(v3 + v2) = v8;
  }

  v10 = v8 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
  result = OUTLINED_FUNCTION_18();
  *v10 = v4;
  *(v10 + 8) = v5;
  return result;
}

uint64_t Searchfoundation_FlightLeg.pegasusDefinedState.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_33_14();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_41();
  v6 = *(v1 + 8);
  v3[9] = *v1;
  *(v3 + 80) = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B949EEDC()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_47_14();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B94A38C0(v10);
    *(v9 + v8) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
  OUTLINED_FUNCTION_18();
  *v11 = v2;
  *(v11 + 8) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

uint64_t Searchfoundation_FlightLeg.gateArrivalTimes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_FlightDateDescriptor.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  v3 = a1 + v2[5];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = v2[7];
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
}

void Searchfoundation_FlightLeg.gateArrivalTimes.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  v7 = type metadata accessor for Searchfoundation_FlightDateDescriptor(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_8_40(v11);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_145_8();
    v13 = OUTLINED_FUNCTION_167_8();
    OUTLINED_FUNCTION_11_39(v13);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF68, &qword_1B96CD868);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.runwayArrivalTimes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.runwayArrivalTimes.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  v7 = type metadata accessor for Searchfoundation_FlightDateDescriptor(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_8_40(v11);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_145_8();
    v13 = OUTLINED_FUNCTION_167_8();
    OUTLINED_FUNCTION_11_39(v13);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF68, &qword_1B96CD868);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.gateDepartureTimes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.gateDepartureTimes.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  v7 = type metadata accessor for Searchfoundation_FlightDateDescriptor(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_8_40(v11);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_145_8();
    v13 = OUTLINED_FUNCTION_167_8();
    OUTLINED_FUNCTION_11_39(v13);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF68, &qword_1B96CD868);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B949F754@<X0>(_DWORD *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  OUTLINED_FUNCTION_15_25();
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_209();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  OUTLINED_FUNCTION_57(v9);
  if (!v11)
  {
    return sub_1B94A46F4();
  }

  *a1 = 0;
  v12 = a1 + v10[5];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v13 = v10[6];
  v14 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  v18 = v10[7];
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
  result = OUTLINED_FUNCTION_57(v9);
  if (!v11)
  {
    return sub_1B8D9207C(v9, &qword_1EBACEF68, &qword_1B96CD868);
  }

  return result;
}

uint64_t Searchfoundation_FlightLeg.runwayDepartureTimes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_41_23();
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_47_14();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B94A38C0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_135_7();
  v11 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  OUTLINED_FUNCTION_65_1(v11);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_FlightLeg.runwayDepartureTimes.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  v7 = type metadata accessor for Searchfoundation_FlightDateDescriptor(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_8_40(v11);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_145_8();
    v13 = OUTLINED_FUNCTION_167_8();
    OUTLINED_FUNCTION_11_39(v13);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACEF68, &qword_1B96CD868);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_246();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_FlightLeg.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Searchfoundation_FlightLeg.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t Searchfoundation_FlightLeg.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Searchfoundation_FlightLeg(0) + 20);
  if (qword_1EBAB8400 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBACEEF0;
}

uint64_t Searchfoundation_Airport.timezone.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC690, &qword_1B96B9A00);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Searchfoundation_Airport(v7);
  OUTLINED_FUNCTION_115(*(v8 + 56));
  sub_1B8D92024();
  v9 = type metadata accessor for Searchfoundation_TimeZone(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v11 = a1 + *(v9 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC690, &qword_1B96B9A00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_21();
    OUTLINED_FUNCTION_182();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t Searchfoundation_Airport.timezone.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_Airport(v1);
  sub_1B8D9207C(v0 + *(v2 + 56), &qword_1EBACC690, &qword_1B96B9A00);
  OUTLINED_FUNCTION_23_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B94A46F4();
  type metadata accessor for Searchfoundation_TimeZone(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_Airport.timezone.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Searchfoundation_TimeZone(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_Airport(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 56));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v17 = v10 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC690, &qword_1B96B9A00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_21();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_Airport.hasTimezone.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Searchfoundation_Airport(v7);
  OUTLINED_FUNCTION_115(*(v8 + 56));
  sub_1B8D92024();
  v9 = type metadata accessor for Searchfoundation_TimeZone(0);
  OUTLINED_FUNCTION_178(v0, 1, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v12, v13, &qword_1B96B9A00);
  return v11;
}

Swift::Void __swiftcall Searchfoundation_Airport.clearTimezone()()
{
  v1 = type metadata accessor for Searchfoundation_Airport(0);
  sub_1B8D9207C(v0 + *(v1 + 56), &qword_1EBACC690, &qword_1B96B9A00);
  type metadata accessor for Searchfoundation_TimeZone(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_Airport.location.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Searchfoundation_Airport(v7);
  OUTLINED_FUNCTION_115(*(v8 + 60));
  sub_1B8D92024();
  v9 = type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1 + *(v9 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_24();
    OUTLINED_FUNCTION_182();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t Searchfoundation_Airport.location.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_Airport(v1);
  sub_1B8D9207C(v0 + *(v2 + 60), &qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_122_0();
  sub_1B94A46F4();
  type metadata accessor for Searchfoundation_LatLng(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_Airport.location.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Searchfoundation_LatLng(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_Airport(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 60));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0;
    v17 = v10 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_24();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_Airport.hasLocation.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Searchfoundation_Airport(v7);
  OUTLINED_FUNCTION_115(*(v8 + 60));
  sub_1B8D92024();
  v9 = type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_178(v0, 1, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v12, v13, &unk_1B96CB440);
  return v11;
}

Swift::Void __swiftcall Searchfoundation_Airport.clearLocation()()
{
  v1 = type metadata accessor for Searchfoundation_Airport(0);
  sub_1B8D9207C(v0 + *(v1 + 60), &qword_1EBACAFA0, &unk_1B96CB440);
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_Airport.state.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Airport.state.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Searchfoundation_Airport.postalCode.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Airport.postalCode.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_Airport.countryCode.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Airport.countryCode.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Searchfoundation_Airport.country.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Airport.country.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Searchfoundation_Airport.name.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_Airport.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t sub_1B94A067C()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 52);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B94A0704()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 52);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Searchfoundation_Airport.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_Airport(v0) + 52);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_ApiResults.status.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_ApiResults.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void Searchfoundation_ApiResults.resultType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_ApiResults.resultType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Searchfoundation_ApiResults.flights.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Searchfoundation_ApiResults.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Searchfoundation_ApiResults(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Searchfoundation_ApiResults.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_ApiResults(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Searchfoundation_ApiResults.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_ApiResults(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ApiResults.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Searchfoundation_ApiResults(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Searchfoundation_FlightDateDescriptor.scheduled.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Searchfoundation_Date(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Searchfoundation_FlightDateDescriptor(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_FlightDateDescriptor.current.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Searchfoundation_Date(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Searchfoundation_FlightDateDescriptor(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_FlightDateDescriptor.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_FlightDateDescriptor(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_PegasusDisplayFields.displayStatus.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_PegasusDisplayFields.displayStatus.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1B94A0DE0()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = *(v0(v8) + 24);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_157_10();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t sub_1B94A0EE0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_122_0();
  sub_1B94A46F4();
  type metadata accessor for Searchfoundation_Date(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Searchfoundation_PegasusDisplayFields.departureTime.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Searchfoundation_Date(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Searchfoundation_PegasusDisplayFields(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B94A1070(uint64_t (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_303();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_35();
  v10 = *(a1(v9) + 24);
  OUTLINED_FUNCTION_78_4();
  v11 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_178(v1, 1, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  OUTLINED_FUNCTION_176_2();
  sub_1B8D9207C(v14, v15, v16);
  return v13;
}

uint64_t sub_1B94A1138(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 24), &qword_1EBAB8E30, &qword_1B964D630);
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B94A11BC()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = *(v0(v8) + 28);
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    OUTLINED_FUNCTION_157_10();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B94A46F4();
  }

  return result;
}

uint64_t sub_1B94A12BC()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 28), &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_0_91();
  OUTLINED_FUNCTION_122_0();
  sub_1B94A46F4();
  type metadata accessor for Searchfoundation_Date(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Searchfoundation_PegasusDisplayFields.arrivalTime.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Searchfoundation_Date(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Searchfoundation_PegasusDisplayFields(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_84_9();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_91();
    OUTLINED_FUNCTION_461();
    sub_1B94A46F4();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B94A145C()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    OUTLINED_FUNCTION_128();
    sub_1B94A474C();
    sub_1B8D9207C(v10 + v5, v3, v2);
    sub_1B94A46F4();
    OUTLINED_FUNCTION_187_1();
    sub_1B94A47A4();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v0, v1);
    sub_1B94A46F4();
    OUTLINED_FUNCTION_187_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v12);
}

uint64_t sub_1B94A1554(uint64_t (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_303();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_35();
  v10 = *(a1(v9) + 28);
  OUTLINED_FUNCTION_78_4();
  v11 = type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_178(v1, 1, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  OUTLINED_FUNCTION_176_2();
  sub_1B8D9207C(v14, v15, v16);
  return v13;
}

uint64_t sub_1B94A161C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1B8D9207C(v1 + *(v2 + 28), &qword_1EBAB8E30, &qword_1B964D630);
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B94A16A0()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B94A1728()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Searchfoundation_PegasusDisplayFields.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_PegasusDisplayFields(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B94A17D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEE60);
  __swift_project_value_buffer(v0, qword_1EBACEE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FlightStatusUnknown";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FlightStatusActive";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "FlightStatusCanceled";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FlightStatusDiverted";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "FlightStatusDataSourceNeeded";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "FlightStatusLanded";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "FlightStatusNotOperational";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "FlightStatusRedirected";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "FlightStatusScheduled";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "FlightStatusDelayed";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94A1BB8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEE78);
  __swift_project_value_buffer(v0, qword_1EBACEE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PegasusFlightStateUnknown";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PegasusFlightStateScheduled";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PegasusFlightStateDeparted";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PegasusFlightStateEnRoute";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PegasusFlightStateLanded";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PegasusFlightStateArrived";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PegasusFlightStateCancelled";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "PegasusFlightStateRedirected";
  *(v22 + 1) = 28;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "PegasusFlightStateDiverted";
  *(v24 + 1) = 26;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "PegasusFlightStateNotOperational";
  *(v26 + 1) = 32;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94A1F98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEE90);
  __swift_project_value_buffer(v0, qword_1EBACEE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ApiResultTypeUnknown";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ApiResultTypeFlights";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94A2188()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEEA8);
  __swift_project_value_buffer(v0, qword_1EBACEEA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ApiStatusOk";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ApiStatusNoResults";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ApiStatusError";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94A23CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEEC0);
  __swift_project_value_buffer(v0, qword_1EBACEEC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "flightID";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "carrierCode";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "carrierName";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "flightNumber";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "legs";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "operatorCarrierCode";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "operatorFlightNumber";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "carrierPhoneNumber";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "carrierWebsite";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_Flight.decodeMessage<A>(decoder:)()
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
      case 6:
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B94A2824();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B94A2824()
{
  type metadata accessor for Searchfoundation_FlightLeg(0);
  sub_1B94AE34C(&qword_1EBACEF70, type metadata accessor for Searchfoundation_FlightLeg);
  return sub_1B964C570();
}

uint64_t Searchfoundation_Flight.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_64_2();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v12 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
      {
        v13 = v2[6];
        v14 = v2[7];
        OUTLINED_FUNCTION_1();
        if (!v15 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
        {
          if (!*(v2[8] + 16) || (type metadata accessor for Searchfoundation_FlightLeg(0), sub_1B94AE34C(&qword_1EBACEF70, type metadata accessor for Searchfoundation_FlightLeg), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
          {
            v16 = v2[9];
            v17 = v2[10];
            OUTLINED_FUNCTION_1();
            if (!v18 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
            {
              v19 = v2[11];
              v20 = v2[12];
              OUTLINED_FUNCTION_1();
              if (!v21 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
              {
                v22 = v2[13];
                v23 = v2[14];
                OUTLINED_FUNCTION_1();
                if (!v24 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
                {
                  v25 = v2[15];
                  v26 = v2[16];
                  OUTLINED_FUNCTION_1();
                  if (!v27 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
                  {
                    v28 = v2 + *(type metadata accessor for Searchfoundation_Flight(0) + 52);
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

  return result;
}

uint64_t static Searchfoundation_Flight.== infix(_:_:)()
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

  v5 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v1[8];
  v8 = v0[8];
  sub_1B8D7C720();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v1[9] == v0[9] && v1[10] == v0[10];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v1[11] == v0[11] && v1[12] == v0[12];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = v1[13] == v0[13] && v1[14] == v0[14];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = v1[15] == v0[15] && v1[16] == v0[16];
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for Searchfoundation_Flight(0) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v15, v16);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B94A2CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE34C(&qword_1EBACF110, type metadata accessor for Searchfoundation_Flight);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94A2D64(uint64_t a1)
{
  v2 = sub_1B94AE34C(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94A2DD4()
{
  sub_1B94AE34C(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight);

  return sub_1B964C5D0();
}

uint64_t sub_1B94A2E6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEED8);
  __swift_project_value_buffer(v0, qword_1EBACEED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1B966D600;
  v4 = v56 + v3 + v1[14];
  *(v56 + v3) = 1;
  *v4 = "status";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v56 + v3 + v2 + v1[14];
  *(v56 + v3 + v2) = 2;
  *v8 = "departurePublishedTime";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v56 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "departureActualTime";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v56 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "departureTerminal";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v56 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "departureGate";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v56 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "departureAirport";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v56 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "arrivalPublishedTime";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v56 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "arrivalActualTime";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v56 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "arrivalTerminal";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v56 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "arrivalGate";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v56 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "arrivalAirport";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v7();
  v27 = (v56 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "divertedAirport";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  v29 = (v56 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "title";
  *(v30 + 1) = 5;
  v30[16] = 2;
  v7();
  v31 = (v56 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "baggageClaim";
  *(v32 + 1) = 12;
  v32[16] = 2;
  v7();
  v33 = (v56 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "departureGateClosedTime";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v7();
  v35 = (v56 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "departureRunwayTime";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v7();
  v37 = (v56 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "arrivalRunwayTime";
  *(v38 + 1) = 17;
  v38[16] = 2;
  v7();
  v39 = (v56 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "arrivalGateTime";
  *(v40 + 1) = 15;
  v40[16] = 2;
  v7();
  v41 = (v56 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "lastUpdatedTime";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v7();
  v43 = (v56 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "pegasusDisplayFields";
  *(v44 + 1) = 20;
  v44[16] = 2;
  v7();
  v45 = (v56 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "pegasusDefinedState";
  *(v46 + 1) = 19;
  v46[16] = 2;
  v7();
  v47 = (v56 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "gateArrivalTimes";
  *(v48 + 1) = 16;
  v48[16] = 2;
  v7();
  v49 = (v56 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "runwayArrivalTimes";
  *(v50 + 1) = 18;
  v50[16] = 2;
  v7();
  v51 = (v56 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "gateDepartureTimes";
  *(v52 + 1) = 18;
  v52[16] = 2;
  v7();
  v53 = (v56 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "runwayDepartureTimes";
  *(v54 + 1) = 20;
  v54[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B94A35C4()
{
  v0 = type metadata accessor for Searchfoundation_FlightLeg._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B94A3604();
  qword_1EBACEEF0 = result;
  return result;
}

uint64_t sub_1B94A3604()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departurePublishedTime;
  v2 = type metadata accessor for Searchfoundation_Date(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureActualTime, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureTerminal);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGate);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureAirport;
  v6 = type metadata accessor for Searchfoundation_Airport(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalPublishedTime, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalActualTime, 1, 1, v2);
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate[0]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalAirport, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__divertedAirport, 1, 1, v6);
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGateClosedTime, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureRunwayTime, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalRunwayTime, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGateTime, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__lastUpdatedTime, 1, 1, v2);
  v11 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDisplayFields;
  v12 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  v13 = v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateArrivalTimes;
  v15 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  __swift_storeEnumTagSinglePayload(v0 + v14, 1, 1, v15);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayArrivalTimes, 1, 1, v15);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes, 1, 1, v15);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayDepartureTimes, 1, 1, v15);
  return v0;
}

uint64_t sub_1B94A38C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v90 = &v65 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF60, &qword_1B96CD860);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF58, &qword_1B96CD858);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v91 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  *(v1 + 16) = 0;
  v66 = (v1 + 16);
  *(v1 + 24) = 1;
  v14 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departurePublishedTime;
  v67 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departurePublishedTime;
  v15 = type metadata accessor for Searchfoundation_Date(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v68 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureActualTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureActualTime, 1, 1, v15);
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureTerminal);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGate);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureAirport;
  v69 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureAirport;
  v19 = type metadata accessor for Searchfoundation_Airport(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v70 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalPublishedTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalPublishedTime, 1, 1, v15);
  v71 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalActualTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalActualTime, 1, 1, v15);
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal);
  v72 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate);
  v73 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v74 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalAirport;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalAirport, 1, 1, v19);
  v75 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__divertedAirport;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__divertedAirport, 1, 1, v19);
  v22 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title);
  v76 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim);
  v77 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v78 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGateClosedTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGateClosedTime, 1, 1, v15);
  v79 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureRunwayTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureRunwayTime, 1, 1, v15);
  v80 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalRunwayTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalRunwayTime, 1, 1, v15);
  v82 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGateTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGateTime, 1, 1, v15);
  v83 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__lastUpdatedTime;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__lastUpdatedTime, 1, 1, v15);
  v24 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDisplayFields;
  v81 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDisplayFields;
  v25 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
  v84 = v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateArrivalTimes;
  v85 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateArrivalTimes;
  v28 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  __swift_storeEnumTagSinglePayload(v1 + v27, 1, 1, v28);
  v86 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayArrivalTimes;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayArrivalTimes, 1, 1, v28);
  v87 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes, 1, 1, v28);
  v88 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayDepartureTimes;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayDepartureTimes, 1, 1, v28);
  swift_beginAccess();
  v29 = *(a1 + 16);
  LOBYTE(v27) = *(a1 + 24);
  v30 = v66;
  swift_beginAccess();
  *v30 = v29;
  *(v1 + 24) = v27;
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
  v31 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureTerminal);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  swift_beginAccess();
  v34 = v16[1];
  *v16 = v33;
  v16[1] = v32;

  v35 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGate);
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];
  swift_beginAccess();
  v38 = v17[1];
  *v17 = v37;
  v17[1] = v36;

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
  v39 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal);
  swift_beginAccess();
  v41 = *v39;
  v40 = v39[1];
  v42 = v72;
  swift_beginAccess();
  v43 = v42;
  v44 = v42[1];
  *v43 = v41;
  v43[1] = v40;

  v45 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate);
  swift_beginAccess();
  v47 = *v45;
  v46 = v45[1];
  v48 = v73;
  swift_beginAccess();
  v49 = v48;
  v50 = v48[1];
  *v49 = v47;
  v49[1] = v46;

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
  v51 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title);
  swift_beginAccess();
  v53 = *v51;
  v52 = v51[1];
  v54 = v76;
  swift_beginAccess();
  v55 = v54[1];
  *v54 = v53;
  v54[1] = v52;

  v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim);
  swift_beginAccess();
  v58 = *v56;
  v57 = v56[1];
  v59 = v77;
  swift_beginAccess();
  v60 = v59[1];
  *v59 = v58;
  v59[1] = v57;

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
  v61 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState);
  swift_beginAccess();
  v62 = *v61;
  LOBYTE(v61) = *(v61 + 8);
  v63 = v84;
  swift_beginAccess();
  *v63 = v62;
  *(v63 + 8) = v61;
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

uint64_t sub_1B94A46F4()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B94A474C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B94A47A4()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B94A4858()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departurePublishedTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureActualTime, &qword_1EBAB8E30, &qword_1B964D630);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureTerminal + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGate + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureAirport, &qword_1EBACEF58, &qword_1B96CD858);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalPublishedTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalActualTime, &qword_1EBAB8E30, &qword_1B964D630);
  v3 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate[0] + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalAirport, &qword_1EBACEF58, &qword_1B96CD858);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__divertedAirport, &qword_1EBACEF58, &qword_1B96CD858);
  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGateClosedTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureRunwayTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalRunwayTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGateTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__lastUpdatedTime, &qword_1EBAB8E30, &qword_1B964D630);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDisplayFields, &qword_1EBACEF60, &qword_1B96CD860);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateArrivalTimes, &qword_1EBACEF68, &qword_1B96CD868);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayArrivalTimes, &qword_1EBACEF68, &qword_1B96CD868);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes, &qword_1EBACEF68, &qword_1B96CD868);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__runwayDepartureTimes, &qword_1EBACEF68, &qword_1B96CD868);
  return v0;
}

uint64_t sub_1B94A4AD0()
{
  v0 = sub_1B94A4858();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_FlightLeg.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Searchfoundation_FlightLeg(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Searchfoundation_FlightLeg._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B94A38C0(v9);
  }

  return sub_1B94A4BC4();
}

uint64_t sub_1B94A4BC4()
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
        sub_1B94A4EA8();
        break;
      case 2:
        sub_1B94A4F3C();
        break;
      case 3:
        sub_1B94A5018();
        break;
      case 4:
      case 5:
      case 9:
      case 10:
      case 13:
      case 14:
        sub_1B8E17690();
        break;
      case 6:
        sub_1B94A50F4();
        break;
      case 7:
        sub_1B94A51D0();
        break;
      case 8:
        sub_1B94A52AC();
        break;
      case 11:
        sub_1B94A5388();
        break;
      case 12:
        sub_1B94A5464();
        break;
      case 15:
        sub_1B94A5540();
        break;
      case 16:
        sub_1B94A561C();
        break;
      case 17:
        sub_1B94A56F8();
        break;
      case 18:
        sub_1B94A57D4();
        break;
      case 19:
        sub_1B94A58B0();
        break;
      case 20:
        sub_1B94A598C();
        break;
      case 21:
        sub_1B94A5A68();
        break;
      case 22:
        sub_1B94A5B04();
        break;
      case 23:
        sub_1B94A5BE0();
        break;
      case 24:
        sub_1B94A5CBC();
        break;
      case 25:
        sub_1B94A5D98();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B94A4EA8()
{
  swift_beginAccess();
  sub_1B94AF82C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B94A4F3C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5018()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A50F4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Airport(0);
  sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A51D0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A52AC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5388()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Airport(0);
  sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5464()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Airport(0);
  sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5540()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A561C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A56F8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A57D4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A58B0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A598C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  sub_1B94AE34C(&qword_1EBACF0C8, type metadata accessor for Searchfoundation_PegasusDisplayFields);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5A68()
{
  swift_beginAccess();
  sub_1B94AF7D8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B94A5B04()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5BE0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5CBC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94A5D98()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Searchfoundation_FlightLeg.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for Searchfoundation_FlightLeg(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B94A5ED8(v7, v8, v9, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B94A5ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v142 = v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v140 = v139 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v143 = v139 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v144 = v139 - v15;
  v152 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  v16 = *(*(v152 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v152);
  v139[0] = v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v139[1] = v139 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v139[2] = v139 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v141 = v139 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF60, &qword_1B96CD860);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v147 = v139 - v26;
  v148 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  v27 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v145 = v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF58, &qword_1B96CD858);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v161 = v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v164 = v139 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v169 = v139 - v35;
  v168 = type metadata accessor for Searchfoundation_Airport(0);
  v36 = *(*(v168 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v168);
  v158 = v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v160 = v139 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v167 = v139 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v150 = v139 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v155 = v139 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v154 = v139 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v157 = v139 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v159 = v139 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v163 = v139 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v166 = v139 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v60 = v139 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v62 = v139 - v61;
  v172 = type metadata accessor for Searchfoundation_Date(0);
  v63 = *(*(v172 - 8) + 64);
  v64 = MEMORY[0x1EEE9AC00](v172);
  v146 = v139 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v149 = v139 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v151 = v139 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v153 = v139 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v156 = v139 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v162 = v139 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v165 = v139 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  MEMORY[0x1EEE9AC00](v78);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v79 = *(a1 + 24);
    v175 = *(a1 + 16);
    v176 = v79;
    sub_1B94AF82C();
    v80 = v177;
    result = sub_1B964C680();
    if (v80)
    {
      return result;
    }

    v82 = a1;
    v170 = a3;
    v171 = a4;
    v83 = 0;
  }

  else
  {
    v82 = a1;
    v170 = a3;
    v171 = a4;
    v83 = v177;
  }

  v84 = v82;
  swift_beginAccess();
  v177 = v84;
  sub_1B8D92024();
  v85 = v172;
  if (__swift_getEnumTagSinglePayload(v62, 1, v172) == 1)
  {
    sub_1B8D9207C(v62, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
    sub_1B964C740();
    if (v83)
    {
      return sub_1B94A47A4();
    }

    v83 = 0;
    sub_1B94A47A4();
  }

  v86 = v177;
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v60, 1, v85) == 1)
  {
    sub_1B8D9207C(v60, &qword_1EBAB8E30, &qword_1B964D630);
    v87 = v83;
    v88 = v171;
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
    v89 = v83;
    v88 = v171;
    sub_1B964C740();
    v87 = v89;
    if (v89)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  v90 = (v86 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureTerminal);
  swift_beginAccess();
  v91 = *v90;
  v92 = v90[1];
  v93 = HIBYTE(v92) & 0xF;
  if ((v92 & 0x2000000000000000) == 0)
  {
    v93 = v91 & 0xFFFFFFFFFFFFLL;
  }

  v94 = v169;
  if (v93)
  {

    sub_1B964C700();
    if (v87)
    {
    }
  }

  v95 = (v86 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGate);
  swift_beginAccess();
  v96 = *v95;
  v97 = v95[1];
  v98 = HIBYTE(v97) & 0xF;
  if ((v97 & 0x2000000000000000) == 0)
  {
    v98 = v96 & 0xFFFFFFFFFFFFLL;
  }

  if (v98)
  {

    sub_1B964C700();
    if (v87)
    {
    }

    v99 = v88;
    v100 = 0;
  }

  else
  {
    v99 = v88;
    v100 = v87;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v94, 1, v168) == 1)
  {
    sub_1B8D9207C(v94, &qword_1EBACEF58, &qword_1B96CD858);
    v101 = v100;
    v102 = v99;
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport);
    v102 = v99;
    sub_1B964C740();
    v101 = v100;
    if (v100)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  swift_beginAccess();
  v103 = v166;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v103, 1, v172) == 1)
  {
    v104 = v101;
    v171 = v102;
    sub_1B8D9207C(v103, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
    sub_1B964C740();
    if (v101)
    {
      return sub_1B94A47A4();
    }

    v104 = 0;
    v171 = v102;
    sub_1B94A47A4();
  }

  swift_beginAccess();
  v105 = v163;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v105, 1, v172);
  v107 = v164;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v105, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
    sub_1B964C740();
    if (v104)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  v108 = (v86 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal);
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
    if (v104)
    {
    }
  }

  v112 = (v86 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate[0]);
  swift_beginAccess();
  v113 = *v112;
  v114 = v112[1];
  v115 = HIBYTE(v114) & 0xF;
  if ((v114 & 0x2000000000000000) == 0)
  {
    v115 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (v115)
  {

    sub_1B964C700();
    if (v104)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v107, 1, v168) == 1)
  {
    sub_1B8D9207C(v107, &qword_1EBACEF58, &qword_1B96CD858);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport);
    sub_1B964C740();
    if (v104)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  swift_beginAccess();
  v116 = v161;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v116, 1, v168) == 1)
  {
    sub_1B8D9207C(v116, &qword_1EBACEF58, &qword_1B96CD858);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport);
    sub_1B964C740();
    if (v104)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  v117 = (v86 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title);
  swift_beginAccess();
  v118 = *v117;
  v119 = v117[1];
  v120 = HIBYTE(v119) & 0xF;
  if ((v119 & 0x2000000000000000) == 0)
  {
    v120 = v118 & 0xFFFFFFFFFFFFLL;
  }

  v121 = v159;
  if (v120)
  {

    sub_1B964C700();
    if (v104)
    {
    }
  }

  v122 = (v86 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim);
  swift_beginAccess();
  v123 = *v122;
  v124 = v122[1];
  v125 = HIBYTE(v124) & 0xF;
  if ((v124 & 0x2000000000000000) == 0)
  {
    v125 = v123 & 0xFFFFFFFFFFFFLL;
  }

  if (v125)
  {

    sub_1B964C700();
    if (v104)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v121, 1, v172) == 1)
  {
    sub_1B8D9207C(v121, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
    sub_1B964C740();
    if (v104)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  swift_beginAccess();
  v126 = v157;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v126, 1, v172) == 1)
  {
    sub_1B8D9207C(v126, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
    sub_1B964C740();
    if (v104)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  swift_beginAccess();
  v127 = v154;
  sub_1B8D92024();
  v128 = __swift_getEnumTagSinglePayload(v127, 1, v172);
  v129 = v155;
  if (v128 == 1)
  {
    sub_1B8D9207C(v127, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
    sub_1B964C740();
    if (v104)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v129, 1, v172) == 1)
  {
    sub_1B8D9207C(v129, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
    sub_1B964C740();
    if (v104)
    {
      return sub_1B94A47A4();
    }

    sub_1B94A47A4();
  }

  swift_beginAccess();
  v130 = v150;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v130, 1, v172) == 1)
  {
    sub_1B8D9207C(v130, &qword_1EBAB8E30, &qword_1B964D630);
    goto LABEL_91;
  }

  sub_1B94A46F4();
  sub_1B94AE34C(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  sub_1B964C740();
  if (v104)
  {
    return sub_1B94A47A4();
  }

  sub_1B94A47A4();
LABEL_91:
  swift_beginAccess();
  v131 = v147;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v131, 1, v148) != 1)
  {
    sub_1B94A46F4();
    sub_1B94AE34C(&qword_1EBACF0C8, type metadata accessor for Searchfoundation_PegasusDisplayFields);
    sub_1B964C740();
    v132 = v104;
    if (!v104)
    {
      sub_1B94A47A4();
      goto LABEL_95;
    }

    return sub_1B94A47A4();
  }

  sub_1B8D9207C(v131, &qword_1EBACEF60, &qword_1B96CD860);
  v132 = v104;
LABEL_95:
  v133 = (v86 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState);
  swift_beginAccess();
  if (!*v133 || (v134 = *(v133 + 8), v173 = *v133, v174 = v134, sub_1B94AF7D8(), result = sub_1B964C680(), !v132))
  {
    v135 = v144;
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v135, 1, v152) == 1)
    {
      sub_1B8D9207C(v135, &qword_1EBACEF68, &qword_1B96CD868);
    }

    else
    {
      sub_1B94A46F4();
      sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor);
      sub_1B964C740();
      result = sub_1B94A47A4();
      if (v132)
      {
        return result;
      }
    }

    swift_beginAccess();
    v136 = v143;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v136, 1, v152) == 1)
    {
      sub_1B8D9207C(v136, &qword_1EBACEF68, &qword_1B96CD868);
    }

    else
    {
      sub_1B94A46F4();
      sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor);
      sub_1B964C740();
      result = sub_1B94A47A4();
      if (v132)
      {
        return result;
      }
    }

    swift_beginAccess();
    v137 = v140;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v137, 1, v152) == 1)
    {
      sub_1B8D9207C(v137, &qword_1EBACEF68, &qword_1B96CD868);
    }

    else
    {
      sub_1B94A46F4();
      sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor);
      sub_1B964C740();
      result = sub_1B94A47A4();
      if (v132)
      {
        return result;
      }
    }

    swift_beginAccess();
    v138 = v142;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v138, 1, v152) == 1)
    {
      return sub_1B8D9207C(v142, &qword_1EBACEF68, &qword_1B96CD868);
    }

    else
    {
      sub_1B94A46F4();
      sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor);
      sub_1B964C740();
      return sub_1B94A47A4();
    }
  }

  return result;
}

uint64_t static Searchfoundation_FlightLeg.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_33_14();
  if (*(v1 + v2) != *(v0 + v2))
  {
    v3 = *(v1 + v2);

    OUTLINED_FUNCTION_303();
    sub_1B94A7CF0();
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v6, v7);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B94A7CF0()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v466 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  v4 = OUTLINED_FUNCTION_59_1(v466);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACF128, &qword_1B96CE8E0);
  v10 = OUTLINED_FUNCTION_59_1(v463);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_682();
  v462 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_682();
  v459 = v19;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_266_0();
  v456 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF68, &qword_1B96CD868);
  v23 = OUTLINED_FUNCTION_183(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44_0();
  v465 = v26;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_682();
  v464 = v28;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_682();
  v461 = v30;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_682();
  v460 = v32;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_682();
  v458 = v34;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_682();
  v457 = v36;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_682();
  v455 = v38;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_266_0();
  v454 = v40;
  v471 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  v41 = OUTLINED_FUNCTION_59_1(v471);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_62();
  v453 = v45 - v44;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACF130, &qword_1B96CE8E8);
  OUTLINED_FUNCTION_59_1(v469);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v48);
  v472 = &v448[-v49];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF60, &qword_1B96CD860);
  v51 = OUTLINED_FUNCTION_183(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44_0();
  v467 = v54;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_266_0();
  v470 = v56;
  v508 = type metadata accessor for Searchfoundation_Airport(0);
  v57 = OUTLINED_FUNCTION_59_1(v508);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_62();
  v502 = v61 - v60;
  v507 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACF138, &unk_1B96CE8F0);
  v62 = OUTLINED_FUNCTION_59_1(v507);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44_0();
  v493 = v65;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_682();
  v495 = v67;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_266_0();
  v506 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEF58, &qword_1B96CD858);
  v71 = OUTLINED_FUNCTION_183(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_44_0();
  v491 = v74;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_682();
  v511 = v76;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_682();
  v494 = v78;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_682();
  v500 = v80;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_682();
  v504 = v82;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_266_0();
  v514 = v84;
  v517 = type metadata accessor for Searchfoundation_Date(0);
  v85 = OUTLINED_FUNCTION_59_1(v517);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_44_0();
  v468 = v88;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_682();
  v474 = v90;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_682();
  v478 = v92;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_682();
  v482 = v94;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_682();
  v486 = v96;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_682();
  v496 = v98;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_682();
  v498 = v100;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_682();
  v509 = v102;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_266_0();
  v515 = v104;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  v105 = OUTLINED_FUNCTION_59_1(v516);
  v107 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_44_0();
  v476 = v108;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_682();
  v480 = v110;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_682();
  v484 = v112;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_682();
  v488 = v114;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_682();
  v492 = v116;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_682();
  v499 = v118;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_682();
  v503 = v120;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_682();
  v513 = v122;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v448[-v124];
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v127 = OUTLINED_FUNCTION_183(v126);
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_44_0();
  v473 = v130;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_682();
  v475 = v132;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_682();
  v477 = v134;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_682();
  v479 = v136;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_682();
  v481 = v138;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_682();
  v483 = v140;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_682();
  v485 = v142;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_682();
  v487 = v144;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_682();
  v489 = v146;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_682();
  v490 = v148;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_682();
  v497 = v150;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_682();
  v512 = v152;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v153);
  OUTLINED_FUNCTION_682();
  v501 = v154;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_682();
  v505 = v156;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v157);
  OUTLINED_FUNCTION_682();
  v510 = v158;
  OUTLINED_FUNCTION_230();
  v160 = MEMORY[0x1EEE9AC00](v159);
  v162 = &v448[-v161];
  v163 = MEMORY[0x1EEE9AC00](v160);
  v165 = &v448[-v164];
  MEMORY[0x1EEE9AC00](v163);
  v167 = &v448[-v166];
  OUTLINED_FUNCTION_521();
  v168 = *(v3 + 16);
  OUTLINED_FUNCTION_521();
  v169 = *(v1 + 16);
  if (*(v1 + 24) != 1)
  {
    if (v168 != v169)
    {
      goto LABEL_17;
    }

LABEL_6:
    v451 = v9;
    v452 = v15;
    v518 = v1;
    OUTLINED_FUNCTION_521();
    sub_1B8D92024();
    OUTLINED_FUNCTION_126_5();
    OUTLINED_FUNCTION_521();
    v170 = *(v516 + 48);
    sub_1B8D92024();
    OUTLINED_FUNCTION_114_10();
    sub_1B8D92024();
    v171 = v517;
    OUTLINED_FUNCTION_81(v125, 1);
    if (v172)
    {

      sub_1B8D9207C(v167, &qword_1EBAB8E30, &qword_1B964D630);
      OUTLINED_FUNCTION_37_0(&v125[v170]);
      if (v172)
      {
        sub_1B8D9207C(v125, &qword_1EBAB8E30, &qword_1B964D630);
        goto LABEL_20;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_37_0(&v125[v170]);
      if (!v172)
      {
        OUTLINED_FUNCTION_0_91();
        v176 = v515;
        sub_1B94A46F4();
        if (*v165 != *v176)
        {

          OUTLINED_FUNCTION_4_53();
          sub_1B94A47A4();
          OUTLINED_FUNCTION_176_2();
          sub_1B8D9207C(v196, v197, v198);
          sub_1B94A47A4();
LABEL_49:
          OUTLINED_FUNCTION_176_2();
          goto LABEL_15;
        }

        v177 = *(v171 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_76();
        sub_1B94AE34C(v178, v179);
        v450 = v3;

        OUTLINED_FUNCTION_141_11();
        v449 = sub_1B964C850();
        OUTLINED_FUNCTION_20_15();
        sub_1B94A47A4();
        v180 = OUTLINED_FUNCTION_502();
        sub_1B8D9207C(v180, v181, &qword_1B964D630);
        v3 = v450;
        sub_1B94A47A4();
        sub_1B8D9207C(v125, &qword_1EBAB8E30, &qword_1B964D630);
        if ((v449 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_20:
        OUTLINED_FUNCTION_521();
        v450 = v3;
        OUTLINED_FUNCTION_141_11();
        sub_1B8D92024();
        OUTLINED_FUNCTION_126_5();
        OUTLINED_FUNCTION_521();
        v182 = *(v516 + 48);
        v183 = v513;
        OUTLINED_FUNCTION_141_11();
        sub_1B8D92024();
        OUTLINED_FUNCTION_114_10();
        OUTLINED_FUNCTION_141_11();
        v184 = v183;
        sub_1B8D92024();
        v185 = OUTLINED_FUNCTION_538();
        v186 = v517;
        OUTLINED_FUNCTION_81(v185, v187);
        if (v172)
        {
          sub_1B8D9207C(v162, &qword_1EBAB8E30, &qword_1B964D630);
          OUTLINED_FUNCTION_37_0(v183 + v182);
          v189 = v511;
          v188 = v512;
          v190 = v514;
          if (v172)
          {
            sub_1B8D9207C(v184, &qword_1EBAB8E30, &qword_1B964D630);
            v191 = v450;
            goto LABEL_52;
          }
        }

        else
        {
          v192 = v510;
          sub_1B8D92024();
          OUTLINED_FUNCTION_37_0(v183 + v182);
          v190 = v514;
          if (!v193)
          {
            OUTLINED_FUNCTION_0_91();
            v199 = v509;
            sub_1B94A46F4();
            if (*v192 != *v199)
            {
              OUTLINED_FUNCTION_4_53();
              sub_1B94A47A4();
              sub_1B8D9207C(v162, &qword_1EBAB8E30, &qword_1B964D630);
              sub_1B94A47A4();
              sub_1B8D9207C(v184, &qword_1EBAB8E30, &qword_1B964D630);
              goto LABEL_16;
            }

            v200 = *(v186 + 20);
            v201 = sub_1B964C2B0();
            OUTLINED_FUNCTION_1_76();
            sub_1B94AE34C(v202, v203);
            sub_1B964C850();
            OUTLINED_FUNCTION_5_41();
            sub_1B94A47A4();
            sub_1B8D9207C(v162, &qword_1EBAB8E30, &qword_1B964D630);
            sub_1B94A47A4();
            v188 = v512;
            sub_1B8D9207C(v184, &qword_1EBAB8E30, &qword_1B964D630);
            v191 = v450;
            v189 = v511;
            if ((v201 & 1) == 0)
            {
              goto LABEL_16;
            }

LABEL_52:
            v204 = (v191 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureTerminal);
            OUTLINED_FUNCTION_26_6();
            v205 = *v204;
            v206 = v204[1];
            OUTLINED_FUNCTION_505_0();
            OUTLINED_FUNCTION_714_0();
            if (v172)
            {
              v208 = v206 == v207;
            }

            else
            {
              v208 = 0;
            }

            if (!v208)
            {
              OUTLINED_FUNCTION_543();
              if ((sub_1B964C9F0() & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            v209 = (v191 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__departureGate);
            OUTLINED_FUNCTION_26_6();
            v210 = *v209;
            v211 = v209[1];
            OUTLINED_FUNCTION_505_0();
            OUTLINED_FUNCTION_714_0();
            if (!v172 || v211 != v212)
            {
              OUTLINED_FUNCTION_543();
              if ((sub_1B964C9F0() & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            OUTLINED_FUNCTION_521();
            OUTLINED_FUNCTION_33_4();
            sub_1B8D92024();
            OUTLINED_FUNCTION_126_5();
            OUTLINED_FUNCTION_521();
            v214 = *(v507 + 48);
            v215 = v190;
            v216 = v506;
            OUTLINED_FUNCTION_33_4();
            sub_1B8D92024();
            OUTLINED_FUNCTION_114_10();
            OUTLINED_FUNCTION_33_4();
            v217 = v216;
            sub_1B8D92024();
            OUTLINED_FUNCTION_81(v216, 1);
            if (v172)
            {
              sub_1B8D9207C(v215, &qword_1EBACEF58, &qword_1B96CD858);
              OUTLINED_FUNCTION_37_0(v216 + v214);
              if (!v172)
              {
                goto LABEL_72;
              }

              sub_1B8D9207C(v216, &qword_1EBACEF58, &qword_1B96CD858);
            }

            else
            {
              sub_1B8D92024();
              OUTLINED_FUNCTION_37_0(v216 + v214);
              if (v218)
              {
                sub_1B8D9207C(v514, &qword_1EBACEF58, &qword_1B96CD858);
                OUTLINED_FUNCTION_46_14();
LABEL_71:
                sub_1B94A47A4();
LABEL_72:
                v173 = &qword_1EBACF138;
                v174 = &unk_1B96CE8F0;
LABEL_73:
                v175 = v217;
                goto LABEL_15;
              }

              OUTLINED_FUNCTION_45_16();
              sub_1B94A46F4();
              static Searchfoundation_Airport.== infix(_:_:)();
              v220 = v219;
              OUTLINED_FUNCTION_128();
              sub_1B94A47A4();
              OUTLINED_FUNCTION_466();
              sub_1B8D9207C(v221, v222, v223);
              sub_1B94A47A4();
              OUTLINED_FUNCTION_466();
              sub_1B8D9207C(v224, v225, v226);
              if ((v220 & 1) == 0)
              {
                goto LABEL_16;
              }
            }

            OUTLINED_FUNCTION_521();
            v227 = v505;
            OUTLINED_FUNCTION_33_4();
            sub_1B8D92024();
            OUTLINED_FUNCTION_99_11();
            OUTLINED_FUNCTION_521();
            v228 = *(v516 + 48);
            v229 = v503;
            OUTLINED_FUNCTION_33_4();
            sub_1B8D92024();
            OUTLINED_FUNCTION_33_4();
            sub_1B8D92024();
            v230 = v517;
            OUTLINED_FUNCTION_81(v229, 1);
            if (v172)
            {
              sub_1B8D9207C(v227, &qword_1EBAB8E30, &qword_1B964D630);
              OUTLINED_FUNCTION_37_0(v229 + v228);
              if (v172)
              {
                sub_1B8D9207C(v229, &qword_1EBAB8E30, &qword_1B964D630);
                goto LABEL_86;
              }
            }

            else
            {
              v231 = v501;
              sub_1B8D92024();
              OUTLINED_FUNCTION_37_0(v229 + v228);
              if (!v232)
              {
                OUTLINED_FUNCTION_0_91();
                v233 = v498;
                sub_1B94A46F4();
                if (*v231 != *v233)
                {
                  OUTLINED_FUNCTION_4_53();
                  sub_1B94A47A4();
                  OUTLINED_FUNCTION_176_2();
                  sub_1B8D9207C(v253, v254, v255);
                  sub_1B94A47A4();
                  OUTLINED_FUNCTION_176_2();
                  sub_1B8D9207C(v256, v257, v258);
                  goto LABEL_16;
                }

                v234 = *(v230 + 20);
                v235 = sub_1B964C2B0();
                OUTLINED_FUNCTION_1_76();
                sub_1B94AE34C(v236, v237);
                OUTLINED_FUNCTION_731();
                OUTLINED_FUNCTION_5_41();
                sub_1B94A47A4();
                OUTLINED_FUNCTION_466();
                sub_1B8D9207C(v238, v239, v240);
                sub_1B94A47A4();
                OUTLINED_FUNCTION_466();
                sub_1B8D9207C(v241, v242, v243);
                if (v235)
                {
LABEL_86:
                  OUTLINED_FUNCTION_521();
                  OUTLINED_FUNCTION_33_4();
                  sub_1B8D92024();
                  OUTLINED_FUNCTION_99_11();
                  OUTLINED_FUNCTION_521();
                  OUTLINED_FUNCTION_72_8();
                  v244 = v188;
                  v245 = v499;
                  OUTLINED_FUNCTION_33_4();
                  sub_1B8D92024();
                  OUTLINED_FUNCTION_40_14();
                  v217 = v245;
                  sub_1B8D92024();
                  v246 = OUTLINED_FUNCTION_538();
                  v247 = v517;
                  OUTLINED_FUNCTION_81(v246, v248);
                  if (v172)
                  {
                    sub_1B8D9207C(v244, &qword_1EBAB8E30, &qword_1B964D630);
                    OUTLINED_FUNCTION_37_0(&unk_1ED9E3000 + v245);
                    v249 = v450;
                    v250 = v500;
                    if (v172)
                    {
                      sub_1B8D9207C(v245, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_99:
                      v270 = (v249 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalTerminal);
                      OUTLINED_FUNCTION_26_6();
                      v271 = *v270;
                      v272 = v270[1];
                      OUTLINED_FUNCTION_505_0();
                      OUTLINED_FUNCTION_714_0();
                      if (v172)
                      {
                        v274 = v272 == v273;
                      }

                      else
                      {
                        v274 = 0;
                      }

                      if (!v274)
                      {
                        OUTLINED_FUNCTION_543();
                        if ((sub_1B964C9F0() & 1) == 0)
                        {
                          goto LABEL_16;
                        }
                      }

                      v275 = (v249 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__arrivalGate[0]);
                      OUTLINED_FUNCTION_26_6();
                      v276 = *v275;
                      v277 = v275[1];
                      OUTLINED_FUNCTION_505_0();
                      OUTLINED_FUNCTION_714_0();
                      if (!v172 || v277 != v278)
                      {
                        OUTLINED_FUNCTION_543();
                        if ((sub_1B964C9F0() & 1) == 0)
                        {
                          goto LABEL_16;
                        }
                      }

                      OUTLINED_FUNCTION_521();
                      OUTLINED_FUNCTION_33_4();
                      sub_1B8D92024();
                      OUTLINED_FUNCTION_126_5();
                      OUTLINED_FUNCTION_521();
                      v280 = *(v507 + 48);
                      v281 = v495;
                      OUTLINED_FUNCTION_33_4();
                      sub_1B8D92024();
                      OUTLINED_FUNCTION_114_10();
                      OUTLINED_FUNCTION_40_14();
                      v217 = v281;
                      sub_1B8D92024();
                      v282 = OUTLINED_FUNCTION_538();
                      OUTLINED_FUNCTION_81(v282, v283);
                      if (v172)
                      {
                        sub_1B8D9207C(v250, &qword_1EBACEF58, &qword_1B96CD858);
                        OUTLINED_FUNCTION_37_0(v281 + v280);
                        if (v172)
                        {
                          sub_1B8D9207C(v281, &qword_1EBACEF58, &qword_1B96CD858);
LABEL_119:
                          OUTLINED_FUNCTION_521();
                          OUTLINED_FUNCTION_33_4();
                          sub_1B8D92024();
                          OUTLINED_FUNCTION_99_11();
                          OUTLINED_FUNCTION_521();
                          v294 = *(v507 + 48);
                          v295 = v493;
                          OUTLINED_FUNCTION_33_4();
                          sub_1B8D92024();
                          v184 = v295;
                          OUTLINED_FUNCTION_40_14();
                          sub_1B8D92024();
                          v296 = OUTLINED_FUNCTION_538();
                          OUTLINED_FUNCTION_81(v296, v297);
                          if (v172)
                          {
                            sub_1B8D9207C(v189, &qword_1EBACEF58, &qword_1B96CD858);
                            OUTLINED_FUNCTION_37_0(v295 + v294);
                            if (v172)
                            {
                              sub_1B8D9207C(v295, &qword_1EBACEF58, &qword_1B96CD858);
                              v298 = v450;
                              goto LABEL_129;
                            }
                          }

                          else
                          {
                            sub_1B8D92024();
                            OUTLINED_FUNCTION_37_0(v295 + v294);
                            if (!v299)
                            {
                              OUTLINED_FUNCTION_45_16();
                              sub_1B94A46F4();
                              OUTLINED_FUNCTION_275();
                              static Searchfoundation_Airport.== infix(_:_:)();
                              v301 = v300;
                              OUTLINED_FUNCTION_128();
                              sub_1B94A47A4();
                              OUTLINED_FUNCTION_466();
                              sub_1B8D9207C(v302, v303, v304);
                              OUTLINED_FUNCTION_152_4();
                              OUTLINED_FUNCTION_466();
                              sub_1B8D9207C(v305, v306, v307);
                              v298 = v450;
                              if ((v301 & 1) == 0)
                              {
                                goto LABEL_16;
                              }

LABEL_129:
                              v308 = (v298 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__title);
                              OUTLINED_FUNCTION_26_6();
                              v309 = *v308;
                              v310 = v308[1];
                              OUTLINED_FUNCTION_505_0();
                              OUTLINED_FUNCTION_714_0();
                              if (v172)
                              {
                                v312 = v310 == v311;
                              }

                              else
                              {
                                v312 = 0;
                              }

                              if (!v312)
                              {
                                OUTLINED_FUNCTION_543();
                                if ((sub_1B964C9F0() & 1) == 0)
                                {
                                  goto LABEL_16;
                                }
                              }

                              v313 = (v298 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__baggageClaim);
                              OUTLINED_FUNCTION_26_6();
                              v314 = *v313;
                              v315 = v313[1];
                              OUTLINED_FUNCTION_505_0();
                              OUTLINED_FUNCTION_714_0();
                              if (!v172 || v315 != v316)
                              {
                                OUTLINED_FUNCTION_543();
                                if ((sub_1B964C9F0() & 1) == 0)
                                {
                                  goto LABEL_16;
                                }
                              }

                              OUTLINED_FUNCTION_521();
                              OUTLINED_FUNCTION_33_4();
                              sub_1B8D92024();
                              OUTLINED_FUNCTION_99_11();
                              OUTLINED_FUNCTION_521();
                              OUTLINED_FUNCTION_72_8();
                              v318 = v492;
                              OUTLINED_FUNCTION_33_4();
                              sub_1B8D92024();
                              OUTLINED_FUNCTION_40_14();
                              sub_1B8D92024();
                              OUTLINED_FUNCTION_29_28(v318);
                              if (v172)
                              {
                                sub_1B8D9207C(v490, &qword_1EBAB8E30, &qword_1B964D630);
                                OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v492);
                                if (v172)
                                {
                                  sub_1B8D9207C(v492, &qword_1EBAB8E30, &qword_1B964D630);
                                  goto LABEL_151;
                                }
                              }

                              else
                              {
                                v319 = v492;
                                sub_1B8D92024();
                                OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v319);
                                if (!v320)
                                {
                                  OUTLINED_FUNCTION_0_91();
                                  sub_1B94A46F4();
                                  OUTLINED_FUNCTION_96_6(v489);
                                  if (!v324)
                                  {
                                    goto LABEL_197;
                                  }

                                  v325 = OUTLINED_FUNCTION_130_5();
                                  OUTLINED_FUNCTION_1_76();
                                  sub_1B94AE34C(v326, v327);
                                  OUTLINED_FUNCTION_731();
                                  OUTLINED_FUNCTION_5_41();
                                  sub_1B94A47A4();
                                  OUTLINED_FUNCTION_466();
                                  sub_1B8D9207C(v328, v329, v330);
                                  OUTLINED_FUNCTION_196();
                                  sub_1B94A47A4();
                                  OUTLINED_FUNCTION_466();
                                  sub_1B8D9207C(v331, v332, v333);
                                  if ((v325 & 1) == 0)
                                  {
                                    goto LABEL_16;
                                  }

LABEL_151:
                                  OUTLINED_FUNCTION_226_1();
                                  OUTLINED_FUNCTION_521();
                                  OUTLINED_FUNCTION_33_4();
                                  sub_1B8D92024();
                                  OUTLINED_FUNCTION_99_11();
                                  OUTLINED_FUNCTION_521();
                                  OUTLINED_FUNCTION_72_8();
                                  v334 = v488;
                                  OUTLINED_FUNCTION_33_4();
                                  sub_1B8D92024();
                                  OUTLINED_FUNCTION_40_14();
                                  sub_1B8D92024();
                                  OUTLINED_FUNCTION_29_28(v334);
                                  if (v172)
                                  {
                                    sub_1B8D9207C(v487, &qword_1EBAB8E30, &qword_1B964D630);
                                    OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v488);
                                    if (v172)
                                    {
                                      sub_1B8D9207C(v488, &qword_1EBAB8E30, &qword_1B964D630);
                                      goto LABEL_163;
                                    }
                                  }

                                  else
                                  {
                                    v335 = v488;
                                    sub_1B8D92024();
                                    OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v335);
                                    if (!v336)
                                    {
                                      OUTLINED_FUNCTION_0_91();
                                      sub_1B94A46F4();
                                      OUTLINED_FUNCTION_96_6(v485);
                                      if (!v337)
                                      {
                                        goto LABEL_197;
                                      }

                                      v338 = OUTLINED_FUNCTION_130_5();
                                      OUTLINED_FUNCTION_1_76();
                                      sub_1B94AE34C(v339, v340);
                                      OUTLINED_FUNCTION_731();
                                      OUTLINED_FUNCTION_5_41();
                                      sub_1B94A47A4();
                                      OUTLINED_FUNCTION_466();
                                      sub_1B8D9207C(v341, v342, v343);
                                      OUTLINED_FUNCTION_196();
                                      sub_1B94A47A4();
                                      OUTLINED_FUNCTION_466();
                                      sub_1B8D9207C(v344, v345, v346);
                                      if ((v338 & 1) == 0)
                                      {
                                        goto LABEL_16;
                                      }

LABEL_163:
                                      OUTLINED_FUNCTION_226_1();
                                      OUTLINED_FUNCTION_521();
                                      OUTLINED_FUNCTION_33_4();
                                      sub_1B8D92024();
                                      OUTLINED_FUNCTION_99_11();
                                      OUTLINED_FUNCTION_521();
                                      OUTLINED_FUNCTION_72_8();
                                      v347 = v484;
                                      OUTLINED_FUNCTION_33_4();
                                      sub_1B8D92024();
                                      OUTLINED_FUNCTION_40_14();
                                      sub_1B8D92024();
                                      OUTLINED_FUNCTION_29_28(v347);
                                      if (v172)
                                      {
                                        sub_1B8D9207C(v483, &qword_1EBAB8E30, &qword_1B964D630);
                                        OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v484);
                                        if (v172)
                                        {
                                          sub_1B8D9207C(v484, &qword_1EBAB8E30, &qword_1B964D630);
                                          goto LABEL_175;
                                        }
                                      }

                                      else
                                      {
                                        v348 = v484;
                                        sub_1B8D92024();
                                        OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v348);
                                        if (!v349)
                                        {
                                          OUTLINED_FUNCTION_0_91();
                                          sub_1B94A46F4();
                                          OUTLINED_FUNCTION_96_6(v481);
                                          if (!v350)
                                          {
                                            goto LABEL_197;
                                          }

                                          v351 = OUTLINED_FUNCTION_130_5();
                                          OUTLINED_FUNCTION_1_76();
                                          sub_1B94AE34C(v352, v353);
                                          OUTLINED_FUNCTION_731();
                                          OUTLINED_FUNCTION_5_41();
                                          sub_1B94A47A4();
                                          OUTLINED_FUNCTION_466();
                                          sub_1B8D9207C(v354, v355, v356);
                                          OUTLINED_FUNCTION_196();
                                          sub_1B94A47A4();
                                          OUTLINED_FUNCTION_466();
                                          sub_1B8D9207C(v357, v358, v359);
                                          if ((v351 & 1) == 0)
                                          {
                                            goto LABEL_16;
                                          }

LABEL_175:
                                          OUTLINED_FUNCTION_226_1();
                                          OUTLINED_FUNCTION_521();
                                          OUTLINED_FUNCTION_33_4();
                                          sub_1B8D92024();
                                          OUTLINED_FUNCTION_99_11();
                                          OUTLINED_FUNCTION_521();
                                          OUTLINED_FUNCTION_72_8();
                                          v360 = v480;
                                          OUTLINED_FUNCTION_33_4();
                                          sub_1B8D92024();
                                          OUTLINED_FUNCTION_40_14();
                                          sub_1B8D92024();
                                          OUTLINED_FUNCTION_29_28(v360);
                                          if (v172)
                                          {
                                            sub_1B8D9207C(v479, &qword_1EBAB8E30, &qword_1B964D630);
                                            OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v480);
                                            if (v172)
                                            {
                                              sub_1B8D9207C(v480, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_187:
                                              OUTLINED_FUNCTION_226_1();
                                              OUTLINED_FUNCTION_521();
                                              OUTLINED_FUNCTION_33_4();
                                              sub_1B8D92024();
                                              OUTLINED_FUNCTION_99_11();
                                              OUTLINED_FUNCTION_521();
                                              OUTLINED_FUNCTION_72_8();
                                              v373 = v476;
                                              OUTLINED_FUNCTION_33_4();
                                              sub_1B8D92024();
                                              OUTLINED_FUNCTION_40_14();
                                              sub_1B8D92024();
                                              OUTLINED_FUNCTION_29_28(v373);
                                              if (v172)
                                              {
                                                sub_1B8D9207C(v475, &qword_1EBAB8E30, &qword_1B964D630);
                                                OUTLINED_FUNCTION_29_28(&OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes + v476);
                                                if (v172)
                                                {
                                                  sub_1B8D9207C(v476, &qword_1EBAB8E30, &qword_1B964D630);
                                                  goto LABEL_199;
                                                }
                                              }

                                              else
                                              {
                                                v374 = v476;
                                                sub_1B8D92024();
                                                OUTLINED_FUNCTION_29_28(&OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes + v374);
                                                if (!v375)
                                                {
                                                  OUTLINED_FUNCTION_0_91();
                                                  sub_1B94A46F4();
                                                  OUTLINED_FUNCTION_96_6(v473);
                                                  if (!v376)
                                                  {
LABEL_197:
                                                    OUTLINED_FUNCTION_4_53();
                                                    sub_1B94A47A4();
                                                    OUTLINED_FUNCTION_176_2();
                                                    sub_1B8D9207C(v390, v391, v392);
                                                    sub_1B94A47A4();
                                                    OUTLINED_FUNCTION_176_2();
                                                    goto LABEL_208;
                                                  }

                                                  v377 = OUTLINED_FUNCTION_130_5();
                                                  OUTLINED_FUNCTION_1_76();
                                                  sub_1B94AE34C(v378, v379);
                                                  OUTLINED_FUNCTION_731();
                                                  OUTLINED_FUNCTION_5_41();
                                                  sub_1B94A47A4();
                                                  OUTLINED_FUNCTION_466();
                                                  sub_1B8D9207C(v380, v381, v382);
                                                  OUTLINED_FUNCTION_196();
                                                  sub_1B94A47A4();
                                                  OUTLINED_FUNCTION_466();
                                                  sub_1B8D9207C(v383, v384, v385);
                                                  if (v377)
                                                  {
LABEL_199:
                                                    OUTLINED_FUNCTION_226_1();
                                                    OUTLINED_FUNCTION_521();
                                                    OUTLINED_FUNCTION_33_4();
                                                    sub_1B8D92024();
                                                    OUTLINED_FUNCTION_99_11();
                                                    OUTLINED_FUNCTION_521();
                                                    OUTLINED_FUNCTION_224_1(v469);
                                                    OUTLINED_FUNCTION_33_4();
                                                    sub_1B8D92024();
                                                    OUTLINED_FUNCTION_40_14();
                                                    sub_1B8D92024();
                                                    v386 = OUTLINED_FUNCTION_538();
                                                    OUTLINED_FUNCTION_178(v386, v387, v471);
                                                    if (v172)
                                                    {
                                                      sub_1B8D9207C(v470, &qword_1EBACEF60, &qword_1B96CD860);
                                                      OUTLINED_FUNCTION_178(&unk_1ED9D2000 + v472, 1, v471);
                                                      if (v172)
                                                      {
                                                        sub_1B8D9207C(v472, &qword_1EBACEF60, &qword_1B96CD860);
                                                        goto LABEL_211;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v388 = v472;
                                                      sub_1B8D92024();
                                                      OUTLINED_FUNCTION_178(&unk_1ED9D2000 + v388, 1, v471);
                                                      if (!v389)
                                                      {
                                                        sub_1B94A46F4();
                                                        OUTLINED_FUNCTION_275();
                                                        static Searchfoundation_PegasusDisplayFields.== infix(_:_:)();
                                                        v394 = v393;
                                                        OUTLINED_FUNCTION_128();
                                                        sub_1B94A47A4();
                                                        OUTLINED_FUNCTION_466();
                                                        sub_1B8D9207C(v395, v396, v397);
                                                        OUTLINED_FUNCTION_152_4();
                                                        OUTLINED_FUNCTION_466();
                                                        sub_1B8D9207C(v398, v399, v400);
                                                        if ((v394 & 1) == 0)
                                                        {
                                                          goto LABEL_16;
                                                        }

LABEL_211:
                                                        v401 = v450 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
                                                        OUTLINED_FUNCTION_521();
                                                        v402 = *v401;
                                                        v403 = *(v401 + 8);
                                                        v404 = v518 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__pegasusDefinedState;
                                                        OUTLINED_FUNCTION_505_0();
                                                        v405 = *(v404 + 8);
                                                        if (!sub_1B8D92198(v402, v403, *v404))
                                                        {
                                                          goto LABEL_16;
                                                        }

                                                        OUTLINED_FUNCTION_226_1();
                                                        OUTLINED_FUNCTION_521();
                                                        OUTLINED_FUNCTION_33_4();
                                                        sub_1B8D92024();
                                                        OUTLINED_FUNCTION_99_11();
                                                        OUTLINED_FUNCTION_521();
                                                        OUTLINED_FUNCTION_224_1(v463);
                                                        v406 = v456;
                                                        OUTLINED_FUNCTION_33_4();
                                                        sub_1B8D92024();
                                                        OUTLINED_FUNCTION_40_14();
                                                        sub_1B8D92024();
                                                        OUTLINED_FUNCTION_37_13(v406);
                                                        if (v172)
                                                        {
                                                          sub_1B8D9207C(v454, &qword_1EBACEF68, &qword_1B96CD868);
                                                          OUTLINED_FUNCTION_37_13(&OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes + v456);
                                                          if (v172)
                                                          {
                                                            sub_1B8D9207C(v456, &qword_1EBACEF68, &qword_1B96CD868);
                                                            goto LABEL_222;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v407 = v456;
                                                          sub_1B8D92024();
                                                          OUTLINED_FUNCTION_37_13(&OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes + v407);
                                                          if (!v408)
                                                          {
                                                            OUTLINED_FUNCTION_24_26();
                                                            sub_1B94A46F4();
                                                            OUTLINED_FUNCTION_275();
                                                            static Searchfoundation_FlightDateDescriptor.== infix(_:_:)();
                                                            v410 = v409;
                                                            OUTLINED_FUNCTION_128();
                                                            sub_1B94A47A4();
                                                            OUTLINED_FUNCTION_466();
                                                            sub_1B8D9207C(v411, v412, v413);
                                                            OUTLINED_FUNCTION_152_4();
                                                            OUTLINED_FUNCTION_466();
                                                            sub_1B8D9207C(v414, v415, v416);
                                                            if ((v410 & 1) == 0)
                                                            {
                                                              goto LABEL_16;
                                                            }

LABEL_222:
                                                            OUTLINED_FUNCTION_226_1();
                                                            OUTLINED_FUNCTION_521();
                                                            OUTLINED_FUNCTION_33_4();
                                                            sub_1B8D92024();
                                                            OUTLINED_FUNCTION_99_11();
                                                            OUTLINED_FUNCTION_521();
                                                            OUTLINED_FUNCTION_224_1(v463);
                                                            v417 = v459;
                                                            OUTLINED_FUNCTION_33_4();
                                                            sub_1B8D92024();
                                                            OUTLINED_FUNCTION_40_14();
                                                            sub_1B8D92024();
                                                            OUTLINED_FUNCTION_37_13(v417);
                                                            if (v172)
                                                            {
                                                              sub_1B8D9207C(v457, &qword_1EBACEF68, &qword_1B96CD868);
                                                              OUTLINED_FUNCTION_37_13(&unk_1ED9D2000 + v459);
                                                              if (v172)
                                                              {
                                                                sub_1B8D9207C(v459, &qword_1EBACEF68, &qword_1B96CD868);
                                                                goto LABEL_232;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v418 = v459;
                                                              sub_1B8D92024();
                                                              OUTLINED_FUNCTION_37_13(&unk_1ED9D2000 + v418);
                                                              if (!v419)
                                                              {
                                                                OUTLINED_FUNCTION_24_26();
                                                                sub_1B94A46F4();
                                                                OUTLINED_FUNCTION_275();
                                                                static Searchfoundation_FlightDateDescriptor.== infix(_:_:)();
                                                                v421 = v420;
                                                                OUTLINED_FUNCTION_128();
                                                                sub_1B94A47A4();
                                                                OUTLINED_FUNCTION_466();
                                                                sub_1B8D9207C(v422, v423, v424);
                                                                OUTLINED_FUNCTION_152_4();
                                                                OUTLINED_FUNCTION_466();
                                                                sub_1B8D9207C(v425, v426, v427);
                                                                if ((v421 & 1) == 0)
                                                                {
                                                                  goto LABEL_16;
                                                                }

LABEL_232:
                                                                OUTLINED_FUNCTION_226_1();
                                                                OUTLINED_FUNCTION_521();
                                                                OUTLINED_FUNCTION_33_4();
                                                                sub_1B8D92024();
                                                                OUTLINED_FUNCTION_99_11();
                                                                OUTLINED_FUNCTION_521();
                                                                OUTLINED_FUNCTION_224_1(v463);
                                                                v428 = v462;
                                                                OUTLINED_FUNCTION_33_4();
                                                                sub_1B8D92024();
                                                                OUTLINED_FUNCTION_40_14();
                                                                sub_1B8D92024();
                                                                OUTLINED_FUNCTION_37_13(v428);
                                                                if (v172)
                                                                {
                                                                  sub_1B8D9207C(v460, &qword_1EBACEF68, &qword_1B96CD868);
                                                                  OUTLINED_FUNCTION_37_13(&OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes + v462);
                                                                  if (v172)
                                                                  {
                                                                    sub_1B8D9207C(v462, &qword_1EBACEF68, &qword_1B96CD868);
                                                                    goto LABEL_242;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v429 = v462;
                                                                  sub_1B8D92024();
                                                                  OUTLINED_FUNCTION_37_13(&OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_FlightLegP33_6855DEAC5D20B8296A349F37B544281713_StorageClass__gateDepartureTimes + v429);
                                                                  if (!v430)
                                                                  {
                                                                    OUTLINED_FUNCTION_24_26();
                                                                    sub_1B94A46F4();
                                                                    OUTLINED_FUNCTION_275();
                                                                    static Searchfoundation_FlightDateDescriptor.== infix(_:_:)();
                                                                    v432 = v431;
                                                                    OUTLINED_FUNCTION_128();
                                                                    sub_1B94A47A4();
                                                                    OUTLINED_FUNCTION_466();
                                                                    sub_1B8D9207C(v433, v434, v435);
                                                                    OUTLINED_FUNCTION_152_4();
                                                                    OUTLINED_FUNCTION_466();
                                                                    sub_1B8D9207C(v436, v437, v438);
                                                                    if ((v432 & 1) == 0)
                                                                    {
                                                                      goto LABEL_16;
                                                                    }

LABEL_242:
                                                                    OUTLINED_FUNCTION_226_1();
                                                                    OUTLINED_FUNCTION_521();
                                                                    OUTLINED_FUNCTION_33_4();
                                                                    sub_1B8D92024();
                                                                    OUTLINED_FUNCTION_99_11();
                                                                    OUTLINED_FUNCTION_521();
                                                                    OUTLINED_FUNCTION_224_1(v463);
                                                                    v439 = v452;
                                                                    OUTLINED_FUNCTION_33_4();
                                                                    sub_1B8D92024();
                                                                    OUTLINED_FUNCTION_40_14();
                                                                    sub_1B8D92024();
                                                                    OUTLINED_FUNCTION_37_13(v439);
                                                                    if (v172)
                                                                    {

                                                                      sub_1B8D9207C(v464, &qword_1EBACEF68, &qword_1B96CD868);
                                                                      OUTLINED_FUNCTION_37_13(&unk_1ED9D2000 + v452);
                                                                      if (v172)
                                                                      {
                                                                        sub_1B8D9207C(v452, &qword_1EBACEF68, &qword_1B96CD868);
                                                                        goto LABEL_17;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v440 = v452;
                                                                      sub_1B8D92024();
                                                                      OUTLINED_FUNCTION_37_13(&unk_1ED9D2000 + v440);
                                                                      if (!v441)
                                                                      {
                                                                        OUTLINED_FUNCTION_24_26();
                                                                        sub_1B94A46F4();
                                                                        OUTLINED_FUNCTION_275();
                                                                        static Searchfoundation_FlightDateDescriptor.== infix(_:_:)();

                                                                        OUTLINED_FUNCTION_128();
                                                                        sub_1B94A47A4();
                                                                        OUTLINED_FUNCTION_466();
                                                                        sub_1B8D9207C(v442, v443, v444);
                                                                        OUTLINED_FUNCTION_152_4();
                                                                        OUTLINED_FUNCTION_466();
                                                                        sub_1B8D9207C(v445, v446, v447);
                                                                        goto LABEL_17;
                                                                      }

                                                                      sub_1B8D9207C(v464, &qword_1EBACEF68, &qword_1B96CD868);
                                                                      OUTLINED_FUNCTION_25_20();
                                                                      sub_1B94A47A4();
                                                                    }

                                                                    sub_1B8D9207C(v452, &qword_1EBACF128, &qword_1B96CE8E0);
                                                                    goto LABEL_17;
                                                                  }

                                                                  sub_1B8D9207C(v460, &qword_1EBACEF68, &qword_1B96CD868);
                                                                  OUTLINED_FUNCTION_25_20();
                                                                  sub_1B94A47A4();
                                                                }

                                                                v321 = &qword_1EBACF128;
                                                                v322 = &qword_1B96CE8E0;
                                                                v323 = v462;
                                                                goto LABEL_208;
                                                              }

                                                              sub_1B8D9207C(v457, &qword_1EBACEF68, &qword_1B96CD868);
                                                              OUTLINED_FUNCTION_25_20();
                                                              sub_1B94A47A4();
                                                            }

                                                            v321 = &qword_1EBACF128;
                                                            v322 = &qword_1B96CE8E0;
                                                            v323 = v459;
                                                            goto LABEL_208;
                                                          }

                                                          sub_1B8D9207C(v454, &qword_1EBACEF68, &qword_1B96CD868);
                                                          OUTLINED_FUNCTION_25_20();
                                                          sub_1B94A47A4();
                                                        }

                                                        v321 = &qword_1EBACF128;
                                                        v322 = &qword_1B96CE8E0;
                                                        v323 = v456;
                                                        goto LABEL_208;
                                                      }

                                                      sub_1B8D9207C(v470, &qword_1EBACEF60, &qword_1B96CD860);
                                                      sub_1B94A47A4();
                                                    }

                                                    v321 = &qword_1EBACF130;
                                                    v322 = &qword_1B96CE8E8;
                                                    v323 = v472;
                                                    goto LABEL_208;
                                                  }

                                                  goto LABEL_16;
                                                }

                                                sub_1B8D9207C(v475, &qword_1EBAB8E30, &qword_1B964D630);
                                                OUTLINED_FUNCTION_2_62();
                                                sub_1B94A47A4();
                                              }

                                              v321 = &qword_1EBAB8E38;
                                              v322 = &qword_1B96CD870;
                                              v323 = v476;
LABEL_208:
                                              sub_1B8D9207C(v323, v321, v322);
                                              goto LABEL_16;
                                            }
                                          }

                                          else
                                          {
                                            v361 = v480;
                                            sub_1B8D92024();
                                            OUTLINED_FUNCTION_29_28(&unk_1ED9E3000 + v361);
                                            if (!v362)
                                            {
                                              OUTLINED_FUNCTION_0_91();
                                              sub_1B94A46F4();
                                              OUTLINED_FUNCTION_96_6(v477);
                                              if (!v363)
                                              {
                                                goto LABEL_197;
                                              }

                                              v364 = OUTLINED_FUNCTION_130_5();
                                              OUTLINED_FUNCTION_1_76();
                                              sub_1B94AE34C(v365, v366);
                                              OUTLINED_FUNCTION_731();
                                              OUTLINED_FUNCTION_5_41();
                                              sub_1B94A47A4();
                                              OUTLINED_FUNCTION_466();
                                              sub_1B8D9207C(v367, v368, v369);
                                              OUTLINED_FUNCTION_196();
                                              sub_1B94A47A4();
                                              OUTLINED_FUNCTION_466();
                                              sub_1B8D9207C(v370, v371, v372);
                                              if ((v364 & 1) == 0)
                                              {
                                                goto LABEL_16;
                                              }

                                              goto LABEL_187;
                                            }

                                            sub_1B8D9207C(v479, &qword_1EBAB8E30, &qword_1B964D630);
                                            OUTLINED_FUNCTION_2_62();
                                            sub_1B94A47A4();
                                          }

                                          v321 = &qword_1EBAB8E38;
                                          v322 = &qword_1B96CD870;
                                          v323 = v480;
                                          goto LABEL_208;
                                        }

                                        sub_1B8D9207C(v483, &qword_1EBAB8E30, &qword_1B964D630);
                                        OUTLINED_FUNCTION_2_62();
                                        sub_1B94A47A4();
                                      }

                                      v321 = &qword_1EBAB8E38;
                                      v322 = &qword_1B96CD870;
                                      v323 = v484;
                                      goto LABEL_208;
                                    }

                                    sub_1B8D9207C(v487, &qword_1EBAB8E30, &qword_1B964D630);
                                    OUTLINED_FUNCTION_2_62();
                                    sub_1B94A47A4();
                                  }

                                  v321 = &qword_1EBAB8E38;
                                  v322 = &qword_1B96CD870;
                                  v323 = v488;
                                  goto LABEL_208;
                                }

                                sub_1B8D9207C(v490, &qword_1EBAB8E30, &qword_1B964D630);
                                OUTLINED_FUNCTION_2_62();
                                sub_1B94A47A4();
                              }

                              v321 = &qword_1EBAB8E38;
                              v322 = &qword_1B96CD870;
                              v323 = v492;
                              goto LABEL_208;
                            }

                            sub_1B8D9207C(v189, &qword_1EBACEF58, &qword_1B96CD858);
                            OUTLINED_FUNCTION_46_14();
                            sub_1B94A47A4();
                          }

                          v194 = &qword_1EBACF138;
                          v195 = &unk_1B96CE8F0;
LABEL_29:
                          sub_1B8D9207C(v184, v194, v195);
                          goto LABEL_16;
                        }

                        goto LABEL_72;
                      }

                      sub_1B8D92024();
                      OUTLINED_FUNCTION_37_0(v281 + v280);
                      if (!v287)
                      {
                        OUTLINED_FUNCTION_45_16();
                        sub_1B94A46F4();
                        OUTLINED_FUNCTION_275();
                        static Searchfoundation_Airport.== infix(_:_:)();
                        v289 = v288;
                        OUTLINED_FUNCTION_128();
                        sub_1B94A47A4();
                        v290 = OUTLINED_FUNCTION_502();
                        sub_1B8D9207C(v290, v291, &qword_1B96CD858);
                        OUTLINED_FUNCTION_152_4();
                        v292 = OUTLINED_FUNCTION_303();
                        sub_1B8D9207C(v292, v293, &qword_1B96CD858);
                        if ((v289 & 1) == 0)
                        {
                          goto LABEL_16;
                        }

                        goto LABEL_119;
                      }

                      sub_1B8D9207C(v250, &qword_1EBACEF58, &qword_1B96CD858);
                      OUTLINED_FUNCTION_46_14();
                      goto LABEL_71;
                    }
                  }

                  else
                  {
                    v251 = v497;
                    sub_1B8D92024();
                    OUTLINED_FUNCTION_37_0(&unk_1ED9E3000 + v217);
                    v249 = v450;
                    v250 = v500;
                    if (!v252)
                    {
                      OUTLINED_FUNCTION_0_91();
                      v259 = v496;
                      sub_1B94A46F4();
                      if (*v251 == *v259)
                      {
                        v260 = *(v247 + 20);
                        v261 = sub_1B964C2B0();
                        OUTLINED_FUNCTION_1_76();
                        sub_1B94AE34C(v262, v263);
                        OUTLINED_FUNCTION_731();
                        OUTLINED_FUNCTION_5_41();
                        sub_1B94A47A4();
                        OUTLINED_FUNCTION_466();
                        sub_1B8D9207C(v264, v265, v266);
                        sub_1B94A47A4();
                        OUTLINED_FUNCTION_466();
                        sub_1B8D9207C(v267, v268, v269);
                        if ((v261 & 1) == 0)
                        {
                          goto LABEL_16;
                        }

                        goto LABEL_99;
                      }

                      OUTLINED_FUNCTION_4_53();
                      sub_1B94A47A4();
                      OUTLINED_FUNCTION_176_2();
                      sub_1B8D9207C(v284, v285, v286);
                      OUTLINED_FUNCTION_152_4();
                      goto LABEL_49;
                    }

                    sub_1B8D9207C(v512, &qword_1EBAB8E30, &qword_1B964D630);
                    OUTLINED_FUNCTION_2_62();
                    sub_1B94A47A4();
                  }

                  v173 = &qword_1EBAB8E38;
                  v174 = &qword_1B96CD870;
                  goto LABEL_73;
                }

LABEL_16:

                goto LABEL_17;
              }

              sub_1B8D9207C(v505, &qword_1EBAB8E30, &qword_1B964D630);
              OUTLINED_FUNCTION_2_62();
              sub_1B94A47A4();
            }

            v173 = &qword_1EBAB8E38;
            v174 = &qword_1B96CD870;
            v175 = v229;
            goto LABEL_15;
          }

          sub_1B8D9207C(v162, &qword_1EBAB8E30, &qword_1B964D630);
          OUTLINED_FUNCTION_2_62();
          sub_1B94A47A4();
        }

        v194 = &qword_1EBAB8E38;
        v195 = &qword_1B96CD870;
        goto LABEL_29;
      }

      sub_1B8D9207C(v167, &qword_1EBAB8E30, &qword_1B964D630);
      OUTLINED_FUNCTION_2_62();
      sub_1B94A47A4();
    }

    v173 = &qword_1EBAB8E38;
    v174 = &qword_1B96CD870;
    v175 = v125;
LABEL_15:
    sub_1B8D9207C(v175, v173, v174);
    goto LABEL_16;
  }

  switch(v169)
  {
    case 1:
      if (v168 == 1)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      if (v168 == 2)
      {
        goto LABEL_6;
      }

      break;
    case 3:
      if (v168 == 3)
      {
        goto LABEL_6;
      }

      break;
    case 4:
      if (v168 == 4)
      {
        goto LABEL_6;
      }

      break;
    case 5:
      if (v168 == 5)
      {
        goto LABEL_6;
      }

      break;
    case 6:
      if (v168 == 6)
      {
        goto LABEL_6;
      }

      break;
    case 7:
      if (v168 == 7)
      {
        goto LABEL_6;
      }

      break;
    case 8:
      if (v168 == 8)
      {
        goto LABEL_6;
      }

      break;
    case 9:
      if (v168 == 9)
      {
        goto LABEL_6;
      }

      break;
    default:
      if (!v168)
      {
        goto LABEL_6;
      }

      break;
  }

LABEL_17:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94AA9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE34C(&qword_1EBACF108, type metadata accessor for Searchfoundation_FlightLeg);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94AAA38(uint64_t a1)
{
  v2 = sub_1B94AE34C(&qword_1EBACEF70, type metadata accessor for Searchfoundation_FlightLeg);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94AAAA8()
{
  sub_1B94AE34C(&qword_1EBACEF70, type metadata accessor for Searchfoundation_FlightLeg);

  return sub_1B964C5D0();
}

uint64_t sub_1B94AAB40()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEEF8);
  __swift_project_value_buffer(v0, qword_1EBACEEF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "code";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "timezone";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "location";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "city";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "street";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "district";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "state";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "postalCode";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "countryCode";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "country";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "name";
  *(v26 + 1) = 4;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Searchfoundation_Airport.decodeMessage<A>(decoder:)()
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
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94AB01C();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B94AB0D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B94AB01C()
{
  v0 = *(type metadata accessor for Searchfoundation_Airport(0) + 56);
  type metadata accessor for Searchfoundation_TimeZone(0);
  sub_1B94AE34C(&qword_1EBACCA00, type metadata accessor for Searchfoundation_TimeZone);
  return sub_1B964C580();
}

uint64_t sub_1B94AB0D0()
{
  v0 = *(type metadata accessor for Searchfoundation_Airport(0) + 60);
  type metadata accessor for Searchfoundation_LatLng(0);
  sub_1B94AE34C(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng);
  return sub_1B964C580();
}

uint64_t Searchfoundation_Airport.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v68 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  v67 = type metadata accessor for Searchfoundation_LatLng(0);
  v12 = OUTLINED_FUNCTION_59_1(v67);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v65 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC690, &qword_1B96B9A00);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  v23 = type metadata accessor for Searchfoundation_TimeZone(0);
  v24 = OUTLINED_FUNCTION_59_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_62();
  v27 = *v2;
  v28 = v2[1];
  OUTLINED_FUNCTION_1();
  if (!v29 || (result = sub_1B964C700(), !v3))
  {
    v66 = a2;
    v31 = type metadata accessor for Searchfoundation_Airport(0);
    v32 = *(v31 + 56);
    sub_1B8D92024();
    v33 = OUTLINED_FUNCTION_538();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, v34, v23);
    v64 = v31;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBACC690, &qword_1B96B9A00);
    }

    else
    {
      v63 = v4;
      OUTLINED_FUNCTION_105_8();
      sub_1B94A46F4();
      sub_1B94AE34C(&qword_1EBACCA00, type metadata accessor for Searchfoundation_TimeZone);
      OUTLINED_FUNCTION_257_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_690();
      result = sub_1B94A47A4();
      if (v3)
      {
        return result;
      }

      v4 = v63;
      v31 = v64;
    }

    v36 = *(v31 + 60);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v11, 1, v67) == 1)
    {
      sub_1B8D9207C(v11, &qword_1EBACAFA0, &unk_1B96CB440);
    }

    else
    {
      sub_1B94A46F4();
      sub_1B94AE34C(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng);
      sub_1B964C740();
      OUTLINED_FUNCTION_502();
      result = sub_1B94A47A4();
      if (v3)
      {
        return result;
      }
    }

    v37 = v4[2];
    v38 = v4[3];
    OUTLINED_FUNCTION_1();
    if (!v39 || (result = OUTLINED_FUNCTION_62_9(), !v3))
    {
      v40 = v4[4];
      v41 = v4[5];
      OUTLINED_FUNCTION_1();
      if (!v42 || (result = OUTLINED_FUNCTION_62_9(), !v3))
      {
        v43 = v4[6];
        v44 = v4[7];
        OUTLINED_FUNCTION_1();
        if (!v45 || (result = OUTLINED_FUNCTION_62_9(), !v3))
        {
          v46 = v4[8];
          v47 = v4[9];
          OUTLINED_FUNCTION_1();
          if (!v48 || (result = OUTLINED_FUNCTION_62_9(), !v3))
          {
            v49 = v4[10];
            v50 = v4[11];
            OUTLINED_FUNCTION_1();
            if (!v51 || (result = OUTLINED_FUNCTION_62_9(), !v3))
            {
              v52 = v4[12];
              v53 = v4[13];
              OUTLINED_FUNCTION_1();
              if (!v54 || (result = OUTLINED_FUNCTION_62_9(), !v3))
              {
                v55 = v4[14];
                v56 = v4[15];
                OUTLINED_FUNCTION_1();
                if (!v57 || (result = OUTLINED_FUNCTION_62_9(), !v3))
                {
                  v58 = v4[16];
                  v59 = v4[17];
                  OUTLINED_FUNCTION_1();
                  if (!v60 || (result = OUTLINED_FUNCTION_62_9(), !v3))
                  {
                    v61 = v4 + *(v64 + 52);
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

void static Searchfoundation_Airport.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v79 = type metadata accessor for Searchfoundation_LatLng(0);
  v3 = OUTLINED_FUNCTION_59_1(v79);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v75 - v13);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB018, &unk_1B96B9910);
  OUTLINED_FUNCTION_59_1(v78);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_35();
  v19 = type metadata accessor for Searchfoundation_TimeZone(v18);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC690, &qword_1B96B9A00);
  OUTLINED_FUNCTION_183(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v75 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCA08, &qword_1B96B9AA8);
  OUTLINED_FUNCTION_59_1(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v75 - v36;
  v38 = *v1;
  v39 = v1[1];
  v80 = v1;
  v40 = v38 == *v0 && v39 == v0[1];
  if (!v40 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_80;
  }

  v75 = v8;
  v76 = v14;
  v41 = v0;
  v77 = type metadata accessor for Searchfoundation_Airport(0);
  v42 = *(v77 + 56);
  v43 = *(v32 + 48);
  OUTLINED_FUNCTION_168_5();
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v37);
  if (v40)
  {
    OUTLINED_FUNCTION_37_0(&v37[v43]);
    if (v40)
    {
      sub_1B8D9207C(v37, &qword_1EBACC690, &qword_1B96B9A00);
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v37[v43]);
  if (v44)
  {
    sub_1B94A47A4();
LABEL_14:
    v45 = &qword_1EBACCA08;
    v46 = &qword_1B96B9AA8;
LABEL_15:
    v47 = v37;
LABEL_79:
    sub_1B8D9207C(v47, v45, v46);
    goto LABEL_80;
  }

  OUTLINED_FUNCTION_23_21();
  sub_1B94A46F4();
  v48 = *v31 == *v25 && v31[1] == v25[1];
  if (!v48 && (sub_1B964C9F0() & 1) == 0)
  {
    sub_1B94A47A4();
    sub_1B94A47A4();
    v45 = &qword_1EBACC690;
    v46 = &qword_1B96B9A00;
    goto LABEL_15;
  }

  v49 = *(v19 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v50, v51);
  v52 = sub_1B964C850();
  OUTLINED_FUNCTION_105_8();
  sub_1B94A47A4();
  sub_1B94A47A4();
  sub_1B8D9207C(v37, &qword_1EBACC690, &qword_1B96B9A00);
  if ((v52 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_22:
  v53 = v77;
  v54 = *(v77 + 60);
  v55 = *(v78 + 48);
  OUTLINED_FUNCTION_168_5();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_164_1();
  v56 = v79;
  OUTLINED_FUNCTION_81(v2, 1);
  if (v40)
  {
    OUTLINED_FUNCTION_37_0(v2 + v55);
    if (v40)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

  v68 = v76;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v55);
  if (v69)
  {
    OUTLINED_FUNCTION_12_32();
    sub_1B94A47A4();
LABEL_70:
    v45 = &qword_1EBACB018;
    v46 = &unk_1B96B9910;
LABEL_78:
    v47 = v2;
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_22_24();
  v70 = v75;
  sub_1B94A46F4();
  if (*v68 != *v70 || v68[1] != v70[1])
  {
    OUTLINED_FUNCTION_12_32();
    sub_1B94A47A4();
    goto LABEL_77;
  }

  v71 = *(v56 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v72, v73);
  v74 = sub_1B964C850();
  OUTLINED_FUNCTION_12_32();
  sub_1B94A47A4();
  if ((v74 & 1) == 0)
  {
LABEL_77:
    OUTLINED_FUNCTION_12_32();
    sub_1B94A47A4();
    v45 = &qword_1EBACAFA0;
    v46 = &unk_1B96CB440;
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_12_32();
  sub_1B94A47A4();
LABEL_26:
  sub_1B8D9207C(v2, &qword_1EBACAFA0, &unk_1B96CB440);
  v57 = v80[2] == v41[2] && v80[3] == v41[3];
  if (v57 || (sub_1B964C9F0() & 1) != 0)
  {
    v58 = v80[4] == v41[4] && v80[5] == v41[5];
    if (v58 || (sub_1B964C9F0() & 1) != 0)
    {
      v59 = v80[6] == v41[6] && v80[7] == v41[7];
      if (v59 || (sub_1B964C9F0() & 1) != 0)
      {
        v60 = v80[8] == v41[8] && v80[9] == v41[9];
        if (v60 || (sub_1B964C9F0() & 1) != 0)
        {
          v61 = v80[10] == v41[10] && v80[11] == v41[11];
          if (v61 || (sub_1B964C9F0() & 1) != 0)
          {
            v62 = v80[12] == v41[12] && v80[13] == v41[13];
            if (v62 || (sub_1B964C9F0() & 1) != 0)
            {
              v63 = v80[14] == v41[14] && v80[15] == v41[15];
              if (v63 || (sub_1B964C9F0() & 1) != 0)
              {
                v64 = v80[16] == v41[16] && v80[17] == v41[17];
                if (v64 || (sub_1B964C9F0() & 1) != 0)
                {
                  v65 = *(v53 + 52);
                  sub_1B964C2B0();
                  OUTLINED_FUNCTION_1_76();
                  sub_1B94AE34C(v66, v67);
                  sub_1B964C850();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_80:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94ABD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE34C(&qword_1EBACF100, type metadata accessor for Searchfoundation_Airport);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94ABDC8(uint64_t a1)
{
  v2 = sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94ABE38()
{
  sub_1B94AE34C(&qword_1EBACF080, type metadata accessor for Searchfoundation_Airport);

  return sub_1B964C5D0();
}

uint64_t sub_1B94ABED0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEF10);
  __swift_project_value_buffer(v0, qword_1EBACEF10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "status";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resultType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 100;
  *v12 = "flights";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_ApiResults.decodeMessage<A>(decoder:)()
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
      case 100:
        OUTLINED_FUNCTION_9();
        sub_1B94AC248();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94AC1E0();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B94AC178();
        break;
    }
  }

  return result;
}

uint64_t sub_1B94AC248()
{
  type metadata accessor for Searchfoundation_Flight(0);
  sub_1B94AE34C(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight);
  return sub_1B964C570();
}

uint64_t Searchfoundation_ApiResults.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_64_2();
  if (!*v0 || (v5 = *v0, v7 = *(v2 + 8), sub_1B94AE394(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (!*(v2 + 16) || (v6 = *(v2 + 16), v8 = *(v2 + 24), sub_1B94AE3E8(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      if (!*(*(v2 + 32) + 16) || (type metadata accessor for Searchfoundation_Flight(0), sub_1B94AE34C(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        v4 = v2 + *(type metadata accessor for Searchfoundation_ApiResults(0) + 28);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_ApiResults.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  else if (v3 != v5)
  {
    return 0;
  }

  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  if (*(v1 + 24))
  {
    v6 = v6 != 0;
  }

  if (*(v0 + 24) == 1)
  {
    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = *(v1 + 32);
  v9 = *(v0 + 32);
  sub_1B8D64C24();
  if (v10)
  {
    v11 = *(type metadata accessor for Searchfoundation_ApiResults(0) + 28);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_1_76();
    sub_1B94AE34C(v12, v13);
    return OUTLINED_FUNCTION_634() & 1;
  }

  return 0;
}

uint64_t sub_1B94AC5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE34C(&qword_1EBACF0F8, type metadata accessor for Searchfoundation_ApiResults);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94AC674(uint64_t a1)
{
  v2 = sub_1B94AE34C(&qword_1EBACF098, type metadata accessor for Searchfoundation_ApiResults);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94AC6E4()
{
  sub_1B94AE34C(&qword_1EBACF098, type metadata accessor for Searchfoundation_ApiResults);

  return sub_1B964C5D0();
}

uint64_t sub_1B94AC77C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEF28);
  __swift_project_value_buffer(v0, qword_1EBACEF28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "scheduled";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "current";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bufferMinutes";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_FlightDateDescriptor.decodeMessage<A>(decoder:)()
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
        sub_1B964C490();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94AD7FC();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B94AD76C();
        break;
    }
  }

  return result;
}

uint64_t Searchfoundation_FlightDateDescriptor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v30[1] = a2;
  v30[2] = a3;
  v32 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v7 = OUTLINED_FUNCTION_183(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - v14;
  v16 = type metadata accessor for Searchfoundation_Date(0);
  v17 = OUTLINED_FUNCTION_59_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v20);
  v31 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  v21 = v31[6];
  v30[0] = v5;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    OUTLINED_FUNCTION_20_15();
    sub_1B94A46F4();
    OUTLINED_FUNCTION_10_37();
    sub_1B94AE34C(v22, v23);
    OUTLINED_FUNCTION_257_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_690();
    result = sub_1B94A47A4();
    if (v4)
    {
      return result;
    }
  }

  v25 = v31[7];
  v26 = v30[0];
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAB8E30, &qword_1B964D630);
  }

  else
  {
    sub_1B94A46F4();
    OUTLINED_FUNCTION_10_37();
    sub_1B94AE34C(v27, v28);
    sub_1B964C740();
    result = sub_1B94A47A4();
    if (v4)
    {
      return result;
    }
  }

  if (*v26 == 0.0 || (result = sub_1B964C6B0(), !v4))
  {
    v29 = v26 + v31[5];
    return sub_1B964C290();
  }

  return result;
}

void static Searchfoundation_FlightDateDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Searchfoundation_Date(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44_0();
  v52 = v8;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_266_0();
  v54 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v12 = OUTLINED_FUNCTION_183(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44_0();
  v53 = v15;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v52 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  v56 = v23;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v52 - v25;
  v55 = type metadata accessor for Searchfoundation_FlightDateDescriptor(0);
  v27 = *(v55 + 24);
  v28 = *(v19 + 48);
  v57 = v3;
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_99_0(v26);
  if (v29)
  {
    OUTLINED_FUNCTION_99_0(&v26[v28]);
    if (v29)
    {
      sub_1B8D9207C(v26, &qword_1EBAB8E30, &qword_1B964D630);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_514();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(&v26[v28]);
  if (v29)
  {
    OUTLINED_FUNCTION_2_62();
    sub_1B94A47A4();
LABEL_9:
    v30 = &qword_1EBAB8E38;
    v31 = &qword_1B96CD870;
LABEL_10:
    v32 = v26;
LABEL_23:
    sub_1B8D9207C(v32, v30, v31);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_0_91();
  v33 = v54;
  sub_1B94A46F4();
  if (*v18 != *v33)
  {
    OUTLINED_FUNCTION_4_53();
    sub_1B94A47A4();
    sub_1B94A47A4();
    v30 = &qword_1EBAB8E30;
    v31 = &qword_1B964D630;
    goto LABEL_10;
  }

  v34 = *(v4 + 20);
  v35 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v36, v37);
  sub_1B964C850();
  OUTLINED_FUNCTION_5_41();
  sub_1B94A47A4();
  OUTLINED_FUNCTION_303();
  sub_1B94A47A4();
  sub_1B8D9207C(v26, &qword_1EBAB8E30, &qword_1B964D630);
  if ((v35 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  v39 = v55;
  v38 = v56;
  v40 = *(v55 + 28);
  v41 = *(v19 + 48);
  v42 = v57;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v38);
  if (!v29)
  {
    v43 = v53;
    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v38 + v41);
    if (!v44)
    {
      OUTLINED_FUNCTION_0_91();
      v45 = v52;
      sub_1B94A46F4();
      if (*v43 == *v45)
      {
        v46 = *(v4 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_76();
        sub_1B94AE34C(v47, v48);
        LOBYTE(v46) = sub_1B964C850();
        OUTLINED_FUNCTION_4_53();
        sub_1B94A47A4();
        OUTLINED_FUNCTION_128();
        sub_1B94A47A4();
        sub_1B8D9207C(v38, &qword_1EBAB8E30, &qword_1B964D630);
        if ((v46 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_28;
      }

      OUTLINED_FUNCTION_42_15();
      sub_1B94A47A4();
      OUTLINED_FUNCTION_182();
      sub_1B94A47A4();
      v30 = &qword_1EBAB8E30;
      v31 = &qword_1B964D630;
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_2_62();
    sub_1B94A47A4();
LABEL_21:
    v30 = &qword_1EBAB8E38;
    v31 = &qword_1B96CD870;
LABEL_22:
    v32 = v38;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_99_0(v38 + v41);
  if (!v29)
  {
    goto LABEL_21;
  }

  sub_1B8D9207C(v38, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_28:
  if (*v42 == *v1)
  {
    v49 = *(v39 + 20);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_1_76();
    sub_1B94AE34C(v50, v51);
    sub_1B964C850();
  }

LABEL_24:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94AD310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE34C(&qword_1EBACF0F0, type metadata accessor for Searchfoundation_FlightDateDescriptor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94AD390(uint64_t a1)
{
  v2 = sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94AD400()
{
  sub_1B94AE34C(&qword_1EBACF0B0, type metadata accessor for Searchfoundation_FlightDateDescriptor);

  return sub_1B964C5D0();
}

uint64_t sub_1B94AD498()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEF40);
  __swift_project_value_buffer(v0, qword_1EBACEF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "displayStatus";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "departureTime";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "arrivalTime";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_PegasusDisplayFields.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_9();
        sub_1B94AD7FC();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94AD76C();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }

  return result;
}

uint64_t sub_1B94AD76C()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 24);
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_10_37();
  sub_1B94AE34C(v2, v3);
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C580();
}

uint64_t sub_1B94AD7FC()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 28);
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_10_37();
  sub_1B94AE34C(v2, v3);
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C580();
}

uint64_t Searchfoundation_PegasusDisplayFields.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_64_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v4 = OUTLINED_FUNCTION_183(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_66();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  v13 = type metadata accessor for Searchfoundation_Date(0);
  v14 = OUTLINED_FUNCTION_59_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v32[1] = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  v19 = *v2;
  v20 = v2[1];
  OUTLINED_FUNCTION_1();
  if (!v21 || (result = sub_1B964C700(), !v0))
  {
    v33 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
    v23 = v33[6];
    sub_1B8D92024();
    v24 = OUTLINED_FUNCTION_538();
    if (__swift_getEnumTagSinglePayload(v24, v25, v13) == 1)
    {
      sub_1B8D9207C(v12, &qword_1EBAB8E30, &qword_1B964D630);
    }

    else
    {
      v32[0] = v1;
      sub_1B94A46F4();
      OUTLINED_FUNCTION_10_37();
      sub_1B94AE34C(v26, v27);
      OUTLINED_FUNCTION_257_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_186();
      result = sub_1B94A47A4();
      if (v0)
      {
        return result;
      }
    }

    v28 = v33[7];
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
    {
      sub_1B8D9207C(v9, &qword_1EBAB8E30, &qword_1B964D630);
    }

    else
    {
      sub_1B94A46F4();
      OUTLINED_FUNCTION_10_37();
      sub_1B94AE34C(v29, v30);
      sub_1B964C740();
      result = sub_1B94A47A4();
      if (v0)
      {
        return result;
      }
    }

    v31 = v2 + v33[5];
    return sub_1B964C290();
  }

  return result;
}

void static Searchfoundation_PegasusDisplayFields.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v2 = type metadata accessor for Searchfoundation_Date(0);
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_66();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v57 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  v61 = v16;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v57 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_66();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v57 - v28;
  v30 = *v1;
  v31 = v1[1];
  v62 = v1;
  v32 = v30 == *v0 && v31 == v0[1];
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v60 = v26;
  v58 = v8;
  v59 = type metadata accessor for Searchfoundation_PegasusDisplayFields(0);
  v33 = *(v59 + 24);
  v34 = *(v20 + 48);
  OUTLINED_FUNCTION_168_5();
  OUTLINED_FUNCTION_141_11();
  sub_1B8D92024();
  OUTLINED_FUNCTION_141_11();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v29);
  if (v32)
  {
    OUTLINED_FUNCTION_99_0(&v29[v34]);
    if (v32)
    {
      sub_1B8D9207C(v29, &qword_1EBAB8E30, &qword_1B964D630);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_502();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(&v29[v34]);
  if (v35)
  {
    OUTLINED_FUNCTION_2_62();
    sub_1B94A47A4();
LABEL_14:
    v36 = &qword_1EBAB8E38;
    v37 = &qword_1B96CD870;
LABEL_15:
    v38 = v29;
LABEL_28:
    sub_1B8D9207C(v38, v36, v37);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_0_91();
  sub_1B94A46F4();
  if (*v19 != *v11)
  {
    OUTLINED_FUNCTION_42_15();
    sub_1B94A47A4();
    OUTLINED_FUNCTION_182();
    sub_1B94A47A4();
    v36 = &qword_1EBAB8E30;
    v37 = &qword_1B964D630;
    goto LABEL_15;
  }

  v39 = *(v2 + 20);
  v40 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v41, v42);
  sub_1B964C850();
  OUTLINED_FUNCTION_5_41();
  sub_1B94A47A4();
  sub_1B94A47A4();
  sub_1B8D9207C(v29, &qword_1EBAB8E30, &qword_1B964D630);
  if ((v40 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v44 = v59;
  v43 = v60;
  v45 = *(v59 + 28);
  v46 = *(v20 + 48);
  OUTLINED_FUNCTION_168_5();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_99_0(v43);
  if (v32)
  {
    OUTLINED_FUNCTION_99_0(v43 + v46);
    if (v32)
    {
      sub_1B8D9207C(v43, &qword_1EBAB8E30, &qword_1B964D630);
LABEL_33:
      v54 = *(v44 + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_76();
      sub_1B94AE34C(v55, v56);
      sub_1B964C850();
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v47 = v61;
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v43 + v46);
  if (v48)
  {
    OUTLINED_FUNCTION_2_62();
    sub_1B94A47A4();
LABEL_26:
    v36 = &qword_1EBAB8E38;
    v37 = &qword_1B96CD870;
LABEL_27:
    v38 = v43;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_0_91();
  v49 = v58;
  sub_1B94A46F4();
  if (*v47 != *v49)
  {
    OUTLINED_FUNCTION_42_15();
    sub_1B94A47A4();
    sub_1B94A47A4();
    v36 = &qword_1EBAB8E30;
    v37 = &qword_1B964D630;
    goto LABEL_27;
  }

  v50 = *(v2 + 20);
  v51 = sub_1B964C2B0();
  OUTLINED_FUNCTION_1_76();
  sub_1B94AE34C(v52, v53);
  sub_1B964C850();
  OUTLINED_FUNCTION_5_41();
  sub_1B94A47A4();
  OUTLINED_FUNCTION_502();
  sub_1B94A47A4();
  sub_1B8D9207C(v43, &qword_1EBAB8E30, &qword_1B964D630);
  if (v51)
  {
    goto LABEL_33;
  }

LABEL_29:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B94AE0FC(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B94AE34C(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94AE1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94AE34C(&qword_1EBACF0E8, type metadata accessor for Searchfoundation_PegasusDisplayFields);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94AE25C(uint64_t a1)
{
  v2 = sub_1B94AE34C(&qword_1EBACF0C8, type metadata accessor for Searchfoundation_PegasusDisplayFields);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94AE2CC()
{
  sub_1B94AE34C(&qword_1EBACF0C8, type metadata accessor for Searchfoundation_PegasusDisplayFields);

  return sub_1B964C5D0();
}

uint64_t sub_1B94AE34C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B94AE394()
{
  result = qword_1EBACEF90;
  if (!qword_1EBACEF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEF90);
  }

  return result;
}

unint64_t sub_1B94AE3E8()
{
  result = qword_1EBACEF98;
  if (!qword_1EBACEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEF98);
  }

  return result;
}

unint64_t sub_1B94AE440()
{
  result = qword_1EBACEFB8;
  if (!qword_1EBACEFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEFB8);
  }

  return result;
}

unint64_t sub_1B94AE498()
{
  result = qword_1EBACEFC0;
  if (!qword_1EBACEFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEFC0);
  }

  return result;
}

unint64_t sub_1B94AE4F0()
{
  result = qword_1EBACEFC8;
  if (!qword_1EBACEFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEFC8);
  }

  return result;
}

unint64_t sub_1B94AE578()
{
  result = qword_1EBACEFE0;
  if (!qword_1EBACEFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEFE0);
  }

  return result;
}

unint64_t sub_1B94AE5D0()
{
  result = qword_1EBACEFE8;
  if (!qword_1EBACEFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEFE8);
  }

  return result;
}

unint64_t sub_1B94AE628()
{
  result = qword_1EBACEFF0;
  if (!qword_1EBACEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEFF0);
  }

  return result;
}

unint64_t sub_1B94AE6B0()
{
  result = qword_1EBACF008;
  if (!qword_1EBACF008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF008);
  }

  return result;
}

unint64_t sub_1B94AE708()
{
  result = qword_1EBACF010;
  if (!qword_1EBACF010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF010);
  }

  return result;
}

unint64_t sub_1B94AE760()
{
  result = qword_1EBACF018;
  if (!qword_1EBACF018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF018);
  }

  return result;
}

unint64_t sub_1B94AE7E8()
{
  result = qword_1EBACF030;
  if (!qword_1EBACF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF030);
  }

  return result;
}

unint64_t sub_1B94AE840()
{
  result = qword_1EBACF038;
  if (!qword_1EBACF038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF038);
  }

  return result;
}

unint64_t sub_1B94AE898()
{
  result = qword_1EBACF040;
  if (!qword_1EBACF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF040);
  }

  return result;
}

void sub_1B94AF044()
{
  sub_1B94AF310(319, &qword_1ED9D3A58, type metadata accessor for Searchfoundation_FlightLeg, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B94AF140()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_FlightLeg._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B94AF1EC()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B94AF310(319, &qword_1ED9F9660, type metadata accessor for Searchfoundation_TimeZone, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B94AF310(319, &qword_1ED9F9720, type metadata accessor for Searchfoundation_LatLng, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B94AF310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B94AF39C()
{
  sub_1B94AF310(319, &qword_1EBAC2170, type metadata accessor for Searchfoundation_Flight, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B94AF4D0()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B94AF310(319, &qword_1ED9F9798, type metadata accessor for Searchfoundation_Date, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B94AF594()
{
  sub_1B94AF310(319, &qword_1ED9F9798, type metadata accessor for Searchfoundation_Date, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1B94AF310(319, &qword_1ED9F2CA0, type metadata accessor for Searchfoundation_Airport, MEMORY[0x1E69E6720]);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      sub_1B94AF310(319, qword_1ED9D3928, type metadata accessor for Searchfoundation_PegasusDisplayFields, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        sub_1B94AF310(319, qword_1ED9D2200, type metadata accessor for Searchfoundation_FlightDateDescriptor, MEMORY[0x1E69E6720]);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1B94AF7D8()
{
  result = qword_1EBACF118;
  if (!qword_1EBACF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF118);
  }

  return result;
}

unint64_t sub_1B94AF82C()
{
  result = qword_1EBACF120;
  if (!qword_1EBACF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF120);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_40(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = type metadata accessor for Searchfoundation_FlightLeg(0);
  v4 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_11_39(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v1 + *(v2 + 28), 1, 1, a1);
  return __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_15_25()
{
  result = type metadata accessor for Searchfoundation_FlightLeg(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_26_23(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Searchfoundation_FlightLeg(0);
  v5 = *(result + 20);
  *(a1 + 72) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_14()
{
  result = type metadata accessor for Searchfoundation_FlightLeg(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_23()
{

  return type metadata accessor for Searchfoundation_FlightLeg(0);
}

uint64_t OUTLINED_FUNCTION_47_14()
{
  v0 = type metadata accessor for Searchfoundation_FlightLeg._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53_16()
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
  v3 = v0 + *(v1 + 52);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_62_9()
{
  v2 = *(v0 - 72);

  return sub_1B964C700();
}

double OUTLINED_FUNCTION_96_6@<D0>(double *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_114_10()
{
  result = *(v0 + 560) + v1;
  v3 = *(v0 + 560);
  return result;
}

uint64_t OUTLINED_FUNCTION_116_7()
{
  v2 = *v0;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_130_5()
{
  v2 = *(*(v0 + 552) + 20);

  return sub_1B964C2B0();
}

uint64_t OUTLINED_FUNCTION_135_7()
{

  return sub_1B94A46F4();
}

uint64_t OUTLINED_FUNCTION_145_8()
{
  *v0 = 0;
  v3 = v0 + *(v1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void OUTLINED_FUNCTION_148_5(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_152_4()
{

  return sub_1B94A47A4();
}

uint64_t OUTLINED_FUNCTION_167_8()
{
  v2 = *(v0 + 24);

  return type metadata accessor for Searchfoundation_Date(0);
}

uint64_t Searchfoundation_FormattedText.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v2 = type metadata accessor for Searchfoundation_FormattedText();
  v3 = a1 + v2[8];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[9];
  type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[10];
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t type metadata accessor for Searchfoundation_FormattedText()
{
  result = qword_1ED9F1F98;
  if (!qword_1ED9F1F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t Searchfoundation_EncapsulationStyle.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B94AFFAC@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_EncapsulationStyle.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B94AFFE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94B23D8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_EncapsulationStyle.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBACF140 = a1;
}

uint64_t sub_1B94B0128@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_EncapsulationStyle.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_FormattedText.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_FormattedText();
  v8 = OUTLINED_FUNCTION_115(*(v7 + 36));
  sub_1B8DD9078(v8, v9, &qword_1EBAB8E40, &unk_1B964D640);
  v10 = type metadata accessor for Searchfoundation_Text();
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v10);
  if (v13)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    v14 = a1 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v15, v16, v10);
    if (!v13)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    v17 = OUTLINED_FUNCTION_182();
    return sub_1B94B22CC(v17, v18, v19);
  }

  return result;
}

uint64_t Searchfoundation_FormattedText.text.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_FormattedText() + 36);
  sub_1B8D9207C(v1 + v2, &qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_1_77();
  sub_1B94B22CC(v0, v1 + v2, v3);
  type metadata accessor for Searchfoundation_Text();
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Searchfoundation_FormattedText.text.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Text();
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_FormattedText() + 36);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_115(v11);
  sub_1B8DD9078(v12, v13, &qword_1EBAB8E40, &unk_1B964D640);
  v14 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v14, v15, v7);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    *(v10 + 4) = 0;
    v17 = v10 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v18, v19, v7);
    if (!v16)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    sub_1B94B22CC(v6, v10, v20);
  }

  return sub_1B94B0430;
}

uint64_t Searchfoundation_FormattedText.hasText.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_FormattedText();
  v5 = OUTLINED_FUNCTION_115(*(v4 + 36));
  sub_1B8DD9078(v5, v6, &qword_1EBAB8E40, &unk_1B964D640);
  type metadata accessor for Searchfoundation_Text();
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

  v12 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v12, v13, &unk_1B964D640);
  return v11;
}

Swift::Void __swiftcall Searchfoundation_FormattedText.clearText()()
{
  v1 = type metadata accessor for Searchfoundation_FormattedText();
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAB8E40, &unk_1B964D640);
  type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_FormattedText.glyph.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_FormattedText();
  v8 = OUTLINED_FUNCTION_115(*(v7 + 40));
  sub_1B8DD9078(v8, v9, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v10 = type metadata accessor for Searchfoundation_Image(0);
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v10);
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v10 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *(a1 + v14) = qword_1EBAB5608;
    v15 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v10);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_92();
    v18 = OUTLINED_FUNCTION_182();
    return sub_1B94B22CC(v18, v19, v20);
  }

  return result;
}

uint64_t sub_1B94B0694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17 - v14;
  sub_1B94B2328(a1, &v17 - v14, a6);
  return a7(v15);
}

uint64_t Searchfoundation_FormattedText.glyph.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_FormattedText() + 40);
  sub_1B8D9207C(v1 + v2, &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_0_92();
  sub_1B94B22CC(v0, v1 + v2, v3);
  type metadata accessor for Searchfoundation_Image(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Searchfoundation_FormattedText.glyph.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Image(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_FormattedText() + 40);
  *(v3 + 10) = v11;
  sub_1B8DD9078(v1 + v11, v6, &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v7 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *&v10[v13] = qword_1EBAB5608;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_92();
    sub_1B94B22CC(v6, v10, v15);
  }

  return sub_1B94B0950;
}

void sub_1B94B0978(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    sub_1B94B2328((*a1)[4], v10, a5);
    sub_1B8D9207C(v14 + v9, a3, a4);
    sub_1B94B22CC(v10, v14 + v9, a5);
    OUTLINED_FUNCTION_187_1();
    sub_1B94B2384();
  }

  else
  {
    sub_1B8D9207C(v14 + v9, a3, a4);
    sub_1B94B22CC(v11, v14 + v9, a5);
    OUTLINED_FUNCTION_187_1();
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t Searchfoundation_FormattedText.hasGlyph.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_FormattedText();
  v5 = OUTLINED_FUNCTION_115(*(v4 + 40));
  sub_1B8DD9078(v5, v6, &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
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

  v12 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v12, v13, &unk_1B96B77D0);
  return v11;
}

Swift::Void __swiftcall Searchfoundation_FormattedText.clearGlyph()()
{
  v1 = type metadata accessor for Searchfoundation_FormattedText();
  sub_1B8D9207C(v0 + *(v1 + 40), &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Searchfoundation_FormattedText.textColor.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_FormattedText.textColor.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

void Searchfoundation_FormattedText.encapsulationStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_FormattedText.encapsulationStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Searchfoundation_FormattedText.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_FormattedText() + 32);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_FormattedText.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_FormattedText() + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*Searchfoundation_FormattedText.unknownFields.modify())()
{
  OUTLINED_FUNCTION_313();
  v0 = *(type metadata accessor for Searchfoundation_FormattedText() + 32);
  return nullsub_1;
}

uint64_t sub_1B94B0D84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACF148);
  __swift_project_value_buffer(v0, qword_1EBACF148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "EncapsulationStyleNone";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EncapsulationStyleBordered";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EncapsulationStyleFilled";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B94B0FCC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB51C8);
  __swift_project_value_buffer(v0, qword_1EBAB51C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
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
  *v10 = "glyph";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isEmphasized";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isBold";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "textColor";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "encapsulationStyle";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_FormattedText.decodeMessage<A>(decoder:)()
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
        sub_1B94B1380();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94B1434();
        break;
      case 3:
      case 4:
        sub_1B964C400();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B94B14E8();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B94B1550();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B94B1380()
{
  v0 = *(type metadata accessor for Searchfoundation_FormattedText() + 36);
  type metadata accessor for Searchfoundation_Text();
  sub_1B94B2840(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text);
  return sub_1B964C580();
}

uint64_t sub_1B94B1434()
{
  v0 = *(type metadata accessor for Searchfoundation_FormattedText() + 40);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B94B2840(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t Searchfoundation_FormattedText.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v42 = a1;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_22_3();
  v40 = type metadata accessor for Searchfoundation_Image(v10);
  v11 = OUTLINED_FUNCTION_59_1(v40);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v39 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = type metadata accessor for Searchfoundation_Text();
  v23 = OUTLINED_FUNCTION_59_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v28 = v27 - v26;
  v41 = type metadata accessor for Searchfoundation_FormattedText();
  sub_1B8DD9078(v3 + v41[9], v21, &qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_38_1();
  if (__swift_getEnumTagSinglePayload(v29, v30, v31) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBAB8E40, &unk_1B964D640);
  }

  else
  {
    sub_1B94B22CC(v21, v28, type metadata accessor for Searchfoundation_Text);
    sub_1B94B2840(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text);
    OUTLINED_FUNCTION_31_19();
    sub_1B964C740();
    result = sub_1B94B2384();
    if (v4)
    {
      return result;
    }
  }

  sub_1B8DD9078(v3 + v41[10], v5, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v33 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v33, v34, v40) == 1)
  {
    sub_1B8D9207C(v5, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    sub_1B94B22CC(v5, v39, type metadata accessor for Searchfoundation_Image);
    sub_1B94B2840(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
    OUTLINED_FUNCTION_31_19();
    sub_1B964C740();
    result = sub_1B94B2384();
    if (v4)
    {
      return result;
    }
  }

  if (*v3 != 1 || (result = OUTLINED_FUNCTION_25_21(), !v4))
  {
    if (*(v3 + 1) != 1 || (result = OUTLINED_FUNCTION_25_21(), !v4))
    {
      if (!*(v3 + 8) || (v35 = *(v3 + 16), v44 = *(v3 + 8), v45 = v35, sub_1B9463458(), OUTLINED_FUNCTION_31_19(), result = sub_1B964C680(), !v4))
      {
        if (!*(v3 + 24) || (v36 = *(v3 + 32), v44 = *(v3 + 24), v45 = v36, sub_1B94B23D8(), OUTLINED_FUNCTION_31_19(), result = sub_1B964C680(), !v4))
        {
          v37 = v3 + v41[8];
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_FormattedText.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v85 = type metadata accessor for Searchfoundation_Image(0);
  v4 = OUTLINED_FUNCTION_59_1(v85);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v82 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v81 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  OUTLINED_FUNCTION_59_1(v84);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v81 - v17;
  v18 = type metadata accessor for Searchfoundation_Text();
  v19 = OUTLINED_FUNCTION_59_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v81 - v29;
  v31 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E48, &unk_1B96CCC40) - 8);
  v32 = *(*v31 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v81 - v34;
  v86 = type metadata accessor for Searchfoundation_FormattedText();
  v36 = *(v86 + 36);
  v37 = v31[14];
  v88 = a1;
  sub_1B8DD9078(&a1[v36], v35, &qword_1EBAB8E40, &unk_1B964D640);
  sub_1B8DD9078(&a2[v36], &v35[v37], &qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v38, v39, v40);
  if (v53)
  {
    OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_178(v41, v42, v43);
    if (v53)
    {
      sub_1B8D9207C(v35, &qword_1EBAB8E40, &unk_1B964D640);
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  sub_1B8DD9078(v35, v30, &qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_178(v50, v51, v52);
  if (v53)
  {
    sub_1B94B2384();
LABEL_14:
    v54 = &qword_1EBAB8E48;
    v55 = &unk_1B96CCC40;
LABEL_24:
    v62 = v35;
LABEL_30:
    sub_1B8D9207C(v62, v54, v55);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_1_77();
  sub_1B94B22CC(&v35[v37], v24, v56);
  v57 = *v30 == *v24 && *(v30 + 1) == *(v24 + 8);
  if (!v57 && (sub_1B964C9F0() & 1) == 0 || *(v30 + 4) != *(v24 + 16))
  {
    sub_1B94B2384();
    sub_1B94B2384();
    v54 = &qword_1EBAB8E40;
    v55 = &unk_1B964D640;
    goto LABEL_24;
  }

  v58 = *(v18 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_3_65();
  sub_1B94B2840(v59, v60);
  v61 = sub_1B964C850();
  sub_1B94B2384();
  sub_1B94B2384();
  sub_1B8D9207C(v35, &qword_1EBAB8E40, &unk_1B964D640);
  if ((v61 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_6:
  v45 = v86;
  v44 = v87;
  v46 = *(v86 + 40);
  v47 = *(v84 + 48);
  v48 = v88;
  sub_1B8DD9078(&v88[v46], v87, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8DD9078(&a2[v46], v44 + v47, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v49 = v85;
  OUTLINED_FUNCTION_178(v44, 1, v85);
  if (!v53)
  {
    v63 = v83;
    sub_1B8DD9078(v44, v83, &qword_1EBAB8EA8, &unk_1B96B77D0);
    OUTLINED_FUNCTION_178(v44 + v47, 1, v49);
    if (!v64)
    {
      OUTLINED_FUNCTION_0_92();
      v67 = v82;
      sub_1B94B22CC(v44 + v47, v82, v68);
      v69 = *(v49 + 20);
      if (*(v63 + v69) == *(v67 + v69))
      {
        goto LABEL_35;
      }

      v70 = *(v63 + v69);

      OUTLINED_FUNCTION_432();
      sub_1B94C6890();
      v72 = v71;

      if (v72)
      {
LABEL_35:
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_65();
        sub_1B94B2840(v73, v74);
        v75 = sub_1B964C850();
        sub_1B94B2384();
        sub_1B94B2384();
        sub_1B8D9207C(v44, &qword_1EBAB8EA8, &unk_1B96B77D0);
        if ((v75 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }

      sub_1B94B2384();
      sub_1B94B2384();
      v54 = &qword_1EBAB8EA8;
      v55 = &unk_1B96B77D0;
      goto LABEL_29;
    }

    sub_1B94B2384();
LABEL_28:
    v54 = &qword_1EBAB8EB0;
    v55 = &qword_1B964D6B0;
LABEL_29:
    v62 = v44;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_178(v44 + v47, 1, v49);
  if (!v53)
  {
    goto LABEL_28;
  }

  sub_1B8D9207C(v44, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_36:
  if (*v48 == *a2 && v48[1] == a2[1])
  {
    v76 = a2[16];
    if (sub_1B8D92198(*(v48 + 1), v48[16], *(a2 + 1)))
    {
      v77 = a2[32];
      if (sub_1B8D92198(*(v48 + 3), v48[32], *(a2 + 3)))
      {
        v78 = *(v45 + 32);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_65();
        sub_1B94B2840(v79, v80);
        v65 = sub_1B964C850();
        return v65 & 1;
      }
    }
  }

LABEL_31:
  v65 = 0;
  return v65 & 1;
}

uint64_t Searchfoundation_FormattedText.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_FormattedText();
  sub_1B94B2840(&qword_1EBACF168, type metadata accessor for Searchfoundation_FormattedText);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94B215C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B94B2840(&qword_1EBACF1A0, type metadata accessor for Searchfoundation_FormattedText);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94B21DC(uint64_t a1)
{
  v2 = sub_1B94B2840(qword_1ED9CC048, type metadata accessor for Searchfoundation_FormattedText);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94B224C()
{
  sub_1B94B2840(qword_1ED9CC048, type metadata accessor for Searchfoundation_FormattedText);

  return sub_1B964C5D0();
}

uint64_t sub_1B94B22CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_432();
  v8(v7);
  return a2;
}

uint64_t sub_1B94B2328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_432();
  v8(v7);
  return a2;
}

uint64_t sub_1B94B2384()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1B94B23D8()
{
  result = qword_1EBACF160;
  if (!qword_1EBACF160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF160);
  }

  return result;
}

unint64_t sub_1B94B2430()
{
  result = qword_1EBACF170;
  if (!qword_1EBACF170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF170);
  }

  return result;
}

unint64_t sub_1B94B2488()
{
  result = qword_1EBACF178;
  if (!qword_1EBACF178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF178);
  }

  return result;
}

unint64_t sub_1B94B24E0()
{
  result = qword_1EBACF180;
  if (!qword_1EBACF180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF180);
  }

  return result;
}

unint64_t sub_1B94B2538()
{
  result = qword_1EBACF188;
  if (!qword_1EBACF188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBACF190, &qword_1B96CE9E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACF188);
  }

  return result;
}

void sub_1B94B26F4()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B94B27EC(319, &qword_1ED9F31F0, type metadata accessor for Searchfoundation_Text);
    if (v1 <= 0x3F)
    {
      sub_1B94B27EC(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B94B27EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1B94B2840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_25_21()
{

  return sub_1B964C670();
}

uint64_t Searchfoundation_GraphicalFloat.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Searchfoundation_GraphicalFloat(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_GraphicalFloat.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_GraphicalFloat(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_GraphicalFloat.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_GraphicalFloat(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Searchfoundation_GraphicalFloat.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_GraphicalFloat(v0) + 20);
  return nullsub_1;
}

uint64_t Searchfoundation_PointSize.width.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_5_42();
  OUTLINED_FUNCTION_17_27(*(v7 + 20));
  v8 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_9_2();
  if (!v9)
  {
    return sub_1B94901B8(v1, a1);
  }

  *a1 = 0;
  v10 = a1 + *(v8 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v9)
  {
    return sub_1B8D9207C(v1, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  return result;
}