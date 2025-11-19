uint64_t sub_1B8E10C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_79();
  sub_1B8E16384();
  return a7(v7);
}

uint64_t sub_1B8E10CF0(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = *(type metadata accessor for Electionspb_ElectionRace(0) + 20);
  v9 = *(v2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v12 = OUTLINED_FUNCTION_40_0();
    *(v4 + v8) = sub_1B8E156D8(v12);
  }

  OUTLINED_FUNCTION_461();
  sub_1B8E1632C();
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = *a2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Electionspb_ElectionRace.neededVoteInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Electionspb_VoteInfo(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_133_2();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABB160, &qword_1B9656D10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_137_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8E10F3C()
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
    sub_1B8E16384();
    v2(v3);
    OUTLINED_FUNCTION_690();
    sub_1B8E163DC();
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

uint64_t sub_1B8E1100C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_9_7();
  v15 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v16 = a4(0);
  OUTLINED_FUNCTION_178(v6, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_1B8D9207C(v6, v5, v4);
  return v18;
}

void sub_1B8E11104()
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
  v12 = *(type metadata accessor for Electionspb_ElectionRace(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v16 = OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B8E156D8(v16);
  }

  v4(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

void sub_1B8E111FC(uint64_t *a1)
{
  v1 = *a1;

  Electionspb_ElectionRace.electionFlags.setter();
}

uint64_t Electionspb_ElectionRace.electionFlags.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_123_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t Electionspb_ElectionRace.status.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_7();
  v4 = *(v1 + v3) + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  result = OUTLINED_FUNCTION_521();
  v6 = *(v4 + 8);
  *a1 = *v4;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B8E11324@<X0>(uint64_t a1@<X8>)
{
  result = Electionspb_ElectionRace.status.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void sub_1B8E11368(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  Electionspb_ElectionRace.status.setter();
}

void Electionspb_ElectionRace.status.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_35_2();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v8);
    *(v2 + v1) = v7;
  }

  v9 = v7 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  OUTLINED_FUNCTION_18();
  *v9 = v4;
  *(v9 + 8) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.status.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_11_7();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  v5 = *(v0 + 8);
  *(v1 + 72) = *v0;
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E1149C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238(v1);
  v3 = *(v2 + 72);
  v4 = *(v0 + 84);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 88);
    OUTLINED_FUNCTION_16_8();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E156D8(v12);
    *(v11 + v10) = v9;
  }

  v13 = v9 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  OUTLINED_FUNCTION_18();
  *v13 = v3;
  *(v13 + 8) = v6;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Electionspb_ElectionRace.runoffInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_0();
  v8 = type metadata accessor for Electionspb_RunOffInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = MEMORY[0x1E69E7CC0];
    v10 = a1 + *(v8 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBABB168, &qword_1B9656D18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_182();
    return sub_1B8E1632C();
  }

  return result;
}

uint64_t Electionspb_ElectionRace.runoffInfo.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB168, &qword_1B9656D18);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_35_2();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_25_5();
  sub_1B8E1632C();
  type metadata accessor for Electionspb_RunOffInfo(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Electionspb_RunOffInfo.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  v2 = a1 + *(type metadata accessor for Electionspb_RunOffInfo(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Electionspb_ElectionRace.runoffInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Electionspb_RunOffInfo(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = 0;
    v12[3] = 0xE000000000000000;
    v12[4] = MEMORY[0x1E69E7CC0];
    v14 = v12 + *(v8 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBABB168, &qword_1B9656D18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_5();
    OUTLINED_FUNCTION_137_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Electionspb_ElectionRace.pollTiming.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_0();
  v8 = type metadata accessor for Electionspb_PollTiming(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_92_0();
    v10 = a1 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBABB170, &unk_1B9656D20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_182();
    return sub_1B8E1632C();
  }

  return result;
}

uint64_t Electionspb_ElectionRace.pollTiming.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB170, &unk_1B9656D20);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_35_2();
  v6 = *(v0 + v1);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_8_9();
  sub_1B8E1632C();
  type metadata accessor for Electionspb_PollTiming(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Electionspb_PollTiming.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  v2 = a1 + *(type metadata accessor for Electionspb_PollTiming(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Electionspb_ElectionRace.pollTiming.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Electionspb_PollTiming(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = 0;
    v12[3] = 0xE000000000000000;
    v14 = v12 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBABB170, &unk_1B9656D20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_137_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

float Electionspb_ElectionRace.eevp.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp;
  OUTLINED_FUNCTION_6_2();
  return *v2;
}

uint64_t Electionspb_ElectionRace.eevp.setter()
{
  v4 = OUTLINED_FUNCTION_141_2();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8E156D8(v6);
    *(v0 + v2) = v5;
  }

  v7 = (v5 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
  result = OUTLINED_FUNCTION_18();
  *v7 = v3;
  return result;
}

uint64_t Electionspb_ElectionRace.eevp.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_41();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E11E1C(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v6 = OUTLINED_FUNCTION_134_1(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_16_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E156D8(v10);
    OUTLINED_FUNCTION_15(v11);
  }

  v12 = (v7 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
  OUTLINED_FUNCTION_18();
  *v12 = v4;

  free(v1);
}

void sub_1B8E11EC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Electionspb_ElectionRace.district.setter();
}

uint64_t Electionspb_ElectionRace.district.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_41();
  v6 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8E11FAC(void *a1)
{
  OUTLINED_FUNCTION_11_7();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_6_2();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_288();
}

void sub_1B8E11FF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Electionspb_ElectionRace.imageURL.setter();
}

void sub_1B8E12044()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = v1;
  OUTLINED_FUNCTION_16();
  v6 = *(type metadata accessor for Electionspb_ElectionRace(0) + 20);
  v7 = *(v1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E156D8(v10);
    *(v5 + v6) = v9;
  }

  v11 = (v9 + *v4);
  OUTLINED_FUNCTION_18();
  v12 = v11[1];
  *v11 = v2;
  v11[1] = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.imageURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_41();
  v6 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E12164(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Electionspb_ElectionRace.newsURL.setter();
}

uint64_t Electionspb_ElectionRace.newsURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_41();
  v6 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E1223C()
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
      OUTLINED_FUNCTION_16_8();
      v18 = OUTLINED_FUNCTION_40_0();
      v15 = sub_1B8E156D8(v18);
      *(v17 + v16) = v15;
    }

    v19 = (v15 + *v10);
    OUTLINED_FUNCTION_18();
    v20 = v19[1];
    *v19 = v2;
    v19[1] = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v21);
}

uint64_t Electionspb_ElectionRace.numberOfSeats.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Electionspb_ElectionRace.numberOfSeats.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E156D8(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  v7 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
  result = OUTLINED_FUNCTION_9_3();
  *(v4 + v7) = v0;
  return result;
}

uint64_t Electionspb_ElectionRace.numberOfSeats.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E12400(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v6 = OUTLINED_FUNCTION_135_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_16_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E156D8(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  v12 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
  OUTLINED_FUNCTION_11_4();
  *(v7 + v12) = v3;

  free(v1);
}

uint64_t sub_1B8E1249C(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_7();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4();
  v4 = *(v1 + v3);
}

void sub_1B8E124DC(uint64_t *a1)
{
  v1 = *a1;

  Electionspb_ElectionRace.partyResults.setter();
}

void sub_1B8E12514()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_35_2();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E156D8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *v3;
  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + v10);
  *(v7 + v10) = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.partyResults.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_123_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E12618(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v5 = *(v4 + 48);
  if (v6)
  {
    v7 = v3;
    v8 = *(v1 + 56);

    v7(v9);
    v10 = *(v1 + 48);
  }

  else
  {
    v11 = v2;
    v12 = *(v1 + 64);
    v13 = *(v1 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v1 + 64);
      v18 = *(v1 + 56);
      OUTLINED_FUNCTION_16_8();
      v19 = OUTLINED_FUNCTION_40_0();
      v20 = sub_1B8E156D8(v19);
      OUTLINED_FUNCTION_168(v20);
    }

    v21 = *v11;
    OUTLINED_FUNCTION_59_3();
    v22 = *(v16 + v21);
    *(v16 + v21) = v5;
  }

  free(v1);
}

uint64_t Electionspb_ElectionRace.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Electionspb_ElectionRace.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t Electionspb_ElectionRace.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Electionspb_ElectionRace(0) + 20);
  if (qword_1EBAB6128 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBABB0B0;
}

uint64_t Electionspb_Candidate.siribaseID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Electionspb_Candidate.siribaseID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Electionspb_Candidate.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Electionspb_Candidate.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Electionspb_Candidate.voteInfo.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Electionspb_Candidate(v6) + 72);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Electionspb_VoteInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_132_1();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v0, &qword_1EBABB160, &qword_1B9656D10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_182();
    return sub_1B8E1632C();
  }

  return result;
}

uint64_t Electionspb_Candidate.voteInfo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Electionspb_Candidate(v1);
  sub_1B8D9207C(v0 + *(v2 + 72), &qword_1EBABB160, &qword_1B9656D10);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_122_0();
  sub_1B8E1632C();
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Electionspb_Candidate.voteInfo.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Electionspb_VoteInfo(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Electionspb_Candidate(0) + 72);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v6);
  if (v12)
  {
    *v10 = 0;
    v10[2] = 0;
    v13 = v10 + *(v7 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v6);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBABB160, &qword_1B9656D10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_461();
    sub_1B8E1632C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Electionspb_Candidate.hasVoteInfo.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Electionspb_Candidate(v7);
  OUTLINED_FUNCTION_115(*(v8 + 72));
  sub_1B8D92024();
  v9 = type metadata accessor for Electionspb_VoteInfo(0);
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
  sub_1B8D9207C(v12, v13, &qword_1B9656D10);
  return v11;
}

Swift::Void __swiftcall Electionspb_Candidate.clearVoteInfo()()
{
  v1 = type metadata accessor for Electionspb_Candidate(0);
  sub_1B8D9207C(v0 + *(v1 + 72), &qword_1EBABB160, &qword_1B9656D10);
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Electionspb_Candidate.runningMate.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Electionspb_Candidate.runningMate.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Electionspb_Candidate.politicalParty.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Electionspb_Candidate.politicalParty.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Electionspb_Candidate.statesWon.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t Electionspb_Candidate.imageURL.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Electionspb_Candidate.imageURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Electionspb_Candidate.politicalPartyName.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_432();
}

uint64_t Electionspb_Candidate.politicalPartyName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Electionspb_Candidate.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Electionspb_Candidate(v0) + 68);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Electionspb_Candidate.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Electionspb_Candidate(v0) + 68);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Electionspb_Candidate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Electionspb_Candidate(v0) + 68);
  return OUTLINED_FUNCTION_25();
}

uint64_t Electionspb_Candidate.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 68) = 0;
  *(a1 + 80) = MEMORY[0x1E69E7CC0];
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v2;
  *(a1 + 112) = 0;
  *(a1 + 120) = v2;
  *(a1 + 128) = 0;
  v3 = type metadata accessor for Electionspb_Candidate(0);
  v4 = a1 + *(v3 + 68);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 72);
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Electionspb_PoliticalParty.congressInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = *(type metadata accessor for Electionspb_PoliticalParty(v8) + 36);
  OUTLINED_FUNCTION_106_0();
  v10 = type metadata accessor for Electionspb_CongressInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v12 = a1 + *(v10 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9250, &qword_1B964DA38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_182();
    return sub_1B8E1632C();
  }

  return result;
}

uint64_t Electionspb_PoliticalParty.congressInfo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Electionspb_PoliticalParty(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB9250, &qword_1B964DA38);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_122_0();
  sub_1B8E1632C();
  type metadata accessor for Electionspb_CongressInfo(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Electionspb_CongressInfo.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Electionspb_CongressInfo(v1);
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  v3 = v0 + *(v2 + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Electionspb_PoliticalParty.congressInfo.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9250, &qword_1B964DA38);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Electionspb_CongressInfo(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Electionspb_PoliticalParty(0) + 36);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v6);
  if (v12)
  {
    *v10 = 0;
    v10[1] = 0;
    *(v10 + 8) = 0;
    v13 = v10 + *(v7 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v6);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9250, &qword_1B964DA38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_461();
    sub_1B8E1632C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8E13560()
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
    sub_1B8E16384();
    sub_1B8D9207C(v10 + v5, v4, v3);
    sub_1B8E1632C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    sub_1B8E163DC();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v1, v2);
    sub_1B8E1632C();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v19);
}

uint64_t Electionspb_PoliticalParty.hasCongressInfo.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Electionspb_PoliticalParty(v7);
  OUTLINED_FUNCTION_115(*(v8 + 36));
  sub_1B8D92024();
  v9 = type metadata accessor for Electionspb_CongressInfo(0);
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
  sub_1B8D9207C(v12, v13, &qword_1B964DA38);
  return v11;
}

