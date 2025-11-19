void sub_1B8DDBB2C()
{
  sub_1B8DDBC10();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B8DDBD6C(319, &qword_1ED9F3558, type metadata accessor for Locationpb_Point);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8DDBC10()
{
  if (!qword_1ED9FBDD8)
  {
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9FBDD8);
    }
  }
}

void sub_1B8DDBC88()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8DDBD6C(319, &qword_1ED9C8FE0, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding);
    if (v1 <= 0x3F)
    {
      sub_1B8DDBD6C(319, &qword_1ED9CA250, type metadata accessor for Argos_Protos_Visualquerypb_ImageMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8DDBD6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_16_4@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1B8DD9078(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8DD9078(v2 + a1, v4, v1, v3);
}

uint64_t OUTLINED_FUNCTION_28_2(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualUnderstanding.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  OUTLINED_FUNCTION_163_2(v1);
  v2 = *(v1 + 24);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.domain.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_21_2();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_10_4();
  v6 = *(v4 + 24);
  *a1 = *(v4 + 16);
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B8DDBFA4@<X0>(uint64_t a1@<X8>)
{
  result = Argos_Protos_Visualunderstandingpb_Entity.domain.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B8DDBFE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Argos_Protos_Visualunderstandingpb_Entity.domain.setter(&v3);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.domain.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_93_1();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DE1B4C(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.domain.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_21_2();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 24);
  *(v1 + 72) = *(v4 + 16);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DDC130()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_86_1(v1);
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
    OUTLINED_FUNCTION_37_1();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DE1B4C(v12);
    *(v11 + v10) = v9;
  }

  OUTLINED_FUNCTION_11_4();
  *(v9 + 16) = v3;
  *(v9 + 24) = v6;
  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.id.getter()
{
  OUTLINED_FUNCTION_21_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8DDC214(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Argos_Protos_Visualunderstandingpb_Entity.id.setter();
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.id.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_93_1();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DE1B4C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 40);
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.id.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_21_2();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 40);
  *(v1 + 48) = *(v4 + 32);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8DDC338(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  v4 = *(v1 + 56);
  if (v5)
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 56);

    OUTLINED_FUNCTION_461();
    Argos_Protos_Visualunderstandingpb_Entity.id.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = *(v1 + 72);
    v10 = *(v1 + 64);
    v11 = *(v10 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v1 + 72);
      v15 = *(v1 + 64);
      OUTLINED_FUNCTION_37_1();
      v16 = OUTLINED_FUNCTION_40_0();
      v17 = sub_1B8DE1B4C(v16);
      OUTLINED_FUNCTION_168(v17);
    }

    OUTLINED_FUNCTION_18();
    v18 = *(v13 + 40);
    *(v13 + 32) = v3;
    *(v13 + 40) = v4;
  }

  free(v1);
}

float Argos_Protos_Visualunderstandingpb_Entity.score.getter()
{
  OUTLINED_FUNCTION_21_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 48);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.score.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DE1B4C(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v7 + 48) = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.score.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v5 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DDC500(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v3 = *(v2 + 80);
  v4 = *(v1 + 84);
  v5 = *(v1 + 72);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 72);
    OUTLINED_FUNCTION_37_1();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8DE1B4C(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 48) = v3;

  free(v1);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.name.getter()
{
  OUTLINED_FUNCTION_21_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8DDC5E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Argos_Protos_Visualunderstandingpb_Entity.name.setter();
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.name.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_93_1();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DE1B4C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 64);
  *(v5 + 56) = v2;
  *(v5 + 64) = v0;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.name.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_21_2();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 64);
  *(v1 + 48) = *(v4 + 56);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8DDC708(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  v4 = *(v1 + 56);
  if (v5)
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 56);

    OUTLINED_FUNCTION_461();
    Argos_Protos_Visualunderstandingpb_Entity.name.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = *(v1 + 72);
    v10 = *(v1 + 64);
    v11 = *(v10 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v1 + 72);
      v15 = *(v1 + 64);
      OUTLINED_FUNCTION_37_1();
      v16 = OUTLINED_FUNCTION_40_0();
      v17 = sub_1B8DE1B4C(v16);
      OUTLINED_FUNCTION_168(v17);
    }

    OUTLINED_FUNCTION_18();
    v18 = *(v13 + 64);
    *(v13 + 56) = v3;
    *(v13 + 64) = v4;
  }

  free(v1);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.source.getter()
{
  OUTLINED_FUNCTION_21_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 72);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.source.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_154_1(0);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DE1B4C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 72) = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.source.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v5 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DDC8B8(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v3 = *(v2 + 80);
  v4 = *(v1 + 84);
  v5 = *(v1 + 72);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 72);
    OUTLINED_FUNCTION_37_1();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8DE1B4C(v11);
    OUTLINED_FUNCTION_168(v12);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 72) = v3;

  free(v1);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.muid.getter()
{
  OUTLINED_FUNCTION_21_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 80);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.muid.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_154_1(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DE1B4C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 80) = v0;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.muid.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_21_2();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v4 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DDCA50(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_1(a1);
  v3 = *(v2 + 72);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 88);
    v10 = *(v1 + 80);
    OUTLINED_FUNCTION_37_1();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B8DE1B4C(v11);
    OUTLINED_FUNCTION_168(v12);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 80) = v3;

  free(v1);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v7 = &v19 - v6;
  OUTLINED_FUNCTION_21_2();
  v9 = *(v1 + v8);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_166_1();
  v10 = type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_57(v7);
  if (v11)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xE000000000000000;
    v12 = a1 + *(v10 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v10 + 36);
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    result = OUTLINED_FUNCTION_57(v7);
    if (!v11)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_4();
    return sub_1B8DE20B0();
  }

  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.location.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = OUTLINED_FUNCTION_31_2();
  v5 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity(v4) + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8DE1B4C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_294();
  sub_1B8DE20B0();
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Argos_Protos_Visualunderstandingpb_Entity.location.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Locationpb_Point(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_21_2();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    *(v13 + 24) = 1;
    v13[4] = 0;
    v13[5] = 0xE000000000000000;
    v17 = v13 + *(v10 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v10 + 36);
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_246();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.hasLocation.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_161_2();
  v9 = type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualunderstandingpb_Entity.clearLocation()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_154_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8DE1B4C(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.popularity.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 84) = v4;
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__popularity);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *v5;
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.isRated.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isRated;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 84) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8DDD15C(uint64_t *a1)
{
  OUTLINED_FUNCTION_21_2();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4();
  return *(v4 + v5);
}

uint64_t sub_1B8DDD1A8(char a1, uint64_t *a2)
{
  v6 = OUTLINED_FUNCTION_93_1();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DE1B4C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *a2;
  result = OUTLINED_FUNCTION_9_3();
  *(v7 + v10) = a1 & 1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.isIndoor.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isIndoor;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 84) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DDD28C()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 84);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 80);
    v11 = *(v3 + 72);
    OUTLINED_FUNCTION_37_1();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DE1B4C(v12);
    *(v11 + v10) = v9;
  }

  v13 = *v1;
  OUTLINED_FUNCTION_11_4();
  *(v9 + v13) = v6;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.isDestroyed.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isDestroyed;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 84) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8DDD3DC(uint64_t *a1)
{
  v1 = *a1;

  return Argos_Protos_Visualunderstandingpb_Entity.entityAnnotations.setter(v2);
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.entityAnnotations.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_21_2();
  *(v1 + 64) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

float sub_1B8DDD518(void *a1)
{
  OUTLINED_FUNCTION_21_2();
  v4 = *(v1 + v3) + *a1;
  OUTLINED_FUNCTION_521();
  return *v4;
}

uint64_t sub_1B8DDD56C(void *a1, float a2)
{
  v6 = OUTLINED_FUNCTION_154_1(0);
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_37_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DE1B4C(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  v10 = (v7 + *a1);
  result = OUTLINED_FUNCTION_18();
  *v10 = a2;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_Entity.coverage.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_5(v3);
  *(v1 + 84) = v4;
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__coverage);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DDD660(uint64_t *a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_238(a1);
  v6 = *(v5 + 80);
  v7 = *(v3 + 84);
  v8 = *(v3 + 72);
  v9 = *(v8 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + 84);
    v13 = *(v3 + 72);
    OUTLINED_FUNCTION_37_1();
    v14 = OUTLINED_FUNCTION_40_0();
    v15 = sub_1B8DE1B4C(v14);
    OUTLINED_FUNCTION_168(v15);
  }

  v16 = (v11 + *a3);
  OUTLINED_FUNCTION_18();
  *v16 = v6;

  free(v3);
}

uint64_t Argos_Protos_Visualunderstandingpb_EntityAnnotation.e2IAnnotation.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  sub_1B8D92024();
  v9 = type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation.OneOf_MetadataOneof(0);
  OUTLINED_FUNCTION_178(v8, 1, v9);
  if (v10)
  {
    sub_1B8D9207C(v8, &qword_1EBAB92C0, &qword_1B964DAA0);
    *a1 = MEMORY[0x1E69E7CC0];
    v11 = type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(0);
    return OUTLINED_FUNCTION_163_2(v11);
  }

  else
  {
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_288();
    return sub_1B8DE20B0();
  }
}

uint64_t Argos_Protos_Visualunderstandingpb_EntityAnnotation.e2IAnnotation.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB92C0, &qword_1B964DAA0);
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_432();
  sub_1B8DE20B0();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation.OneOf_MetadataOneof(0);
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Argos_Protos_Visualunderstandingpb_EntityAnnotation.e2IAnnotation.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[2] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[3] = v10;
  OUTLINED_FUNCTION_643();
  v11 = type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation.OneOf_MetadataOneof(0);
  v3[4] = v11;
  OUTLINED_FUNCTION_178(v6, 1, v11);
  if (v12)
  {
    sub_1B8D9207C(v6, &qword_1EBAB92C0, &qword_1B964DAA0);
    *v10 = MEMORY[0x1E69E7CC0];
    v13 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_4_5();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B8DDDAA4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8DE2104();
    sub_1B8D9207C(v7, &qword_1EBAB92C0, &qword_1B964DAA0);
    OUTLINED_FUNCTION_4_5();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
    OUTLINED_FUNCTION_74_1();
    sub_1B8DE205C();
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBAB92C0, &qword_1B964DAA0);
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_1_0();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Argos_Protos_Visualunderstandingpb_EntityAnnotation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void static Argos_Protos_Visualunderstandingpb_EntityAnnotation.OneOf_MetadataOneof.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_243();
  a17 = v18;
  a18 = v19;
  OUTLINED_FUNCTION_145_2();
  v20 = type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(0);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_66();
  v26 = (v24 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&a9 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92B8, &qword_1B9653B30);
  OUTLINED_FUNCTION_183(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_137();
  v35 = *(v34 + 56);
  sub_1B8DE2104();
  sub_1B8DE2104();
  sub_1B8DE20B0();
  sub_1B8DE20B0();
  v36 = *v29;
  v37 = *v26;
  sub_1B8D61720();
  if (v38)
  {
    v39 = *(v20 + 20);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_8();
    sub_1B8CD19E8(v40, v41);
    sub_1B964C850();
    sub_1B8DE205C();
  }

  else
  {
    sub_1B8DE205C();
    OUTLINED_FUNCTION_432();
  }

  sub_1B8DE205C();
  OUTLINED_FUNCTION_242();
}

unint64_t Argos_Protos_Visualunderstandingpb_EntityAnnotation.Source.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8DDDE84@<X0>(uint64_t *a1@<X8>)
{
  result = Argos_Protos_Visualunderstandingpb_EntityAnnotation.Source.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8DDDEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8DEE734();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Argos_Protos_Visualunderstandingpb_EntityAnnotation.init()()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation.OneOf_MetadataOneof(v0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation(0);
  return OUTLINED_FUNCTION_163_2(v5);
}

uint64_t static Argos_Protos_Visualunderstandingpb_EntityAnnotation.Source.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_18();
  off_1EBABA4E0 = a1;
}

uint64_t (*static Argos_Protos_Visualunderstandingpb_EntityAnnotation.Source.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8DDE024@<X0>(uint64_t *a1@<X8>)
{
  result = static Argos_Protos_Visualunderstandingpb_EntityAnnotation.Source.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8DDE084()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8DDE10C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Argos_Protos_Visualunderstandingpb_E2IAnnotation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_PredictedLabels.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8DDE2B4()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8DDE33C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  v2 = v1 + *(type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_RegionOfInterest.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_RegionOfInterest.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v0) + 32);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_RegionOfInterest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_RegionOfInterest.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v1);
  *v0 = 0;
  v0[1] = 0;
  v3 = v0 + *(v2 + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualUnderstanding.ocrData.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v6);
  OUTLINED_FUNCTION_115(*(v7 + 24));
  OUTLINED_FUNCTION_166_1();
  v8 = type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v10 = a1 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBABA698, &qword_1B9653B38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_182();
    return sub_1B8DE20B0();
  }

  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualUnderstanding.ocrData.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBABA698, &qword_1B9653B38);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DE20B0();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8DDE7B4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a1(0);
  return OUTLINED_FUNCTION_163_2(v2);
}