Swift::Void __swiftcall Electionspb_PoliticalParty.clearCongressInfo()()
{
  v1 = type metadata accessor for Electionspb_PoliticalParty(0);
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBAB9250, &qword_1B964DA38);
  type metadata accessor for Electionspb_CongressInfo(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Electionspb_PoliticalParty.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Electionspb_PoliticalParty(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Electionspb_PoliticalParty.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Electionspb_PoliticalParty(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Electionspb_PoliticalParty.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Electionspb_PoliticalParty(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Electionspb_PoliticalParty.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  v2 = type metadata accessor for Electionspb_PoliticalParty(0);
  v3 = a1 + *(v2 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 36);
  type metadata accessor for Electionspb_CongressInfo(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Electionspb_ElectionsResponse.electionRaces.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Electionspb_ElectionsResponse.politicalParties.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void Electionspb_ElectionsResponse.dialogID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Electionspb_ElectionsResponse.dialogID.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

void Electionspb_ElectionsResponse.resultUseCase.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Electionspb_ElectionsResponse.resultUseCase.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Electionspb_ElectionsResponse.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Electionspb_ElectionsResponse(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Electionspb_ElectionsResponse.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Electionspb_ElectionsResponse(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Electionspb_ElectionsResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Electionspb_ElectionsResponse(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Electionspb_ElectionsResponse.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v3 = a1 + *(type metadata accessor for Electionspb_ElectionsResponse(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Electionspb_CongressInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Electionspb_CongressInfo(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Electionspb_CongressInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Electionspb_CongressInfo(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Electionspb_CongressInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Electionspb_CongressInfo(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Electionspb_VoteInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Electionspb_VoteInfo(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Electionspb_RunOffInfo.candidatesInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1B8E13F04()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8E13F8C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Electionspb_RunOffInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Electionspb_RunOffInfo(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Electionspb_PollTiming.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Electionspb_PollTiming(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Electionspb_PollTiming.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Electionspb_PollTiming(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Electionspb_PollTiming.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Electionspb_PollTiming(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E14188()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB050);
  __swift_project_value_buffer(v0, qword_1EBABB050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "STATUS_UNKNOWN";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STATUS_SCHEDULED";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "STATUS_RUNOFF";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "STATUS_CANCELLED";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "STATUS_IN_PROGRESS";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "STATUS_VOTES_FINALIZED";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "STATUS_CLOSE_TO_CALL";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E144A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB068);
  __swift_project_value_buffer(v0, qword_1EBABB068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "US_ELECTION_POLL_APPLE_NEWS";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WHO_WON_PRESIDENT";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "WHO_WON_STATE_PRESIDENT";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "WHO_WON_STATE_SENATE";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "WHO_WON_STATE_GOVERNOR";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "WHO_WON_OFFICE_CANDIDATE";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "WHO_WON_OFFICE";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "WHEN_IS_GENERAL_ELECTION";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "WHO_WON_DISTRICT_HOUSE";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E14888()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB080);
  __swift_project_value_buffer(v0, qword_1EBABB080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GENERIC_RESULT_PRESIDENTIAL";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GENERIC_RESULT_MIDTERM";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BOP_SENATE_RESULT";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BOP_HOUSE_RESULT";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "STATE_RESULT_PRESIDENTIAL";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "STATE_RESULT_GOVERNOR";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "STATE_RESULT_SENATE";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "STATE_RESULT_HOUSE";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "CANDIDATE_RESULT";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E14C40()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB098);
  __swift_project_value_buffer(v0, qword_1EBABB098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1B9656CF0;
  v4 = v67 + v3 + v1[14];
  *(v67 + v3) = 1;
  *v4 = "siribaseId";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v67 + v3 + v2 + v1[14];
  *(v67 + v3 + v2) = 2;
  *v8 = "Name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v67 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "politicalPartyId";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v67 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "politicalParty";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v67 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "jurisdiction";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v67 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "raceDate";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v67 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "raceType";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v67 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "officeContested";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v7();
  v21 = (v67 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "delegateCount";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v67 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "precinctReported";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v67 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "candidateInfo";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v67 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "isSuperTuesday";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v7();
  v29 = (v67 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "isFirstRace";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v7();
  v31 = (v67 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "isToday";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v7();
  v33 = (v67 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isCancelled";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  v35 = (v67 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isInFuture";
  *(v36 + 1) = 10;
  v36[16] = 2;
  v7();
  v37 = (v67 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "lastUpdated";
  *(v38 + 1) = 11;
  v38[16] = 2;
  v7();
  v39 = (v67 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "winnerDeclared";
  *(v40 + 1) = 14;
  v40[16] = 2;
  v7();
  v41 = (v67 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "total_vote_info";
  *(v42 + 1) = 15;
  v42[16] = 2;
  v43 = *MEMORY[0x1E69AADE8];
  v7();
  v44 = (v67 + v3 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "needed_vote_info";
  *(v45 + 1) = 16;
  v45[16] = 2;
  v7();
  v46 = (v67 + v3 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "election_flags";
  *(v47 + 1) = 14;
  v47[16] = 2;
  v7();
  v48 = (v67 + v3 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "status";
  *(v49 + 1) = 6;
  v49[16] = 2;
  v7();
  v50 = (v67 + v3 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "runoff_info";
  *(v51 + 1) = 11;
  v51[16] = 2;
  v7();
  v52 = (v67 + v3 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "poll_timing";
  *(v53 + 1) = 11;
  v53[16] = 2;
  v7();
  v54 = (v67 + v3 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "eevp";
  *(v55 + 1) = 4;
  v55[16] = 2;
  v7();
  v56 = (v67 + v3 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "district";
  *(v57 + 1) = 8;
  v57[16] = 2;
  v7();
  v58 = (v67 + v3 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "image_url";
  *(v59 + 1) = 9;
  v59[16] = 2;
  v7();
  v60 = (v67 + v3 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "news_url";
  *(v61 + 1) = 8;
  v61[16] = 2;
  v7();
  v62 = (v67 + v3 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "number_of_seats";
  *(v63 + 1) = 15;
  v63[16] = 2;
  v7();
  v64 = (v67 + v3 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "party_results";
  *(v65 + 1) = 13;
  v65[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E15504()
{
  v0 = type metadata accessor for Electionspb_ElectionRace._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B8E15544();
  qword_1EBABB0B0 = result;
  return result;
}

uint64_t sub_1B8E15544()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 112) = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  *(v0 + 136) = 0;
  *(v0 + 144) = v1;
  *(v0 + 156) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  *(v0 + 176) = 0;
  v2 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__totalVoteInfo;
  v3 = type metadata accessor for Electionspb_VoteInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__neededVoteInfo, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
  *(v0 + v4) = sub_1B964C7B0();
  v5 = v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__runoffInfo;
  v7 = type metadata accessor for Electionspb_RunOffInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__pollTiming;
  v9 = type metadata accessor for Electionspb_PollTiming(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp) = 0;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults) = v1;
  return v0;
}

uint64_t sub_1B8E156D8(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB170, &unk_1B9656D20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v116 = &v93 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB168, &qword_1B9656D18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v113 = &v93 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v106 = &v93 - v8;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  v93 = (v1 + 80);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v94 = (v1 + 96);
  *(v1 + 104) = 0xE000000000000000;
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + 112) = MEMORY[0x1E69E7CC0];
  v95 = (v1 + 112);
  *(v1 + 120) = 0;
  v96 = (v1 + 120);
  *(v1 + 128) = 0xE000000000000000;
  *(v1 + 136) = 0;
  v97 = (v1 + 136);
  *(v1 + 144) = v9;
  v98 = (v1 + 144);
  *(v1 + 160) = 0;
  v101 = (v1 + 160);
  *(v1 + 156) = 0;
  v100 = (v1 + 156);
  *(v1 + 152) = 0;
  v99 = (v1 + 152);
  *(v1 + 168) = 0xE000000000000000;
  *(v1 + 176) = 0;
  v102 = (v1 + 176);
  v10 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__totalVoteInfo;
  v103 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__totalVoteInfo;
  v11 = type metadata accessor for Electionspb_VoteInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v104 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__neededVoteInfo;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__neededVoteInfo, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
  v105 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
  v13 = MEMORY[0x1E69E7CC0];
  *(v1 + v12) = sub_1B964C7B0();
  v14 = v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  v107 = v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__runoffInfo;
  v108 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__runoffInfo;
  v16 = type metadata accessor for Electionspb_RunOffInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__pollTiming;
  v109 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__pollTiming;
  v18 = type metadata accessor for Electionspb_PollTiming(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v110 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp) = 0;
  v19 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
  v111 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
  v112 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
  v114 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v115 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats) = 0;
  v117 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults) = v13;
  swift_beginAccess();
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  swift_beginAccess();
  v24 = *(v1 + 24);
  *(v1 + 16) = v23;
  *(v1 + 24) = v22;

  swift_beginAccess();
  v26 = *(a1 + 32);
  v25 = *(a1 + 40);
  swift_beginAccess();
  v27 = *(v1 + 40);
  *(v1 + 32) = v26;
  *(v1 + 40) = v25;

  swift_beginAccess();
  v29 = *(a1 + 48);
  v28 = *(a1 + 56);
  swift_beginAccess();
  v30 = *(v1 + 56);
  *(v1 + 48) = v29;
  *(v1 + 56) = v28;

  swift_beginAccess();
  v32 = *(a1 + 64);
  v31 = *(a1 + 72);
  swift_beginAccess();
  v33 = *(v1 + 72);
  *(v1 + 64) = v32;
  *(v1 + 72) = v31;

  swift_beginAccess();
  v35 = *(a1 + 80);
  v34 = *(a1 + 88);
  v36 = v93;
  swift_beginAccess();
  v37 = *(v1 + 88);
  *v36 = v35;
  *(v1 + 88) = v34;

  swift_beginAccess();
  v39 = *(a1 + 96);
  v38 = *(a1 + 104);
  v40 = v94;
  swift_beginAccess();
  v41 = *(v1 + 104);
  *v40 = v39;
  *(v1 + 104) = v38;

  swift_beginAccess();
  v42 = *(a1 + 112);
  v43 = v95;
  swift_beginAccess();
  v44 = *v43;
  *v43 = v42;

  swift_beginAccess();
  v46 = *(a1 + 120);
  v45 = *(a1 + 128);
  v47 = v96;
  swift_beginAccess();
  v48 = *(v1 + 128);
  *v47 = v46;
  *(v1 + 128) = v45;

  swift_beginAccess();
  LODWORD(v45) = *(a1 + 136);
  v49 = v97;
  swift_beginAccess();
  *v49 = v45;
  swift_beginAccess();
  v50 = *(a1 + 140);
  swift_beginAccess();
  *(v1 + 140) = v50;
  swift_beginAccess();
  v51 = *(a1 + 144);
  v52 = v98;
  swift_beginAccess();
  v53 = *v52;
  *v52 = v51;

  swift_beginAccess();
  LOBYTE(v51) = *(a1 + 152);
  v54 = v99;
  swift_beginAccess();
  *v54 = v51;
  swift_beginAccess();
  LOBYTE(v51) = *(a1 + 153);
  swift_beginAccess();
  *(v1 + 153) = v51;
  swift_beginAccess();
  LOBYTE(v51) = *(a1 + 154);
  swift_beginAccess();
  *(v1 + 154) = v51;
  swift_beginAccess();
  LOBYTE(v51) = *(a1 + 155);
  swift_beginAccess();
  *(v1 + 155) = v51;
  swift_beginAccess();
  LOBYTE(v51) = *(a1 + 156);
  v55 = v100;
  swift_beginAccess();
  *v55 = v51;
  swift_beginAccess();
  v57 = *(a1 + 160);
  v56 = *(a1 + 168);
  v58 = v101;
  swift_beginAccess();
  v59 = *(v1 + 168);
  *v58 = v57;
  *(v1 + 168) = v56;

  swift_beginAccess();
  LOBYTE(v56) = *(a1 + 176);
  v60 = v102;
  swift_beginAccess();
  *v60 = v56;
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
  v61 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
  swift_beginAccess();
  v62 = *(a1 + v61);
  v63 = v105;
  swift_beginAccess();
  v64 = *(v1 + v63);
  *(v1 + v63) = v62;

  v65 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status);
  swift_beginAccess();
  v66 = *v65;
  LOBYTE(v65) = *(v65 + 8);
  v67 = v107;
  swift_beginAccess();
  *v67 = v66;
  *(v67 + 8) = v65;
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
  v68 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
  swift_beginAccess();
  v69 = *v68;
  v70 = v110;
  swift_beginAccess();
  *v70 = v69;
  v71 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
  swift_beginAccess();
  v73 = *v71;
  v72 = v71[1];
  v74 = v111;
  swift_beginAccess();
  v75 = v74[1];
  *v74 = v73;
  v74[1] = v72;

  v76 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
  swift_beginAccess();
  v78 = *v76;
  v77 = v76[1];
  v79 = v112;
  swift_beginAccess();
  v80 = v79[1];
  *v79 = v78;
  v79[1] = v77;

  v81 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
  swift_beginAccess();
  v83 = *v81;
  v82 = v81[1];
  v84 = v114;
  swift_beginAccess();
  v85 = v84[1];
  *v84 = v83;
  v84[1] = v82;

  v86 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
  swift_beginAccess();
  LODWORD(v86) = *(a1 + v86);
  v87 = v115;
  swift_beginAccess();
  *(v1 + v87) = v86;
  v88 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults;
  swift_beginAccess();
  v89 = *(a1 + v88);

  v90 = v117;
  swift_beginAccess();
  v91 = *(v1 + v90);
  *(v1 + v90) = v89;

  return v1;
}

uint64_t sub_1B8E1632C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8E16384()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8E163DC()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void *sub_1B8E164D0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[21];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__totalVoteInfo, &qword_1EBABB160, &qword_1B9656D10);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__neededVoteInfo, &qword_1EBABB160, &qword_1B9656D10);
  v11 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__runoffInfo, &qword_1EBABB168, &qword_1B9656D18);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__pollTiming, &qword_1EBABB170, &unk_1B9656D20);
  v12 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district + 8);

  v13 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL + 8);

  v14 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL + 8);

  v15 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults);

  return v0;
}

uint64_t sub_1B8E16624()
{
  v0 = sub_1B8E164D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Electionspb_ElectionRace.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Electionspb_ElectionRace(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Electionspb_ElectionRace._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E156D8(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B8E16718(v11, a1, a2, a3);
}

uint64_t sub_1B8E16718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8DAA85C();
        break;
      case 2:
        sub_1B8DC46F4();
        break;
      case 3:
        sub_1B8DC4778();
        break;
      case 4:
        sub_1B8E16ACC();
        break;
      case 5:
        sub_1B8E16B50();
        break;
      case 6:
        sub_1B8E16BD4();
        break;
      case 7:
        sub_1B8E16C58();
        break;
      case 8:
        sub_1B8E16CDC();
        break;
      case 9:
        sub_1B8E16D60();
        break;
      case 10:
        sub_1B8E16DE4();
        break;
      case 11:
        sub_1B8E16E68();
        break;
      case 12:
        sub_1B8E16F34();
        break;
      case 13:
        sub_1B8E16FB8();
        break;
      case 14:
        sub_1B8E1703C();
        break;
      case 15:
        sub_1B8E170C0();
        break;
      case 16:
        sub_1B8E17144();
        break;
      case 17:
        sub_1B8E171C8();
        break;
      case 18:
        sub_1B8E1724C();
        break;
      case 19:
      case 20:
        sub_1B8E172D0();
        break;
      case 21:
        sub_1B8E1737C();
        break;
      case 22:
        sub_1B8E1743C();
        break;
      case 23:
        sub_1B8E174D8();
        break;
      case 24:
        sub_1B8E175B4();
        break;
      case 25:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp;
        v12 = MEMORY[0x1E69AAC88];
        goto LABEL_29;
      case 26:
      case 27:
      case 28:
        sub_1B8E17690();
        break;
      case 29:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
        v12 = MEMORY[0x1E69AAC98];
LABEL_29:
        sub_1B8E17700(a2, a1, a3, a4, v11, v12);
        break;
      case 30:
        sub_1B8E17794();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E16ACC()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E16B50()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E16BD4()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E16C58()
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E16CDC()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E16D60()
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8E16DE4()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8E16E68()
{
  swift_beginAccess();
  type metadata accessor for Electionspb_Candidate(0);
  sub_1B8CD1B98(&qword_1EBABB198, type metadata accessor for Electionspb_Candidate);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E16F34()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E16FB8()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E1703C()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E170C0()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E17144()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E171C8()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E1724C()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E172D0()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Electionspb_VoteInfo(0);
  OUTLINED_FUNCTION_71_1();
  sub_1B8CD1B98(v2, v3);
  OUTLINED_FUNCTION_49_1();
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E1737C()
{
  swift_beginAccess();
  sub_1B964C280();
  sub_1B964C230();
  sub_1B964C3B0();
  return swift_endAccess();
}

uint64_t sub_1B8E1743C()
{
  swift_beginAccess();
  sub_1B8E1F75C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8E174D8()
{
  swift_beginAccess();
  type metadata accessor for Electionspb_RunOffInfo(0);
  sub_1B8CD1B98(&qword_1EBABB2E0, type metadata accessor for Electionspb_RunOffInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E175B4()
{
  swift_beginAccess();
  type metadata accessor for Electionspb_PollTiming(0);
  sub_1B8CD1B98(&qword_1EBABB2F8, type metadata accessor for Electionspb_PollTiming);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E17690()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_12();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E17700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1B8E17794()
{
  swift_beginAccess();
  type metadata accessor for Electionspb_PoliticalParty(0);
  sub_1B8CD1B98(&qword_1EBABB1B8, type metadata accessor for Electionspb_PoliticalParty);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t Electionspb_ElectionRace.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for Electionspb_ElectionRace(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B8E178D4(v7, v8, v9, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8E178D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB170, &unk_1B9656D20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = v77 - v10;
  v80 = type metadata accessor for Electionspb_PollTiming(0);
  v11 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v77[1] = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB168, &qword_1B9656D18);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v78 = v77 - v15;
  v82 = type metadata accessor for Electionspb_RunOffInfo(0);
  v16 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v79 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v84 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v77 - v22;
  v87 = type metadata accessor for Electionspb_VoteInfo(0);
  v24 = *(*(v87 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v87);
  v83 = v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  swift_beginAccess();
  v27 = *(a1 + 24);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = *(a1 + 24);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 40);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    v32 = *(a1 + 40);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v33 = *(a1 + 56);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = *(a1 + 56);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v36 = *(a1 + 72);
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v38 = *(a1 + 72);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v39 = *(a1 + 88);
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v41 = *(a1 + 88);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v42 = *(a1 + 104);
  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {
    v44 = *(a1 + 104);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 112) + 16))
  {
    goto LABEL_34;
  }

  v45 = *(a1 + 112);

  sub_1B964C6E0();
  if (v4)
  {
  }

LABEL_34:
  swift_beginAccess();
  v46 = *(a1 + 128);
  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = *(a1 + 120) & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {
    v48 = *(a1 + 128);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 136) || (result = sub_1B964C6C0(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 140) == 0.0 || (result = sub_1B964C6B0(), !v4))
    {
      v77[0] = a4;
      swift_beginAccess();
      if (*(*(a1 + 144) + 16))
      {
        type metadata accessor for Electionspb_Candidate(0);
        sub_1B8CD1B98(&qword_1EBABB198, type metadata accessor for Electionspb_Candidate);

        v50 = v77[0];
        sub_1B964C730();
        if (v4)
        {
        }
      }

      else
      {
        v50 = v77[0];
      }

      swift_beginAccess();
      if (*(a1 + 152) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 153) != 1 || (result = sub_1B964C670(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 154) != 1 || (result = sub_1B964C670(), !v4))
          {
            swift_beginAccess();
            if (*(a1 + 155) != 1 || (result = sub_1B964C670(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 156) != 1 || (result = sub_1B964C670(), !v4))
              {
                v51 = v50;
                swift_beginAccess();
                v52 = *(a1 + 168);
                v53 = HIBYTE(v52) & 0xF;
                if ((v52 & 0x2000000000000000) == 0)
                {
                  v53 = *(a1 + 160) & 0xFFFFFFFFFFFFLL;
                }

                if (v53)
                {
                  v54 = *(a1 + 168);

                  sub_1B964C700();
                  if (v4)
                  {
                  }
                }

                swift_beginAccess();
                if (*(a1 + 176) == 1)
                {
                  result = sub_1B964C670();
                  if (v4)
                  {
                    return result;
                  }

                  v77[0] = v51;
                }

                else
                {
                  v77[0] = v51;
                }

                swift_beginAccess();
                sub_1B8D92024();
                v55 = v87;
                if (__swift_getEnumTagSinglePayload(v23, 1, v87) == 1)
                {
                  sub_1B8D9207C(v23, &qword_1EBABB160, &qword_1B9656D10);
                }

                else
                {
                  sub_1B8E1632C();
                  sub_1B8CD1B98(&qword_1EBABB180, type metadata accessor for Electionspb_VoteInfo);
                  sub_1B964C740();
                  if (v4)
                  {
                    return sub_1B8E163DC();
                  }

                  sub_1B8E163DC();
                }

                swift_beginAccess();
                v56 = v84;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v56, 1, v55) == 1)
                {
                  sub_1B8D9207C(v56, &qword_1EBABB160, &qword_1B9656D10);
                }

                else
                {
                  sub_1B8E1632C();
                  sub_1B8CD1B98(&qword_1EBABB180, type metadata accessor for Electionspb_VoteInfo);
                  sub_1B964C740();
                  if (v4)
                  {
                    return sub_1B8E163DC();
                  }

                  sub_1B8E163DC();
                }

                v57 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
                swift_beginAccess();
                if (*(*(a1 + v57) + 16))
                {
                  sub_1B964C280();
                  sub_1B964C230();

                  sub_1B964C5F0();
                  if (v4)
                  {
                  }
                }

                v58 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status);
                swift_beginAccess();
                if (!*v58 || (v59 = *(v58 + 8), v85 = *v58, v86 = v59, sub_1B8E1F75C(), result = sub_1B964C680(), !v4))
                {
                  swift_beginAccess();
                  v60 = v78;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v60, 1, v82) == 1)
                  {
                    sub_1B8D9207C(v60, &qword_1EBABB168, &qword_1B9656D18);
                  }

                  else
                  {
                    sub_1B8E1632C();
                    sub_1B8CD1B98(&qword_1EBABB2E0, type metadata accessor for Electionspb_RunOffInfo);
                    sub_1B964C740();
                    if (v4)
                    {
                      return sub_1B8E163DC();
                    }

                    sub_1B8E163DC();
                  }

                  swift_beginAccess();
                  v61 = v81;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v61, 1, v80) == 1)
                  {
                    sub_1B8D9207C(v81, &qword_1EBABB170, &unk_1B9656D20);
                    goto LABEL_91;
                  }

                  sub_1B8E1632C();
                  sub_1B8CD1B98(&qword_1EBABB2F8, type metadata accessor for Electionspb_PollTiming);
                  sub_1B964C740();
                  if (!v4)
                  {
                    sub_1B8E163DC();
LABEL_91:
                    v62 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
                    swift_beginAccess();
                    if (*v62 == 0.0 || (result = sub_1B964C6B0(), !v4))
                    {
                      v63 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
                      swift_beginAccess();
                      v64 = *v63;
                      v65 = v63[1];
                      v66 = HIBYTE(v65) & 0xF;
                      if ((v65 & 0x2000000000000000) == 0)
                      {
                        v66 = v64 & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v66 || (, sub_1B964C700(), result = , !v5))
                      {
                        v67 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
                        swift_beginAccess();
                        v68 = *v67;
                        v69 = v67[1];
                        v70 = HIBYTE(v69) & 0xF;
                        if ((v69 & 0x2000000000000000) == 0)
                        {
                          v70 = v68 & 0xFFFFFFFFFFFFLL;
                        }

                        if (!v70 || (, sub_1B964C700(), result = , !v5))
                        {
                          v71 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
                          swift_beginAccess();
                          v72 = *v71;
                          v73 = v71[1];
                          v74 = HIBYTE(v73) & 0xF;
                          if ((v73 & 0x2000000000000000) == 0)
                          {
                            v74 = v72 & 0xFFFFFFFFFFFFLL;
                          }

                          if (!v74 || (, sub_1B964C700(), result = , !v5))
                          {
                            v75 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
                            swift_beginAccess();
                            if (!*(a1 + v75) || (result = sub_1B964C6C0(), !v5))
                            {
                              v76 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults;
                              result = swift_beginAccess();
                              if (*(*(a1 + v76) + 16))
                              {
                                type metadata accessor for Electionspb_PoliticalParty(0);
                                sub_1B8CD1B98(&qword_1EBABB1B8, type metadata accessor for Electionspb_PoliticalParty);

                                sub_1B964C730();
                              }
                            }
                          }
                        }
                      }
                    }

                    return result;
                  }

                  return sub_1B8E163DC();
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

uint64_t static Electionspb_ElectionRace.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_11_7();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B8E18A30(v3, v4);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v7, v8);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8E18A30(uint64_t a1, uint64_t a2)
{
  v187 = type metadata accessor for Electionspb_PollTiming(0);
  v4 = OUTLINED_FUNCTION_59_1(v187);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v183 = (v8 - v7);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB3B0, &qword_1B9658010);
  OUTLINED_FUNCTION_59_1(v184);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v190 = &v180 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB170, &unk_1B9656D20);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v185 = v17;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v18);
  v186 = &v180 - v19;
  v191 = type metadata accessor for Electionspb_RunOffInfo(0);
  v20 = OUTLINED_FUNCTION_59_1(v191);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v182 = v24 - v23;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB3B8, &qword_1B9658018);
  OUTLINED_FUNCTION_59_1(v188);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  v193 = &v180 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB168, &qword_1B9656D18);
  v30 = OUTLINED_FUNCTION_183(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44_0();
  v189 = v33;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v34);
  v192 = &v180 - v35;
  v198 = type metadata accessor for Electionspb_VoteInfo(0);
  v36 = OUTLINED_FUNCTION_59_1(v198);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44_0();
  v194 = v39;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v180 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB188, &unk_1B9656D30);
  v44 = OUTLINED_FUNCTION_59_1(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44_0();
  v197 = v47;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v180 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  v52 = OUTLINED_FUNCTION_183(v51);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_44_0();
  v195 = v55;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v56);
  v196 = &v180 - v57;
  OUTLINED_FUNCTION_230();
  v59 = MEMORY[0x1EEE9AC00](v58);
  v61 = (&v180 - v60);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v180 - v62;
  OUTLINED_FUNCTION_521();
  v64 = *(a1 + 16);
  v65 = *(a1 + 24);
  OUTLINED_FUNCTION_521();
  v66 = v64 == *(a2 + 16) && v65 == *(a2 + 24);
  if (!v66 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521();
  v67 = *(a1 + 32);
  v68 = *(a1 + 40);
  OUTLINED_FUNCTION_521();
  v69 = v67 == *(a2 + 32) && v68 == *(a2 + 40);
  if (!v69 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521();
  v70 = *(a1 + 48);
  v71 = *(a1 + 56);
  OUTLINED_FUNCTION_521();
  v72 = v70 == *(a2 + 48) && v71 == *(a2 + 56);
  if (!v72 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521();
  v73 = *(a1 + 64);
  v74 = *(a1 + 72);
  OUTLINED_FUNCTION_521();
  v75 = v73 == *(a2 + 64) && v74 == *(a2 + 72);
  if (!v75 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521();
  v76 = *(a1 + 80);
  v77 = *(a1 + 88);
  OUTLINED_FUNCTION_521();
  v78 = v76 == *(a2 + 80) && v77 == *(a2 + 88);
  if (!v78 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521();
  v79 = *(a1 + 96);
  v80 = *(a1 + 104);
  OUTLINED_FUNCTION_521();
  v81 = v79 == *(a2 + 96) && v80 == *(a2 + 104);
  if (!v81 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521();
  v82 = *(a1 + 112);
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v82, *(a2 + 112)) & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521();
  v83 = *(a1 + 120);
  v84 = *(a1 + 128);
  OUTLINED_FUNCTION_521();
  v85 = v83 == *(a2 + 120) && v84 == *(a2 + 128);
  if (!v85 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521();
  v86 = *(a1 + 136);
  OUTLINED_FUNCTION_521();
  if (v86 != *(a2 + 136))
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521();
  v87 = *(a1 + 140);
  OUTLINED_FUNCTION_521();
  if (v87 != *(a2 + 140))
  {
    goto LABEL_91;
  }

  OUTLINED_FUNCTION_521();
  v88 = *(a1 + 144);
  OUTLINED_FUNCTION_521();
  v89 = *(a2 + 144);

  sub_1B8D7BBCC();
  LODWORD(v181) = v90;

  if ((v181 & 1) == 0)
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521();
  v91 = *(a1 + 152);
  OUTLINED_FUNCTION_521();
  if (v91 != *(a2 + 152))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521();
  v92 = *(a1 + 153);
  OUTLINED_FUNCTION_521();
  if (v92 != *(a2 + 153))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521();
  v93 = *(a1 + 154);
  OUTLINED_FUNCTION_521();
  if (v93 != *(a2 + 154))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521();
  v94 = *(a1 + 155);
  OUTLINED_FUNCTION_521();
  if (v94 != *(a2 + 155))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521();
  v95 = *(a1 + 156);
  OUTLINED_FUNCTION_521();
  if (v95 != *(a2 + 156))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521();
  v96 = *(a1 + 160);
  v97 = *(a1 + 168);
  OUTLINED_FUNCTION_521();
  v98 = v96 == *(a2 + 160) && v97 == *(a2 + 168);
  if (!v98 && (OUTLINED_FUNCTION_69_1() & 1) == 0)
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521();
  v99 = *(a1 + 176);
  OUTLINED_FUNCTION_521();
  if (v99 != *(a2 + 176))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v100 = *(v43 + 48);
  sub_1B8D92024();
  v181 = v100;
  sub_1B8D92024();
  v101 = v198;
  OUTLINED_FUNCTION_178(v50, 1, v198);
  if (v66)
  {
    sub_1B8D9207C(v63, &qword_1EBABB160, &qword_1B9656D10);
    OUTLINED_FUNCTION_178(&v50[v181], 1, v101);
    if (v66)
    {
      sub_1B8D9207C(v50, &qword_1EBABB160, &qword_1B9656D10);
      goto LABEL_56;
    }

    goto LABEL_71;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v50[v181], 1, v101);
  if (v119)
  {
    sub_1B8D9207C(v63, &qword_1EBABB160, &qword_1B9656D10);
    OUTLINED_FUNCTION_2_9();
    sub_1B8E163DC();
LABEL_71:
    v120 = &qword_1EBABB188;
    v121 = &unk_1B9656D30;
    v122 = v50;
LABEL_89:
    sub_1B8D9207C(v122, v120, v121);
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_1_12();
  sub_1B8E1632C();
  if (*v61 != *v42 || v61[1] != v42[1] || v61[2] != v42[2])
  {
    OUTLINED_FUNCTION_70_2();
    sub_1B8E163DC();
    sub_1B8D9207C(v63, &qword_1EBABB160, &qword_1B9656D10);
    sub_1B8E163DC();
    v122 = OUTLINED_FUNCTION_690();
    v121 = &qword_1B9656D10;
    goto LABEL_89;
  }

  v123 = *(v198 + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v124, v125);
  LODWORD(v181) = sub_1B964C850();
  sub_1B8E163DC();
  sub_1B8D9207C(v63, &qword_1EBABB160, &qword_1B9656D10);
  sub_1B8E163DC();
  v126 = OUTLINED_FUNCTION_690();
  sub_1B8D9207C(v126, v127, &qword_1B9656D10);
  if ((v181 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_56:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521();
  v102 = *(v43 + 48);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v103 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v103, v104, v198);
  if (v66)
  {
    sub_1B8D9207C(v196, &qword_1EBABB160, &qword_1B9656D10);
    OUTLINED_FUNCTION_178(v197 + v102, 1, v198);
    if (v66)
    {
      sub_1B8D9207C(v197, &qword_1EBABB160, &qword_1B9656D10);
      goto LABEL_61;
    }

    goto LABEL_81;
  }

  v128 = v197;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v128 + v102, 1, v198);
  if (v129)
  {
    sub_1B8D9207C(v196, &qword_1EBABB160, &qword_1B9656D10);
    OUTLINED_FUNCTION_2_9();
    sub_1B8E163DC();
LABEL_81:
    v120 = &qword_1EBABB188;
    v121 = &unk_1B9656D30;
    v122 = v197;
    goto LABEL_89;
  }

  OUTLINED_FUNCTION_1_12();
  v130 = v194;
  sub_1B8E1632C();
  if (*v195 != *v130 || v195[1] != v194[1] || v195[2] != v194[2])
  {
    OUTLINED_FUNCTION_70_2();
    sub_1B8E163DC();
    v135 = &qword_1EBABB160;
    v136 = &qword_1B9656D10;
    sub_1B8D9207C(v196, &qword_1EBABB160, &qword_1B9656D10);
    sub_1B8E163DC();
    v122 = v197;
LABEL_88:
    v120 = v135;
    v121 = v136;
    goto LABEL_89;
  }

  v131 = *(v198 + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v132, v133);
  v134 = sub_1B964C850();
  sub_1B8E163DC();
  OUTLINED_FUNCTION_189(v196);
  sub_1B8E163DC();
  OUTLINED_FUNCTION_189(v197);
  if ((v134 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_61:
  v105 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
  OUTLINED_FUNCTION_521();
  v106 = *(a1 + v105);
  v107 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__electionFlags;
  OUTLINED_FUNCTION_521();
  v108 = *(a2 + v107);

  sub_1B8DB5418();
  v110 = v109;

  if ((v110 & 1) == 0)
  {
    goto LABEL_90;
  }

  v111 = a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  OUTLINED_FUNCTION_521();
  v112 = *v111;
  v113 = *(v111 + 8);
  v114 = a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__status;
  OUTLINED_FUNCTION_521();
  v115 = *(v114 + 8);
  if (!sub_1B8D92198(v112, v113, *v114))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521();
  v116 = *(v188 + 48);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v117 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v117, v118, v191);
  if (v66)
  {
    sub_1B8D9207C(v192, &qword_1EBABB168, &qword_1B9656D18);
    OUTLINED_FUNCTION_178(v193 + v116, 1, v191);
    if (v66)
    {
      sub_1B8D9207C(v193, &qword_1EBABB168, &qword_1B9656D18);
      goto LABEL_98;
    }

LABEL_96:
    v120 = &qword_1EBABB3B8;
    v121 = &qword_1B9658018;
    v122 = v193;
    goto LABEL_89;
  }

  v139 = v193;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v139 + v116, 1, v191);
  if (v140)
  {
    sub_1B8D9207C(v192, &qword_1EBABB168, &qword_1B9656D18);
    sub_1B8E163DC();
    goto LABEL_96;
  }

  v141 = v193;
  sub_1B8E1632C();
  v142 = static Electionspb_RunOffInfo.== infix(_:_:)();
  sub_1B8E163DC();
  OUTLINED_FUNCTION_189(v192);
  sub_1B8E163DC();
  OUTLINED_FUNCTION_189(v141);
  if ((v142 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_98:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521();
  v143 = *(v184 + 48);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v144 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v144, v145, v187);
  if (v66)
  {
    sub_1B8D9207C(v186, &qword_1EBABB170, &unk_1B9656D20);
    OUTLINED_FUNCTION_178(v190 + v143, 1, v187);
    if (v66)
    {
      sub_1B8D9207C(v190, &qword_1EBABB170, &unk_1B9656D20);
LABEL_118:
      v155 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
      OUTLINED_FUNCTION_521();
      v156 = *v155;
      v157 = (a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__eevp);
      OUTLINED_FUNCTION_521();
      if (v156 == *v157)
      {
        v158 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
        OUTLINED_FUNCTION_521();
        v159 = *v158;
        v160 = v158[1];
        v161 = (a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__district);
        OUTLINED_FUNCTION_521();
        v162 = v159 == *v161 && v160 == v161[1];
        if (v162 || (OUTLINED_FUNCTION_120_0() & 1) != 0)
        {
          v163 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
          OUTLINED_FUNCTION_521();
          v164 = *v163;
          v165 = v163[1];
          v166 = (a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__imageURL);
          OUTLINED_FUNCTION_521();
          v167 = v164 == *v166 && v165 == v166[1];
          if (v167 || (OUTLINED_FUNCTION_120_0() & 1) != 0)
          {
            v168 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
            OUTLINED_FUNCTION_521();
            v169 = *v168;
            v170 = v168[1];
            v171 = (a2 + OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__newsURL);
            OUTLINED_FUNCTION_521();
            v172 = v169 == *v171 && v170 == v171[1];
            if (v172 || (OUTLINED_FUNCTION_120_0() & 1) != 0)
            {
              v173 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
              OUTLINED_FUNCTION_521();
              LODWORD(v173) = *(a1 + v173);
              v174 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__numberOfSeats;
              OUTLINED_FUNCTION_521();
              if (v173 == *(a2 + v174))
              {
                v175 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults;
                OUTLINED_FUNCTION_521();
                v176 = *(a1 + v175);
                v177 = OBJC_IVAR____TtCV10PegasusAPI24Electionspb_ElectionRaceP33_B2F0985693E9B29D68FCE9DFF8E3CFE113_StorageClass__partyResults;
                OUTLINED_FUNCTION_521();
                v178 = *(a2 + v177);

                OUTLINED_FUNCTION_690();
                sub_1B8D79C8C();
                v137 = v179;

                return v137 & 1;
              }
            }
          }
        }
      }

      goto LABEL_90;
    }

    goto LABEL_106;
  }

  v146 = v190;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v146 + v143, 1, v187);
  if (v147)
  {
    sub_1B8D9207C(v186, &qword_1EBABB170, &unk_1B9656D20);
    sub_1B8E163DC();
LABEL_106:
    v120 = &qword_1EBABB3B0;
    v121 = &qword_1B9658010;
    v122 = v190;
    goto LABEL_89;
  }

  OUTLINED_FUNCTION_8_9();
  v148 = v183;
  sub_1B8E1632C();
  v149 = *v185 == *v148 && v185[1] == v148[1];
  if (!v149 && (sub_1B964C9F0() & 1) == 0 || (v185[2] == v183[2] ? (v150 = v185[3] == v183[3]) : (v150 = 0), !v150 && (sub_1B964C9F0() & 1) == 0))
  {
    sub_1B8E163DC();
    v135 = &qword_1EBABB170;
    v136 = &unk_1B9656D20;
    sub_1B8D9207C(v186, &qword_1EBABB170, &unk_1B9656D20);
    sub_1B8E163DC();
    v122 = v190;
    goto LABEL_88;
  }

  v151 = *(v187 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v152, v153);
  v154 = sub_1B964C850();
  sub_1B8E163DC();
  OUTLINED_FUNCTION_189(v186);
  sub_1B8E163DC();
  OUTLINED_FUNCTION_189(v190);
  if (v154)
  {
    goto LABEL_118;
  }

LABEL_90:

LABEL_91:
  v137 = 0;
  return v137 & 1;
}

uint64_t sub_1B8E19D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB3A0, type metadata accessor for Electionspb_ElectionRace);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E19E08(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB1B0, type metadata accessor for Electionspb_ElectionRace);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E19E78()
{
  sub_1B8CD1B98(&qword_1EBABB1B0, type metadata accessor for Electionspb_ElectionRace);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E19F10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB0B8);
  __swift_project_value_buffer(v0, qword_1EBABB0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B9656D00;
  v4 = v36 + v3;
  v5 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v5 = "siribaseId";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "vote_info";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "running_mate";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "politicalParty";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "isWinner";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "delegateCount";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "voteCount";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "delegateCountTotal";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "statesWon";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "incumbent";
  *(v28 + 1) = 9;
  v28[16] = 2;
  v8();
  v29 = (v4 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "image_url";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "political_party_name";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v8();
  v33 = (v4 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "is_attention_candidate";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Electionspb_Candidate.decodeMessage<A>(decoder:)()
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
      case 4:
      case 5:
      case 12:
      case 13:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8E1A4EC();
        break;
      case 6:
      case 11:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E1A4EC()
{
  v0 = *(type metadata accessor for Electionspb_Candidate(0) + 72);
  type metadata accessor for Electionspb_VoteInfo(0);
  sub_1B8CD1B98(&qword_1EBABB180, type metadata accessor for Electionspb_VoteInfo);
  return sub_1B964C580();
}

uint64_t Electionspb_Candidate.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for Electionspb_VoteInfo(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v12 = *v0;
  v13 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v14 || (result = sub_1B964C700(), !v1))
  {
    v16 = v0[2];
    v17 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v18 || (result = sub_1B964C700(), !v1))
    {
      v38 = type metadata accessor for Electionspb_Candidate(0);
      v19 = *(v38 + 72);
      sub_1B8D92024();
      v20 = OUTLINED_FUNCTION_355();
      if (__swift_getEnumTagSinglePayload(v20, v21, v8) == 1)
      {
        sub_1B8D9207C(v7, &qword_1EBABB160, &qword_1B9656D10);
      }

      else
      {
        sub_1B8E1632C();
        OUTLINED_FUNCTION_71_1();
        sub_1B8CD1B98(v22, v23);
        sub_1B964C740();
        result = sub_1B8E163DC();
        if (v1)
        {
          return result;
        }
      }

      v24 = v0[4];
      v25 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v26 || (result = sub_1B964C700(), !v1))
      {
        v27 = v0[6];
        v28 = v0[7];
        OUTLINED_FUNCTION_1();
        if (!v29 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
        {
          if (*(v0 + 64) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            if (!*(v0 + 17) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
            {
              if (!*(v0 + 18) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
              {
                if (!*(v0 + 19) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
                {
                  if (!*(v0[10] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
                  {
                    if (*(v0 + 88) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
                    {
                      v30 = v0[12];
                      v31 = v0[13];
                      OUTLINED_FUNCTION_1();
                      if (!v32 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
                      {
                        v33 = v0[14];
                        v34 = v0[15];
                        OUTLINED_FUNCTION_1();
                        if (!v35 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
                        {
                          if (*(v0 + 128) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
                          {
                            v36 = *(v38 + 68);
                            return OUTLINED_FUNCTION_8_1();
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

void static Electionspb_Candidate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Electionspb_VoteInfo(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_137();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB188, &unk_1B9656D30);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_79();
  v19 = *v1;
  v20 = v1[1];
  OUTLINED_FUNCTION_428();
  v23 = v23 && v21 == v22;
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  v24 = v1[2] == *(v0 + 16) && v1[3] == *(v0 + 24);
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  v41 = type metadata accessor for Electionspb_Candidate(0);
  v25 = *(v41 + 72);
  v26 = *(v15 + 48);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_178(v2, 1, v4);
  if (v23)
  {
    OUTLINED_FUNCTION_178(v2 + v26, 1, v4);
    if (v23)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

  OUTLINED_FUNCTION_690();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2 + v26, 1, v4);
  if (v34)
  {
    OUTLINED_FUNCTION_2_9();
    sub_1B8E163DC();
LABEL_46:
    v35 = &qword_1EBABB188;
    v36 = &unk_1B9656D30;
LABEL_54:
    sub_1B8D9207C(v2, v35, v36);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_1_12();
  sub_1B8E1632C();
  if (*v3 != *v10 || v3[1] != v10[1] || v3[2] != v10[2])
  {
    OUTLINED_FUNCTION_2_9();
    sub_1B8E163DC();
    goto LABEL_53;
  }

  v37 = *(v4 + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v38, v39);
  v40 = sub_1B964C850();
  OUTLINED_FUNCTION_2_9();
  sub_1B8E163DC();
  if ((v40 & 1) == 0)
  {
LABEL_53:
    OUTLINED_FUNCTION_2_9();
    sub_1B8E163DC();
    v35 = &qword_1EBABB160;
    v36 = &qword_1B9656D10;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_2_9();
  sub_1B8E163DC();
LABEL_15:
  sub_1B8D9207C(v2, &qword_1EBABB160, &qword_1B9656D10);
  v27 = v1[4] == *(v0 + 32) && v1[5] == *(v0 + 40);
  if (v27 || (sub_1B964C9F0() & 1) != 0)
  {
    v28 = v1[6] == *(v0 + 48) && v1[7] == *(v0 + 56);
    if (v28 || (sub_1B964C9F0()) && *(v1 + 64) == *(v0 + 64) && *(v1 + 17) == *(v0 + 68) && *(v1 + 18) == *(v0 + 72) && *(v1 + 19) == *(v0 + 76) && (sub_1B8D6123C(v1[10], *(v0 + 80)) & 1) != 0 && *(v1 + 88) == *(v0 + 88))
    {
      v29 = v1[12] == *(v0 + 96) && v1[13] == *(v0 + 104);
      if (v29 || (sub_1B964C9F0() & 1) != 0)
      {
        v30 = v1[14] == *(v0 + 112) && v1[15] == *(v0 + 120);
        if (v30 || (sub_1B964C9F0()) && *(v1 + 128) == *(v0 + 128))
        {
          v31 = *(v41 + 68);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_14();
          sub_1B8CD1B98(v32, v33);
          sub_1B964C850();
        }
      }
    }
  }

LABEL_55:
  OUTLINED_FUNCTION_283();
}

uint64_t (*sub_1B8E1ADC8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 68);
  return result;
}

uint64_t sub_1B8E1AE1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB398, type metadata accessor for Electionspb_Candidate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1AE9C(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB198, type metadata accessor for Electionspb_Candidate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1AF0C()
{
  sub_1B8CD1B98(&qword_1EBABB198, type metadata accessor for Electionspb_Candidate);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E1AFA4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB0D0);
  __swift_project_value_buffer(v0, qword_1EBABB0D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siribaseId";
  *(v6 + 8) = 10;
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
  *v12 = "candidateInfo";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "hasRaceToday";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "congress_info";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Electionspb_PoliticalParty.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8E1B300();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B8E1B3A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E1B300()
{
  type metadata accessor for Electionspb_Candidate(0);
  sub_1B8CD1B98(&qword_1EBABB198, type metadata accessor for Electionspb_Candidate);
  return sub_1B964C570();
}

uint64_t sub_1B8E1B3A0()
{
  v0 = *(type metadata accessor for Electionspb_PoliticalParty(0) + 36);
  type metadata accessor for Electionspb_CongressInfo(0);
  sub_1B8CD1B98(&qword_1EBABB1A0, type metadata accessor for Electionspb_CongressInfo);
  return sub_1B964C580();
}

uint64_t Electionspb_PoliticalParty.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9250, &qword_1B964DA38);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Electionspb_CongressInfo(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = *v0;
  v14 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v15 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), (v2 = v1) == 0))
  {
    v17 = v0[2];
    v18 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v19 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), (v2 = v1) == 0))
    {
      if (*(v0[4] + 16))
      {
        v24 = v9;
        type metadata accessor for Electionspb_Candidate(0);
        sub_1B8CD1B98(&qword_1EBABB198, type metadata accessor for Electionspb_Candidate);
        OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_687();
        result = sub_1B964C730();
        v2 = v1;
        if (v1)
        {
          return result;
        }

        v9 = v24;
      }

      if (*(v0 + 40) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v2 = v1) == 0))
      {
        v20 = type metadata accessor for Electionspb_PoliticalParty(0);
        v21 = *(v20 + 36);
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
        {
          sub_1B8D9207C(v8, &qword_1EBAB9250, &qword_1B964DA38);
        }

        else
        {
          v24 = v20;
          sub_1B8E1632C();
          sub_1B8CD1B98(&qword_1EBABB1A0, type metadata accessor for Electionspb_CongressInfo);
          sub_1B964C740();
          result = sub_1B8E163DC();
          if (v2)
          {
            return result;
          }

          v20 = v24;
        }

        v22 = *(v20 + 32);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

void static Electionspb_PoliticalParty.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  v4 = type metadata accessor for Electionspb_CongressInfo(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9250, &qword_1B964DA38);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_137();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9258, &unk_1B964DA40);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1;
  v20 = v1[1];
  OUTLINED_FUNCTION_428();
  v23 = v23 && v21 == v22;
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_84_1();
  v26 = v23 && v24 == v25;
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_22;
  }

  v27 = v1[4];
  v28 = *(v0 + 32);
  sub_1B8D7BBCC();
  if ((v29 & 1) == 0 || *(v1 + 40) != *(v0 + 40))
  {
    goto LABEL_22;
  }

  v37 = type metadata accessor for Electionspb_PoliticalParty(0);
  v30 = *(v37 + 36);
  v31 = *(v15 + 48);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_75(v2);
  if (v23)
  {
    OUTLINED_FUNCTION_75(v2 + v31);
    if (v23)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9250, &qword_1B964DA38);
LABEL_24:
      v34 = *(v37 + 32);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_14();
      sub_1B8CD1B98(v35, v36);
      OUTLINED_FUNCTION_634();
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v2 + v31);
  if (v32)
  {
    sub_1B8E163DC();
LABEL_21:
    sub_1B8D9207C(v2, &qword_1EBAB9258, &unk_1B964DA40);
    goto LABEL_22;
  }

  sub_1B8E1632C();
  v33 = static Electionspb_CongressInfo.== infix(_:_:)(v3, v10);
  OUTLINED_FUNCTION_236();
  sub_1B8E163DC();
  sub_1B8E163DC();
  sub_1B8D9207C(v2, &qword_1EBAB9250, &qword_1B964DA38);
  if (v33)
  {
    goto LABEL_24;
  }

LABEL_22:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E1BA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB390, type metadata accessor for Electionspb_PoliticalParty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1BAF4(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB1B8, type metadata accessor for Electionspb_PoliticalParty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1BB64()
{
  sub_1B8CD1B98(&qword_1EBABB1B8, type metadata accessor for Electionspb_PoliticalParty);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E1BBFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB0E8);
  __swift_project_value_buffer(v0, qword_1EBABB0E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "electionRaces";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "politicalParties";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "snippetType";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dialog_id";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "result_use_case";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Electionspb_ElectionsResponse.decodeMessage<A>(decoder:)()
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
        sub_1B8E1BF64();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8E1C004();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8E1C0A4();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B8E1C10C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E1BF64()
{
  type metadata accessor for Electionspb_ElectionRace(0);
  sub_1B8CD1B98(&qword_1EBABB1B0, type metadata accessor for Electionspb_ElectionRace);
  return sub_1B964C570();
}

uint64_t sub_1B8E1C004()
{
  type metadata accessor for Electionspb_PoliticalParty(0);
  sub_1B8CD1B98(&qword_1EBABB1B8, type metadata accessor for Electionspb_PoliticalParty);
  return sub_1B964C570();
}

uint64_t Electionspb_ElectionsResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Electionspb_ElectionRace(0), sub_1B8CD1B98(&qword_1EBABB1B0, type metadata accessor for Electionspb_ElectionRace), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Electionspb_PoliticalParty(0), sub_1B8CD1B98(&qword_1EBABB1B8, type metadata accessor for Electionspb_PoliticalParty), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
      OUTLINED_FUNCTION_1();
      if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
      {
        if (!*(v2 + 32) || (v8 = *(v2 + 32), v10 = *(v2 + 40), sub_1B8E1E03C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
        {
          if (!*(v2 + 48) || (v9 = *(v2 + 48), v11 = *(v2 + 56), sub_1B8E1E090(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
          {
            v7 = *(type metadata accessor for Electionspb_ElectionsResponse(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Electionspb_ElectionsResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  sub_1B8D79C38();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 8);
  v8 = *(v0 + 8);
  sub_1B8D79C8C();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v12 = v12 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v0 + 40);
  if (!sub_1B8D92198(*(v1 + 32), *(v1 + 40), *(v0 + 32)))
  {
    return 0;
  }

  v14 = *(v0 + 56);
  if (!sub_1B8D92198(*(v1 + 48), *(v1 + 56), *(v0 + 48)))
  {
    return 0;
  }

  v15 = *(type metadata accessor for Electionspb_ElectionsResponse(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v16, v17);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E1C4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB388, type metadata accessor for Electionspb_ElectionsResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1C538(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB2A8, type metadata accessor for Electionspb_ElectionsResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1C5A8()
{
  sub_1B8CD1B98(&qword_1EBABB2A8, type metadata accessor for Electionspb_ElectionsResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E1C640()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB100);
  __swift_project_value_buffer(v0, qword_1EBABB100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "current";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "won";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "net_change_seats";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "hold_over_seats";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "in_control";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "had_control";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Electionspb_CongressInfo.decodeMessage<A>(decoder:)()
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
        sub_1B964C4A0();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Electionspb_CongressInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
      {
        if (!*(v2 + 12) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
        {
          if (*(v2 + 16) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            if (*(v2 + 17) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
            {
              v4 = *(type metadata accessor for Electionspb_CongressInfo(0) + 40);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Electionspb_CongressInfo.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12) || *(v3 + 16) != *(v2 + 16) || *(v3 + 17) != *(v2 + 17))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Electionspb_CongressInfo(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E1CC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB380, type metadata accessor for Electionspb_CongressInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1CCD0(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB1A0, type metadata accessor for Electionspb_CongressInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1CD40()
{
  sub_1B8CD1B98(&qword_1EBABB1A0, type metadata accessor for Electionspb_CongressInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E1CDD8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB118);
  __swift_project_value_buffer(v0, qword_1EBABB118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "vote_count";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "delegate_count";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "electoral_vote";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Electionspb_VoteInfo.decodeMessage<A>(decoder:)()
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

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }
  }

  return result;
}

uint64_t Electionspb_VoteInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
      {
        v4 = *(type metadata accessor for Electionspb_VoteInfo(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Electionspb_VoteInfo.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Electionspb_VoteInfo(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E1D254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB378, type metadata accessor for Electionspb_VoteInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1D2D4(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB180, type metadata accessor for Electionspb_VoteInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1D344()
{
  sub_1B8CD1B98(&qword_1EBABB180, type metadata accessor for Electionspb_VoteInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E1D3DC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB130);
  __swift_project_value_buffer(v0, qword_1EBABB130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "race_date";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "race_id";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "candidates_info";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Electionspb_RunOffInfo.decodeMessage<A>(decoder:)()
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

uint64_t Electionspb_RunOffInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
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
      if (!*(v2[4] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
      {
        v10 = *(type metadata accessor for Electionspb_RunOffInfo(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Electionspb_RunOffInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v4 = *(v1 + 8);
  OUTLINED_FUNCTION_428();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v10 = v7 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v1 + 32), *(v0 + 32)) & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Electionspb_RunOffInfo(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E1D894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB370, type metadata accessor for Electionspb_RunOffInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1D914(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB2E0, type metadata accessor for Electionspb_RunOffInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1D984()
{
  sub_1B8CD1B98(&qword_1EBABB2E0, type metadata accessor for Electionspb_RunOffInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E1DA1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB148);
  __swift_project_value_buffer(v0, qword_1EBABB148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "start_datetime";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "close_datetime";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Electionspb_PollTiming.decodeMessage<A>(decoder:)()
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

uint64_t Electionspb_PollTiming.traverse<A>(visitor:)()
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
      v10 = *(type metadata accessor for Electionspb_PollTiming(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Electionspb_PollTiming.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v2 = *v1;
  v3 = *(v0 + 8);
  OUTLINED_FUNCTION_428();
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Electionspb_PollTiming(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E1DDEC(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD1B98(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E1DECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB368, type metadata accessor for Electionspb_PollTiming);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1DF4C(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB2F8, type metadata accessor for Electionspb_PollTiming);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1DFBC()
{
  sub_1B8CD1B98(&qword_1EBABB2F8, type metadata accessor for Electionspb_PollTiming);

  return sub_1B964C5D0();
}

unint64_t sub_1B8E1E03C()
{
  result = qword_1EBABB1C0;
  if (!qword_1EBABB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB1C0);
  }

  return result;
}

unint64_t sub_1B8E1E090()
{
  result = qword_1EBABB1C8;
  if (!qword_1EBABB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB1C8);
  }

  return result;
}

unint64_t sub_1B8E1E0E8()
{
  result = qword_1EBABB1F8;
  if (!qword_1EBABB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB1F8);
  }

  return result;
}

unint64_t sub_1B8E1E140()
{
  result = qword_1EBABB200;
  if (!qword_1EBABB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB200);
  }

  return result;
}

unint64_t sub_1B8E1E198()
{
  result = qword_1EBABB208;
  if (!qword_1EBABB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB208);
  }

  return result;
}

unint64_t sub_1B8E1E220()
{
  result = qword_1EBABB220;
  if (!qword_1EBABB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB220);
  }

  return result;
}

unint64_t sub_1B8E1E278()
{
  result = qword_1EBABB228;
  if (!qword_1EBABB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB228);
  }

  return result;
}

unint64_t sub_1B8E1E2D0()
{
  result = qword_1EBABB230;
  if (!qword_1EBABB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB230);
  }

  return result;
}

unint64_t sub_1B8E1E358()
{
  result = qword_1EBABB248;
  if (!qword_1EBABB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB248);
  }

  return result;
}

unint64_t sub_1B8E1E3B0()
{
  result = qword_1EBABB250;
  if (!qword_1EBABB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB250);
  }

  return result;
}

unint64_t sub_1B8E1E408()
{
  result = qword_1EBABB258;
  if (!qword_1EBABB258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB258);
  }

  return result;
}

uint64_t sub_1B8E1EDE4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Electionspb_ElectionRace._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8E1EE90()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B8E1F0DC(319, &qword_1ED9CD7D8, type metadata accessor for Electionspb_VoteInfo, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8E1EFC8()
{
  sub_1B8E1F0DC(319, &qword_1EBABB338, type metadata accessor for Electionspb_Candidate, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B8E1F0DC(319, &qword_1EBABB340, type metadata accessor for Electionspb_CongressInfo, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8E1F0DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B8E1F168()
{
  sub_1B8E1F0DC(319, &qword_1EBABB348, type metadata accessor for Electionspb_ElectionRace, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B8E1F0DC(319, &qword_1EBABB350, type metadata accessor for Electionspb_PoliticalParty, MEMORY[0x1E69E62F8]);
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

uint64_t sub_1B8E1F2A8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8E1F360()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E1F40C()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8E1F4C8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E1F54C()
{
  sub_1B8E1F0DC(319, &qword_1ED9CD7D8, type metadata accessor for Electionspb_VoteInfo, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B8E1F0DC(319, &qword_1ED9CD2B0, type metadata accessor for Electionspb_RunOffInfo, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B8E1F0DC(319, &qword_1ED9CD2C8, type metadata accessor for Electionspb_PollTiming, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1B8E1F75C()
{
  result = qword_1EBABB3A8;
  if (!qword_1EBABB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB3A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Electionspb_ElectionRace(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Electionspb_ElectionRace(0);
  v4 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_7()
{
  result = type metadata accessor for Electionspb_ElectionRace(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  result = type metadata accessor for Electionspb_ElectionRace(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_6()
{
  v1 = *(v0 + *(type metadata accessor for Electionspb_ElectionRace(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_16_8()
{
  v0 = type metadata accessor for Electionspb_ElectionRace._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_4()
{
  v1 = *(v0 + *(type metadata accessor for Electionspb_ElectionRace(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_35_2()
{
  v1 = *(v0 + *(type metadata accessor for Electionspb_ElectionRace(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_59_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_81_1()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_84_1()
{
  result = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_94_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_120_0()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_132_1()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  v3 = v0 + *(v1 + 28);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_133_2()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  v3 = v0 + *(v1 + 28);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_134_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(*(v1 + 72) + *(v1 + 84));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_135_3@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(*(v1 + 72) + *(v1 + 84));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_137_1()
{

  return sub_1B8E1632C();
}

uint64_t OUTLINED_FUNCTION_141_2()
{
  v1 = *(v0 + *(type metadata accessor for Electionspb_ElectionRace(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Geopb_StructuredAddress.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
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
  v1[18] = MEMORY[0x1E69E7CC0];
  v3 = v1 + *(type metadata accessor for Geopb_StructuredAddress(0) + 56);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Geopb_Timezone.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v2 = v1 + *(type metadata accessor for Geopb_Timezone(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Geopb_LatLng.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Geopb_LatLng(v1);
  *v0 = 0;
  v0[1] = 0;
  v3 = v0 + v2[6];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[7];
  sub_1B964C1C0();
  OUTLINED_FUNCTION_35_3();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[8];
  OUTLINED_FUNCTION_35_3();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Geopb_StructuredAddress.administrativeAreaCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Geopb_StructuredAddress.administrativeAreaCode.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Geopb_StructuredAddress.subAdministrativeArea.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Geopb_StructuredAddress.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Geopb_StructuredAddress.locality.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Geopb_StructuredAddress.locality.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Geopb_StructuredAddress.postCode.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Geopb_StructuredAddress.postCode.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Geopb_StructuredAddress.thoroughfare.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_432();
}

uint64_t Geopb_StructuredAddress.thoroughfare.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Geopb_StructuredAddress.subThoroughfare.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_432();
}

uint64_t Geopb_StructuredAddress.subThoroughfare.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Geopb_StructuredAddress.dependentLocality.setter(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t Geopb_StructuredAddress.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Geopb_StructuredAddress(v0) + 56);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Geopb_StructuredAddress.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Geopb_StructuredAddress(v0) + 56);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Geopb_StructuredAddress.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Geopb_StructuredAddress(v0) + 56);
  return OUTLINED_FUNCTION_25();
}

uint64_t Geopb_LatLng.clientSideExtensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v6 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_45_1(*(v6 + 28));
  v7 = sub_1B964C1C0();
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    sub_1B964C1B0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    return (*(v9 + 32))(a1, v1, v7);
  }

  return result;
}

uint64_t sub_1B8E203A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Geopb_LatLng.clientSideExtensions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Geopb_LatLng(v2) + 28);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F20, &qword_1B964D720);
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_35_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t (*Geopb_LatLng.clientSideExtensions.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C1C0();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1(v7);
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v3[5] = __swift_coroFrameAllocStub(v11);
  v12 = *(type metadata accessor for Geopb_LatLng(0) + 28);
  *(v3 + 12) = v12;
  sub_1B8E203A8(v1 + v12, v6);
  OUTLINED_FUNCTION_17_5();
  if (v13)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_17_5();
    if (!v13)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    v14 = *(v9 + 32);
    v15 = OUTLINED_FUNCTION_461();
    v16(v15);
  }

  return sub_1B8E2062C;
}

uint64_t Geopb_LatLng.hasClientSideExtensions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_45_1(*(v5 + 28));
  v6 = sub_1B964C1C0();
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Geopb_LatLng.clearClientSideExtensions()()
{
  v1 = type metadata accessor for Geopb_LatLng(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB8F20, &qword_1B964D720);
  sub_1B964C1C0();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Geopb_LatLng.serverSideExtensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_45_1(*(v7 + 32));
  v8 = sub_1B964C1C0();
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
    return (*(v10 + 32))(a1, v1, v8);
  }

  return result;
}

uint64_t sub_1B8E207EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = sub_1B964C1C0();
  v8 = OUTLINED_FUNCTION_30_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30_8();
  v12 = *(v11 + 16);
  v13 = OUTLINED_FUNCTION_461();
  v14(v13);
  return a5(v5);
}

uint64_t Geopb_LatLng.serverSideExtensions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Geopb_LatLng(v2) + 32);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F20, &qword_1B964D720);
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_35_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t (*Geopb_LatLng.serverSideExtensions.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C1C0();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1(v7);
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v3[5] = __swift_coroFrameAllocStub(v11);
  v12 = *(type metadata accessor for Geopb_LatLng(0) + 32);
  *(v3 + 12) = v12;
  sub_1B8E203A8(v1 + v12, v6);
  OUTLINED_FUNCTION_17_5();
  if (v13)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_17_5();
    if (!v13)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    v14 = *(v9 + 32);
    v15 = OUTLINED_FUNCTION_461();
    v16(v15);
  }

  return sub_1B8E24714;
}

void sub_1B8E20AB0(uint64_t **a1, char a2)
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
    OUTLINED_FUNCTION_43_1();
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_43_1();
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Geopb_LatLng.hasServerSideExtensions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_45_1(*(v5 + 32));
  v6 = sub_1B964C1C0();
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Geopb_LatLng.clearServerSideExtensions()()
{
  v1 = type metadata accessor for Geopb_LatLng(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB8F20, &qword_1B964D720);
  sub_1B964C1C0();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Geopb_LatLng.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Geopb_LatLng(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Geopb_LatLng.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Geopb_LatLng(v0) + 24);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Geopb_LatLng.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Geopb_LatLng(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Geopb_BusinessCard.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Geopb_BusinessCard.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t Geopb_BusinessCard.LocalizedName.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Geopb_BusinessCard.LocalizedName.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Geopb_BusinessCard.LocalizedName.phoneticName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Geopb_BusinessCard.LocalizedName.phoneticName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Geopb_BusinessCard.LocalizedName.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Geopb_BusinessCard.LocalizedName(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Geopb_BusinessCard.LocalizedName.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Geopb_BusinessCard.LocalizedName(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Geopb_BusinessCard.LocalizedName.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Geopb_BusinessCard.LocalizedName(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Geopb_BusinessCard.LocalizedName.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v3 = v1 + *(type metadata accessor for Geopb_BusinessCard.LocalizedName(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Geopb_BusinessCard.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Geopb_BusinessCard(0) + 20);
  type metadata accessor for Geopb_BusinessCard._StorageClass();
  result = swift_initStaticObject();
  *(a1 + v2) = result;
  return result;
}

uint64_t Geopb_Timezone.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Geopb_Timezone.identifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Geopb_Timezone.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Geopb_Timezone(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Geopb_Timezone.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Geopb_Timezone(v0) + 20);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Geopb_Timezone.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Geopb_Timezone(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E21358()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB3C0);
  __swift_project_value_buffer(v0, qword_1EBABB3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B9656CE0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "country";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "countryCode";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "administrativeArea";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "administrativeAreaCode";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "subAdministrativeArea";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "locality";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "postCode";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 10;
  *v20 = "thoroughfare";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 11;
  *v22 = "subThoroughfare";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 17;
  *v24 = "dependentLocality";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Geopb_StructuredAddress.decodeMessage<A>(decoder:)()
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
      case 5:
      case 6:
      case 7:
      case 10:
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 17:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Geopb_StructuredAddress.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_8();
  v4 = *v1;
  v5 = v1[1];
  OUTLINED_FUNCTION_1();
  if (!v6 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
  {
    v8 = v3[2];
    v9 = v3[3];
    OUTLINED_FUNCTION_1();
    if (!v10 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
    {
      v11 = v3[4];
      v12 = v3[5];
      OUTLINED_FUNCTION_1();
      if (!v13 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
      {
        v14 = v3[6];
        v15 = v3[7];
        OUTLINED_FUNCTION_1();
        if (!v16 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
        {
          v17 = v3[8];
          v18 = v3[9];
          OUTLINED_FUNCTION_1();
          if (!v19 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
          {
            v20 = v3[10];
            v21 = v3[11];
            OUTLINED_FUNCTION_1();
            if (!v22 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
            {
              v23 = v3[12];
              v24 = v3[13];
              OUTLINED_FUNCTION_1();
              if (!v25 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
              {
                v26 = v3[14];
                v27 = v3[15];
                OUTLINED_FUNCTION_1();
                if (!v28 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
                {
                  v29 = v3[16];
                  v30 = v3[17];
                  OUTLINED_FUNCTION_1();
                  if (!v31 || (result = OUTLINED_FUNCTION_3(), (v0 = v2) == 0))
                  {
                    if (!*(v3[18] + 16) || (result = sub_1B964C6E0(), !v0))
                    {
                      v32 = v3 + *(type metadata accessor for Geopb_StructuredAddress(0) + 56);
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

uint64_t static Geopb_StructuredAddress.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

  v10 = v3[8] == v2[8] && v3[9] == v2[9];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[10] == v2[10] && v3[11] == v2[11];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = v3[12] == v2[12] && v3[13] == v2[13];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = v3[14] == v2[14] && v3[15] == v2[15];
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v14 = v3[16] == v2[16] && v3[17] == v2[17];
  if (!v14 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(v3[18], v2[18]) & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for Geopb_StructuredAddress(0) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_15();
  sub_1B8CD1BE0(v16, v17);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t (*sub_1B8E21B88(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t sub_1B8E21BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1BE0(&qword_1EBABB538, type metadata accessor for Geopb_StructuredAddress);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E21C5C(uint64_t a1)
{
  v2 = sub_1B8CD1BE0(&qword_1EBABAC68, type metadata accessor for Geopb_StructuredAddress);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E21CCC()
{
  sub_1B8CD1BE0(&qword_1EBABAC68, type metadata accessor for Geopb_StructuredAddress);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E21D6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB3D8);
  __swift_project_value_buffer(v0, qword_1EBABB3D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lat";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lng";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "client_side_extensions";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "server_side_extensions";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Geopb_LatLng.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 3:
        OUTLINED_FUNCTION_288();
        sub_1B8E22084();
        break;
      case 4:
        OUTLINED_FUNCTION_288();
        sub_1B8E22138();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E22084()
{
  v0 = *(type metadata accessor for Geopb_LatLng(0) + 28);
  sub_1B964C1C0();
  sub_1B8CD1BE0(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10]);
  return sub_1B964C580();
}

uint64_t sub_1B8E22138()
{
  v0 = *(type metadata accessor for Geopb_LatLng(0) + 32);
  sub_1B964C1C0();
  sub_1B8CD1BE0(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10]);
  return sub_1B964C580();
}

uint64_t Geopb_LatLng.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  v3 = OUTLINED_FUNCTION_183(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_66();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = sub_1B964C1C0();
  v13 = OUTLINED_FUNCTION_30_1(v12);
  v35 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66();
  v34 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  if (*v1 == 0.0 || (OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
  {
    if (v1[1] == 0.0 || (OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
    {
      v33 = type metadata accessor for Geopb_LatLng(0);
      sub_1B8E203A8(v1 + v33[7], v11);
      if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
      {
        sub_1B8D9207C(v11, &qword_1EBAB8F20, &qword_1B964D720);
      }

      else
      {
        v32 = v1;
        v23 = v35;
        (*(v35 + 32))(v21, v11, v12);
        OUTLINED_FUNCTION_2_10();
        sub_1B8CD1BE0(v24, v25);
        sub_1B964C740();
        if (v0)
        {
          v26 = v23;
          return (*(v26 + 8))(v21, v12);
        }

        (*(v23 + 8))(v21, v12);
        v1 = v32;
      }

      sub_1B8E203A8(v1 + v33[8], v8);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
      v21 = v34;
      if (EnumTagSinglePayload == 1)
      {
        sub_1B8D9207C(v8, &qword_1EBAB8F20, &qword_1B964D720);
LABEL_17:
        v30 = v1 + v33[6];
        OUTLINED_FUNCTION_186();
        return sub_1B964C290();
      }

      v26 = v35;
      (*(v35 + 32))(v34, v8, v12);
      OUTLINED_FUNCTION_2_10();
      sub_1B8CD1BE0(v28, v29);
      sub_1B964C740();
      if (!v0)
      {
        (*(v26 + 8))(v21, v12);
        goto LABEL_17;
      }

      return (*(v26 + 8))(v21, v12);
    }
  }

  return result;
}

uint64_t static Geopb_LatLng.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = sub_1B964C1C0();
  v4 = OUTLINED_FUNCTION_30_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  v10 = OUTLINED_FUNCTION_183(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_66();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_66();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v58[-v27];
  if (*v1 != *v0 || v1[1] != v0[1])
  {
    goto LABEL_23;
  }

  v60 = v15;
  v62 = v6;
  v61 = type metadata accessor for Geopb_LatLng(0);
  v29 = v61[7];
  v30 = *(v19 + 48);
  sub_1B8E203A8(v1 + v29, v28);
  sub_1B8E203A8(v0 + v29, &v28[v30]);
  OUTLINED_FUNCTION_37_0(v28);
  if (v31)
  {
    OUTLINED_FUNCTION_37_0(&v28[v30]);
    if (v31)
    {
      sub_1B8D9207C(v28, &qword_1EBAB8F20, &qword_1B964D720);
      goto LABEL_13;
    }

LABEL_11:
    v35 = v28;
LABEL_22:
    sub_1B8D9207C(v35, &qword_1EBAB8F28, &unk_1B9683B20);
    goto LABEL_23;
  }

  sub_1B8E203A8(v28, v18);
  OUTLINED_FUNCTION_37_0(&v28[v30]);
  if (v31)
  {
    v32 = *(v62 + 8);
    v33 = OUTLINED_FUNCTION_444();
    v34(v33);
    goto LABEL_11;
  }

  v36 = v62;
  (*(v62 + 32))(v2, &v28[v30], v3);
  OUTLINED_FUNCTION_2_10();
  sub_1B8CD1BE0(v37, v38);
  v59 = OUTLINED_FUNCTION_44_2();
  v39 = *(v36 + 8);
  v39(v2, v3);
  v40 = OUTLINED_FUNCTION_444();
  (v39)(v40);
  sub_1B8D9207C(v28, &qword_1EBAB8F20, &qword_1B964D720);
  if ((v59 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v41 = v61[8];
  v42 = *(v19 + 48);
  sub_1B8E203A8(v1 + v41, v25);
  sub_1B8E203A8(v0 + v41, v25 + v42);
  OUTLINED_FUNCTION_37_0(v25);
  if (v31)
  {
    OUTLINED_FUNCTION_37_0(v25 + v42);
    if (v31)
    {
      sub_1B8D9207C(v25, &qword_1EBAB8F20, &qword_1B964D720);
LABEL_26:
      v55 = v61[6];
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_15();
      sub_1B8CD1BE0(v56, v57);
      v47 = sub_1B964C850();
      return v47 & 1;
    }

    goto LABEL_21;
  }

  sub_1B8E203A8(v25, v60);
  OUTLINED_FUNCTION_37_0(v25 + v42);
  if (v43)
  {
    v44 = *(v62 + 8);
    v45 = OUTLINED_FUNCTION_444();
    v46(v45);
LABEL_21:
    v35 = v25;
    goto LABEL_22;
  }

  v49 = v62;
  (*(v62 + 32))(v2, v25 + v42, v3);
  OUTLINED_FUNCTION_2_10();
  sub_1B8CD1BE0(v50, v51);
  v52 = OUTLINED_FUNCTION_44_2();
  v53 = *(v49 + 8);
  v53(v2, v3);
  v54 = OUTLINED_FUNCTION_444();
  (v53)(v54);
  sub_1B8D9207C(v25, &qword_1EBAB8F20, &qword_1B964D720);
  if (v52)
  {
    goto LABEL_26;
  }

LABEL_23:
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_1B8E22A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1BE0(&qword_1EBABB530, type metadata accessor for Geopb_LatLng);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E22B14(uint64_t a1)
{
  v2 = sub_1B8CD1BE0(&qword_1EBABADD0, type metadata accessor for Geopb_LatLng);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E22B84()
{
  sub_1B8CD1BE0(&qword_1EBABADD0, type metadata accessor for Geopb_LatLng);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E22C20()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB3F0);
  __swift_project_value_buffer(v0, qword_1EBABB3F0);
  return sub_1B964C770();
}

uint64_t Geopb_BusinessCard.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for Geopb_BusinessCard(0) + 20);
  v2 = *(v0 + v1);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v3 = *(v0 + v1);
  }

  else
  {
    type metadata accessor for Geopb_BusinessCard._StorageClass();
    v4 = swift_allocObject();
    v5 = *(v0 + v1);

    *(v0 + v1) = v4;
  }

  OUTLINED_FUNCTION_12();
  return sub_1B8E22D34();
}

uint64_t sub_1B8E22D34()
{
  do
  {
    result = sub_1B964C3C0();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t Geopb_BusinessCard.traverse<A>(visitor:)()
{
  type metadata accessor for Geopb_BusinessCard(0);
  OUTLINED_FUNCTION_12();
  return sub_1B964C290();
}

uint64_t static Geopb_BusinessCard.== infix(_:_:)()
{
  type metadata accessor for Geopb_BusinessCard(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_15();
  sub_1B8CD1BE0(v0, v1);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8E22EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1BE0(&qword_1EBABB528, type metadata accessor for Geopb_BusinessCard);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E22F64(uint64_t a1)
{
  v2 = sub_1B8CD1BE0(&qword_1EBABB498, type metadata accessor for Geopb_BusinessCard);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E22FD4()
{
  sub_1B8CD1BE0(&qword_1EBABB498, type metadata accessor for Geopb_BusinessCard);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E23054()
{
  result = MEMORY[0x1BFADC850](0x7A696C61636F4C2ELL, 0xEE00656D614E6465);
  qword_1EBABB408 = 0xD000000000000012;
  unk_1EBABB410 = 0x80000001B96ECC40;
  return result;
}

uint64_t static Geopb_BusinessCard.LocalizedName.protoMessageName.getter()
{
  if (qword_1EBAB6180 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8E23130()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB418);
  __swift_project_value_buffer(v0, qword_1EBABB418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "language_code";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 9;
  *v13 = "phonetic_name";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Geopb_BusinessCard.LocalizedName.decodeMessage<A>(decoder:)()
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

    if (result == 9 || result == 4 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Geopb_BusinessCard.LocalizedName.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_8();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v13 = v2 + *(type metadata accessor for Geopb_BusinessCard.LocalizedName(0) + 28);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Geopb_BusinessCard.LocalizedName.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
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

  v9 = *(type metadata accessor for Geopb_BusinessCard.LocalizedName(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_15();
  sub_1B8CD1BE0(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E235D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1BE0(&qword_1EBABB520, type metadata accessor for Geopb_BusinessCard.LocalizedName);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E23650(uint64_t a1)
{
  v2 = sub_1B8CD1BE0(&qword_1EBABAC88, type metadata accessor for Geopb_BusinessCard.LocalizedName);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E236C0()
{
  sub_1B8CD1BE0(&qword_1EBABAC88, type metadata accessor for Geopb_BusinessCard.LocalizedName);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E23764()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB430);
  __swift_project_value_buffer(v0, qword_1EBABB430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "identifier";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t sub_1B8E238F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B964C780();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_26_5();
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t Geopb_Timezone.decodeMessage<A>(decoder:)()
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

uint64_t Geopb_Timezone.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_8();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v7 = v2 + *(type metadata accessor for Geopb_Timezone(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Geopb_Timezone.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Geopb_Timezone(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_15();
  sub_1B8CD1BE0(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E23B1C(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD1BE0(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E23C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1BE0(&qword_1EBABB518, type metadata accessor for Geopb_Timezone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E23C80(uint64_t a1)
{
  v2 = sub_1B8CD1BE0(&qword_1EBABAC60, type metadata accessor for Geopb_Timezone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E23CF0()
{
  sub_1B8CD1BE0(&qword_1EBABAC60, type metadata accessor for Geopb_Timezone);

  return sub_1B964C5D0();
}

void sub_1B8E24338()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E2440C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8E244A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E244A0()
{
  if (!qword_1ED9F44A8[0])
  {
    sub_1B964C1C0();
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9F44A8);
    }
  }
}

uint64_t sub_1B8E24520()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Geopb_BusinessCard._StorageClass();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8E245CC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8E24678()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return type metadata accessor for Geopb_LatLng(0);
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_45_1@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8E203A8(v1 + a1, v2);
}

uint64_t Kgqsapipb_BaikeCard.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_BaikeCard.id.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_BaikeCard.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.description_p.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_BaikeCard.description_p.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.shortAbstract.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_BaikeCard.shortAbstract.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.baikepageurl.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_BaikeCard.baikepageurl.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.thumbNailURL.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_BaikeCard.thumbNailURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.thumbNail3XURL.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_BaikeCard.thumbNail3XURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.thumbNailNanoURLN27.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_BaikeCard.thumbNailNanoURLN27.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.thumbNailNanoURLN28.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_432();
}

uint64_t Kgqsapipb_BaikeCard.thumbNailNanoURLN28.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.properties.setter(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_BaikeCard(0) + 64);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Kgqsapipb_BaikeCard.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_BaikeCard(v2) + 64);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Kgqsapipb_BaikeCard.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_BaikeCard(v0) + 64);
  return nullsub_1;
}

uint64_t Kgqsapipb_BaikeCard.Property.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_BaikeCard.Property(0) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Kgqsapipb_BaikeCard.Property.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_BaikeCard.Property(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Kgqsapipb_BaikeCard.Property.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_BaikeCard.Property(v0) + 24);
  return nullsub_1;
}

uint64_t Kgqsapipb_BaikeCard.Property.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_15_7(a1);
  v2 = v1 + *(type metadata accessor for Kgqsapipb_BaikeCard.Property(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_BaikeCard.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_15_7(a1);
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
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
  v1[18] = 0;
  v1[19] = MEMORY[0x1E69E7CC0];
  v3 = v1 + *(type metadata accessor for Kgqsapipb_BaikeCard(0) + 64);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E250D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB540);
  __swift_project_value_buffer(v0, qword_1EBABB540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B964D040;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 10;
  *v11 = "description";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "shortAbstract";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "baikepageurl";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "thumbNailUrl";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "thumbNail3xUrl";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "thumbNailNanoUrlN27";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "thumbNailNanoUrlN28";
  *(v23 + 1) = 19;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "originThumbNailWidth";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "originThumbNailHeight";
  *(v27 + 1) = 21;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 9;
  *v29 = "properties";
  *(v29 + 1) = 10;
  v29[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_BaikeCard.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12_8();
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
      case 5:
      case 6:
      case 7:
      case 8:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 9:
        sub_1B8E25610();
        break;
      case 11:
      case 12:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E25610()
{
  type metadata accessor for Kgqsapipb_BaikeCard.Property(0);
  sub_1B8E263A0(&qword_1EBABB580, type metadata accessor for Kgqsapipb_BaikeCard.Property);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_BaikeCard.traverse<A>(visitor:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_12_8();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
  {
    v7 = v0[2];
    v8 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
    {
      v10 = v0[6];
      v11 = v0[7];
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
      {
        v13 = v0[8];
        v14 = v0[9];
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
        {
          v16 = v0[10];
          v17 = v0[11];
          OUTLINED_FUNCTION_1();
          if (!v18 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
          {
            v19 = v0[12];
            v20 = v0[13];
            OUTLINED_FUNCTION_1();
            if (!v21 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
            {
              v22 = v0[14];
              v23 = v0[15];
              OUTLINED_FUNCTION_1();
              if (!v24 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
              {
                v25 = v0[16];
                v26 = v0[17];
                OUTLINED_FUNCTION_1();
                if (!v27 || (result = OUTLINED_FUNCTION_3(), (v2 = v1) == 0))
                {
                  if (!*(v0[19] + 16) || (type metadata accessor for Kgqsapipb_BaikeCard.Property(0), sub_1B8E263A0(&qword_1EBABB580, type metadata accessor for Kgqsapipb_BaikeCard.Property), v1 = v2, result = sub_1B964C730(), !v2))
                  {
                    v28 = v0[4];
                    v29 = v0[5];
                    OUTLINED_FUNCTION_1();
                    if (!v30 || (result = OUTLINED_FUNCTION_3(), !v1))
                    {
                      if (!*(v0 + 36) || (result = OUTLINED_FUNCTION_16_9(), !v1))
                      {
                        if (!*(v0 + 37) || (result = OUTLINED_FUNCTION_16_9(), !v1))
                        {
                          v31 = v0 + *(type metadata accessor for Kgqsapipb_BaikeCard(0) + 64);
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

  return result;
}

uint64_t static Kgqsapipb_BaikeCard.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v3 + 32) == *(v2 + 32) && *(v3 + 40) == *(v2 + 40);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v3 + 48) == *(v2 + 48) && *(v3 + 56) == *(v2 + 56);
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v3 + 64) == *(v2 + 64) && *(v3 + 72) == *(v2 + 72);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v3 + 80) == *(v2 + 80) && *(v3 + 88) == *(v2 + 88);
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v3 + 96) == *(v2 + 96) && *(v3 + 104) == *(v2 + 104);
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v3 + 112) == *(v2 + 112) && *(v3 + 120) == *(v2 + 120);
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v3 + 128) == *(v2 + 128) && *(v3 + 136) == *(v2 + 136);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 144) != *(v2 + 144))
  {
    return 0;
  }

  if (*(v3 + 148) != *(v2 + 148))
  {
    return 0;
  }

  v15 = *(v3 + 152);
  v16 = *(v2 + 152);
  sub_1B8D7D948();
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for Kgqsapipb_BaikeCard(0) + 64);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_11();
  sub_1B8E263A0(v19, v20);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t (*sub_1B8E25AEC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t sub_1B8E25B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E263A0(&qword_1EBABB5F0, type metadata accessor for Kgqsapipb_BaikeCard);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E25BC0(uint64_t a1)
{
  v2 = sub_1B8E263A0(&qword_1EBABB5A0, type metadata accessor for Kgqsapipb_BaikeCard);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E25C30()
{
  sub_1B8E263A0(&qword_1EBABB5A0, type metadata accessor for Kgqsapipb_BaikeCard);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E25CB0()
{
  result = MEMORY[0x1BFADC850](0x747265706F72502ELL, 0xE900000000000079);
  qword_1EBABB558 = 0xD000000000000013;
  unk_1EBABB560 = 0x80000001B96ECDE0;
  return result;
}

uint64_t static Kgqsapipb_BaikeCard.Property.protoMessageName.getter()
{
  if (qword_1EBAB61A0 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8E25D84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB568);
  __swift_project_value_buffer(v0, qword_1EBABB568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
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

uint64_t Kgqsapipb_BaikeCard.Property.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12_8();
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
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Kgqsapipb_BaikeCard.Property.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_12_8();
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
      v9 = v0 + *(type metadata accessor for Kgqsapipb_BaikeCard.Property(0) + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Kgqsapipb_BaikeCard.Property.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16) == *(v2 + 16) && *(v3 + 24) == *(v2 + 24);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Kgqsapipb_BaikeCard.Property(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_11();
  sub_1B8E263A0(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E26168(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8E263A0(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E26230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E263A0(&qword_1EBABB5E8, type metadata accessor for Kgqsapipb_BaikeCard.Property);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E262B0(uint64_t a1)
{
  v2 = sub_1B8E263A0(&qword_1EBABB580, type metadata accessor for Kgqsapipb_BaikeCard.Property);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E26320()
{
  sub_1B8E263A0(&qword_1EBABB580, type metadata accessor for Kgqsapipb_BaikeCard.Property);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E263A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B8E26650()
{
  sub_1B8E2670C();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E2670C()
{
  if (!qword_1EBABB5D0)
  {
    type metadata accessor for Kgqsapipb_BaikeCard.Property(255);
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBABB5D0);
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_8()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_15_7(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_16_9()
{

  return sub_1B964C6C0();
}

uint64_t Kgqsapipb_Pair.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Kgqsapipb_Pair.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Kgqsapipb_Pair.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_Pair() + 24);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Kgqsapipb_Pair()
{
  result = qword_1EBABB630;
  if (!qword_1EBABB630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Kgqsapipb_Pair.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Kgqsapipb_Pair() + 24);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Kgqsapipb_Pair.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for Kgqsapipb_Pair() + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E26AB4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB5F8);
  __swift_project_value_buffer(v0, qword_1EBABB5F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
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

uint64_t static Kgqsapipb_Pair._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB61B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABB5F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Kgqsapipb_Pair.decodeMessage<A>(decoder:)()
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

uint64_t Kgqsapipb_Pair.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1B964C700(), !v1))
  {
    if (v0[4] == 0.0 || (OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
    {
      v6 = v0 + *(type metadata accessor for Kgqsapipb_Pair() + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Kgqsapipb_Pair.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Kgqsapipb_Pair() + 24);
  sub_1B964C2B0();
  sub_1B8CD1C28(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Kgqsapipb_Pair.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Kgqsapipb_Pair();
  sub_1B8CD1C28(&qword_1EBABB610, type metadata accessor for Kgqsapipb_Pair);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E27024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1C28(&qword_1EBABB640, type metadata accessor for Kgqsapipb_Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E270A4(uint64_t a1)
{
  v2 = sub_1B8CD1C28(&qword_1EBABB620, type metadata accessor for Kgqsapipb_Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E27114()
{
  sub_1B8CD1C28(&qword_1EBABB620, type metadata accessor for Kgqsapipb_Pair);

  return sub_1B964C5D0();
}

unint64_t Kgqsapipb_AssertionType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8E27320@<X0>(uint64_t *a1@<X8>)
{
  result = Kgqsapipb_AssertionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E27354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E284BC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Kgqsapipb_AssertionType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABB648 = a1;
}

uint64_t sub_1B8E2749C@<X0>(uint64_t *a1@<X8>)
{
  result = static Kgqsapipb_AssertionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Kgqsapipb_Assertion.comments.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Kgqsapipb_Assertion.comments.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Kgqsapipb_Assertion.curatorID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Kgqsapipb_Assertion.curatorID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void Kgqsapipb_Assertion.assertionType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Kgqsapipb_Assertion.assertionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Kgqsapipb_Assertion.closedPropIds.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Kgqsapipb_Assertion.closedLocales.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t Kgqsapipb_Assertion.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_Assertion(0) + 56);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Kgqsapipb_Assertion.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_Assertion(v2) + 56);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Kgqsapipb_Assertion.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_Assertion(v0) + 56);
  return nullsub_1;
}

uint64_t Kgqsapipb_Assertion.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = MEMORY[0x1E69E7CC0];
  *(a1 + 64) = 0;
  *(a1 + 72) = v2;
  *(a1 + 80) = 0;
  v3 = type metadata accessor for Kgqsapipb_Assertion(0);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v4 = a1 + *(v3 + 56);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_CurationReview.entityID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Kgqsapipb_CurationReview.entityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Kgqsapipb_CurationReview.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_CurationReview(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Kgqsapipb_CurationReview.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_CurationReview(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Kgqsapipb_CurationReview.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Kgqsapipb_CurationReview(v0) + 20);
  return nullsub_1;
}

uint64_t Kgqsapipb_CurationReview.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Kgqsapipb_CurationReview(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E27B70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB650);
  __swift_project_value_buffer(v0, qword_1EBABB650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FACT";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ERROR";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E27DB8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB668);
  __swift_project_value_buffer(v0, qword_1EBABB668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B9656CE0;
  v4 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v4 = "date";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v27 + v3 + v2 + v1[14];
  *(v27 + v3 + v2) = 2;
  *v8 = "comments";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v27 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "curator_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v7();
  v12 = (v27 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 10;
  *v13 = "assertionType";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v7();
  v14 = (v27 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 11;
  *v15 = "closedPropIds";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v7();
  v16 = (v27 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 12;
  *v17 = "closeAllPropIds";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v7();
  v18 = (v27 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 13;
  *v19 = "closedLocales";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v7();
  v20 = (v27 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 14;
  *v21 = "closeAllLocales";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v7();
  v22 = (v27 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 15;
  *v23 = "lastReviewedTimestamp";
  *(v23 + 1) = 21;
  v23[16] = 2;
  v7();
  v24 = (v27 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 16;
  *v25 = "nextScheduledReviewTimestamp";
  *(v25 + 1) = 28;
  v25[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_Assertion.decodeMessage<A>(decoder:)()
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
      case 15:
      case 16:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 10:
        sub_1B8E28284();
        break;
      case 11:
      case 13:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 12:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Kgqsapipb_Assertion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
    {
      v7 = *(v2 + 24);
      v8 = *(v2 + 32);
      OUTLINED_FUNCTION_1();
      if (!v9 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
      {
        if (!*(v2 + 40) || (v11 = *(v2 + 40), v12 = *(v2 + 48), sub_1B8E284BC(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v1))
        {
          if (!*(*(v2 + 56) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
          {
            if (*(v2 + 64) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
            {
              if (!*(*(v2 + 72) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
              {
                if (*(v2 + 80) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
                {
                  if (!*(v2 + 88) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
                  {
                    if (!*(v2 + 96) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
                    {
                      v10 = v2 + *(type metadata accessor for Kgqsapipb_Assertion(0) + 56);
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

unint64_t sub_1B8E284BC()
{
  result = qword_1EBABB698;
  if (!qword_1EBABB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB698);
  }

  return result;
}

uint64_t static Kgqsapipb_Assertion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 48);
  if (!sub_1B8D92198(*(a1 + 40), *(a1 + 48), *(a2 + 40)) || (sub_1B8D6123C(*(a1 + 56), *(a2 + 56)) & 1) == 0 || *(a1 + 64) != *(a2 + 64) || (sub_1B8D6123C(*(a1 + 72), *(a2 + 72)) & 1) == 0 || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Kgqsapipb_Assertion(0) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_13();
  sub_1B8CD1C70(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E286F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1C70(&qword_1EBABB720, type metadata accessor for Kgqsapipb_Assertion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E28778(uint64_t a1)
{
  v2 = sub_1B8CD1C70(&qword_1EBABB6E0, type metadata accessor for Kgqsapipb_Assertion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E287E8()
{
  sub_1B8CD1C70(&qword_1EBABB6E0, type metadata accessor for Kgqsapipb_Assertion);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E28884()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB680);
  __swift_project_value_buffer(v0, qword_1EBABB680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "entityId";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Kgqsapipb_CurationReview.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
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

uint64_t Kgqsapipb_CurationReview.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
  {
    v7 = v2 + *(type metadata accessor for Kgqsapipb_CurationReview(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Kgqsapipb_CurationReview.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Kgqsapipb_CurationReview(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_13();
  sub_1B8CD1C70(v4, v5);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E28BCC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD1C70(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E28CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1C70(&qword_1EBABB718, type metadata accessor for Kgqsapipb_CurationReview);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E28D30(uint64_t a1)
{
  v2 = sub_1B8CD1C70(&qword_1EBABB6F8, type metadata accessor for Kgqsapipb_CurationReview);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E28DA0()
{
  sub_1B8CD1C70(&qword_1EBABB6F8, type metadata accessor for Kgqsapipb_CurationReview);

  return sub_1B964C5D0();
}

unint64_t sub_1B8E28E24()
{
  result = qword_1EBABB6B0;
  if (!qword_1EBABB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB6B0);
  }

  return result;
}

unint64_t sub_1B8E28E7C()
{
  result = qword_1EBABB6B8;
  if (!qword_1EBABB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB6B8);
  }

  return result;
}

unint64_t sub_1B8E28ED4()
{
  result = qword_1EBABB6C0;
  if (!qword_1EBABB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB6C0);
  }

  return result;
}

unint64_t sub_1B8E28F2C()
{
  result = qword_1EBABB6C8;
  if (!qword_1EBABB6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABB6D0, &qword_1B9658DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB6C8);
  }

  return result;
}

void sub_1B8E29208()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Kgqsapipb_Span.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Kgqsapipb_Span.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Kgqsapipb_Span.syn.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Kgqsapipb_Span.syn.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Kgqsapipb_Span.sem.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Kgqsapipb_Span.sem.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Kgqsapipb_Span.ontology.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void Kgqsapipb_Span.spanType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Kgqsapipb_Span.spanType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Kgqsapipb_Span.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_Span() + 44);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Kgqsapipb_Span()
{
  result = qword_1EBABB7B0;
  if (!qword_1EBABB7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Kgqsapipb_Span.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Kgqsapipb_Span() + 44);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t Kgqsapipb_Span.TypeEnum.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8E29768@<X0>(uint64_t *a1@<X8>)
{
  result = Kgqsapipb_Span.TypeEnum.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E2979C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E29F6C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Kgqsapipb_Span.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v1;
  *(a1 + 72) = 1;
  v2 = a1 + *(type metadata accessor for Kgqsapipb_Span() + 44);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Kgqsapipb_Span.TypeEnum.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABB728 = a1;
}

uint64_t sub_1B8E29940@<X0>(uint64_t *a1@<X8>)
{
  result = static Kgqsapipb_Span.TypeEnum.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E2998C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB730);
  __swift_project_value_buffer(v0, qword_1EBABB730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B9650810;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "label";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "syn";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "sem";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v21 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "ontology";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v21 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "begin";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v21 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "end";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v21 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "span_type";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v19 = *MEMORY[0x1E69AADE8];
  v7();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_Span.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 7:
        sub_1B8E29D80();
        break;
      default:
        continue;
    }
  }
}

uint64_t Kgqsapipb_Span.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v4 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v8 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
    {
      v9 = v0[4];
      v10 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v11 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
      {
        if (!*(v0[6] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
        {
          if (!*(v0 + 14) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
          {
            if (!*(v0 + 15) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
            {
              if (!v0[8] || (v13 = v0[8], v14 = *(v0 + 72), sub_1B8E29F6C(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v1))
              {
                v12 = v0 + *(type metadata accessor for Kgqsapipb_Span() + 44);
                OUTLINED_FUNCTION_12();
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

unint64_t sub_1B8E29F6C()
{
  result = qword_1EBABB760;
  if (!qword_1EBABB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB760);
  }

  return result;
}

uint64_t static Kgqsapipb_Span.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  if (*(a1 + 60) != *(a2 + 60))
  {
    return 0;
  }

  v7 = *(a2 + 72);
  if (!sub_1B8D92198(*(a1 + 64), *(a1 + 72), *(a2 + 64)))
  {
    return 0;
  }

  v8 = *(type metadata accessor for Kgqsapipb_Span() + 44);
  sub_1B964C2B0();
  sub_1B8CD1CB8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Kgqsapipb_Span.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Kgqsapipb_Span();
  sub_1B8CD1CB8(&qword_1EBABB768, type metadata accessor for Kgqsapipb_Span);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E2A1F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1CB8(&qword_1EBABB7C0, type metadata accessor for Kgqsapipb_Span);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E2A270(uint64_t a1)
{
  v2 = sub_1B8CD1CB8(&qword_1EBABB7A0, type metadata accessor for Kgqsapipb_Span);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E2A2E0()
{
  sub_1B8CD1CB8(&qword_1EBABB7A0, type metadata accessor for Kgqsapipb_Span);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E2A360()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB748);
  __swift_project_value_buffer(v0, qword_1EBABB748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ENTITYNAME";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "QUERYPREFIX";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "QUERYSUFFIX";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

unint64_t sub_1B8E2A5C8()
{
  result = qword_1EBABB770;
  if (!qword_1EBABB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB770);
  }

  return result;
}

unint64_t sub_1B8E2A620()
{
  result = qword_1EBABB778;
  if (!qword_1EBABB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB778);
  }

  return result;
}

unint64_t sub_1B8E2A678()
{
  result = qword_1EBABB780;
  if (!qword_1EBABB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB780);
  }

  return result;
}

unint64_t sub_1B8E2A6D0()
{
  result = qword_1EBABB788;
  if (!qword_1EBABB788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABB790, &qword_1B9659298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABB788);
  }

  return result;
}

void sub_1B8E2A87C()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Kgqsapipb_QueryFeatures.query.getter()
{
  OUTLINED_FUNCTION_7_9();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E2A9A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_QueryFeatures.query.setter();
}

void Kgqsapipb_QueryFeatures.query.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E2E970(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.query.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2AAC0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.query.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8E2E970(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t Kgqsapipb_QueryFeatures.qsyn.getter()
{
  OUTLINED_FUNCTION_7_9();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E2AB90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Kgqsapipb_QueryFeatures.qsyn.setter();
}

void Kgqsapipb_QueryFeatures.qsyn.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E2E970(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 40);
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.qsyn.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2AC90(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.qsyn.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8E2E970(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}