void Argos_Protos_Visualunderstandingpb_VisualUnderstanding.ocrData.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_0(v10);
  v12 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v11);
  OUTLINED_FUNCTION_64_0(*(v12 + 24));
  OUTLINED_FUNCTION_75(v0);
  if (v13)
  {
    *v9 = MEMORY[0x1E69E7CC0];
    v14 = v9 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBABA698, &qword_1B9653B38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_461();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8DDE91C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8DE2104();
    sub_1B8D9207C(v4 + v3, &qword_1EBABA698, &qword_1B9653B38);
    OUTLINED_FUNCTION_3_7();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_28_3();
    sub_1B8DE205C();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBABA698, &qword_1B9653B38);
    OUTLINED_FUNCTION_3_7();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualUnderstanding.hasOcrData.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v7);
  OUTLINED_FUNCTION_115(*(v8 + 24));
  OUTLINED_FUNCTION_161_2();
  v9 = type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualunderstandingpb_VisualUnderstanding.clearOcrData()()
{
  v1 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBABA698, &qword_1B9653B38);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualUnderstanding.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.regionOfInterest.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_166_1();
  v8 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0;
    v10 = a1 + *(v8 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB92A8, &qword_1B9653B40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_182();
    return sub_1B8DE20B0();
  }

  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.regionOfInterest.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92A8, &qword_1B9653B40);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = OUTLINED_FUNCTION_31_2();
  v5 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(v4) + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8DE6874(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_294();
  sub_1B8DE20B0();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Argos_Protos_Visualunderstandingpb_ImageRegion.regionOfInterest.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  v13 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(0);
  OUTLINED_FUNCTION_77_0(v13);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v12 = 0;
    v12[1] = 0;
    v15 = v12 + *(v9 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB92A8, &qword_1B9653B40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_246();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8DDEECC()
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
    sub_1B8DE2104();
    v2(v3);
    sub_1B8DE205C();
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

uint64_t sub_1B8DDEFF0(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = a1(0);
  OUTLINED_FUNCTION_77_0(v4);
  v5 = *a2;
  OUTLINED_FUNCTION_10_4();
  v6 = *(v2 + v5);
}

uint64_t sub_1B8DDF040(uint64_t *a1)
{
  v1 = *a1;

  return Argos_Protos_Visualunderstandingpb_ImageRegion.imageEmbeddings.setter();
}

uint64_t sub_1B8DDF0B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v10 = v6;
  v11 = OUTLINED_FUNCTION_313();
  v13 = *(v12(v11) + 20);
  v14 = *(v6 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = a3(0);
    OUTLINED_FUNCTION_57_0(v17);
    swift_allocObject();
    v18 = OUTLINED_FUNCTION_40_0();
    v16 = a4(v18);
    *(v10 + v13) = v16;
  }

  v19 = *a5;
  OUTLINED_FUNCTION_9_3();
  v20 = *(v16 + v19);
  *(v16 + v19) = v5;
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.imageEmbeddings.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_10_5(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8DDF22C(uint64_t *a1)
{
  v1 = *a1;

  return Argos_Protos_Visualunderstandingpb_ImageRegion.entities.setter();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.entities.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_10_5(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8DDF36C(uint64_t *a1)
{
  v1 = *a1;

  return Argos_Protos_Visualunderstandingpb_ImageRegion.predictedLabels.setter();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.predictedLabels.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_10_5(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8DDF4AC(uint64_t *a1)
{
  v1 = *a1;

  return Argos_Protos_Visualunderstandingpb_ImageRegion.visualTokens.setter();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.visualTokens.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_10_5(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8DDF5EC(uint64_t *a1)
{
  v1 = *a1;

  return Argos_Protos_Visualunderstandingpb_ImageRegion.localFeatures.setter();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.localFeatures.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_10_5(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.scenenetFeatures.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_166_1();
  v8 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    *a1 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = MEMORY[0x1E69E7CC0];
    *(a1 + 16) = v10;
    *(a1 + 24) = xmmword_1B9652FE0;
    *(a1 + 40) = xmmword_1B9652FE0;
    *(a1 + 56) = v10;
    v11 = a1 + *(v8 + 44);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v8 + 48);
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBABA6A0, &qword_1B9653B48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
    return sub_1B8DE20B0();
  }

  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.scenenetFeatures.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA6A0, &qword_1B9653B48);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = OUTLINED_FUNCTION_31_2();
  v5 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(v4) + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v9);
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8DE6874(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_294();
  sub_1B8DE20B0();
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Argos_Protos_Visualunderstandingpb_ImageRegion.scenenetFeatures.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  v13 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(0);
  OUTLINED_FUNCTION_77_0(v13);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v12 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    *(v12 + 1) = MEMORY[0x1E69E7CC0];
    *(v12 + 2) = v15;
    *(v12 + 24) = xmmword_1B9652FE0;
    *(v12 + 40) = xmmword_1B9652FE0;
    *(v12 + 7) = v15;
    v16 = &v12[*(v9 + 44)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v9 + 48);
    type metadata accessor for Argos_Protos_Scenenetfeaturespb_AestheticAttributes(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBABA6A0, &qword_1B9653B48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_246();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DDFB28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_137();
  v15 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(0);
  OUTLINED_FUNCTION_77_0(v15);
  v16 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v17 = a4(0);
  OUTLINED_FUNCTION_178(v6, 1, v17);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  sub_1B8D9207C(v6, v5, v4);
  return v19;
}

void sub_1B8DDFC28()
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
  OUTLINED_FUNCTION_208();
  v12 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B8DE6874(v17);
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

uint64_t sub_1B8DDFD44(uint64_t *a1)
{
  v1 = *a1;

  return Argos_Protos_Visualunderstandingpb_ImageRegion.barcodes.setter();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageRegion.barcodes.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_10_5(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8DDFE64()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238(v1);
  v7 = *(v6 + 48);
  if (v8)
  {
    v9 = v5;
    v10 = *(v0 + 56);

    v9(v11);
    v12 = *(v0 + 48);
  }

  else
  {
    v13 = v4;
    v14 = v3;
    v15 = v2;
    v16 = *(v0 + 64);
    v17 = *(v0 + 56);
    v18 = *(v17 + v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v17 + v16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = *(v0 + 64);
      v22 = *(v0 + 56);
      v23 = v15(0);
      OUTLINED_FUNCTION_57_0(v23);
      swift_allocObject();
      v24 = OUTLINED_FUNCTION_40_0();
      v20 = v14(v24);
      *(v22 + v21) = v20;
    }

    v25 = *v13;
    OUTLINED_FUNCTION_18();
    v26 = *(v20 + v25);
    *(v20 + v25) = v7;
  }

  OUTLINED_FUNCTION_242();

  free(v27);
}

uint64_t sub_1B8DDFF98(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_145_2();
  v7 = v6;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(v4(0) + 20);
  if (*v3 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(v7 + v8) = *a3;
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.values.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor(v0) + 40);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v1 = a1 + *(type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor(0) + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8DE0360@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v3 = v1 + *(v2(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.embedding.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.field4.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.field4.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.embeddingFp16.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.embeddingFp16.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = xmmword_1B9652FE0;
  *(v1 + 40) = v2;
  *(v1 + 48) = xmmword_1B9652FE0;
  v3 = v1 + *(type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.codebookUrn.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.codebookUrn.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.embeddingModelUrn.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.embeddingModelUrn.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.ids.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.distances.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.tokenTerms.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1B8DE07D4()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 36);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8DE085C()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 36);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v3 = MEMORY[0x1E69E7CC0];
  v1[4] = MEMORY[0x1E69E7CC0];
  v1[5] = v3;
  v1[6] = v3;
  v4 = v1 + *(type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_OCRData.textAnnotations.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_OCRData.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.boundingBox.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v6);
  OUTLINED_FUNCTION_115(*(v7 + 32));
  OUTLINED_FUNCTION_166_1();
  v8 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0;
    v10 = a1 + *(v8 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB92A8, &qword_1B9653B40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_182();
    return sub_1B8DE20B0();
  }

  return result;
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.boundingBox.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB92A8, &qword_1B9653B40);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DE20B0();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Argos_Protos_Visualunderstandingpb_TextAnnotation.boundingBox.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_0(v10);
  v12 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v11);
  OUTLINED_FUNCTION_64_0(*(v12 + 32));
  OUTLINED_FUNCTION_75(v0);
  if (v13)
  {
    *v9 = 0;
    v9[1] = 0;
    v14 = v9 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB92A8, &qword_1B9653B40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_461();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8DE0CA8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8DE2104();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB92A8, &qword_1B9653B40);
    OUTLINED_FUNCTION_1_7();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_8_4();
    sub_1B8DE205C();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB92A8, &qword_1B9653B40);
    OUTLINED_FUNCTION_1_7();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.hasBoundingBox.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v7);
  OUTLINED_FUNCTION_115(*(v8 + 32));
  OUTLINED_FUNCTION_161_2();
  v9 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualunderstandingpb_TextAnnotation.clearBoundingBox()()
{
  v1 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB92A8, &qword_1B9653B40);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  v3 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(0);
  v4 = v1 + *(v3 + 28);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 32);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Argos_Protos_Visualunderstandingpb_Barcode.gtin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(v6);
  OUTLINED_FUNCTION_115(*(v7 + 20));
  OUTLINED_FUNCTION_166_1();
  v8 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  OUTLINED_FUNCTION_57(v1);
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    v10 = a1 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v1);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9298, &unk_1B9653B50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_182();
    return sub_1B8DE20B0();
  }

  return result;
}

uint64_t sub_1B8DE1120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_177_1();
  sub_1B8DE2104();
  return a7(v7);
}

uint64_t Argos_Protos_Visualunderstandingpb_Barcode.gtin.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAB9298, &unk_1B9653B50);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DE20B0();
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Argos_Protos_Visualunderstandingpb_Barcode.gtin.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_85(v5);
  v7 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_89_0(v10);
  v12 = type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(v11);
  OUTLINED_FUNCTION_64_0(*(v12 + 20));
  OUTLINED_FUNCTION_75(v0);
  if (v13)
  {
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    v14 = v9 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_75(v0);
    if (!v13)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9298, &unk_1B9653B50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_461();
    sub_1B8DE20B0();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8DE1358()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8DE2104();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9298, &unk_1B9653B50);
    OUTLINED_FUNCTION_2_6();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_29_4();
    sub_1B8DE205C();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9298, &unk_1B9653B50);
    OUTLINED_FUNCTION_2_6();
    sub_1B8DE20B0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Argos_Protos_Visualunderstandingpb_Barcode.hasGtin.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(v7);
  OUTLINED_FUNCTION_115(*(v8 + 20));
  OUTLINED_FUNCTION_161_2();
  v9 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Argos_Protos_Visualunderstandingpb_Barcode.clearGtin()()
{
  v1 = type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(0);
  sub_1B8D9207C(v0 + *(v1 + 20), &qword_1EBAB9298, &unk_1B9653B50);
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Argos_Protos_Visualunderstandingpb_Barcode.init()()
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v0 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(0) + 20);
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1B8DE15B4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA4E8);
  __swift_project_value_buffer(v0, qword_1EBABA4E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B9653B20;
  v4 = v33 + v3 + v1[14];
  *(v33 + v3) = 1;
  *v4 = "domain";
  *(v4 + 8) = 6;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v33 + v3 + v2 + v1[14];
  *(v33 + v3 + v2) = 2;
  *v8 = "id";
  *(v8 + 8) = 2;
  *(v8 + 16) = 2;
  v7();
  v9 = (v33 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v33 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "name";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v33 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "source";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v33 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "muid";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v33 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "location";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v33 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "popularity";
  *(v20 + 1) = 10;
  v20[16] = 2;
  v7();
  v21 = (v33 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "is_rated";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v23 = *MEMORY[0x1E69AADE8];
  v7();
  v24 = (v33 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "is_indoor";
  *(v25 + 1) = 9;
  v25[16] = 2;
  v7();
  v26 = (v33 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "is_destroyed";
  *(v27 + 1) = 12;
  v27[16] = 2;
  v7();
  v28 = (v33 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "entity_annotations";
  *(v29 + 1) = 18;
  v29[16] = 2;
  v7();
  v30 = (v33 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "coverage";
  *(v31 + 1) = 8;
  v31[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8DE1A94()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__location;
  v2 = type metadata accessor for Locationpb_Point(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__popularity) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isRated) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isIndoor) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isDestroyed) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entityAnnotations) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__coverage) = 0;
  return v0;
}

uint64_t sub_1B8DE1B4C(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v36 = &v33 - v4;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 72) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v34 = (v1 + 80);
  v5 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__location;
  v35 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__location;
  v6 = type metadata accessor for Locationpb_Point(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v37 = (v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__popularity);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__popularity) = 0;
  v38 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isRated;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isRated) = 0;
  v39 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isIndoor;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isIndoor) = 0;
  v40 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isDestroyed;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isDestroyed) = 0;
  v41 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entityAnnotations;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entityAnnotations) = MEMORY[0x1E69E7CC0];
  v42 = (v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__coverage);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__coverage) = 0;
  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  swift_beginAccess();
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v10;
  *(v1 + 40) = v9;
  swift_beginAccess();
  v11 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v11;
  swift_beginAccess();
  v13 = *(a1 + 56);
  v12 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v13;
  *(v1 + 64) = v12;

  swift_beginAccess();
  LODWORD(v12) = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v12;
  swift_beginAccess();
  v14 = *(a1 + 80);
  v15 = v34;
  swift_beginAccess();
  *v15 = v14;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v16 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__popularity);
  swift_beginAccess();
  v17 = *v16;
  v18 = v37;
  swift_beginAccess();
  *v18 = v17;
  v19 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isRated;
  swift_beginAccess();
  LOBYTE(v19) = *(a1 + v19);
  v20 = v38;
  swift_beginAccess();
  *(v1 + v20) = v19;
  v21 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isIndoor;
  swift_beginAccess();
  LOBYTE(v21) = *(a1 + v21);
  v22 = v39;
  swift_beginAccess();
  *(v1 + v22) = v21;
  v23 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isDestroyed;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + v23);
  v24 = v40;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entityAnnotations;
  swift_beginAccess();
  v26 = *(a1 + v25);
  v27 = v41;
  swift_beginAccess();
  v28 = *(v1 + v27);
  *(v1 + v27) = v26;

  v29 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__coverage);
  swift_beginAccess();
  v30 = *v29;

  v31 = v42;
  swift_beginAccess();
  *v31 = v30;
  return v1;
}

uint64_t sub_1B8DE205C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B8DE20B0()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B8DE2104()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B8DE2178()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__location, &qword_1EBAB9280, &qword_1B96535F0);
  v3 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entityAnnotations);

  return v0;
}

uint64_t sub_1B8DE2240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8DE2458();
        continue;
      case 2:
        sub_1B8DC46F4();
        continue;
      case 3:
        sub_1B8DD53DC();
        continue;
      case 4:
        sub_1B8DE24EC();
        continue;
      case 5:
        sub_1B8DE2570();
        continue;
      case 6:
        sub_1B8DE25F4();
        continue;
      case 7:
        sub_1B8DE2678();
        continue;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__popularity;
        goto LABEL_12;
      case 9:
        v16 = a2;
        v17 = a1;
        v18 = a3;
        v19 = a4;
        v20 = &OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isRated;
        goto LABEL_18;
      case 10:
        v16 = a2;
        v17 = a1;
        v18 = a3;
        v19 = a4;
        v20 = &OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isIndoor;
        goto LABEL_18;
      case 11:
        v16 = a2;
        v17 = a1;
        v18 = a3;
        v19 = a4;
        v20 = &OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isDestroyed;
LABEL_18:
        sub_1B8DE2754(v16, v17, v18, v19, v20);
        break;
      case 12:
        sub_1B8DE27AC();
        break;
      case 13:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__coverage;
LABEL_12:
        sub_1B8DE2888(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DE2458()
{
  swift_beginAccess();
  sub_1B8DEE788();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8DE24EC()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8DE2570()
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8DE25F4()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8DE2678()
{
  swift_beginAccess();
  type metadata accessor for Locationpb_Point(0);
  sub_1B8CD19E8(&qword_1EBABA448, type metadata accessor for Locationpb_Point);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DE2754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_22();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8DE27AC()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation(0);
  sub_1B8CD19E8(&qword_1EBABA7A8, type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8DE2888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_22();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8DE2910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v30 - v9;
  v11 = type metadata accessor for Locationpb_Point(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(a1 + 16) || (v15 = *(a1 + 24), v30[35] = *(a1 + 16), v31 = v15, sub_1B8DEE788(), result = sub_1B964C680(), !v4))
  {
    v32 = v14;
    v17 = a4;
    swift_beginAccess();
    v18 = *(a1 + 40);
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (!v19 || (v20 = *(a1 + 40), , sub_1B964C700(), result = , !v4))
    {
      swift_beginAccess();
      if (*(a1 + 48) == 0.0 || (result = sub_1B964C6B0(), !v4))
      {
        swift_beginAccess();
        v21 = *(a1 + 64);
        v22 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v22 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
        }

        if (!v22 || (v23 = *(a1 + 64), , sub_1B964C700(), result = , !v4))
        {
          swift_beginAccess();
          if (!*(a1 + 72) || (result = sub_1B964C6C0(), !v4))
          {
            swift_beginAccess();
            if (!*(a1 + 80) || (result = sub_1B964C720(), !v4))
            {
              v30[1] = v17;
              swift_beginAccess();
              sub_1B8D92024();
              if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
              {
                sub_1B8D9207C(v10, &qword_1EBAB9280, &qword_1B96535F0);
              }

              else
              {
                sub_1B8DE20B0();
                sub_1B8CD19E8(&qword_1EBABA448, type metadata accessor for Locationpb_Point);
                sub_1B964C740();
                result = sub_1B8DE205C();
                if (v4)
                {
                  return result;
                }
              }

              v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__popularity);
              swift_beginAccess();
              if (*v24 == 0.0 || (result = sub_1B964C6B0(), !v4))
              {
                v25 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isRated;
                swift_beginAccess();
                if (*(a1 + v25) != 1 || (result = sub_1B964C670(), !v4))
                {
                  v26 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isIndoor;
                  swift_beginAccess();
                  if (*(a1 + v26) != 1 || (result = sub_1B964C670(), !v4))
                  {
                    v27 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isDestroyed;
                    swift_beginAccess();
                    if (*(a1 + v27) != 1 || (result = sub_1B964C670(), !v4))
                    {
                      v28 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entityAnnotations;
                      swift_beginAccess();
                      if (!*(*(a1 + v28) + 16) || (type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation(0), sub_1B8CD19E8(&qword_1EBABA7A8, type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation), , sub_1B964C730(), result = , !v4))
                      {
                        v29 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__coverage);
                        result = swift_beginAccess();
                        if (*v29 != 0.0)
                        {
                          return sub_1B964C6B0();
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

BOOL sub_1B8DE2F34(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Locationpb_Point(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9288, &unk_1B964DA70);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v59[0] = v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  v15 = OUTLINED_FUNCTION_183(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_66();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v59 - v22;
  OUTLINED_FUNCTION_521();
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  OUTLINED_FUNCTION_521();
  if (!sub_1B8D57FD0(v24, v25, *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v27 = *(a1 + 32);
  v26 = *(a1 + 40);
  OUTLINED_FUNCTION_521();
  v28 = v27 == *(a2 + 32) && v26 == *(a2 + 40);
  if (!v28)
  {
    OUTLINED_FUNCTION_486();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_521();
  v29 = *(a1 + 48);
  OUTLINED_FUNCTION_521();
  if (v29 != *(a2 + 48))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v30 = *(a1 + 56);
  v31 = *(a1 + 64);
  OUTLINED_FUNCTION_521();
  v32 = v30 == *(a2 + 56) && v31 == *(a2 + 64);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v33 = *(a1 + 72);
  OUTLINED_FUNCTION_521();
  if (v33 != *(a2 + 72))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v34 = *(a1 + 80);
  OUTLINED_FUNCTION_521();
  if (v34 != *(a2 + 80))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v35 = *(v9 + 48);
  v36 = v59[0];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v36, 1, v5);
  if (v28)
  {

    sub_1B8D9207C(v23, &qword_1EBAB9280, &qword_1B96535F0);
    OUTLINED_FUNCTION_178(v36 + v35, 1, v5);
    if (v28)
    {
      sub_1B8D9207C(v36, &qword_1EBAB9280, &qword_1B96535F0);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v36 + v35, 1, v5);
  if (v37)
  {

    sub_1B8D9207C(v23, &qword_1EBAB9280, &qword_1B96535F0);
    sub_1B8DE205C();
LABEL_23:
    sub_1B8D9207C(v36, &qword_1EBAB9288, &unk_1B964DA70);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_9_4();
  sub_1B8DE20B0();

  v38 = static Locationpb_Point.== infix(_:_:)(v20, v2);
  sub_1B8DE205C();
  sub_1B8D9207C(v23, &qword_1EBAB9280, &qword_1B96535F0);
  sub_1B8DE205C();
  sub_1B8D9207C(v36, &qword_1EBAB9280, &qword_1B96535F0);
  if (v38)
  {
LABEL_25:
    v39 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__popularity);
    OUTLINED_FUNCTION_521();
    v40 = *v39;
    v41 = (a2 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__popularity);
    OUTLINED_FUNCTION_521();
    if (v40 == *v41)
    {
      v42 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isRated;
      OUTLINED_FUNCTION_521();
      LODWORD(v42) = *(a1 + v42);
      v43 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isRated;
      OUTLINED_FUNCTION_521();
      if (v42 == *(a2 + v43))
      {
        v44 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isIndoor;
        OUTLINED_FUNCTION_521();
        LODWORD(v44) = *(a1 + v44);
        v45 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isIndoor;
        OUTLINED_FUNCTION_521();
        if (v44 == *(a2 + v45))
        {
          v46 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isDestroyed;
          OUTLINED_FUNCTION_521();
          LODWORD(v46) = *(a1 + v46);
          v47 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__isDestroyed;
          OUTLINED_FUNCTION_521();
          if (v46 == *(a2 + v47))
          {
            v48 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entityAnnotations;
            OUTLINED_FUNCTION_521();
            v49 = *(a1 + v48);
            v50 = OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entityAnnotations;
            OUTLINED_FUNCTION_521();
            v51 = *(a2 + v50);

            OUTLINED_FUNCTION_177_1();
            sub_1B8D86688();
            v53 = v52;

            if (v53)
            {
              v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__coverage);
              OUTLINED_FUNCTION_521();
              v55 = *v54;

              v56 = (a2 + OBJC_IVAR____TtCV10PegasusAPI41Argos_Protos_Visualunderstandingpb_EntityP33_369E175ED645D1B72790FB95B28E081113_StorageClass__coverage);
              OUTLINED_FUNCTION_521();
              v57 = *v56;

              return v55 == v57;
            }
          }
        }
      }
    }
  }

LABEL_31:

  return 0;
}

uint64_t sub_1B8DE35E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABAA10, type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DE3660(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA790, type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DE36D0()
{
  sub_1B8CD19E8(&qword_1EBABA790, type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity);

  return sub_1B964C5D0();
}

uint64_t Argos_Protos_Visualunderstandingpb_EntityAnnotation.decodeMessage<A>(decoder:)()
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
      sub_1B8DE3800(v5, v6, v2, v1);
    }
  }

  return result;
}

uint64_t sub_1B8DE3800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92C0, &qword_1B964DAA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation.OneOf_MetadataOneof(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA28, &unk_1B96556B0);
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
    sub_1B8D9207C(v12, &qword_1EBAB92C0, &qword_1B964DAA0);
  }

  else
  {
    sub_1B8DE20B0();
    sub_1B8DE20B0();
    sub_1B8D9207C(v22, &qword_1EBABAA28, &unk_1B96556B0);
    sub_1B8DE20B0();
    sub_1B8DE20B0();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_1B8CD19E8(&qword_1EBABA6B0, type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation);
  v24 = v31;
  sub_1B964C580();
  if (v24)
  {
    v25 = v22;
    return sub_1B8D9207C(v25, &qword_1EBABAA28, &unk_1B96556B0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBABAA28, &unk_1B96556B0);
    v25 = v20;
    return sub_1B8D9207C(v25, &qword_1EBABAA28, &unk_1B96556B0);
  }

  sub_1B8DE20B0();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v22, &qword_1EBABAA28, &unk_1B96556B0);
  v27 = v29;
  sub_1B8D9207C(v29, &qword_1EBAB92C0, &qword_1B964DAA0);
  sub_1B8DE20B0();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
}

void Argos_Protos_Visualunderstandingpb_EntityAnnotation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v3 = OUTLINED_FUNCTION_486();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_156();
  v10 = type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(v9);
  v11 = OUTLINED_FUNCTION_59_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  sub_1B8D92024();
  v14 = type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation.OneOf_MetadataOneof(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v14) == 1)
  {
    sub_1B8D9207C(v2, &qword_1EBAB92C0, &qword_1B964DAA0);
LABEL_4:
    v15 = v0 + *(type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation(0) + 20);
    OUTLINED_FUNCTION_491();
    sub_1B964C290();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_4_5();
  sub_1B8DE20B0();
  sub_1B8CD19E8(&qword_1EBABA6B0, type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation);
  OUTLINED_FUNCTION_153_1();
  sub_1B964C740();
  OUTLINED_FUNCTION_74_1();
  sub_1B8DE205C();
  if (!v1)
  {
    goto LABEL_4;
  }

LABEL_5:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8DE4160(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABAA08, type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DE41E0(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA7A8, type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DE4250()
{
  sub_1B8CD19E8(&qword_1EBABA7A8, type metadata accessor for Argos_Protos_Visualunderstandingpb_EntityAnnotation);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DE42D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA520);
  __swift_project_value_buffer(v0, qword_1EBABA520);
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
  *v10 = "E2I";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NATURE_LATIN_NAME_MATCH";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Visualunderstandingpb_E2IAnnotation.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Entityimageratingpb_Rating(0), sub_1B8CD19E8(&qword_1EBAB9C98, type metadata accessor for Argos_Protos_Entityimageratingpb_Rating), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v3 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B8DE4710(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABAA00, type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DE4790(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA6B0, type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DE4800()
{
  sub_1B8CD19E8(&qword_1EBABA6B0, type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation);

  return sub_1B964C5D0();
}

uint64_t Argos_Protos_Visualunderstandingpb_PredictedLabels.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_15_2();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction(0), sub_1B8CD19E8(&qword_1EBABA6C8, type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
    {
      v4 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8DE4ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABA9F8, type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DE4B5C(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA7D0, type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DE4BCC()
{
  sub_1B8CD19E8(&qword_1EBABA7D0, type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DE4C4C()
{
  result = MEMORY[0x1BFADC850](0x746369646572502ELL, 0xEB000000006E6F69);
  qword_1EBABA568 = 0xD000000000000032;
  unk_1EBABA570 = 0x80000001B96EB5B0;
  return result;
}

uint64_t sub_1B8DE4CE0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA578);
  __swift_project_value_buffer(v0, qword_1EBABA578);
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
  *v10 = "confidence";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction.decodeMessage<A>(decoder:)()
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

uint64_t Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_15_2();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v0))
    {
      v4 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_8();
  sub_1B8CD19E8(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DE50E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABA9F0, type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DE5164(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA6C8, type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DE51D4()
{
  sub_1B8CD19E8(&qword_1EBABA6C8, type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels.Prediction);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DE526C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA590);
  __swift_project_value_buffer(v0, qword_1EBABA590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 8) = 1;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Visualunderstandingpb_RegionOfInterest.decodeMessage<A>(decoder:)()
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
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t Argos_Protos_Visualunderstandingpb_RegionOfInterest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
  {
    if (v2[1] == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
    {
      if (v2[2] == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
      {
        if (v2[3] == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
        {
          v3 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Visualunderstandingpb_RegionOfInterest.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_8();
  sub_1B8CD19E8(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DE57A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABA9E8, type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DE5820(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA748, type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DE5890()
{
  sub_1B8CD19E8(&qword_1EBABA748, type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DE5928()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA5A8);
  __swift_project_value_buffer(v0, qword_1EBABA5A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "image_regions";
  *(v6 + 8) = 13;
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

void Argos_Protos_Visualunderstandingpb_VisualUnderstanding.decodeMessage<A>(decoder:)()
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
      sub_1B8DE5BC8();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8DEA93C();
    }
  }
}

uint64_t sub_1B8DE5BC8()
{
  v0 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0) + 24);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  sub_1B8CD19E8(&qword_1EBABA6F0, type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData);
  return sub_1B964C580();
}

void Argos_Protos_Visualunderstandingpb_VisualUnderstanding.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_273_0();
  a19 = v22;
  a20 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA698, &qword_1B9653B38);
  OUTLINED_FUNCTION_183(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  v31 = OUTLINED_FUNCTION_59_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  a10 = v20;
  if (!*(*v20 + 16) || (type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(0), sub_1B8CD19E8(&qword_1EBABA6E8, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_153_1(), sub_1B964C730(), !v21))
  {
    v34 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
    v35 = *(v34 + 24);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
    {
      sub_1B8D9207C(v29, &qword_1EBABA698, &qword_1B9653B38);
LABEL_6:
      v36 = a10 + *(v34 + 20);
      OUTLINED_FUNCTION_491();
      sub_1B964C290();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_3_7();
    sub_1B8DE20B0();
    sub_1B8CD19E8(&qword_1EBABA6F0, type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData);
    OUTLINED_FUNCTION_153_1();
    sub_1B964C740();
    OUTLINED_FUNCTION_28_3();
    sub_1B8DE205C();
    if (!v21)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Visualunderstandingpb_VisualUnderstanding.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v5 = type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA698, &qword_1B9653B38);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA6F8, &qword_1B9653B60);
  OUTLINED_FUNCTION_59_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_88();
  v17 = *v1;
  v18 = *v0;
  sub_1B8D71950();
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

  v36 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding(0);
  v20 = *(v36 + 24);
  v21 = *(v13 + 48);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_37_0(v2);
  if (v26)
  {
    OUTLINED_FUNCTION_37_0(v2 + v21);
    if (v26)
    {
      sub_1B8D9207C(v2, &qword_1EBABA698, &qword_1B9653B38);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v21);
  if (v26)
  {
    OUTLINED_FUNCTION_28_3();
    sub_1B8DE205C();
LABEL_11:
    v27 = &qword_1EBABA6F8;
    v28 = &qword_1B9653B60;
LABEL_12:
    sub_1B8D9207C(v2, v27, v28);
LABEL_13:
    v25 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_7();
  sub_1B8DE20B0();
  v29 = *v4;
  v30 = *v3;
  sub_1B8D71540();
  if ((v31 & 1) == 0)
  {
    sub_1B8DE205C();
    sub_1B8DE205C();
    v27 = &qword_1EBABA698;
    v28 = &qword_1B9653B38;
    goto LABEL_12;
  }

  v32 = *(v5 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_8();
  sub_1B8CD19E8(v33, v34);
  v35 = OUTLINED_FUNCTION_198_0();
  sub_1B8DE205C();
  sub_1B8DE205C();
  sub_1B8D9207C(v2, &qword_1EBABA698, &qword_1B9653B38);
  if ((v35 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v22 = *(v36 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_8();
  sub_1B8CD19E8(v23, v24);
  v25 = sub_1B964C850();
LABEL_14:
  OUTLINED_FUNCTION_264(v25);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DE623C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABA9E0, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DE62BC(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA460, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DE632C()
{
  sub_1B8CD19E8(&qword_1EBABA460, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualUnderstanding);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DE63C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA5C0);
  __swift_project_value_buffer(v0, qword_1EBABA5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B96511B0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "region_of_interest";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "image_embeddings";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "entities";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "predicted_labels";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "visual_tokens";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "local_features";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "scenenet_features";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "barcodes";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8DE6764(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_57_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B8DE67B4()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__regionOfInterest;
  v2 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__imageEmbeddings) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entities) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__predictedLabels) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__visualTokens) = v3;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__localFeatures) = v3;
  v4 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__scenenetFeatures;
  v5 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__barcodes) = v3;
  return v0;
}

uint64_t sub_1B8DE6874(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA6A0, &qword_1B9653B48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v40 = &v36 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92A8, &qword_1B9653B40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__regionOfInterest;
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__imageEmbeddings;
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__imageEmbeddings) = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entities;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entities) = v9;
  v11 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__predictedLabels;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__predictedLabels) = v9;
  v36 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__visualTokens;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__visualTokens) = v9;
  v37 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__localFeatures;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__localFeatures) = v9;
  v12 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__scenenetFeatures;
  v38 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__scenenetFeatures;
  v13 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v39 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__barcodes;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__barcodes) = v9;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__imageEmbeddings;
  swift_beginAccess();
  v15 = *(a1 + v14);
  swift_beginAccess();
  v16 = *(v1 + v8);
  *(v1 + v8) = v15;

  v17 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entities;
  swift_beginAccess();
  v18 = *(a1 + v17);
  swift_beginAccess();
  v19 = *(v1 + v10);
  *(v1 + v10) = v18;

  v20 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__predictedLabels;
  swift_beginAccess();
  v21 = *(a1 + v20);
  swift_beginAccess();
  v22 = *(v1 + v11);
  *(v1 + v11) = v21;

  v23 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__visualTokens;
  swift_beginAccess();
  v24 = *(a1 + v23);
  v25 = v36;
  swift_beginAccess();
  v26 = *(v1 + v25);
  *(v1 + v25) = v24;

  v27 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__localFeatures;
  swift_beginAccess();
  v28 = *(a1 + v27);
  v29 = v37;
  swift_beginAccess();
  v30 = *(v1 + v29);
  *(v1 + v29) = v28;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__barcodes;
  swift_beginAccess();
  v32 = *(a1 + v31);

  v33 = v39;
  swift_beginAccess();
  v34 = *(v1 + v33);
  *(v1 + v33) = v32;

  return v1;
}

uint64_t sub_1B8DE6CC8()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__regionOfInterest, &qword_1EBAB92A8, &qword_1B9653B40);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__imageEmbeddings);

  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entities);

  v3 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__predictedLabels);

  v4 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__visualTokens);

  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__localFeatures);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__scenenetFeatures, &qword_1EBABA6A0, &qword_1B9653B48);
  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__barcodes);

  return v0;
}

uint64_t sub_1B8DE6D98(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B8DE6E48()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v1;
  v20 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = *(v13(0) + 20);
  v15 = *(v0 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = v5(0);
    OUTLINED_FUNCTION_57_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_40_0();
    v17 = v20(v19);
    *(v6 + v14) = v17;
  }

  v2(v17, v12, v10, v8);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8DE6EFC()
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
        sub_1B8DE704C();
        break;
      case 2:
        sub_1B8DE7128();
        break;
      case 3:
        sub_1B8DE7204();
        break;
      case 4:
        sub_1B8DE72E0();
        break;
      case 5:
        sub_1B8DE73BC();
        break;
      case 6:
        sub_1B8DE7498();
        break;
      case 7:
        sub_1B8DE7574();
        break;
      case 8:
        sub_1B8DE7650();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DE704C()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  sub_1B8CD19E8(&qword_1EBABA748, type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DE7128()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  sub_1B8CD19E8(&qword_1EBABA850, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8DE7204()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity(0);
  sub_1B8CD19E8(&qword_1EBABA790, type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8DE72E0()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels(0);
  sub_1B8CD19E8(&qword_1EBABA7D0, type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8DE73BC()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  sub_1B8CD19E8(&qword_1EBABA868, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8DE7498()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet(0);
  sub_1B8CD19E8(&qword_1EBABA828, type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8DE7574()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  sub_1B8CD19E8(&qword_1EBABA3A0, type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DE7650()
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(0);
  sub_1B8CD19E8(&qword_1EBABA8A0, type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8DE775C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  OUTLINED_FUNCTION_145_2();
  v9 = *(v5 + *(v8(0) + 20));
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8DE77D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA6A0, &qword_1B9653B48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v27 = v26 - v7;
  v28 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  v8 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v26[1] = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92A8, &qword_1B9653B40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v26 - v12;
  v14 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1B8D9207C(v13, &qword_1EBAB92A8, &qword_1B9653B40);
    v16 = v29;
  }

  else
  {
    sub_1B8DE20B0();
    sub_1B8CD19E8(&qword_1EBABA748, type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest);
    v17 = v29;
    sub_1B964C740();
    v16 = v17;
    result = sub_1B8DE205C();
    if (v17)
    {
      return result;
    }
  }

  v19 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__imageEmbeddings;
  swift_beginAccess();
  if (!*(*(a1 + v19) + 16) || (type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0), sub_1B8CD19E8(&qword_1EBABA850, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding), , sub_1B964C730(), result = , !v16))
  {
    v20 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entities;
    swift_beginAccess();
    if (!*(*(a1 + v20) + 16) || (type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity(0), sub_1B8CD19E8(&qword_1EBABA790, type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity), , sub_1B964C730(), result = , !v16))
    {
      v21 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__predictedLabels;
      swift_beginAccess();
      if (!*(*(a1 + v21) + 16) || (type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels(0), sub_1B8CD19E8(&qword_1EBABA7D0, type metadata accessor for Argos_Protos_Visualunderstandingpb_PredictedLabels), , sub_1B964C730(), result = , !v16))
      {
        v22 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__visualTokens;
        swift_beginAccess();
        if (!*(*(a1 + v22) + 16) || (type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0), sub_1B8CD19E8(&qword_1EBABA868, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens), , sub_1B964C730(), result = , !v16))
        {
          v23 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__localFeatures;
          swift_beginAccess();
          if (!*(*(a1 + v23) + 16) || (type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet(0), sub_1B8CD19E8(&qword_1EBABA828, type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet), , sub_1B964C730(), result = , !v16))
          {
            swift_beginAccess();
            v24 = v27;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v24, 1, v28) == 1)
            {
              sub_1B8D9207C(v24, &qword_1EBABA6A0, &qword_1B9653B48);
            }

            else
            {
              sub_1B8DE20B0();
              sub_1B8CD19E8(&qword_1EBABA3A0, type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput);
              sub_1B964C740();
              result = sub_1B8DE205C();
              if (v16)
              {
                return result;
              }
            }

            v25 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__barcodes;
            result = swift_beginAccess();
            if (*(*(a1 + v25) + 16))
            {
              type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(0);
              sub_1B8CD19E8(&qword_1EBABA8A0, type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode);

              sub_1B964C730();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B8DE7F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_280();
  v9 = *(v8(v7) + 20);
  if (*(v5 + v9) != *(v4 + v9))
  {
    v10 = *(v5 + v9);

    v11 = OUTLINED_FUNCTION_177_1();
    v12 = a4(v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_8();
  sub_1B8CD19E8(v13, v14);
  OUTLINED_FUNCTION_231();
  return sub_1B964C850() & 1;
}

void sub_1B8DE806C()
{
  OUTLINED_FUNCTION_284();
  v77 = v0;
  v2 = v1;
  v73 = type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput(0);
  v3 = OUTLINED_FUNCTION_59_1(v73);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v70[0] = v7 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA20, &qword_1B96556A8);
  OUTLINED_FUNCTION_59_1(v71);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v74 = v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA6A0, &qword_1B9653B48);
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66();
  v70[1] = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v72 = v70 - v19;
  v20 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v75 = (v25 - v24);
  v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92B0, &unk_1B964DA90) - 8);
  v27 = *(*v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v70 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92A8, &qword_1B9653B40);
  v32 = OUTLINED_FUNCTION_183(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_66();
  v76 = (v35 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v39 = v70 - v38;
  OUTLINED_FUNCTION_521();
  v40 = v2;
  sub_1B8D92024();
  v41 = v77;
  OUTLINED_FUNCTION_521();
  v42 = v26[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v30);
  if (v45)
  {

    sub_1B8D9207C(v39, &qword_1EBAB92A8, &qword_1B9653B40);
    OUTLINED_FUNCTION_75(&v30[v42]);
    v43 = v41;
    if (v45)
    {
      sub_1B8D9207C(v30, &qword_1EBAB92A8, &qword_1B9653B40);
      goto LABEL_12;
    }

LABEL_9:
    sub_1B8D9207C(v30, &qword_1EBAB92B0, &unk_1B964DA90);
    goto LABEL_22;
  }

  v43 = v41;
  v44 = v76;
  sub_1B8D92024();
  OUTLINED_FUNCTION_75(&v30[v42]);
  if (v45)
  {

    sub_1B8D9207C(v39, &qword_1EBAB92A8, &qword_1B9653B40);
    OUTLINED_FUNCTION_8_4();
    sub_1B8DE205C();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_7();
  v46 = v75;
  sub_1B8DE20B0();

  v47 = static Argos_Protos_Visualunderstandingpb_RegionOfInterest.== infix(_:_:)(v44, v46);
  v20 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest;
  sub_1B8DE205C();
  sub_1B8D9207C(v39, &qword_1EBAB92A8, &qword_1B9653B40);
  sub_1B8DE205C();
  v48 = OUTLINED_FUNCTION_486();
  sub_1B8D9207C(v48, v49, &qword_1B9653B40);
  if ((v47 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v50 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__imageEmbeddings;
  OUTLINED_FUNCTION_521();
  v51 = *(v40 + v50);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_144_1();

  OUTLINED_FUNCTION_113_0();
  sub_1B8D86DC4();
  OUTLINED_FUNCTION_143_1();

  if ((v20 & 1) == 0)
  {
    goto LABEL_22;
  }

  v52 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__entities;
  OUTLINED_FUNCTION_521();
  v53 = *(v40 + v52);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_144_1();

  OUTLINED_FUNCTION_113_0();
  sub_1B8D878BC();
  OUTLINED_FUNCTION_143_1();

  v54 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__predictedLabels;
  OUTLINED_FUNCTION_521();
  v55 = *(v40 + v54);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_144_1();

  OUTLINED_FUNCTION_113_0();
  sub_1B8D87910();
  OUTLINED_FUNCTION_143_1();

  v56 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__visualTokens;
  OUTLINED_FUNCTION_521();
  v57 = *(v40 + v56);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_144_1();

  OUTLINED_FUNCTION_113_0();
  sub_1B8D87B00();
  OUTLINED_FUNCTION_143_1();

  v58 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__localFeatures;
  OUTLINED_FUNCTION_521();
  v59 = *(v40 + v58);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_144_1();

  OUTLINED_FUNCTION_113_0();
  sub_1B8D87DA0();
  OUTLINED_FUNCTION_143_1();

  OUTLINED_FUNCTION_521();
  v60 = v72;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v61 = *(v71 + 48);
  v62 = v74;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v62, 1, v73);
  if (v45)
  {
    sub_1B8D9207C(v60, &qword_1EBABA6A0, &qword_1B9653B48);
    OUTLINED_FUNCTION_37_0(v62 + v61);
    v63 = v40;
    if (v45)
    {
      sub_1B8D9207C(v62, &qword_1EBABA6A0, &qword_1B9653B48);
LABEL_25:
      v66 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__barcodes;
      OUTLINED_FUNCTION_521();
      v67 = *(v63 + v66);
      v68 = OBJC_IVAR____TtCV10PegasusAPI46Argos_Protos_Visualunderstandingpb_ImageRegionP33_369E175ED645D1B72790FB95B28E081113_StorageClass__barcodes;
      OUTLINED_FUNCTION_521();
      v69 = *(v43 + v68);

      OUTLINED_FUNCTION_177_1();
      sub_1B8D87F78();

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v62 + v61);
  if (v64)
  {
    sub_1B8D9207C(v60, &qword_1EBABA6A0, &qword_1B9653B48);
    sub_1B8DE205C();
LABEL_21:
    sub_1B8D9207C(v62, &qword_1EBABAA20, &qword_1B96556A8);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_7_5();
  sub_1B8DE20B0();
  v65 = static Argos_Protos_Scenenetfeaturespb_ScenenetOutput.== infix(_:_:)();
  sub_1B8DE205C();
  sub_1B8D9207C(v60, &qword_1EBABA6A0, &qword_1B9653B48);
  OUTLINED_FUNCTION_486();
  sub_1B8DE205C();
  sub_1B8D9207C(v62, &qword_1EBABA6A0, &qword_1B9653B48);
  v63 = v40;
  if (v65)
  {
    goto LABEL_25;
  }

LABEL_22:

LABEL_23:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DE890C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABA9D8, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DE898C(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA6E8, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DE89FC()
{
  sub_1B8CD19E8(&qword_1EBABA6E8, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DE8AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_158_2();
  __swift_allocate_value_buffer(v8, v5);
  __swift_project_value_buffer(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B964D060;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = v7;
  *(v14 + 8) = v6;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v16 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 104);
  (v18)(v14, v15, v16);
  v19 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v19 = a5;
  *(v19 + 1) = 11;
  v19[16] = 2;
  v20 = *MEMORY[0x1E69AADC8];
  v18();
  return sub_1B964C760();
}

void sub_1B8DE8CE4()
{
  OUTLINED_FUNCTION_99_2();
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_98_2();
      sub_1B8DE8D64();
    }

    else if (v1 == 1)
    {
      sub_1B964C530();
    }
  }
}

void sub_1B8DE8D64()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD19E8(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_15_2();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor(0), sub_1B8CD19E8(&qword_1EBABA710, type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
    {
      v4 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8DE8EB8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0 || (a3(*(v5 + 16), *(v4 + 16)) & 1) == 0)
  {
    return 0;
  }

  v11 = *(a4(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_8();
  sub_1B8CD19E8(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DE9004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABA9D0, type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DE9084(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA828, type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DE90F4()
{
  sub_1B8CD19E8(&qword_1EBABA828, type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DE9174()
{
  result = MEMORY[0x1BFADC850](0x706972637365442ELL, 0xEB00000000726F74);
  qword_1EBABA5F8 = 0xD000000000000032;
  unk_1EBABA600 = 0x80000001B96EB6A0;
  return result;
}

uint64_t sub_1B8DE9208()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA608);
  __swift_project_value_buffer(v0, qword_1EBABA608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B964E4A0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "x";
  *(v5 + 8) = 1;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "y";
  *(v9 + 8) = 1;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "values";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "scale";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "score";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "orientation";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.decodeMessage<A>(decoder:)()
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
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C430();
        break;
      default:
        continue;
    }
  }
}

uint64_t Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
    {
      if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C610(), !v1))
      {
        if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
        {
          if (*(v2 + 20) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
          {
            if (*(v2 + 24) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
            {
              v4 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor(0) + 40);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || (sub_1B8D63AC4(*(v3 + 8), *(v2 + 8)) & 1) == 0 || *(v3 + 16) != *(v2 + 16) || *(v3 + 20) != *(v2 + 20) || *(v3 + 24) != *(v2 + 24))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_8();
  sub_1B8CD19E8(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DE980C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABA9C8, type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DE988C(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA710, type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DE98FC()
{
  sub_1B8CD19E8(&qword_1EBABA710, type metadata accessor for Argos_Protos_Visualunderstandingpb_LocalFeatureSet.Descriptor);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DE9994()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA620);
  __swift_project_value_buffer(v0, qword_1EBABA620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
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
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "field_4";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 3;
  *v15 = "previous_embedding_model_urns";
  *(v15 + 1) = 29;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "embedding_fp16";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C430();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t Argos_Protos_Visualunderstandingpb_ImageEmbedding.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_15_2();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    if (!*(v1[2] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C610(), !v0))
    {
      if (!*(v1[5] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
      {
        v4 = v1[3];
        v5 = v1[4];
        v6 = OUTLINED_FUNCTION_616();
        if (sub_1B8D99EA8(v6, v7) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v0))
        {
          v8 = v1[6];
          v9 = v1[7];
          v10 = OUTLINED_FUNCTION_616();
          if (sub_1B8D99EA8(v10, v11) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v0))
          {
            v12 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Visualunderstandingpb_ImageEmbedding.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D63AC4(v3[2], v2[2]) & 1) == 0 || (MEMORY[0x1BFADC060](v3[3], v3[4], v2[3], v2[4]) & 1) == 0 || (sub_1B8D6123C(v3[5], v2[5]) & 1) == 0 || (MEMORY[0x1BFADC060](v3[6], v3[7], v2[6], v2[7]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_8();
  sub_1B8CD19E8(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DE9F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABA9C0, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DE9FE4(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA850, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DEA054()
{
  sub_1B8CD19E8(&qword_1EBABA850, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DEA0EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA638);
  __swift_project_value_buffer(v0, qword_1EBABA638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
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
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ids";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "distances";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "token_terms";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C450();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C430();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Argos_Protos_Visualunderstandingpb_VisualTokens.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_15_2();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      if (!*(v1[4] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C630(), !v0))
      {
        if (!*(v1[5] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C610(), !v0))
        {
          if (!*(v1[6] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
          {
            v7 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Argos_Protos_Visualunderstandingpb_VisualTokens.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2] == v2[2] && v3[3] == v2[3];
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D921A4(v3[4], v2[4]) & 1) == 0 || (sub_1B8D63AC4(v3[5], v2[5]) & 1) == 0 || (sub_1B8D6123C(v3[6], v2[6]) & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_8();
  sub_1B8CD19E8(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DEA6B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABA9B8, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DEA734(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA868, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DEA7A4()
{
  sub_1B8CD19E8(&qword_1EBABA868, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens);

  return sub_1B964C5D0();
}

void sub_1B8DEA8DC()
{
  OUTLINED_FUNCTION_99_2();
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_98_2();
      sub_1B8DEA93C();
    }
  }
}

void sub_1B8DEA93C()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD19E8(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t Argos_Protos_Visualunderstandingpb_OCRData.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(0), sub_1B8CD19E8(&qword_1EBABA738, type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v3 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B8DEAA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_468();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a4(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_8();
  sub_1B8CD19E8(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DEABA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABA9B0, type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DEAC28(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA6F0, type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DEAC98()
{
  sub_1B8CD19E8(&qword_1EBABA6F0, type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DEAD30()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABA668);
  __swift_project_value_buffer(v0, qword_1EBABA668);
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

uint64_t Argos_Protos_Visualunderstandingpb_TextAnnotation.decodeMessage<A>(decoder:)()
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
        sub_1B8DEB044();
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

uint64_t sub_1B8DEB044()
{
  v0 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(0) + 32);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  sub_1B8CD19E8(&qword_1EBABA748, type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest);
  return sub_1B964C580();
}

void Argos_Protos_Visualunderstandingpb_TextAnnotation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_273_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_614();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92A8, &qword_1B9653B40);
  OUTLINED_FUNCTION_183(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(0);
  v31 = OUTLINED_FUNCTION_59_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_15_2();
  if (!v34 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v20))
  {
    a10 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(0);
    v35 = *(a10 + 32);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
    {
      sub_1B8D9207C(v29, &qword_1EBAB92A8, &qword_1B9653B40);
    }

    else
    {
      OUTLINED_FUNCTION_1_7();
      sub_1B8DE20B0();
      sub_1B8CD19E8(&qword_1EBABA748, type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest);
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_8_4();
      sub_1B8DE205C();
      if (v20)
      {
        goto LABEL_11;
      }
    }

    v36 = *(v21 + 16);
    v37 = *(v21 + 24);
    OUTLINED_FUNCTION_1();
    if (!v38 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v20))
    {
      if (*(v21 + 32) == 0.0 || (OUTLINED_FUNCTION_22(), sub_1B964C6B0(), !v20))
      {
        v39 = *(a10 + 28);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Visualunderstandingpb_TextAnnotation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_280();
  v5 = type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest(v4);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92A8, &qword_1B9653B40);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_137();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92B0, &unk_1B964DA90);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_88();
  v20 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v30 = type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation(0);
  v21 = *(v30 + 32);
  v22 = *(v16 + 48);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_178(v2, 1, v5);
  if (!v20)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2 + v22, 1, v5);
    if (!v23)
    {
      OUTLINED_FUNCTION_1_7();
      sub_1B8DE20B0();
      v25 = static Argos_Protos_Visualunderstandingpb_RegionOfInterest.== infix(_:_:)(v3, v11);
      sub_1B8DE205C();
      sub_1B8DE205C();
      sub_1B8D9207C(v2, &qword_1EBAB92A8, &qword_1B9653B40);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_8_4();
    sub_1B8DE205C();
LABEL_14:
    sub_1B8D9207C(v2, &qword_1EBAB92B0, &unk_1B964DA90);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_178(v2 + v22, 1, v5);
  if (!v20)
  {
    goto LABEL_14;
  }

  sub_1B8D9207C(v2, &qword_1EBAB92A8, &qword_1B9653B40);
LABEL_18:
  v26 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (v26 || (sub_1B964C9F0()) && *(v1 + 32) == *(v0 + 32))
  {
    v27 = *(v30 + 28);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_8();
    sub_1B8CD19E8(v28, v29);
    v24 = OUTLINED_FUNCTION_634();
    goto LABEL_16;
  }

LABEL_15:
  v24 = 0;
LABEL_16:
  OUTLINED_FUNCTION_264(v24);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DEB64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABA9A8, type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DEB6CC(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA738, type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DEB73C()
{
  sub_1B8CD19E8(&qword_1EBABA738, type metadata accessor for Argos_Protos_Visualunderstandingpb_TextAnnotation);

  return sub_1B964C5D0();
}

void sub_1B8DEB7F4()
{
  OUTLINED_FUNCTION_243();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_158_2();
  __swift_allocate_value_buffer(v5, v0);
  __swift_project_value_buffer(v5, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B964D050;
  v10 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v10 = v2;
  *(v10 + 8) = v1;
  *(v10 + 16) = 2;
  v11 = *v4;
  v12 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v12);
  (*(v13 + 104))(v10, v11);
  sub_1B964C760();
  OUTLINED_FUNCTION_242();
}

uint64_t Argos_Protos_Visualunderstandingpb_Barcode.decodeMessage<A>(decoder:)()
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
      sub_1B8DEB9B4();
    }
  }

  return result;
}

uint64_t sub_1B8DEB9B4()
{
  v0 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(0) + 20);
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  sub_1B8CD19E8(&qword_1EBABA108, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin);
  return sub_1B964C580();
}

void Argos_Protos_Visualunderstandingpb_Barcode.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9298, &unk_1B9653B50);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_156();
  v7 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(v6);
  v8 = OUTLINED_FUNCTION_59_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v11 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(0) + 20);
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9298, &unk_1B9653B50);
LABEL_4:
    sub_1B964C290();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_2_6();
  sub_1B8DE20B0();
  sub_1B8CD19E8(&qword_1EBABA108, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin);
  OUTLINED_FUNCTION_153_1();
  sub_1B964C740();
  OUTLINED_FUNCTION_29_4();
  sub_1B8DE205C();
  if (!v0)
  {
    goto LABEL_4;
  }

LABEL_5:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Argos_Protos_Visualunderstandingpb_Barcode.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v7 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_137();
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92A0, &unk_1B964DA80) - 8);
  v12 = *(*v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_22_3();
  v15 = *(type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode(v14) + 20);
  v16 = v11[14];
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_643();
  OUTLINED_FUNCTION_37_0(v0);
  if (v20)
  {
    OUTLINED_FUNCTION_37_0(v0 + v16);
    if (v20)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9298, &unk_1B9653B50);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v16);
  if (v20)
  {
    OUTLINED_FUNCTION_29_4();
    sub_1B8DE205C();
LABEL_10:
    v21 = &qword_1EBAB92A0;
    v22 = &unk_1B964DA80;
LABEL_20:
    sub_1B8D9207C(v0, v21, v22);
LABEL_21:
    v19 = 0;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_2_6();
  sub_1B8DE20B0();
  v23 = *v2 == *v1 && *(v2 + 8) == *(v1 + 8);
  if (!v23 && (sub_1B964C9F0() & 1) == 0 || (v24 = *(v1 + 24), !sub_1B8D92198(*(v2 + 16), *(v2 + 24), *(v1 + 16))))
  {
    sub_1B8DE205C();
    sub_1B8DE205C();
    v21 = &qword_1EBAB9298;
    v22 = &unk_1B9653B50;
    goto LABEL_20;
  }

  v25 = *(v3 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_8();
  sub_1B8CD19E8(v26, v27);
  v28 = OUTLINED_FUNCTION_198_0();
  sub_1B8DE205C();
  OUTLINED_FUNCTION_491();
  sub_1B8DE205C();
  sub_1B8D9207C(v0, &qword_1EBAB9298, &unk_1B9653B50);
  if ((v28 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_8();
  sub_1B8CD19E8(v17, v18);
  OUTLINED_FUNCTION_294();
  v19 = sub_1B964C850();
LABEL_22:
  OUTLINED_FUNCTION_264(v19);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8DEBF40()
{
  OUTLINED_FUNCTION_145_2();
  sub_1B964CA70();
  v0(0);
  v1 = OUTLINED_FUNCTION_461();
  sub_1B8CD19E8(v1, v2);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8DEC014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD19E8(&qword_1EBABA9A0, type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DEC094(uint64_t a1)
{
  v2 = sub_1B8CD19E8(&qword_1EBABA8A0, type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DEC104()
{
  sub_1B8CD19E8(&qword_1EBABA8A0, type metadata accessor for Argos_Protos_Visualunderstandingpb_Barcode);

  return sub_1B964C5D0();
}

unint64_t sub_1B8DEC2E8()
{
  result = qword_1EBABA760;
  if (!qword_1EBABA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA760);
  }

  return result;
}

unint64_t sub_1B8DEC340()
{
  result = qword_1EBABA768;
  if (!qword_1EBABA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA768);
  }

  return result;
}

unint64_t sub_1B8DEC398()
{
  result = qword_1EBABA770;
  if (!qword_1EBABA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA770);
  }

  return result;
}

unint64_t sub_1B8DEC3F0()
{
  result = qword_1EBABA778;
  if (!qword_1EBABA778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABA780, &qword_1B9653C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABA778);
  }

  return result;
}

uint64_t sub_1B8DED5D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_80Tm_0);
}

uint64_t sub_1B8DED628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_81Tm_0);
}

uint64_t sub_1B8DED690(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Visualunderstandingpb_E2IAnnotation(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

void sub_1B8DED7A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B8DED878()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8DED924()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8DED9CC()
{
  sub_1B8DED7A4(319, &qword_1EBABA928, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B8DED7A4(319, &qword_1ED9CA010, type metadata accessor for Argos_Protos_Visualunderstandingpb_OCRData, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v4 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_231();
    OUTLINED_FUNCTION_81_0();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1B8DEDB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_102Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_103Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B8DEDD14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B8DED7A4(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8DEDDEC()
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

void sub_1B8DEDEB8()
{
  sub_1B8DD7D14(319, &qword_1ED9EB2E8);
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

uint64_t __swift_get_extra_inhabitant_index_165Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_166Tm()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B8DEE078()
{
  sub_1B8DD7D14(319, &qword_1EBABA968);
  if (v0 <= 0x3F)
  {
    sub_1B8DD7D14(319, &qword_1ED9EB2E8);
    if (v1 <= 0x3F)
    {
      sub_1B8DD7D14(319, qword_1EDA06FD0);
      if (v2 <= 0x3F)
      {
        sub_1B964C2B0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_80Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void __swift_store_extra_inhabitant_index_81Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1B8DEE290(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1B8DED7A4(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_107_0();
    }
  }
}

void sub_1B8DEE328()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8DED7A4(319, &qword_1ED9C92F0, type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8DEE424()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8DED7A4(319, &qword_1EBABA998, type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata.Gtin, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8DEE4E0()
{
  sub_1B8DED7A4(319, &qword_1ED9F3558, type metadata accessor for Locationpb_Point, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B8DEE5F8()
{
  sub_1B8DED7A4(319, &qword_1ED9C92F0, type metadata accessor for Argos_Protos_Visualunderstandingpb_RegionOfInterest, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B8DED7A4(319, &qword_1ED9C9B68, type metadata accessor for Argos_Protos_Scenenetfeaturespb_ScenenetOutput, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B8DEE734()
{
  result = qword_1EBABAA18;
  if (!qword_1EBABAA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABAA18);
  }

  return result;
}

unint64_t sub_1B8DEE788()
{
  result = qword_1ED9CD978;
  if (!qword_1ED9CD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CD978);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageRegion(0);
  v5 = *(result + 20);
  *(a1 + 64) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_2()
{
  result = *v0;
  if ((v0[1] & 0x2000000000000000) == 0)
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_5(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity(0);
  v4 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_2()
{
  result = type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_37_1()
{
  v0 = type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_93_1()
{
  v1 = *(v0 + *(type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_94_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_107_0()
{

  return swift_cvw_initStructMetadataWithLayoutString();
}

uint64_t OUTLINED_FUNCTION_131_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_143_1()
{
}

uint64_t OUTLINED_FUNCTION_144_1()
{
  v3 = *(v1 + v0);
}

uint64_t OUTLINED_FUNCTION_154_1(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Argos_Protos_Visualunderstandingpb_Entity(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_158_2()
{

  return sub_1B964C780();
}

uint64_t OUTLINED_FUNCTION_161_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_162_1()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_163_2(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8DEED1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Aspireresultpb_AspireResult.landmark.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_8_5(v8, v16);
  OUTLINED_FUNCTION_12_6();
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBABAA48, &qword_1B96556D0);
LABEL_6:
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    a1[4] = 0;
    a1[5] = MEMORY[0x1E69E7CC0];
    v11 = type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
    v12 = a1 + *(v11 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v11 + 40);
    v14 = type metadata accessor for Locationpb_Point(0);
    return __swift_storeEnumTagSinglePayload(a1 + v13, 1, 1, v14);
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B8DEF0B0(v1, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_288();
  return sub_1B8DEF2B4();
}

void (*Aspireresultpb_AspireResult.landmark.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_85(v8);
  v9 = type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_11_6(v12);
  OUTLINED_FUNCTION_9_5();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAA48, &qword_1B96556D0);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_128();
      sub_1B8DEF2B4();
      return sub_1B8DEF080;
    }

    sub_1B8DEF0B0(v0, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
  }

  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v11[2] = 0;
  v11[3] = 0xE000000000000000;
  v11[4] = 0;
  v11[5] = MEMORY[0x1E69E7CC0];
  v15 = v11 + *(v9 + 36);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v16 = *(v9 + 40);
  v17 = type metadata accessor for Locationpb_Point(0);
  __swift_storeEnumTagSinglePayload(v11 + v16, 1, 1, v17);
  return sub_1B8DEF080;
}

uint64_t sub_1B8DEF0B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t Aspireresultpb_AspireResult.storefrontList.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_8_5(v8, v13);
  OUTLINED_FUNCTION_12_6();
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBABAA48, &qword_1B96556D0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8DEF2B4();
    }

    sub_1B8DEF0B0(v1, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v12 = a1 + *(type metadata accessor for Aspiresnippetpb_StorefrontListSnippet(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8DEF200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v12 = &v14 - v11;
  OUTLINED_FUNCTION_177_1();
  sub_1B8DEF47C();
  return a7(v12);
}

uint64_t sub_1B8DEF2B4()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

void (*Aspireresultpb_AspireResult.storefrontList.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Aspiresnippetpb_StorefrontListSnippet(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_6(v13);
  OUTLINED_FUNCTION_9_5();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBABAA48, &qword_1B96556D0);
LABEL_7:
    *v12 = MEMORY[0x1E69E7CC0];
    v16 = v12 + *(v10 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    return sub_1B8DEF44C;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B8DEF0B0(v0, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_128();
  sub_1B8DEF2B4();
  return sub_1B8DEF44C;
}

uint64_t sub_1B8DEF47C()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t Aspireresultpb_AspireResult.geoList.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_8_5(v8, v13);
  OUTLINED_FUNCTION_12_6();
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBABAA48, &qword_1B96556D0);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_288();
      return sub_1B8DEF2B4();
    }

    sub_1B8DEF0B0(v1, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  v12 = a1 + *(type metadata accessor for Aspiresnippetpb_GeoListSnippet(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8DEF5EC()
{
  sub_1B8D9207C(v0, &qword_1EBABAA48, &qword_1B96556D0);
  OUTLINED_FUNCTION_128();
  sub_1B8DEF2B4();
  v1 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  OUTLINED_FUNCTION_543();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

void (*Aspireresultpb_AspireResult.geoList.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  v10 = type metadata accessor for Aspiresnippetpb_GeoListSnippet(v9);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_11_6(v13);
  OUTLINED_FUNCTION_9_5();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBABAA48, &qword_1B96556D0);
LABEL_7:
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v12[2] = MEMORY[0x1E69E7CC0];
    v16 = v12 + *(v10 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    return sub_1B8DEF7C0;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B8DEF0B0(v0, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_128();
  sub_1B8DEF2B4();
  return sub_1B8DEF7C0;
}

void sub_1B8DEF7F0(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *a1;
  v6 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = (*a1)[1];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8DEF47C();
    sub_1B8D9207C(v10, &qword_1EBABAA48, &qword_1B96556D0);
    sub_1B8DEF2B4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
    sub_1B8DEF0B0(v6, a5);
  }

  else
  {
    sub_1B8D9207C(**a1, &qword_1EBABAA48, &qword_1B96556D0);
    sub_1B8DEF2B4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v7);
  }

  free(v6);
  free(v9);
  free(v8);

  free(v5);
}

uint64_t Aspireresultpb_AspireResult.compressedGeoList.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v4 = (&v10 - v3);
  v5 = OUTLINED_FUNCTION_288();
  sub_1B8DD9078(v5, v6, &qword_1EBABAA48, &qword_1B96556D0);
  v7 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v7) == 1)
  {
    sub_1B8D9207C(v4, &qword_1EBABAA48, &qword_1B96556D0);
  }

  else
  {
    OUTLINED_FUNCTION_432();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      result = *v4;
      v9 = v4[1];
      return result;
    }

    sub_1B8DEF0B0(v4, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
  }

  return 0;
}

uint64_t sub_1B8DEFA24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B8D91FCC(*a1, v2);
  return Aspireresultpb_AspireResult.compressedGeoList.setter(v1, v2);
}

uint64_t Aspireresultpb_AspireResult.compressedGeoList.setter(uint64_t a1, uint64_t a2)
{
  sub_1B8D9207C(v2, &qword_1EBABAA48, &qword_1B96556D0);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  OUTLINED_FUNCTION_288();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
}

void (*Aspireresultpb_AspireResult.compressedGeoList.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[2] = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v4[3] = v7;
  v8 = OUTLINED_FUNCTION_461();
  sub_1B8DD9078(v8, v9, &qword_1EBABAA48, &qword_1B96556D0);
  v10 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  v4[4] = v10;
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBABAA48, &qword_1B96556D0);
LABEL_6:
    v11 = xmmword_1B9652FE0;
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B8DEF0B0(v7, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
    goto LABEL_6;
  }

  v11 = *v7;
LABEL_7:
  *v4 = v11;
  return sub_1B8DEFC20;
}

void sub_1B8DEFC20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    sub_1B8D91FCC(**a1, v3);
    sub_1B8D9207C(v7, &qword_1EBABAA48, &qword_1B96556D0);
    *v7 = v4;
    v7[1] = v3;
    OUTLINED_FUNCTION_461();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
    sub_1B8D538A0(*v2, v2[1]);
  }

  else
  {
    sub_1B8D9207C((*a1)[2], &qword_1EBABAA48, &qword_1B96556D0);
    *v7 = v4;
    v7[1] = v3;
    OUTLINED_FUNCTION_461();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  }

  free(v5);

  free(v2);
}

uint64_t Aspireresultpb_AspireResult.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Aspireresultpb_AspireResult(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Aspireresultpb_AspireResult.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Aspireresultpb_AspireResult(0) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t static Aspireresultpb_AspireResult.OneOf_Snippet.== infix(_:_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v85 = a2;
  v81 = type metadata accessor for Aspiresnippetpb_GeoListSnippet(0);
  v3 = OUTLINED_FUNCTION_59_1(v81);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v84 = (v7 - v6);
  v82 = type metadata accessor for Aspiresnippetpb_StorefrontListSnippet(0);
  v8 = OUTLINED_FUNCTION_59_1(v82);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  v83 = (v12 - v11);
  v13 = type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v19 = v18 - v17;
  v20 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = (&v80 - v28);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = (&v80 - v31);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v80 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA50, &qword_1B96556D8);
  OUTLINED_FUNCTION_183(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_176();
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = &v80 - v40;
  v42 = (&v80 + *(v39 + 56) - v40);
  sub_1B8DEF47C();
  sub_1B8DEF47C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_8();
      sub_1B8DEF47C();
      if (OUTLINED_FUNCTION_32_4() != 1)
      {
        v43 = type metadata accessor for Aspiresnippetpb_StorefrontListSnippet;
        v44 = v32;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_5_3();
      v63 = v83;
      sub_1B8DEF2B4();
      v64 = *v32;
      v65 = *v63;
      sub_1B8D74864();
      if (v66)
      {
        v67 = *(v82 + 20);
        a1 = sub_1B964C2B0();
        OUTLINED_FUNCTION_3_8();
        sub_1B8CD1A30(v68, v69);
        if (sub_1B964C850())
        {
          OUTLINED_FUNCTION_13_3();
          sub_1B8DEF0B0(v63, v70);
          v54 = v32;
          goto LABEL_19;
        }
      }

      OUTLINED_FUNCTION_13_3();
      sub_1B8DEF0B0(v63, v77);
      v75 = v32;
      goto LABEL_29;
    case 2u:
      OUTLINED_FUNCTION_1_8();
      sub_1B8DEF47C();
      if (OUTLINED_FUNCTION_32_4() != 2)
      {
        v43 = type metadata accessor for Aspiresnippetpb_GeoListSnippet;
        v44 = v29;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_4_6();
      v45 = v84;
      sub_1B8DEF2B4();
      v46 = *v29 == *v45 && v29[1] == v45[1];
      if (v46 || (sub_1B964C9F0() & 1) != 0)
      {
        v47 = v29[2];
        v48 = v45[2];
        sub_1B8D786C4();
        if (v49)
        {
          v50 = *(v81 + 24);
          a1 = sub_1B964C2B0();
          OUTLINED_FUNCTION_3_8();
          sub_1B8CD1A30(v51, v52);
          if (sub_1B964C850())
          {
            OUTLINED_FUNCTION_14_5();
            sub_1B8DEF0B0(v45, v53);
            v54 = v29;
LABEL_19:
            sub_1B8DEF0B0(v54, a1);
            OUTLINED_FUNCTION_0_9();
            sub_1B8DEF0B0(v41, v71);
            v60 = 1;
            return v60 & 1;
          }
        }
      }

      OUTLINED_FUNCTION_14_5();
      sub_1B8DEF0B0(v45, v74);
      v75 = v29;
LABEL_29:
      sub_1B8DEF0B0(v75, a1);
      OUTLINED_FUNCTION_0_9();
      sub_1B8DEF0B0(v41, v78);
      goto LABEL_30;
    case 3u:
      OUTLINED_FUNCTION_1_8();
      sub_1B8DEF47C();
      v56 = *v26;
      v55 = v26[1];
      if (OUTLINED_FUNCTION_32_4() == 3)
      {
        v58 = *v42;
        v57 = v42[1];
        v59 = OUTLINED_FUNCTION_186();
        v60 = MEMORY[0x1BFADC060](v59);
        sub_1B8D538A0(v58, v57);
        v61 = OUTLINED_FUNCTION_186();
        sub_1B8D538A0(v61, v62);
        goto LABEL_27;
      }

      v72 = OUTLINED_FUNCTION_186();
      sub_1B8D538A0(v72, v73);
      goto LABEL_24;
    default:
      OUTLINED_FUNCTION_1_8();
      sub_1B8DEF47C();
      if (OUTLINED_FUNCTION_32_4())
      {
        v43 = type metadata accessor for Aspiresnippetpb_LandmarkSnippet;
        v44 = v34;
LABEL_23:
        sub_1B8DEF0B0(v44, v43);
LABEL_24:
        sub_1B8D9207C(v41, &qword_1EBABAA50, &qword_1B96556D8);
LABEL_30:
        v60 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_6_3();
        sub_1B8DEF2B4();
        v60 = static Aspiresnippetpb_LandmarkSnippet.== infix(_:_:)(v34, v19);
        sub_1B8DEF0B0(v19, type metadata accessor for Aspiresnippetpb_LandmarkSnippet);
        sub_1B8DEF0B0(v34, type metadata accessor for Aspiresnippetpb_LandmarkSnippet);
LABEL_27:
        OUTLINED_FUNCTION_0_9();
        sub_1B8DEF0B0(v41, v76);
      }

      return v60 & 1;
  }
}

uint64_t Aspireresultpb_AspireResult.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Aspireresultpb_AspireResult(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8DF042C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABAA30);
  __swift_project_value_buffer(v0, qword_1EBABAA30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "landmark";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "storefront_list";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "geo_list";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "compressed_geo_list";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Aspireresultpb_AspireResult._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6090 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABAA30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Aspireresultpb_AspireResult.decodeMessage<A>(decoder:)()
{
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
        sub_1B8DF07D8(v3, v4, v5, v6);
        break;
      case 2:
        v13 = OUTLINED_FUNCTION_17_3();
        sub_1B8DF0CD0(v13, v14, v15, v16);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B8DF11C8(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_288();
        sub_1B8DF16C0(v11, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DF07D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAAC8, &qword_1B96558D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1B8DD9078(a1, v12, &qword_1EBABAA48, &qword_1B96556D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBABAA48, &qword_1B96556D0);
  }

  else
  {
    sub_1B8DEF2B4();
    sub_1B8DEF2B4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B8DEF0B0(v17, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
    }

    else
    {
      sub_1B8D9207C(v24, &qword_1EBABAAC8, &qword_1B96558D0);
      sub_1B8DEF2B4();
      sub_1B8DEF2B4();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }
  }

  sub_1B8CD1A30(&qword_1EBABAAB0, type metadata accessor for Aspiresnippetpb_LandmarkSnippet);
  v25 = v35;
  sub_1B964C580();
  if (v25)
  {
    v26 = v24;
    return sub_1B8D9207C(v26, &qword_1EBABAAC8, &qword_1B96558D0);
  }

  sub_1B8DD9078(v24, v22, &qword_1EBABAAC8, &qword_1B96558D0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_1B8D9207C(v24, &qword_1EBABAAC8, &qword_1B96558D0);
    v26 = v22;
    return sub_1B8D9207C(v26, &qword_1EBABAAC8, &qword_1B96558D0);
  }

  sub_1B8DEF2B4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v28 = v33;
  sub_1B8D9207C(v24, &qword_1EBABAAC8, &qword_1B96558D0);
  v29 = v31;
  sub_1B8D9207C(v31, &qword_1EBABAA48, &qword_1B96556D0);
  sub_1B8DEF2B4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1B8DF0CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Aspiresnippetpb_StorefrontListSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAAD0, &qword_1B96558D8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1B8DD9078(a1, v12, &qword_1EBABAA48, &qword_1B96556D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBABAA48, &qword_1B96556D0);
  }

  else
  {
    sub_1B8DEF2B4();
    sub_1B8DEF2B4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v24, &qword_1EBABAAD0, &qword_1B96558D8);
      sub_1B8DEF2B4();
      sub_1B8DEF2B4();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1B8DEF0B0(v17, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
    }
  }

  sub_1B8CD1A30(&qword_1EBABAAB8, type metadata accessor for Aspiresnippetpb_StorefrontListSnippet);
  v25 = v35;
  sub_1B964C580();
  if (v25)
  {
    v26 = v24;
    return sub_1B8D9207C(v26, &qword_1EBABAAD0, &qword_1B96558D8);
  }

  sub_1B8DD9078(v24, v22, &qword_1EBABAAD0, &qword_1B96558D8);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_1B8D9207C(v24, &qword_1EBABAAD0, &qword_1B96558D8);
    v26 = v22;
    return sub_1B8D9207C(v26, &qword_1EBABAAD0, &qword_1B96558D8);
  }

  sub_1B8DEF2B4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v28 = v33;
  sub_1B8D9207C(v24, &qword_1EBABAAD0, &qword_1B96558D8);
  v29 = v31;
  sub_1B8D9207C(v31, &qword_1EBABAA48, &qword_1B96556D0);
  sub_1B8DEF2B4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1B8DF11C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Aspiresnippetpb_GeoListSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAAD8, &qword_1B96558E0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1B8DD9078(a1, v12, &qword_1EBABAA48, &qword_1B96556D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBABAA48, &qword_1B96556D0);
  }

  else
  {
    sub_1B8DEF2B4();
    sub_1B8DEF2B4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v24, &qword_1EBABAAD8, &qword_1B96558E0);
      sub_1B8DEF2B4();
      sub_1B8DEF2B4();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_1B8DEF0B0(v17, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
    }
  }

  sub_1B8CD1A30(&qword_1EBABAAC0, type metadata accessor for Aspiresnippetpb_GeoListSnippet);
  v25 = v35;
  sub_1B964C580();
  if (v25)
  {
    v26 = v24;
    return sub_1B8D9207C(v26, &qword_1EBABAAD8, &qword_1B96558E0);
  }

  sub_1B8DD9078(v24, v22, &qword_1EBABAAD8, &qword_1B96558E0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_1B8D9207C(v24, &qword_1EBABAAD8, &qword_1B96558E0);
    v26 = v22;
    return sub_1B8D9207C(v26, &qword_1EBABAAD8, &qword_1B96558E0);
  }

  sub_1B8DEF2B4();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v28 = v33;
  sub_1B8D9207C(v24, &qword_1EBABAAD8, &qword_1B96558E0);
  v29 = v31;
  sub_1B8D9207C(v31, &qword_1EBABAA48, &qword_1B96556D0);
  sub_1B8DEF2B4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_1B8DF16C0(uint64_t a1, __int128 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v12 = xmmword_1B96556C0;
  sub_1B964C460();
  v8 = v12;
  if (v2 || *(&v12 + 1) >> 60 == 15)
  {
    return sub_1B8DF2920(v12, *(&v12 + 1));
  }

  sub_1B8DD9078(a2, v7, &qword_1EBABAA48, &qword_1B96556D0);
  v13 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v13);
  sub_1B8D91FCC(v8, *(&v8 + 1));
  sub_1B8D9207C(v7, &qword_1EBABAA48, &qword_1B96556D0);
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8DF2920(v8, *(&v8 + 1));
  sub_1B8D9207C(a2, &qword_1EBABAA48, &qword_1B96556D0);
  *a2 = v8;
  v11 = v13;
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
}

uint64_t Aspireresultpb_AspireResult.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  sub_1B8DD9078(v0, &v26 - v6, &qword_1EBABAA48, &qword_1B96556D0);
  v8 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
  {
    OUTLINED_FUNCTION_686();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v20 = OUTLINED_FUNCTION_7_6();
        sub_1B8DF1C14(v20, v21, v22, v23);
        goto LABEL_8;
      case 2u:
        v13 = OUTLINED_FUNCTION_7_6();
        sub_1B8DF1E28(v13, v14, v15, v16);
        goto LABEL_8;
      case 3u:
        OUTLINED_FUNCTION_0_9();
        sub_1B8DEF0B0(v7, v17);
        v18 = OUTLINED_FUNCTION_7_6();
        result = sub_1B8DF203C(v18);
        if (!v1)
        {
          break;
        }

        return result;
      default:
        v9 = OUTLINED_FUNCTION_7_6();
        sub_1B8DF1A04(v9, v10, v11, v12);
LABEL_8:
        OUTLINED_FUNCTION_0_9();
        result = sub_1B8DEF0B0(v7, v24);
        if (!v1)
        {
          break;
        }

        return result;
    }
  }

  v25 = v0 + *(type metadata accessor for Aspireresultpb_AspireResult(0) + 20);
  return sub_1B964C290();
}

uint64_t sub_1B8DF1A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8DD9078(a1, v8, &qword_1EBABAA48, &qword_1B96556D0);
  v13 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_1B8D9207C(v8, &qword_1EBABAA48, &qword_1B96556D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B8DEF2B4();
      sub_1B8CD1A30(&qword_1EBABAAB0, type metadata accessor for Aspiresnippetpb_LandmarkSnippet);
      sub_1B964C740();
      return sub_1B8DEF0B0(v12, type metadata accessor for Aspiresnippetpb_LandmarkSnippet);
    }

    result = sub_1B8DEF0B0(v8, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8DF1C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Aspiresnippetpb_StorefrontListSnippet(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8DD9078(a1, v8, &qword_1EBABAA48, &qword_1B96556D0);
  v13 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_1B8D9207C(v8, &qword_1EBABAA48, &qword_1B96556D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8DEF2B4();
      sub_1B8CD1A30(&qword_1EBABAAB8, type metadata accessor for Aspiresnippetpb_StorefrontListSnippet);
      sub_1B964C740();
      return sub_1B8DEF0B0(v12, type metadata accessor for Aspiresnippetpb_StorefrontListSnippet);
    }

    result = sub_1B8DEF0B0(v8, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8DF1E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Aspiresnippetpb_GeoListSnippet(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8DD9078(a1, v8, &qword_1EBABAA48, &qword_1B96556D0);
  v13 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_1B8D9207C(v8, &qword_1EBABAA48, &qword_1B96556D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8DEF2B4();
      sub_1B8CD1A30(&qword_1EBABAAC0, type metadata accessor for Aspiresnippetpb_GeoListSnippet);
      sub_1B964C740();
      return sub_1B8DEF0B0(v12, type metadata accessor for Aspiresnippetpb_GeoListSnippet);
    }

    result = sub_1B8DEF0B0(v8, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8DF203C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v10 - v4);
  sub_1B8DD9078(a1, &v10 - v4, &qword_1EBABAA48, &qword_1B96556D0);
  v6 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_1B8D9207C(v5, &qword_1EBABAA48, &qword_1B96556D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v8 = *v5;
      v7 = v5[1];
      sub_1B964C6A0();
      return sub_1B8D538A0(v8, v7);
    }

    result = sub_1B8DEF0B0(v5, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
  }

  __break(1u);
  return result;
}

uint64_t static Aspireresultpb_AspireResult.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_280();
  v3 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(v2);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = OUTLINED_FUNCTION_686();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v38 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA58, &qword_1B96556E0);
  OUTLINED_FUNCTION_183(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - v23;
  v25 = *(v22 + 56);
  sub_1B8DD9078(v1, &v38 - v23, &qword_1EBABAA48, &qword_1B96556D0);
  sub_1B8DD9078(v0, &v24[v25], &qword_1EBABAA48, &qword_1B96556D0);
  OUTLINED_FUNCTION_50(v24);
  if (v30)
  {
    OUTLINED_FUNCTION_50(&v24[v25]);
    if (v30)
    {
      sub_1B8D9207C(v24, &qword_1EBABAA48, &qword_1B96556D0);
LABEL_12:
      v34 = *(type metadata accessor for Aspireresultpb_AspireResult(0) + 20);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_3_8();
      sub_1B8CD1A30(v35, v36);
      v32 = sub_1B964C850();
      return v32 & 1;
    }

    goto LABEL_9;
  }

  v26 = OUTLINED_FUNCTION_177_1();
  sub_1B8DD9078(v26, v27, v28, v29);
  OUTLINED_FUNCTION_50(&v24[v25]);
  if (v30)
  {
    OUTLINED_FUNCTION_0_9();
    sub_1B8DEF0B0(v17, v31);
LABEL_9:
    sub_1B8D9207C(v24, &qword_1EBABAA58, &qword_1B96556E0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_8();
  sub_1B8DEF2B4();
  v33 = static Aspireresultpb_AspireResult.OneOf_Snippet.== infix(_:_:)(v17, v9);
  sub_1B8DEF0B0(v9, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
  sub_1B8DEF0B0(v17, type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet);
  sub_1B8D9207C(v24, &qword_1EBABAA48, &qword_1B96556D0);
  if (v33)
  {
    goto LABEL_12;
  }

LABEL_10:
  v32 = 0;
  return v32 & 1;
}

uint64_t Aspireresultpb_AspireResult.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Aspireresultpb_AspireResult(0);
  sub_1B8CD1A30(&qword_1EBABAA60, type metadata accessor for Aspireresultpb_AspireResult);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8DF24F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1A30(&qword_1EBABAAA8, type metadata accessor for Aspireresultpb_AspireResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DF2574(uint64_t a1)
{
  v2 = sub_1B8CD1A30(&qword_1EBABAA70, type metadata accessor for Aspireresultpb_AspireResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DF25E4()
{
  sub_1B8CD1A30(&qword_1EBABAA70, type metadata accessor for Aspireresultpb_AspireResult);

  return sub_1B964C5D0();
}

void sub_1B8DF27AC()
{
  sub_1B8DF2830();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8DF2830()
{
  if (!qword_1EBABAA90)
  {
    type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(255);
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBABAA90);
    }
  }
}

uint64_t sub_1B8DF2890()
{
  result = type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Aspiresnippetpb_StorefrontListSnippet(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Aspiresnippetpb_GeoListSnippet(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B8DF2920(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B8D538A0(a1, a2);
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_8_5@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1B8DD9078(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_9_5()
{
  v2 = type metadata accessor for Aspireresultpb_AspireResult.OneOf_Snippet(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1)
{
  *(v3 + 24) = a1;

  return sub_1B8DD9078(v2, v1, v4, v5);
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t Aspiresnippetpb_GeoListSnippet.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Aspiresnippetpb_GeoListSnippet(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Aspiresnippetpb_GeoListSnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 16);
  v5 = v0[2];
  sub_1B8D786C4();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Aspiresnippetpb_GeoListSnippet(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_9();
  sub_1B8CD1A78(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t Aspiresnippetpb_MapRegion.unknownFields.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  v3 = *(type metadata accessor for Aspiresnippetpb_MapRegion(v2) + 32);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t Aspiresnippetpb_MapRegion.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Aspiresnippetpb_MapRegion(v2) + 32);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Aspiresnippetpb_MapRegion.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Aspiresnippetpb_MapRegion(v0) + 32);
  return nullsub_1;
}

uint64_t Aspiresnippetpb_MapRegion.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Aspiresnippetpb_MapRegion(v1);
  *v0 = 0;
  v0[1] = 0;
  v3 = v0 + *(v2 + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Aspiresnippetpb_GeoListSnippet.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Aspiresnippetpb_GeoListSnippet.title.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Aspiresnippetpb_GeoListSnippet.pois.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Aspiresnippetpb_GeoListSnippet.unknownFields.getter()
{
  v2 = OUTLINED_FUNCTION_27();
  v3 = *(type metadata accessor for Aspiresnippetpb_GeoListSnippet(v2) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t Aspiresnippetpb_GeoListSnippet.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Aspiresnippetpb_GeoListSnippet(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Aspiresnippetpb_GeoListSnippet.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Aspiresnippetpb_GeoListSnippet(v0) + 24);
  return nullsub_1;
}

uint64_t Aspiresnippetpb_GeoPoi.debugApolloID.getter()
{
  OUTLINED_FUNCTION_8_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  if (*(v2 + 24))
  {
    v3 = *(v2 + 16);
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8DF3078(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Aspiresnippetpb_GeoPoi.debugApolloID.setter();
}

uint64_t Aspiresnippetpb_GeoPoi.debugApolloID.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_15_3();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_6();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DF602C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
}

void (*Aspiresnippetpb_GeoPoi.debugApolloID.modify())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_8_6();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_521();
  if (*(v4 + 24))
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v1 + 48) = v5;
  *(v1 + 56) = v6;

  return sub_1B8DF31BC;
}

void sub_1B8DF31BC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    OUTLINED_FUNCTION_461();
    Aspiresnippetpb_GeoPoi.debugApolloID.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_10_6();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B8DF602C(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v10 + 24);
    *(v10 + 16) = v4;
    *(v10 + 24) = v3;
  }

  free(v1);
}

BOOL Aspiresnippetpb_GeoPoi.hasDebugApolloID.getter()
{
  OUTLINED_FUNCTION_8_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 24) != 0;
}

Swift::Void __swiftcall Aspiresnippetpb_GeoPoi.clearDebugApolloID()()
{
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_6();
    v3 = sub_1B8DF602C(v3);
    *(v0 + v1) = v3;
  }

  OUTLINED_FUNCTION_9_3();
  v4 = *(v3 + 24);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
}

uint64_t Aspiresnippetpb_GeoPoi.debugZioID.getter()
{
  OUTLINED_FUNCTION_8_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  if (*(v2 + 40))
  {
    return 0;
  }

  else
  {
    return *(v2 + 32);
  }
}

uint64_t Aspiresnippetpb_GeoPoi.debugZioID.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Aspiresnippetpb_GeoPoi(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DF602C(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v7 + 32) = v0;
  *(v7 + 40) = 0;
  return result;
}

uint64_t Aspiresnippetpb_GeoPoi.debugZioID.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_8_6();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_521();
  v5 = *(v4 + 32);
  if (*(v4 + 40))
  {
    v5 = 0;
  }

  *(v1 + 72) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DF3438(uint64_t *a1)
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
    OUTLINED_FUNCTION_10_6();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8DF602C(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 32) = v2;
  *(v7 + 40) = 0;

  free(v1);
}

BOOL Aspiresnippetpb_GeoPoi.hasDebugZioID.getter()
{
  OUTLINED_FUNCTION_8_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return (*(v2 + 40) & 1) == 0;
}

Swift::Void __swiftcall Aspiresnippetpb_GeoPoi.clearDebugZioID()()
{
  v2 = OUTLINED_FUNCTION_43_0();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_6();
    v3 = sub_1B8DF602C(v3);
    *(v0 + v1) = v3;
  }

  OUTLINED_FUNCTION_9_3();
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
}

uint64_t Aspiresnippetpb_GeoPoi.title.getter()
{
  OUTLINED_FUNCTION_8_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8DF35C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Aspiresnippetpb_GeoPoi.title.setter();
}

uint64_t Aspiresnippetpb_GeoPoi.title.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_15_3();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_6();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DF602C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 56);
  *(v5 + 48) = v2;
  *(v5 + 56) = v0;
}

void (*Aspiresnippetpb_GeoPoi.title.modify())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_8_6();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_521();
  v5 = *(v4 + 56);
  *(v1 + 48) = *(v4 + 48);
  *(v1 + 56) = v5;

  return sub_1B8DF36F4;
}

void sub_1B8DF36F4(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    OUTLINED_FUNCTION_461();
    Aspiresnippetpb_GeoPoi.title.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_10_6();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B8DF602C(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v10 + 56);
    *(v10 + 48) = v4;
    *(v10 + 56) = v3;
  }

  free(v1);
}

uint64_t Aspiresnippetpb_GeoPoi.prefGeocode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v7 = &v16 - v6;
  OUTLINED_FUNCTION_8_6();
  v9 = *(v1 + v8);
  OUTLINED_FUNCTION_101_0();
  sub_1B8D92024();
  v10 = type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_57(v7);
  if (v11)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xE000000000000000;
    v12 = a1 + *(v10 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v10 + 36);
    v14 = sub_1B964C130();
    __swift_storeEnumTagSinglePayload(a1 + v13, 1, 1, v14);
    result = OUTLINED_FUNCTION_57(v7);
    if (!v11)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_4();
    return sub_1B8DF8990();
  }

  return result;
}

uint64_t Aspiresnippetpb_GeoPoi.prefGeocode.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_13_4();
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DF602C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_68_1();
  v10 = type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Aspiresnippetpb_GeoPoi.prefGeocode.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Locationpb_Point(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_8_6();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    *(v13 + 24) = 1;
    v13[4] = 0;
    v13[5] = 0xE000000000000000;
    v17 = v13 + *(v9 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v9 + 36);
    v19 = sub_1B964C130();
    __swift_storeEnumTagSinglePayload(v13 + v18, 1, 1, v19);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_64_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Aspiresnippetpb_GeoPoi.address.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_8_6();
  v9 = *(v1 + v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Geopb_StructuredAddress(0);
  OUTLINED_FUNCTION_57(v7);
  if (v10)
  {
    Geopb_StructuredAddress.init()(a1);
    result = OUTLINED_FUNCTION_57(v7);
    if (!v10)
    {
      return sub_1B8D9207C(v7, &qword_1EBABAB38, &qword_1B96558E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_9();
    return sub_1B8DF8990();
  }

  return result;
}

uint64_t Aspiresnippetpb_GeoPoi.address.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB38, &qword_1B96558E8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_13_4();
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DF602C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_68_1();
  v10 = type metadata accessor for Geopb_StructuredAddress(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Aspiresnippetpb_GeoPoi.address.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Geopb_StructuredAddress(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_8_6();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v13[4] = 0;
    v13[5] = 0xE000000000000000;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    v13[8] = 0;
    v13[9] = 0xE000000000000000;
    v13[10] = 0;
    v13[11] = 0xE000000000000000;
    v13[12] = 0;
    v13[13] = 0xE000000000000000;
    v13[14] = 0;
    v13[15] = 0xE000000000000000;
    v13[16] = 0;
    v13[17] = 0xE000000000000000;
    v13[18] = MEMORY[0x1E69E7CC0];
    v17 = v13 + *(v9 + 56);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBABAB38, &qword_1B96558E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_64_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8DF3E9C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8DF89E8();
    a3(v5);
    sub_1B8DF8A40();
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

uint64_t sub_1B8DF3F78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  OUTLINED_FUNCTION_8_6();
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

uint64_t sub_1B8DF407C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_16();
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = *(type metadata accessor for Aspiresnippetpb_GeoPoi(0) + 20);
  v17 = *(v4 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_6();
    v20 = OUTLINED_FUNCTION_40_0();
    *(v7 + v16) = sub_1B8DF602C(v20);
  }

  v21 = a3(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Aspiresnippetpb_GeoPoi.timezone.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v7 = &v14 - v6;
  OUTLINED_FUNCTION_8_6();
  v9 = *(v1 + v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Geopb_Timezone(0);
  OUTLINED_FUNCTION_57(v7);
  if (v11)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v12 = a1 + *(v10 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v7);
    if (!v11)
    {
      return sub_1B8D9207C(v7, &qword_1EBABAB48, &qword_1B96558F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_10();
    return sub_1B8DF8990();
  }

  return result;
}

uint64_t Aspiresnippetpb_GeoPoi.timezone.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB48, &qword_1B96558F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_13_4();
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DF602C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_68_1();
  v10 = type metadata accessor for Geopb_Timezone(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Aspiresnippetpb_GeoPoi.timezone.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Geopb_Timezone(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_8_6();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v17 = v13 + *(v9 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBABAB48, &qword_1B96558F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_10();
    OUTLINED_FUNCTION_64_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

double Aspiresnippetpb_GeoPoi.popularityScore.getter()
{
  OUTLINED_FUNCTION_8_6();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__popularityScore;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Aspiresnippetpb_GeoPoi.popularityScore.setter(double a1)
{
  v4 = OUTLINED_FUNCTION_43_0();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_6();
    v5 = sub_1B8DF602C(v5);
    *(v1 + v2) = v5;
  }

  v6 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__popularityScore;
  result = OUTLINED_FUNCTION_9_3();
  *(v5 + v6) = a1;
  return result;
}

uint64_t Aspiresnippetpb_GeoPoi.popularityScore.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_8_6();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__popularityScore;
  OUTLINED_FUNCTION_521();
  *(v1 + 72) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8DF461C(uint64_t *a1)
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
    OUTLINED_FUNCTION_10_6();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DF602C(v10);
    *(v9 + v8) = v7;
  }

  v11 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__popularityScore;
  OUTLINED_FUNCTION_18();
  *(v7 + v11) = v2;

  free(v1);
}

uint64_t Aspiresnippetpb_GeoPoi.modernPrimaryCategoryID.getter()
{
  OUTLINED_FUNCTION_8_6();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__modernPrimaryCategoryID);
  OUTLINED_FUNCTION_521();
  v4 = *v2;
  v3 = v2[1];

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B8DF4724(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Aspiresnippetpb_GeoPoi.modernPrimaryCategoryID.setter();
}

uint64_t Aspiresnippetpb_GeoPoi.modernPrimaryCategoryID.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_15_3();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_6();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DF602C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  v8 = (v5 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__modernPrimaryCategoryID);
  OUTLINED_FUNCTION_18();
  v9 = v8[1];
  *v8 = v2;
  v8[1] = v0;
}

void (*Aspiresnippetpb_GeoPoi.modernPrimaryCategoryID.modify())(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_8_6();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__modernPrimaryCategoryID);
  OUTLINED_FUNCTION_521();
  v5 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v5;

  return sub_1B8DF486C;
}

void sub_1B8DF486C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    OUTLINED_FUNCTION_461();
    Aspiresnippetpb_GeoPoi.modernPrimaryCategoryID.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_10_6();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B8DF602C(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    v15 = (v10 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__modernPrimaryCategoryID);
    OUTLINED_FUNCTION_18();
    v16 = v15[1];
    *v15 = v4;
    v15[1] = v3;
  }

  free(v1);
}

uint64_t Aspiresnippetpb_GeoPoi.mapRegion.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v7 = &v14 - v6;
  OUTLINED_FUNCTION_8_6();
  v9 = *(v1 + v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Aspiresnippetpb_MapRegion(0);
  OUTLINED_FUNCTION_57(v7);
  if (v11)
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = a1 + *(v10 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_57(v7);
    if (!v11)
    {
      return sub_1B8D9207C(v7, &qword_1EBABAB68, &qword_1B96558F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_7();
    return sub_1B8DF8990();
  }

  return result;
}

uint64_t sub_1B8DF4A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v12 = &v14 - v11;
  sub_1B8DF89E8();
  return a7(v12);
}

uint64_t Aspiresnippetpb_GeoPoi.mapRegion.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB68, &qword_1B96558F8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = OUTLINED_FUNCTION_13_4();
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8DF602C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_68_1();
  v10 = type metadata accessor for Aspiresnippetpb_MapRegion(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Aspiresnippetpb_GeoPoi.mapRegion.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Aspiresnippetpb_MapRegion(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_8_6();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v13 = 0;
    v13[1] = 0;
    v17 = v13 + *(v9 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBABAB68, &qword_1B96558F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_7();
    OUTLINED_FUNCTION_64_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Aspiresnippetpb_GeoPoi.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Aspiresnippetpb_GeoPoi.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t Aspiresnippetpb_GeoPoi.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Aspiresnippetpb_GeoPoi(0) + 20);
  if (qword_1EBAB60B0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBABAB28;
}

uint64_t sub_1B8DF4E7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABAAE0);
  __swift_project_value_buffer(v0, qword_1EBABAAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "south_lat";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "west_lng";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "north_lat";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "east_lng";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Aspiresnippetpb_MapRegion.decodeMessage<A>(decoder:)()
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
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t Aspiresnippetpb_MapRegion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
  {
    if (v2[1] == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
    {
      if (v2[2] == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
      {
        if (v2[3] == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
        {
          v3 = v2 + *(type metadata accessor for Aspiresnippetpb_MapRegion(0) + 32);
          OUTLINED_FUNCTION_12();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Aspiresnippetpb_MapRegion.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Aspiresnippetpb_MapRegion(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_9();
  sub_1B8CD1A78(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8DF539C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1A78(&qword_1EBABAC40, type metadata accessor for Aspiresnippetpb_MapRegion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DF541C(uint64_t a1)
{
  v2 = sub_1B8CD1A78(&qword_1EBABABA0, type metadata accessor for Aspiresnippetpb_MapRegion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DF548C()
{
  sub_1B8CD1A78(&qword_1EBABABA0, type metadata accessor for Aspiresnippetpb_MapRegion);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DF5524()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABAAF8);
  __swift_project_value_buffer(v0, qword_1EBABAAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pois";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Aspiresnippetpb_GeoListSnippet.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_288();
      sub_1B8DF5780();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8DF5780()
{
  type metadata accessor for Aspiresnippetpb_GeoPoi(0);
  sub_1B8CD1A78(&qword_1EBABAB80, type metadata accessor for Aspiresnippetpb_GeoPoi);
  return sub_1B964C570();
}

uint64_t Aspiresnippetpb_GeoListSnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v1;
  v4 = v1[1];
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5 || (result = sub_1B964C700(), !v0))
  {
    if (!*(*(v2 + 16) + 16) || (type metadata accessor for Aspiresnippetpb_GeoPoi(0), sub_1B8CD1A78(&qword_1EBABAB80, type metadata accessor for Aspiresnippetpb_GeoPoi), result = sub_1B964C730(), !v0))
    {
      v7 = v2 + *(type metadata accessor for Aspiresnippetpb_GeoListSnippet(0) + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t sub_1B8DF59D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1A78(&qword_1EBABAC38, type metadata accessor for Aspiresnippetpb_GeoListSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DF5A54(uint64_t a1)
{
  v2 = sub_1B8CD1A78(&qword_1EBABAAC0, type metadata accessor for Aspiresnippetpb_GeoListSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DF5AC4()
{
  sub_1B8CD1A78(&qword_1EBABAAC0, type metadata accessor for Aspiresnippetpb_GeoListSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DF5B5C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABAB10);
  __swift_project_value_buffer(v0, qword_1EBABAB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B964EE80;
  v4 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v4 = "debug_apollo_id";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v25 + v3 + v2 + v1[14];
  *(v25 + v3 + v2) = 5;
  *v8 = "debug_zio_id";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v25 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v7();
  v12 = (v25 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "pref_geocode";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v7();
  v14 = (v25 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "address";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v7();
  v16 = (v25 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "timezone";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v7();
  v18 = (v25 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "popularity_score";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v7();
  v20 = (v25 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "modern_primary_category_id";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v7();
  v22 = (v25 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "map_region";
  *(v23 + 1) = 10;
  v23[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8DF5F00()
{
  v0 = type metadata accessor for Aspiresnippetpb_GeoPoi._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B8DF5F40();
  qword_1EBABAB28 = result;
  return result;
}

uint64_t sub_1B8DF5F40()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__prefGeocode;
  v2 = type metadata accessor for Locationpb_Point(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__address;
  v4 = type metadata accessor for Geopb_StructuredAddress(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__timezone;
  v6 = type metadata accessor for Geopb_Timezone(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__popularityScore) = 0;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__modernPrimaryCategoryID);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__mapRegion;
  v9 = type metadata accessor for Aspiresnippetpb_MapRegion(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  return v0;
}

uint64_t sub_1B8DF602C(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB68, &qword_1B96558F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v38 = v33 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB48, &qword_1B96558F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v37 = v33 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB38, &qword_1B96558E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v35 = v33 - v8;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v33[0] = v33 - v10;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__prefGeocode;
  v12 = type metadata accessor for Locationpb_Point(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__address;
  v33[1] = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__address;
  v14 = type metadata accessor for Geopb_StructuredAddress(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__timezone;
  v33[2] = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__timezone;
  v16 = type metadata accessor for Geopb_Timezone(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v34 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__popularityScore;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__popularityScore) = 0;
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__modernPrimaryCategoryID);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__mapRegion;
  v36 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__mapRegion;
  v19 = type metadata accessor for Aspiresnippetpb_MapRegion(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  swift_beginAccess();
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v21;
  *(v1 + 24) = v20;
  swift_beginAccess();
  v22 = *(a1 + 32);
  LOBYTE(v21) = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v22;
  *(v1 + 40) = v21;
  swift_beginAccess();
  v24 = *(a1 + 48);
  v23 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v24;
  *(v1 + 56) = v23;

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
  v25 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__popularityScore;
  swift_beginAccess();
  v26 = *(a1 + v25);
  v27 = v34;
  swift_beginAccess();
  *(v1 + v27) = v26;
  v28 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__modernPrimaryCategoryID);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  swift_beginAccess();
  v31 = v17[1];
  *v17 = v30;
  v17[1] = v29;

  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B8DF65CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__prefGeocode, &qword_1EBAB9280, &qword_1B96535F0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__address, &qword_1EBABAB38, &qword_1B96558E8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__timezone, &qword_1EBABAB48, &qword_1B96558F0);
  v3 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__modernPrimaryCategoryID + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__mapRegion, &qword_1EBABAB68, &qword_1B96558F8);
  return v0;
}

uint64_t sub_1B8DF6688()
{
  v0 = sub_1B8DF65CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Aspiresnippetpb_GeoPoi.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Aspiresnippetpb_GeoPoi(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Aspiresnippetpb_GeoPoi._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B8DF602C(v9);
  }

  return sub_1B8DF677C();
}

uint64_t sub_1B8DF677C()
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
        sub_1B8DF68E8();
        break;
      case 2:
        sub_1B8DC4778();
        break;
      case 3:
        sub_1B8DF696C();
        break;
      case 4:
        sub_1B8DF6A48();
        break;
      case 5:
        sub_1B8DF6B24();
        break;
      case 6:
        sub_1B8DF6BA8();
        break;
      case 7:
        sub_1B8DF6C84();
        break;
      case 8:
        sub_1B8DF6D10();
        break;
      case 9:
        sub_1B8DF6D9C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DF68E8()
{
  swift_beginAccess();
  sub_1B964C520();
  return swift_endAccess();
}

uint64_t sub_1B8DF696C()
{
  swift_beginAccess();
  type metadata accessor for Locationpb_Point(0);
  sub_1B8CD1A78(&qword_1EBABA448, type metadata accessor for Locationpb_Point);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DF6A48()
{
  swift_beginAccess();
  type metadata accessor for Geopb_StructuredAddress(0);
  sub_1B8CD1A78(&qword_1EBABAC68, type metadata accessor for Geopb_StructuredAddress);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DF6B24()
{
  swift_beginAccess();
  sub_1B964C550();
  return swift_endAccess();
}

uint64_t sub_1B8DF6BA8()
{
  swift_beginAccess();
  type metadata accessor for Geopb_Timezone(0);
  sub_1B8CD1A78(&qword_1EBABAC60, type metadata accessor for Geopb_Timezone);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DF6C84()
{
  swift_beginAccess();
  sub_1B964C510();
  return swift_endAccess();
}

uint64_t sub_1B8DF6D10()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8DF6D9C()
{
  swift_beginAccess();
  type metadata accessor for Aspiresnippetpb_MapRegion(0);
  sub_1B8CD1A78(&qword_1EBABABA0, type metadata accessor for Aspiresnippetpb_MapRegion);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Aspiresnippetpb_GeoPoi.traverse<A>(visitor:)()
{
  v2 = *(v0 + *(type metadata accessor for Aspiresnippetpb_GeoPoi(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B8DF6EDC(v3);
  if (!v1)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8DF6EDC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB68, &qword_1B96558F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v42 - v6;
  v44 = type metadata accessor for Aspiresnippetpb_MapRegion(0);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB48, &qword_1B96558F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v42 - v11;
  v48 = type metadata accessor for Geopb_Timezone(0);
  v12 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB38, &qword_1B96558E8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v49 = &v42 - v16;
  v50 = type metadata accessor for Geopb_StructuredAddress(0);
  v17 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v42 - v21;
  v23 = type metadata accessor for Locationpb_Point(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  swift_beginAccess();
  if (*(a1 + 24))
  {
    v25 = *(a1 + 16);
    v26 = *(a1 + 24);

    sub_1B964C700();

    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  v28 = *(a1 + 56);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v30 = *(a1 + 56);

    sub_1B964C700();

    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAB9280, &qword_1B96535F0);
    v31 = v2;
  }

  else
  {
    sub_1B8DF8990();
    sub_1B8CD1A78(&qword_1EBABA448, type metadata accessor for Locationpb_Point);
    sub_1B964C740();
    v31 = v2;
    result = sub_1B8DF8A40();
    if (v2)
    {
      return result;
    }
  }

  swift_beginAccess();
  v32 = v49;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v32, 1, v50) == 1)
  {
    sub_1B8D9207C(v32, &qword_1EBABAB38, &qword_1B96558E8);
  }

  else
  {
    sub_1B8DF8990();
    sub_1B8CD1A78(&qword_1EBABAC68, type metadata accessor for Geopb_StructuredAddress);
    sub_1B964C740();
    result = sub_1B8DF8A40();
    if (v31)
    {
      return result;
    }
  }

  swift_beginAccess();
  v33 = v48;
  v34 = v47;
  if ((*(a1 + 40) & 1) != 0 || (v35 = *(a1 + 32), result = sub_1B964C720(), !v31))
  {
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v34, 1, v33) == 1)
    {
      sub_1B8D9207C(v34, &qword_1EBABAB48, &qword_1B96558F0);
    }

    else
    {
      sub_1B8DF8990();
      sub_1B8CD1A78(&qword_1EBABAC60, type metadata accessor for Geopb_Timezone);
      sub_1B964C740();
      result = sub_1B8DF8A40();
      if (v31)
      {
        return result;
      }
    }

    v36 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__popularityScore;
    swift_beginAccess();
    if (*(a1 + v36) == 0.0 || (result = sub_1B964C6F0(), !v31))
    {
      v37 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__modernPrimaryCategoryID);
      swift_beginAccess();
      v38 = *v37;
      v39 = v37[1];
      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (!v40 || (, sub_1B964C700(), result = , !v31))
      {
        swift_beginAccess();
        v41 = v43;
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v41, 1, v44) == 1)
        {
          return sub_1B8D9207C(v41, &qword_1EBABAB68, &qword_1B96558F8);
        }

        else
        {
          sub_1B8DF8990();
          sub_1B8CD1A78(&qword_1EBABABA0, type metadata accessor for Aspiresnippetpb_MapRegion);
          sub_1B964C740();
          return sub_1B8DF8A40();
        }
      }
    }
  }

  return result;
}