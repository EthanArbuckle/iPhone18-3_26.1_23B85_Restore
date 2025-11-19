Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_AudioUnderstanding.clearHomeAutomationEntity()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D0, "R#\v");
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91A7C90(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

void sub_1B9198088(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activity.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activity.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_13_24(v1);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B91981CC(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.mood.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.mood.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_13_24(v1);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9198310(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genre.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genre.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_13_24(v1);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9198434()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_22_5(v2);
  if (v7)
  {
    v8 = v6;
    v9 = OUTLINED_FUNCTION_61_1();
    v8(v9);
    v10 = *(v0 + 48);
  }

  else
  {
    v11 = v5;
    v12 = v4;
    v13 = v3;
    v14 = *(v0 + 64);
    v15 = *(v0 + 56);
    v16 = *(v15 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v15 + v14);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = *(v0 + 64);
      v20 = *(v0 + 56);
      v21 = v13(0);
      OUTLINED_FUNCTION_57_0(v21);
      swift_allocObject();
      v22 = OUTLINED_FUNCTION_40_0();
      v23 = v12(v22);
      OUTLINED_FUNCTION_228_1(v23);
    }

    v24 = *v11;
    OUTLINED_FUNCTION_59_3();
    v25 = *(v18 + v24);
    *(v18 + v24) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v26);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.modifier.getter()
{
  OUTLINED_FUNCTION_29_22();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
  OUTLINED_FUNCTION_521();
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_66_2(*v2);
}

void Apple_Parsec_Siri_V2alpha_AudioUnderstanding.modifier.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_275_1(v4);
  v6 = OUTLINED_FUNCTION_115_6(v5);
  v7 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_41_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91A7C90(v8);
    OUTLINED_FUNCTION_72_2(v9);
  }

  v10 = v7 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
  OUTLINED_FUNCTION_18();
  *v10 = v1;
  *(v10 + 8) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.modifier.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_12_25(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  v5 = *(v0 + 8);
  OUTLINED_FUNCTION_71_2(*v0);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9198624()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_41_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91A7C90(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  v12 = v7 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
  OUTLINED_FUNCTION_18();
  *v12 = v2;
  *(v12 + 8) = v3;
  OUTLINED_FUNCTION_242();

  free(v13);
}

void sub_1B91986D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.entityOriginalValue.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.entityOriginalValue.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_39(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9198830(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitleOriginalValue.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitleOriginalValue.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_39(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9198968()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_58_0(v5);
  if (v7)
  {
    v8 = v6;
    OUTLINED_FUNCTION_191();
    v9 = OUTLINED_FUNCTION_461();
    v8(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_236_2();
    v12 = v11;
    v13 = *(v0 + 72);
    v14 = *(v0 + 64);
    v15 = *(v14 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = *(v0 + 72);
      v19 = *(v0 + 64);
      v20 = v12(0);
      OUTLINED_FUNCTION_57_0(v20);
      swift_allocObject();
      v21 = OUTLINED_FUNCTION_40_0();
      v17 = v4(v21);
      *(v19 + v18) = v17;
    }

    v22 = (v17 + *v3);
    OUTLINED_FUNCTION_18();
    v23 = v22[1];
    *v22 = v2;
    v22[1] = v1;
  }

  OUTLINED_FUNCTION_283();

  free(v24);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.artist.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9198AA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.artist.setter();
}

void Apple_Parsec_Siri_V2alpha_AudioItem.artist.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91ABB5C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v7 + 24);
  *(v7 + 16) = v2;
  *(v7 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.artist.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9198BA8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioItem.artist.setter();
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
      OUTLINED_FUNCTION_45_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91ABB5C(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.title.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9198C80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.title.setter();
}

void Apple_Parsec_Siri_V2alpha_AudioItem.title.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91ABB5C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v7 + 40);
  *(v7 + 32) = v2;
  *(v7 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.title.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9198D88(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioItem.title.setter();
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
      OUTLINED_FUNCTION_45_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91ABB5C(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

uint64_t sub_1B9198E34()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9198E80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.identifier.setter();
}

void sub_1B9198F00()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
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

  OUTLINED_FUNCTION_9_3();
  v14 = *(v10 + 56);
  *(v10 + 48) = v2;
  *(v10 + 56) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.identifier.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9199024()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_207_1();
    v9 = OUTLINED_FUNCTION_461();
    v6(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_151_1();
    v12 = *(v6 + v1);
    if ((v11 & 1) == 0)
    {
      v13 = OUTLINED_FUNCTION_185_1();
      v14 = v5(v13);
      OUTLINED_FUNCTION_57_0(v14);
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_40_0();
      v16 = v4(v15);
      OUTLINED_FUNCTION_228_1(v16);
    }

    OUTLINED_FUNCTION_59_3();
    v17 = *(v12 + 56);
    *(v12 + 48) = v3;
    *(v12 + 56) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

void Apple_Parsec_Siri_V2alpha_AudioItem.type.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 72);
  OUTLINED_FUNCTION_66_2(*(v2 + 64));
}

void Apple_Parsec_Siri_V2alpha_AudioItem.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_275_1(v4);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v5);
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91ABB5C(v9);
    OUTLINED_FUNCTION_72_2(v10);
  }

  OUTLINED_FUNCTION_9_3();
  *(v8 + 64) = v1;
  *(v8 + 72) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.type.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_37_3(v3);
  v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4) + 20);
  *(v1 + 84) = v5;
  v6 = *(v0 + v5);
  OUTLINED_FUNCTION_62_0();
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_71_2(*(v6 + 64));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B91991DC()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_45_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91ABB5C(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 64) = v2;
  *(v7 + 72) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

uint64_t sub_1B9199278()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

void sub_1B91992C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.assetInfo.setter();
}

void sub_1B9199344()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
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

  OUTLINED_FUNCTION_9_3();
  v14 = *(v10 + 88);
  *(v10 + 80) = v2;
  *(v10 + 88) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.assetInfo.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9199468()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_207_1();
    v9 = OUTLINED_FUNCTION_461();
    v6(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_151_1();
    v12 = *(v6 + v1);
    if ((v11 & 1) == 0)
    {
      v13 = OUTLINED_FUNCTION_185_1();
      v14 = v5(v13);
      OUTLINED_FUNCTION_57_0(v14);
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_40_0();
      v16 = v4(v15);
      OUTLINED_FUNCTION_228_1(v16);
    }

    OUTLINED_FUNCTION_59_3();
    v17 = *(v12 + 88);
    *(v12 + 80) = v3;
    *(v12 + 88) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.recommendationID.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9199550(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.recommendationID.setter();
}

void Apple_Parsec_Siri_V2alpha_AudioItem.recommendationID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91ABB5C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v7 + 104);
  *(v7 + 96) = v2;
  *(v7 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.recommendationID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9199658(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioItem.recommendationID.setter();
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
      OUTLINED_FUNCTION_45_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91ABB5C(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 104);
    *(v9 + 96) = v4;
    *(v9 + 104) = v3;
  }

  free(v1);
}

float Apple_Parsec_Siri_V2alpha_AudioItem.ampConfidenceScore.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 112);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.ampConfidenceScore.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B91ABB5C(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v7 + 112) = a1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.ampConfidenceScore.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_32_17();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v5 + 112);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9199808(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_45_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91ABB5C(v10);
    OUTLINED_FUNCTION_15(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 112) = v2;

  free(v1);
}

uint64_t sub_1B91998C4()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = *(v0 + *(v2(v1) + 20));
  OUTLINED_FUNCTION_10_4();
  v4 = *(v3 + 120);
}

void sub_1B919990C(uint64_t *a1)
{
  v1 = *a1;

  Apple_Parsec_Siri_V2alpha_AudioItem.internalSignals.setter();
}

void sub_1B9199978()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v7 = OUTLINED_FUNCTION_313();
  v9 = *(v8(v7) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = v5(0);
    OUTLINED_FUNCTION_57_0(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_40_0();
    v12 = v3(v14);
    *(v6 + v9) = v12;
  }

  OUTLINED_FUNCTION_9_3();
  v15 = *(v12 + 120);
  *(v12 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.internalSignals.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 120);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9199AB8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_22_5(v2);
  if (v6)
  {
    v7 = v5;
    v8 = OUTLINED_FUNCTION_61_1();
    v7(v8);
    v9 = *(v0 + 48);
  }

  else
  {
    v10 = v4;
    v11 = v3;
    v12 = *(v0 + 64);
    v13 = *(v0 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v0 + 64);
      v18 = *(v0 + 56);
      v19 = v11(0);
      OUTLINED_FUNCTION_57_0(v19);
      swift_allocObject();
      v20 = OUTLINED_FUNCTION_40_0();
      v21 = v10(v20);
      OUTLINED_FUNCTION_73_2(v21);
    }

    OUTLINED_FUNCTION_59_3();
    v22 = *(v16 + 120);
    *(v16 + 120) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v23);
}

uint64_t sub_1B9199B90()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9199BDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.sharedUserIDFromPlayableMusicAccount.setter();
}

void sub_1B9199C5C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
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

  OUTLINED_FUNCTION_9_3();
  v14 = *(v10 + 136);
  *(v10 + 128) = v2;
  *(v10 + 136) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.sharedUserIDFromPlayableMusicAccount.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9199D80()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_207_1();
    v9 = OUTLINED_FUNCTION_461();
    v6(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_151_1();
    v12 = *(v6 + v1);
    if ((v11 & 1) == 0)
    {
      v13 = OUTLINED_FUNCTION_185_1();
      v14 = v5(v13);
      OUTLINED_FUNCTION_57_0(v14);
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_40_0();
      v16 = v4(v15);
      OUTLINED_FUNCTION_228_1(v16);
    }

    OUTLINED_FUNCTION_59_3();
    v17 = *(v12 + 136);
    *(v12 + 128) = v3;
    *(v12 + 136) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

uint64_t sub_1B9199E3C()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9199E88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.punchoutUri.setter();
}

void sub_1B9199F08()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
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

  OUTLINED_FUNCTION_9_3();
  v14 = *(v10 + 152);
  *(v10 + 144) = v2;
  *(v10 + 152) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.punchoutUri.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 152);
  *(v1 + 48) = *(v0 + 144);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B919A02C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_207_1();
    v9 = OUTLINED_FUNCTION_461();
    v6(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_151_1();
    v12 = *(v6 + v1);
    if ((v11 & 1) == 0)
    {
      v13 = OUTLINED_FUNCTION_185_1();
      v14 = v5(v13);
      OUTLINED_FUNCTION_57_0(v14);
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_40_0();
      v16 = v4(v15);
      OUTLINED_FUNCTION_228_1(v16);
    }

    OUTLINED_FUNCTION_59_3();
    v17 = *(v12 + 152);
    *(v12 + 144) = v3;
    *(v12 + 152) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.requiresSubscription.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 160);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.requiresSubscription.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91ABB5C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 160) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.requiresSubscription.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 160);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B919A1D0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_45_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91ABB5C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 160) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.provider.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 168);
  v4 = *(v2 + 176);

  return OUTLINED_FUNCTION_432();
}

void sub_1B919A294(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.provider.setter();
}

void Apple_Parsec_Siri_V2alpha_AudioItem.provider.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v7 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B91ABB5C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_3();
  v10 = *(v7 + 176);
  *(v7 + 168) = v2;
  *(v7 + 176) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.provider.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 176);
  *(v1 + 48) = *(v0 + 168);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B919A39C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Siri_V2alpha_AudioItem.provider.setter();
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
      OUTLINED_FUNCTION_45_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B91ABB5C(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 176);
    *(v9 + 168) = v4;
    *(v9 + 176) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.isAvailable.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 184);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.isAvailable.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91ABB5C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 184) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.isAvailable.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 184);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B919A530(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_45_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91ABB5C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 184) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.isHardBan.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 185);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.isHardBan.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91ABB5C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 185) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.isHardBan.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_32_17();
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 185);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B919A6B0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_45_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91ABB5C(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 185) = v3;

  free(v1);
}

uint64_t sub_1B919A748()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);

  return OUTLINED_FUNCTION_432();
}

void sub_1B919A794(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.bundleID.setter();
}

void sub_1B919A814()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
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

  OUTLINED_FUNCTION_9_3();
  v14 = *(v10 + 200);
  *(v10 + 192) = v2;
  *(v10 + 200) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.bundleID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 200);
  *(v1 + 48) = *(v0 + 192);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B919A938()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_207_1();
    v9 = OUTLINED_FUNCTION_461();
    v6(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_151_1();
    v12 = *(v6 + v1);
    if ((v11 & 1) == 0)
    {
      v13 = OUTLINED_FUNCTION_185_1();
      v14 = v5(v13);
      OUTLINED_FUNCTION_57_0(v14);
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_40_0();
      v16 = v4(v15);
      OUTLINED_FUNCTION_228_1(v16);
    }

    OUTLINED_FUNCTION_59_3();
    v17 = *(v12 + 200);
    *(v12 + 192) = v3;
    *(v12 + 200) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

uint64_t sub_1B919A9F4()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);

  return OUTLINED_FUNCTION_432();
}

void sub_1B919AA40(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.universalResourceLink.setter();
}

void sub_1B919AAC0()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
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

  OUTLINED_FUNCTION_9_3();
  v14 = *(v10 + 216);
  *(v10 + 208) = v2;
  *(v10 + 216) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.universalResourceLink.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 216);
  *(v1 + 48) = *(v0 + 208);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B919ABE4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_207_1();
    v9 = OUTLINED_FUNCTION_461();
    v6(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_151_1();
    v12 = *(v6 + v1);
    if ((v11 & 1) == 0)
    {
      v13 = OUTLINED_FUNCTION_185_1();
      v14 = v5(v13);
      OUTLINED_FUNCTION_57_0(v14);
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_40_0();
      v16 = v4(v15);
      OUTLINED_FUNCTION_228_1(v16);
    }

    OUTLINED_FUNCTION_59_3();
    v17 = *(v12 + 216);
    *(v12 + 208) = v3;
    *(v12 + 216) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

uint64_t sub_1B919ACA0()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_77_0(v3);
  OUTLINED_FUNCTION_10_4();
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);

  return OUTLINED_FUNCTION_432();
}

void sub_1B919ACEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Siri_V2alpha_AudioItem.providerAppName.setter();
}

void sub_1B919AD6C()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
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

  OUTLINED_FUNCTION_9_3();
  v14 = *(v10 + 232);
  *(v10 + 224) = v2;
  *(v10 + 232) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.providerAppName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_57(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 232);
  *(v1 + 48) = *(v0 + 224);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B919AE90()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_207_1();
    v9 = OUTLINED_FUNCTION_461();
    v6(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_151_1();
    v12 = *(v6 + v1);
    if ((v11 & 1) == 0)
    {
      v13 = OUTLINED_FUNCTION_185_1();
      v14 = v5(v13);
      OUTLINED_FUNCTION_57_0(v14);
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_40_0();
      v16 = v4(v15);
      OUTLINED_FUNCTION_228_1(v16);
    }

    OUTLINED_FUNCTION_59_3();
    v17 = *(v12 + 232);
    *(v12 + 224) = v3;
    *(v12 + 232) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

void Apple_Parsec_Siri_V2alpha_AudioItem.ampConfidenceLevel.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 248);
  OUTLINED_FUNCTION_66_2(*(v2 + 240));
}

uint64_t sub_1B919AFBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  OUTLINED_FUNCTION_94_4();
  return v3(&v5);
}

void Apple_Parsec_Siri_V2alpha_AudioItem.ampConfidenceLevel.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_275_1(v4);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v5);
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v0 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B91ABB5C(v9);
    OUTLINED_FUNCTION_72_2(v10);
  }

  OUTLINED_FUNCTION_9_3();
  *(v8 + 240) = v1;
  *(v8 + 248) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.ampConfidenceLevel.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_37_3(v3);
  v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4) + 20);
  *(v1 + 84) = v5;
  v6 = *(v0 + v5);
  OUTLINED_FUNCTION_62_0();
  v7 = *(v6 + 248);
  OUTLINED_FUNCTION_71_2(*(v6 + 240));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B919B0CC()
{
  OUTLINED_FUNCTION_243();
  v6 = OUTLINED_FUNCTION_4_15(v5);
  v7 = *(v4 + v1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v0 + 84);
    v9 = *(v0 + 88);
    OUTLINED_FUNCTION_45_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91ABB5C(v10);
    OUTLINED_FUNCTION_73_2(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 240) = v2;
  *(v7 + 248) = v3;
  OUTLINED_FUNCTION_242();

  free(v12);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.audioSubItems.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 256);
}

uint64_t sub_1B919B18C(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Siri_V2alpha_AudioItem.audioSubItems.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.audioSubItems.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91ABB5C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 256);
  *(v6 + 256) = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.audioSubItems.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 256);

  return OUTLINED_FUNCTION_514();
}

void sub_1B919B28C(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Siri_V2alpha_AudioItem.audioSubItems.setter();
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
      OUTLINED_FUNCTION_45_8();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B91ABB5C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 256);
    *(v8 + 256) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.images.getter()
{
  OUTLINED_FUNCTION_32_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 264);
}

uint64_t sub_1B919B358(uint64_t *a1)
{
  v1 = *a1;

  return Apple_Parsec_Siri_V2alpha_AudioItem.images.setter();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.images.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B91ABB5C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 264);
  *(v6 + 264) = v0;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.images.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_30(v3);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v4);
  OUTLINED_FUNCTION_53_2(v5);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 264);

  return OUTLINED_FUNCTION_514();
}

void sub_1B919B458(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Apple_Parsec_Siri_V2alpha_AudioItem.images.setter();
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
      OUTLINED_FUNCTION_45_8();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B91ABB5C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 264);
    *(v8 + 264) = v3;
  }

  free(v1);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.details.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    v11 = MEMORY[0x1E69E7CC0];
    *a1 = 0;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    v12 = a1 + *(v9 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC71D8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_182();
    return sub_1B91A7968();
  }

  return result;
}

uint64_t sub_1B919B5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  sub_1B91A79BC();
  return a7(v7);
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.details.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D8, "R#\v");
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91ABB5C(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_23_12();
  OUTLINED_FUNCTION_200_4();
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  OUTLINED_FUNCTION_65_1(v12);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Siri_V2alpha_AudioItem.details.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_71(v9);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(v10);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_32_17();
  v17 = *(v0 + v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v15 = 0;
    v15[1] = v19;
    v15[2] = 0;
    v15[3] = 0xE000000000000000;
    v20 = v15 + *(v11 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v18)
    {
      sub_1B8D9207C(v1, &qword_1EBAC71D8, "R#\v");
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_199_5();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItem.hasDetails.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_188();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Siri_V2alpha_AudioItem.clearDetails()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D8, "R#\v");
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_45_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B91ABB5C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioSubItem.assetInfo.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioSubItem.assetInfo.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioSubItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioSubItem.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem(0);
  return OUTLINED_FUNCTION_279(v3);
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.uriFormatString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.uriFormatString.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void Apple_Parsec_Siri_V2alpha_Image.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1B919BCEC()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B919BD74()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Image(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 1;
  v2 = v1 + *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Image(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentDeviceType.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentDeviceType.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentPlaceHint.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentPlaceHint.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentReference.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentReference.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

void Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentDeviceQuantifierEnum.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentDeviceQuantifierEnum.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 80) = *result;
  *(v1 + 88) = v2;
  return result;
}

void Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentDeviceTypeEnum.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentDeviceTypeEnum.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  return result;
}

void Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentPlaceHintEnum.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.intentPlaceHintEnum.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 112) = *result;
  *(v1 + 120) = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(v0) + 52);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(v0) + 52);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(v0) + 52);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B919C208(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B1234();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B919C288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B1288();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B919C308(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B12DC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B919C3E8@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceQuantifier.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B919C498@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.DeviceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B919C548@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.PlaceHint.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B919C624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B91B1330();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity(0);
  return OUTLINED_FUNCTION_279(v2);
}

uint64_t sub_1B919C73C@<X0>(uint64_t *a1@<X8>)
{
  result = static Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity.HomeAutomationEntityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B919C764()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6E30);
  __swift_project_value_buffer(v0, qword_1EBAC6E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9653B20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_VERB_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_VERB_PLAY";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_VERB_FIND";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_VERB_ADD";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_VERB_SAVE";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_VERB_SING";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "AUDIO_VERB_SUBSCRIBE";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "AUDIO_VERB_FOLLOW";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "AUDIO_VERB_SHUFFLE";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "AUDIO_VERB_REPEAT";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "AUDIO_VERB_CREATE";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "AUDIO_VERB_RESUME";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v9();
  v31 = (v5 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 12;
  *v32 = "AUDIO_VERB_OPEN";
  *(v32 + 1) = 15;
  v32[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919CBEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6E48);
  __swift_project_value_buffer(v0, qword_1EBAC6E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PLAYBACK_QUEUE_LOCATION_UNKNOWN";
  *(v6 + 8) = 31;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLAYBACK_QUEUE_LOCATION_NOW";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PLAYBACK_QUEUE_LOCATION_NEXT";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PLAYBACK_QUEUE_LOCATION_LATER";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919CE54()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6E60);
  __swift_project_value_buffer(v0, qword_1EBAC6E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PLAYBACK_REPEAT_MODE_NONE";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLAYBACK_REPEAT_MODE_ALL";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PLAYBACK_REPEAT_MODE_ONE";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919D07C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6E78);
  __swift_project_value_buffer(v0, qword_1EBAC6E78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1B9652FF0;
  v4 = v48 + v3 + v1[14];
  *(v48 + v3) = 0;
  *v4 = "AUDIO_ITEM_TYPE_UNKNOWN";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v48 + v3 + v2 + v1[14];
  *(v48 + v3 + v2) = 1;
  *v8 = "AUDIO_ITEM_TYPE_SONG";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v48 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "AUDIO_ITEM_TYPE_ALBUM";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v48 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "AUDIO_ITEM_TYPE_ARTIST";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v7();
  v13 = (v48 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "AUDIO_ITEM_TYPE_GENRE";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v48 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "AUDIO_ITEM_TYPE_PLAYLIST";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v7();
  v17 = (v48 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "AUDIO_ITEM_TYPE_PODCAST_SHOW";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v7();
  v19 = (v48 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "AUDIO_ITEM_TYPE_PODCAST_EPISODE";
  *(v20 + 1) = 31;
  v20[16] = 2;
  v7();
  v21 = (v48 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "AUDIO_ITEM_TYPE_PODCAST_PLAYLIST";
  *(v22 + 1) = 32;
  v22[16] = 2;
  v7();
  v23 = (v48 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "AUDIO_ITEM_TYPE_MUSIC_STATION";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v7();
  v25 = (v48 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "AUDIO_ITEM_TYPE_AUDIO_BOOK";
  *(v26 + 1) = 26;
  v26[16] = 2;
  v7();
  v27 = (v48 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "AUDIO_ITEM_TYPE_MOVIE";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v7();
  v29 = (v48 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "AUDIO_ITEM_TYPE_TV_SHOW";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v48 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "AUDIO_ITEM_TYPE_TV_SHOW_EPISODE";
  *(v32 + 1) = 31;
  v32[16] = 2;
  v7();
  v33 = (v48 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "AUDIO_ITEM_TYPE_MUSIC_VIDEO";
  *(v34 + 1) = 27;
  v34[16] = 2;
  v7();
  v35 = (v48 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "AUDIO_ITEM_TYPE_PODCAST_STATION";
  *(v36 + 1) = 31;
  v36[16] = 2;
  v7();
  v37 = (v48 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "AUDIO_ITEM_TYPE_RADIO_STATION";
  *(v38 + 1) = 29;
  v38[16] = 2;
  v7();
  v39 = (v48 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "AUDIO_ITEM_TYPE_STATION";
  *(v40 + 1) = 23;
  v40[16] = 2;
  v7();
  v41 = (v48 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "AUDIO_ITEM_TYPE_MUSIC";
  *(v42 + 1) = 21;
  v42[16] = 2;
  v7();
  v43 = (v48 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "AUDIO_ITEM_TYPE_ALGORITHMIC_RADIO_STATION";
  *(v44 + 1) = 41;
  v44[16] = 2;
  v7();
  v45 = (v48 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "AUDIO_ITEM_TYPE_NEWS";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B919D6EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6E90);
  __swift_project_value_buffer(v0, qword_1EBAC6E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1B966D600;
  v4 = v57 + v3;
  v5 = v57 + v3 + v1[14];
  *(v57 + v3) = 0;
  *v5 = "REQUESTED_MEDIA_TYPE_UNKNOWN";
  *(v5 + 8) = 28;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "REQUESTED_MEDIA_TYPE_PLAYLIST";
  *(v9 + 8) = 29;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "REQUESTED_MEDIA_TYPE_PODCAST";
  *(v11 + 1) = 28;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "REQUESTED_MEDIA_TYPE_MUSIC";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "REQUESTED_MEDIA_TYPE_MUSIC_VIDEO";
  *(v15 + 1) = 32;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "REQUESTED_MEDIA_TYPE_AUDIO_BOOK";
  *(v17 + 1) = 31;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "REQUESTED_MEDIA_TYPE_VIDEO";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "REQUESTED_MEDIA_TYPE_ITUNES_U";
  *(v21 + 1) = 29;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "REQUESTED_MEDIA_TYPE_COMPILATION";
  *(v23 + 1) = 32;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "REQUESTED_MEDIA_TYPE_ALBUM";
  *(v25 + 1) = 26;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "REQUESTED_MEDIA_TYPE_ARTIST";
  *(v27 + 1) = 27;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "REQUESTED_MEDIA_TYPE_TV_SHOW";
  *(v29 + 1) = 28;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "REQUESTED_MEDIA_TYPE_RADIO_SHOW";
  *(v31 + 1) = 31;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "REQUESTED_MEDIA_TYPE_SHOW";
  *(v33 + 1) = 25;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "REQUESTED_MEDIA_TYPE_RADIO_STATION";
  *(v35 + 1) = 34;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "REQUESTED_MEDIA_TYPE_PODCAST_STATION";
  *(v37 + 1) = 36;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 16;
  *v39 = "REQUESTED_MEDIA_TYPE_STATION";
  *(v39 + 1) = 28;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 17;
  *v41 = "REQUESTED_MEDIA_TYPE_MUSIC_PLAYLIST";
  *(v41 + 1) = 35;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 18;
  *v43 = "REQUESTED_MEDIA_TYPE_EPISODE";
  *(v43 + 1) = 28;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 19;
  *v45 = "REQUESTED_MEDIA_TYPE_SINGLE";
  *(v45 + 1) = 27;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 20;
  *v47 = "REQUESTED_MEDIA_TYPE_EP";
  *(v47 + 1) = 23;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 21;
  *v49 = "REQUESTED_MEDIA_TYPE_LP";
  *(v49 + 1) = 23;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 22;
  *v51 = "REQUESTED_MEDIA_TYPE_SONG";
  *(v51 + 1) = 25;
  v51[16] = 2;
  v8();
  v52 = (v4 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 23;
  *v53 = "REQUESTED_MEDIA_TYPE_GENRE";
  *(v53 + 1) = 26;
  v53[16] = 2;
  v8();
  v54 = (v4 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 24;
  *v55 = "REQUESTED_MEDIA_TYPE_NEWS";
  *(v55 + 1) = 25;
  v55[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B919DE44()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6EA8);
  __swift_project_value_buffer(v0, qword_1EBAC6EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AUDIO_NOUN_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_NOUN_LIBRARY";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_NOUN_BEATS_1";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919E104(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  v8 = OUTLINED_FUNCTION_182();
  __swift_project_value_buffer(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964D050;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 0;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_1B964C750();
  OUTLINED_FUNCTION_21_7(v16);
  (*(v17 + 104))(v14, v15);
  return sub_1B964C760();
}

uint64_t sub_1B919E284()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F08);
  __swift_project_value_buffer(v0, qword_1EBAC6F08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AUDIO_TYPE_MODIFIER_UNKNOWN";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_TYPE_MODIFIER_MORE_OF";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919E474()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F20);
  __swift_project_value_buffer(v0, qword_1EBAC6F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_REFERENCE_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_REFERENCE_ONE";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_REFERENCE_MANY";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_REFERENCE_THE";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_REFERENCE_THESE";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_REFERENCE_HIM";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "AUDIO_REFERENCE_HER";
  *(v20 + 1) = 19;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919E78C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F38);
  __swift_project_value_buffer(v0, qword_1EBAC6F38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D040;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_DECADE_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_DECADE_1920S";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_DECADE_1930S";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_DECADE_1940S";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_DECADE_1950S";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_DECADE_1960S";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "AUDIO_DECADE_1970S";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "AUDIO_DECADE_1980S";
  *(v22 + 1) = 18;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "AUDIO_DECADE_1990S";
  *(v24 + 1) = 18;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "AUDIO_DECADE_2000S";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "AUDIO_DECADE_2010S";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "AUDIO_DECADE_2020S";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919EBC0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F50);
  __swift_project_value_buffer(v0, qword_1EBAC6F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B9656CE0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 0;
  *v4 = "AUDIO_SORT_UNKNOWN";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 1;
  *v8 = "AUDIO_SORT_POPULAR";
  *(v8 + 8) = 18;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "AUDIO_SORT_UNPOPULAR";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "AUDIO_SORT_BEST";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "AUDIO_SORT_WORST";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "AUDIO_SORT_NEWEST";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "AUDIO_SORT_OLDEST";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "AUDIO_SORT_HOTTEST";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "AUDIO_SORT_MEDIOCRE";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "AUDIO_SORT_GREATEST";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B919EF98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F68);
  __swift_project_value_buffer(v0, qword_1EBAC6F68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D040;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_ATTRIBUTE_UNKNOWN";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_ATTRIBUTE_FROM_ARTIST";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_ATTRIBUTE_FROM_SONG";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_ATTRIBUTE_FROM_ALBUM";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_ATTRIBUTE_NEXT";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_ATTRIBUTE_PREVIOUS";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "AUDIO_ATTRIBUTE_PLAY_NEXT";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "AUDIO_ATTRIBUTE_ADD_TO_UP_NEXT";
  *(v22 + 1) = 30;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "AUDIO_ATTRIBUTE_AFFINITY";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "AUDIO_ATTRIBUTE_RECOMMENDED";
  *(v26 + 1) = 27;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "AUDIO_ATTRIBUTE_DISCOVERY";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "AUDIO_ATTRIBUTE_ADD_TO_UNSPECIFIED_PLAYLIST";
  *(v30 + 1) = 43;
  v30[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919F3F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F80);
  __swift_project_value_buffer(v0, qword_1EBAC6F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_CONFIDENCE_LEVEL_UNKNOWN";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 10;
  *v10 = "AUDIO_CONFIDENCE_LEVEL_LOW";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 20;
  *v12 = "AUDIO_CONFIDENCE_LEVEL_MEDIUM";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 30;
  *v14 = "AUDIO_CONFIDENCE_LEVEL_HIGH";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919F65C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6F98);
  __swift_project_value_buffer(v0, qword_1EBAC6F98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AUDIO_RADIO_TYPE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AUDIO_RADIO_TYPE_AM";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AUDIO_RADIO_TYPE_FM";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AUDIO_RADIO_TYPE_HD";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AUDIO_RADIO_TYPE_SATELLITE";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AUDIO_RADIO_TYPE_DAB";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919F93C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6FB0);
  __swift_project_value_buffer(v0, qword_1EBAC6FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "IMAGE_TYPE_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IMAGE_TYPE_URL";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919FB44()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6FC8);
  __swift_project_value_buffer(v0, qword_1EBAC6FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D040;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "understanding";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "audio_search_results";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "playback_signals";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "internal_signals";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "app_bundle_id";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "pegasus_audio_type";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "launch_id";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "system_extension_bundle_id";
  *(v23 + 1) = 26;
  v23[16] = 2;
  v9();
  v24 = (v5 + 8 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "bolt_proxied_bundle_id";
  *(v25 + 1) = 22;
  v25[16] = 2;
  v9();
  v26 = (v5 + 9 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "should_perform_app_selection";
  *(v27 + 1) = 28;
  v27[16] = 2;
  v9();
  v28 = (v5 + 10 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "client_signals";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v9();
  v30 = (v5 + 11 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "audio_intent_details";
  *(v31 + 1) = 20;
  v31[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B919FFD8()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__understanding;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults) = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playbackSignals;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals) = v3;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection) = 0;
  v11 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__clientSignals;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioIntentDetails;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  return v0;
}

uint64_t sub_1B91A0110(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B8, "R#\v");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B0, "R#\v");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A8, "R#\v");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A0, "R#\v");
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__understanding;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults;
  v17 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults) = MEMORY[0x1E69E7CC0];
  v18 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playbackSignals;
  v64 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playbackSignals;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v65 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals) = v17;
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID);
  v63 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID);
  v67 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v68 = v24;
  v69 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection) = 0;
  v25 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__clientSignals;
  v70 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__clientSignals;
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioIntentDetails;
  v71 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioIntentDetails;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  __swift_storeEnumTagSinglePayload(v1 + v27, 1, 1, v28);
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults;
  swift_beginAccess();
  v30 = *(a1 + v29);
  swift_beginAccess();
  v31 = *(v1 + v16);
  *(v1 + v16) = v30;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals;
  swift_beginAccess();
  v33 = *(a1 + v32);
  v34 = v65;
  swift_beginAccess();
  v35 = *(v1 + v34);
  *(v1 + v34) = v33;

  v36 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID);
  swift_beginAccess();
  v37 = *v36;
  v38 = v36[1];
  swift_beginAccess();
  v39 = v20[1];
  *v20 = v37;
  v20[1] = v38;

  v40 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType);
  swift_beginAccess();
  v41 = *v40;
  v42 = v40[1];
  swift_beginAccess();
  v43 = v21[1];
  *v21 = v41;
  v21[1] = v42;

  v44 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID);
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];
  v47 = v63;
  swift_beginAccess();
  v48 = v47[1];
  *v47 = v45;
  v47[1] = v46;

  v49 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID);
  swift_beginAccess();
  v50 = *v49;
  v51 = v49[1];
  v52 = v67;
  swift_beginAccess();
  v53 = v52[1];
  *v52 = v50;
  v52[1] = v51;

  v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID);
  swift_beginAccess();
  v56 = *v54;
  v55 = v54[1];
  v57 = v68;
  swift_beginAccess();
  v58 = v57[1];
  *v57 = v56;
  v57[1] = v55;

  v59 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  swift_beginAccess();
  LOBYTE(v59) = *(a1 + v59);
  v60 = v69;
  swift_beginAccess();
  *(v1 + v60) = v59;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();

  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B91A081C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__understanding, &qword_1EBAC71A0, "R#\v");
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playbackSignals, &qword_1EBAC71A8, "R#\v");
  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals);

  v3 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID + 8);

  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__clientSignals, &qword_1EBAC71B0, "R#\v");
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioIntentDetails, &qword_1EBAC71B8, "R#\v");
  return v0;
}

uint64_t sub_1B91A09A8()
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
        sub_1B91A0BA4();
        break;
      case 2:
        sub_1B91A0C80();
        break;
      case 3:
        sub_1B91A0D5C();
        break;
      case 4:
        sub_1B91A9608();
        break;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        sub_1B91A9704();
        break;
      case 10:
        sub_1B91A0E38();
        break;
      case 11:
        sub_1B91A0EC4();
        break;
      case 12:
        sub_1B91A0FA0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91A0BA4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  sub_1B8CD2AC8(&qword_1EBAC76D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91A0C80()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(0);
  sub_1B8CD2AC8(&qword_1EBAC76F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91A0D5C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  sub_1B8CD2AC8(&qword_1EBAC7638, type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91A0E38()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B91A0EC4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  sub_1B8CD2AC8(&qword_1EBAC7660, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91A0FA0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  sub_1B8CD2AC8(&qword_1EBAC76A8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91A10AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v68 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B8, "R#\v");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = v58 - v7;
  v59 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  v8 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58[1] = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B0, "R#\v");
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = v58 - v12;
  v60 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  v13 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58[2] = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A8, "R#\v");
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v63 = v58 - v17;
  v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0);
  v18 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v61 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A0, "R#\v");
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v58 - v22;
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  swift_beginAccess();
  v66 = a1;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_1B8D9207C(v23, &qword_1EBAC71A0, "R#\v");
    v26 = v67;
  }

  else
  {
    sub_1B91A7968();
    sub_1B8CD2AC8(&qword_1EBAC76D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding);
    v27 = v67;
    sub_1B964C740();
    v26 = v27;
    if (v27)
    {
      return sub_1B91A7A10();
    }

    sub_1B91A7A10();
  }

  v28 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults;
  v29 = v66;
  swift_beginAccess();
  v30 = v65;
  if (*(*(v29 + v28) + 16))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem(0);
    sub_1B8CD2AC8(&qword_1EBAC76F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem);

    sub_1B964C730();
    if (v26)
    {
    }
  }

  swift_beginAccess();
  v31 = v63;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v30);
  v33 = v64;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBAC71A8, "R#\v");
  }

  else
  {
    sub_1B91A7968();
    sub_1B8CD2AC8(&qword_1EBAC7638, type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals);
    sub_1B964C740();
    if (v26)
    {
      return sub_1B91A7A10();
    }

    sub_1B91A7A10();
  }

  v35 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals;
  swift_beginAccess();
  v36 = v62;
  if (*(*(v29 + v35) + 16))
  {

    sub_1B964C6E0();
    if (v26)
    {
    }
  }

  v37 = (v29 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID);
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40 || (, sub_1B964C700(), result = , !v26))
  {
    v41 = (v29 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType);
    swift_beginAccess();
    v42 = *v41;
    v43 = v41[1];
    v44 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v44 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (!v44 || (, sub_1B964C700(), result = , !v26))
    {
      v45 = (v29 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID);
      swift_beginAccess();
      v46 = *v45;
      v47 = v45[1];
      v48 = HIBYTE(v47) & 0xF;
      if ((v47 & 0x2000000000000000) == 0)
      {
        v48 = v46 & 0xFFFFFFFFFFFFLL;
      }

      if (!v48 || (, sub_1B964C700(), result = , !v26))
      {
        v49 = (v29 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID);
        swift_beginAccess();
        v50 = *v49;
        v51 = v49[1];
        v52 = HIBYTE(v51) & 0xF;
        if ((v51 & 0x2000000000000000) == 0)
        {
          v52 = v50 & 0xFFFFFFFFFFFFLL;
        }

        if (!v52 || (, sub_1B964C700(), result = , !v26))
        {
          v53 = (v29 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID);
          swift_beginAccess();
          v54 = *v53;
          v55 = v53[1];
          v56 = HIBYTE(v55) & 0xF;
          if ((v55 & 0x2000000000000000) == 0)
          {
            v56 = v54 & 0xFFFFFFFFFFFFLL;
          }

          if (!v56 || (, sub_1B964C700(), result = , !v26))
          {
            v57 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
            swift_beginAccess();
            if (*(v29 + v57) != 1 || (result = sub_1B964C670(), !v26))
            {
              swift_beginAccess();
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v33, 1, v60) == 1)
              {
                sub_1B8D9207C(v33, &qword_1EBAC71B0, "R#\v");
LABEL_43:
                swift_beginAccess();
                sub_1B8F1B8B8();
                if (__swift_getEnumTagSinglePayload(v36, 1, v59) == 1)
                {
                  return sub_1B8D9207C(v36, &qword_1EBAC71B8, "R#\v");
                }

                sub_1B91A7968();
                sub_1B8CD2AC8(&qword_1EBAC76A8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails);
                sub_1B964C740();
                return sub_1B91A7A10();
              }

              sub_1B91A7968();
              sub_1B8CD2AC8(&qword_1EBAC7660, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals);
              sub_1B964C740();
              result = sub_1B91A7A10();
              if (!v26)
              {
                goto LABEL_43;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B91A1B74()
{
  OUTLINED_FUNCTION_284();
  v180 = v0;
  v2 = v1;
  v164 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0);
  v3 = OUTLINED_FUNCTION_59_1(v164);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v160 = v7 - v6;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7868, &qword_1B96A16E8);
  OUTLINED_FUNCTION_59_1(v163);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v165 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B8, "R#\v");
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66();
  v161 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v169 = &v160 - v19;
  v20 = OUTLINED_FUNCTION_201();
  v167 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(v20);
  v21 = OUTLINED_FUNCTION_59_1(v167);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v162 = v25 - v24;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7870, &qword_1B96A16F0);
  OUTLINED_FUNCTION_59_1(v166);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_185();
  v168 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71B0, "R#\v");
  v31 = OUTLINED_FUNCTION_183(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_66();
  v177 = v34 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v176 = &v160 - v37;
  v38 = OUTLINED_FUNCTION_201();
  v174 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(v38);
  v39 = OUTLINED_FUNCTION_59_1(v174);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62();
  v170 = v43 - v42;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7878, &qword_1B96A16F8);
  OUTLINED_FUNCTION_59_1(v172);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_185();
  v175 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A8, "R#\v");
  v49 = OUTLINED_FUNCTION_183(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_66();
  v171 = v52 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v173 = &v160 - v55;
  v56 = OUTLINED_FUNCTION_201();
  v179 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding(v56);
  v57 = OUTLINED_FUNCTION_59_1(v179);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_62();
  v178 = v61 - v60;
  v62 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7880, &unk_1B96A1700) - 8);
  v63 = *(*v62 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v160 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71A0, "R#\v");
  v68 = OUTLINED_FUNCTION_183(v67);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_66();
  v73 = v71 - v72;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v160 - v75;
  OUTLINED_FUNCTION_521();
  sub_1B8F1B8B8();
  v77 = v180;
  OUTLINED_FUNCTION_521();
  v78 = v62[14];
  sub_1B8F1B8B8();
  v79 = v179;
  sub_1B8F1B8B8();
  v80 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v80, v81, v79);
  if (v83)
  {

    sub_1B8D9207C(v76, &qword_1EBAC71A0, "R#\v");
    OUTLINED_FUNCTION_178(&v66[v78], 1, v79);
    if (v83)
    {
      sub_1B8D9207C(v66, &qword_1EBAC71A0, "R#\v");
      goto LABEL_15;
    }

LABEL_9:
    v84 = &qword_1EBAC7880;
    v85 = &unk_1B96A1700;
LABEL_10:
    v86 = v66;
LABEL_11:
    sub_1B8D9207C(v86, v84, v85);
    goto LABEL_54;
  }

  v82 = v76;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(&v66[v78], 1, v79);
  if (v83)
  {

    sub_1B8D9207C(v76, &qword_1EBAC71A0, "R#\v");
    sub_1B91A7A10();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_24_19();
  v87 = v178;
  sub_1B91A7968();
  v88 = *(v79 + 20);
  v89 = *(v73 + v88);
  v90 = *(v87 + v88);

  if (v89 != v90)
  {

    v91 = sub_1B91AA504(v89, v90);

    if ((v91 & 1) == 0)
    {
      sub_1B91A7A10();
      sub_1B8D9207C(v82, &qword_1EBAC71A0, "R#\v");
      sub_1B91A7A10();
      v86 = OUTLINED_FUNCTION_541_0();
      v85 = "R#\v";
      goto LABEL_11;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v92, v93);
  v94 = sub_1B964C850();
  sub_1B91A7A10();
  sub_1B8D9207C(v82, &qword_1EBAC71A0, "R#\v");
  sub_1B91A7A10();
  v95 = OUTLINED_FUNCTION_541_0();
  sub_1B8D9207C(v95, v96, "R#\v");
  if ((v94 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_15:
  v97 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults;
  OUTLINED_FUNCTION_521();
  v98 = *(v2 + v97);
  v99 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__audioSearchResults;
  OUTLINED_FUNCTION_521();
  v100 = *(v77 + v99);

  OUTLINED_FUNCTION_543();
  sub_1B8D8DB5C();
  v102 = v101;

  if ((v102 & 1) == 0)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_521();
  v103 = v173;
  OUTLINED_FUNCTION_33_4();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_202_3();
  OUTLINED_FUNCTION_521();
  v104 = *(v172 + 48);
  v66 = v175;
  OUTLINED_FUNCTION_33_4();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_202_3();
  v105 = v180;
  OUTLINED_FUNCTION_33_4();
  sub_1B8F1B8B8();
  v106 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v106, v107, v174);
  if (v83)
  {
    sub_1B8D9207C(v103, &qword_1EBAC71A8, "R#\v");
    OUTLINED_FUNCTION_37_0(&v66[v104]);
    v108 = v176;
    if (v83)
    {
      sub_1B8D9207C(v66, &qword_1EBAC71A8, "R#\v");
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(&v66[v104]);
  v108 = v176;
  if (v109)
  {
    sub_1B8D9207C(v103, &qword_1EBAC71A8, "R#\v");
    sub_1B91A7A10();
LABEL_24:
    v84 = &qword_1EBAC7878;
    v85 = &qword_1B96A16F8;
    goto LABEL_10;
  }

  sub_1B91A7968();
  LODWORD(v179) = static Apple_Parsec_Siri_V2alpha_PlaybackSignals.== infix(_:_:)();
  OUTLINED_FUNCTION_128();
  sub_1B91A7A10();
  sub_1B8D9207C(v103, &qword_1EBAC71A8, "R#\v");
  sub_1B91A7A10();
  v110 = OUTLINED_FUNCTION_541_0();
  sub_1B8D9207C(v110, v111, "R#\v");
  if ((v179 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_27:
  v112 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals;
  OUTLINED_FUNCTION_521();
  v113 = *(v2 + v112);
  v114 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__internalSignals;
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v113, *(v105 + v114)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v115 = (v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__appBundleID);
  OUTLINED_FUNCTION_521();
  v116 = *v115;
  v117 = v115[1];
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_714_0();
  if (!v83 || v117 != v118)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v120 = (v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__pegasusAudioType);
  OUTLINED_FUNCTION_521();
  v121 = *v120;
  v122 = v120[1];
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_714_0();
  if (!v83 || v122 != v123)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v125 = (v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__launchID);
  OUTLINED_FUNCTION_521();
  v126 = *v125;
  v127 = v125[1];
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_714_0();
  if (!v83 || v127 != v128)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v130 = (v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__systemExtensionBundleID);
  OUTLINED_FUNCTION_521();
  v131 = *v130;
  v132 = v130[1];
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_714_0();
  if (!v83 || v132 != v133)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v135 = (v2 + OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__boltProxiedBundleID);
  OUTLINED_FUNCTION_521();
  v136 = *v135;
  v137 = v135[1];
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_714_0();
  if (!v83 || v137 != v138)
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v140 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  OUTLINED_FUNCTION_521();
  LODWORD(v140) = *(v2 + v140);
  v141 = OBJC_IVAR____TtCV10PegasusAPI46Apple_Parsec_Siri_V2alpha_AudioClientComponentP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__shouldPerformAppSelection;
  OUTLINED_FUNCTION_521();
  if (v140 != *(v105 + v141))
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_33_4();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_202_3();
  OUTLINED_FUNCTION_521();
  v142 = *(v166 + 48);
  v143 = v168;
  OUTLINED_FUNCTION_33_4();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_202_3();
  OUTLINED_FUNCTION_33_4();
  v144 = v143;
  sub_1B8F1B8B8();
  v145 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v145, v146, v167);
  if (v83)
  {
    sub_1B8D9207C(v108, &qword_1EBAC71B0, "R#\v");
    OUTLINED_FUNCTION_37_0(v143 + v142);
    v147 = v169;
    if (v83)
    {
      sub_1B8D9207C(v144, &qword_1EBAC71B0, "R#\v");
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v143 + v142);
  v147 = v169;
  if (v148)
  {
    sub_1B8D9207C(v108, &qword_1EBAC71B0, "R#\v");
    sub_1B91A7A10();
LABEL_64:
    v84 = &qword_1EBAC7870;
    v85 = &qword_1B96A16F0;
    v86 = v144;
    goto LABEL_11;
  }

  sub_1B91A7968();
  static Apple_Parsec_Siri_V2alpha_ClientSignals.== infix(_:_:)();
  v150 = v149;
  OUTLINED_FUNCTION_128();
  sub_1B91A7A10();
  sub_1B8D9207C(v108, &qword_1EBAC71B0, "R#\v");
  sub_1B91A7A10();
  sub_1B8D9207C(v144, &qword_1EBAC71B0, "R#\v");
  if (v150)
  {
LABEL_66:
    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_33_4();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_521();
    v151 = *(v163 + 48);
    v152 = v147;
    v153 = v165;
    OUTLINED_FUNCTION_33_4();
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_33_4();
    sub_1B8F1B8B8();
    v154 = OUTLINED_FUNCTION_602();
    OUTLINED_FUNCTION_178(v154, v155, v164);
    if (v83)
    {

      sub_1B8D9207C(v152, &qword_1EBAC71B8, "R#\v");
      OUTLINED_FUNCTION_37_0(v153 + v151);
      if (v83)
      {
        sub_1B8D9207C(v153, &qword_1EBAC71B8, "R#\v");
        goto LABEL_55;
      }
    }

    else
    {
      v156 = v161;
      sub_1B8F1B8B8();
      OUTLINED_FUNCTION_37_0(v153 + v151);
      if (!v157)
      {
        sub_1B91A7968();
        static Apple_Parsec_Siri_V2alpha_AudioIntentDetails.== infix(_:_:)(v156);

        OUTLINED_FUNCTION_128();
        sub_1B91A7A10();
        sub_1B8D9207C(v169, &qword_1EBAC71B8, "R#\v");
        sub_1B91A7A10();
        v158 = OUTLINED_FUNCTION_541_0();
        sub_1B8D9207C(v158, v159, "R#\v");
        goto LABEL_55;
      }

      sub_1B8D9207C(v169, &qword_1EBAC71B8, "R#\v");
      sub_1B91A7A10();
    }

    sub_1B8D9207C(v153, &qword_1EBAC7868, &qword_1B96A16E8);
    goto LABEL_55;
  }

LABEL_54:

LABEL_55:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91A2AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77E8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A2B68(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7620, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A2BD8()
{
  sub_1B8CD2AC8(&qword_1EBAC7620, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A2C70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6FE0);
  __swift_project_value_buffer(v0, qword_1EBAC6FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "playback_queue_location";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "playback_speed";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "playback_repeat_mode";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "immediately_start_playback";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "play_shuffled";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "resume_playback";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "is_ambiguous_play";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.decodeMessage<A>(decoder:)()
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
        sub_1B91A3054();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B91A30BC();
        break;
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_PlaybackSignals.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v3 = *(v2 + 8), OUTLINED_FUNCTION_94_4(), sub_1B91AC334(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (*(v2 + 12) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
    {
      if (!*(v2 + 16) || (v5 = *(v2 + 24), OUTLINED_FUNCTION_94_4(), sub_1B91AC388(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
      {
        if (*(v2 + 25) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
        {
          if (*(v2 + 26) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            if (*(v2 + 27) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
            {
              if (*(v2 + 28) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
              {
                v6 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0) + 44);
                return OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_PlaybackSignals.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 != v5)
  {
    return 0;
  }

LABEL_6:
  if (*(v1 + 12) != *(v0 + 12))
  {
    return 0;
  }

  v6 = *(v1 + 16);
  v7 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {
    if (v6 != v7)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v7 != 1)
  {
    if (v6 == 2)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v6 != 1)
  {
    return 0;
  }

LABEL_23:
  if (*(v1 + 25) != *(v0 + 25) || *(v1 + 26) != *(v0 + 26) || *(v1 + 27) != *(v0 + 27) || *(v1 + 28) != *(v0 + 28))
  {
    return 0;
  }

  v9 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals(0) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91A34B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A3534(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7638, type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A35A4()
{
  sub_1B8CD2AC8(&qword_1EBAC7638, type metadata accessor for Apple_Parsec_Siri_V2alpha_PlaybackSignals);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A363C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC6FF8);
  __swift_project_value_buffer(v0, qword_1EBAC6FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "multipler";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_9();
      sub_1B8D10390();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v3 = *(v2 + 8), OUTLINED_FUNCTION_94_4(), sub_1B91AC3DC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (*(v2 + 12) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
    {
      v5 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  v4 = *(v1 + 8);
  if (!sub_1B8D92198(v3, *(v2 + 8), *v1) || *(v2 + 12) != *(v1 + 12))
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier(0);
  OUTLINED_FUNCTION_188_1(v5);
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v6, v7);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91A3A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A3AF4(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7240, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A3B64()
{
  sub_1B8CD2AC8(&qword_1EBAC7240, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A3BFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7010);
  __swift_project_value_buffer(v0, qword_1EBAC7010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "disable_client_library_search";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_ranking_overrides";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "internal_signals";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "library_search_terms";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "music_ranking_influence_impact_info";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.decodeMessage<A>(decoder:)()
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
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B91A3F5C();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B91A4010();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B91A40B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91A3F5C()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0) + 32);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  sub_1B8CD2AC8(&qword_1EBAC7218, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides);
  return sub_1B964C580();
}

uint64_t sub_1B91A4010()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(0);
  sub_1B8CD2AC8(&qword_1EBAC7210, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm);
  return sub_1B964C570();
}

uint64_t sub_1B91A40B0()
{
  v0 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0) + 36);
  type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  sub_1B8CD2AC8(&qword_1EBAB8D50, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo);
  return sub_1B964C580();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientSignals.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71C8, "R#\v");
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v35 = v7;
  v8 = OUTLINED_FUNCTION_201();
  v9 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(v8);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v34 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71C0, "R#\v");
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  if (*v0 != 1 || (result = sub_1B964C670(), !v1))
  {
    v32 = v9;
    v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
    v26 = v33[8];
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      sub_1B8D9207C(v20, &qword_1EBAC71C0, "R#\v");
    }

    else
    {
      sub_1B91A7968();
      sub_1B8CD2AC8(&qword_1EBAC7218, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides);
      sub_1B964C740();
      result = sub_1B91A7A10();
      if (v1)
      {
        return result;
      }
    }

    if (!*(*(v0 + 8) + 16) || (result = sub_1B964C6E0(), !v1))
    {
      v27 = v32;
      if (!*(*(v0 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(0), sub_1B8CD2AC8(&qword_1EBAC7210, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm), OUTLINED_FUNCTION_204_4(), result = sub_1B964C730(), !v1))
      {
        v28 = v33[9];
        v29 = v35;
        sub_1B8F1B8B8();
        if (__swift_getEnumTagSinglePayload(v29, 1, v27) == 1)
        {
          sub_1B8D9207C(v29, &qword_1EBAC71C8, "R#\v");
        }

        else
        {
          sub_1B91A7968();
          sub_1B8CD2AC8(&qword_1EBAB8D50, type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo);
          OUTLINED_FUNCTION_204_4();
          sub_1B964C740();
          result = sub_1B91A7A10();
          if (v1)
          {
            return result;
          }
        }

        v30 = v2 + v33[7];
        return sub_1B964C290();
      }
    }
  }

  return result;
}

void static Apple_Parsec_Siri_V2alpha_ClientSignals.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v74 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo(0);
  v3 = OUTLINED_FUNCTION_59_1(v74);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71C8, "R#\v");
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v73 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7220, "R#\v");
  OUTLINED_FUNCTION_59_1(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v70 - v18;
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v26 = (v25 - v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71C0, "R#\v");
  OUTLINED_FUNCTION_183(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_79();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7228, "V#\v");
  OUTLINED_FUNCTION_59_1(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v70 - v35;
  if (*v1 != *v0)
  {
    goto LABEL_28;
  }

  v70 = v8;
  v72 = v19;
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals(0);
  v75 = v0;
  v71 = v37;
  v38 = *(v37 + 32);
  v39 = *(v31 + 48);
  sub_1B8F1B8B8();
  v40 = v75;
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_178(v36, 1, v20);
  if (!v41)
  {
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_178(&v36[v39], 1, v20);
    if (!v41)
    {
      sub_1B91A7968();
      v45 = static Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.== infix(_:_:)(v2, v26);
      sub_1B91A7A10();
      OUTLINED_FUNCTION_186();
      sub_1B91A7A10();
      sub_1B8D9207C(v36, &qword_1EBAC71C0, "R#\v");
      if ((v45 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_13;
    }

    sub_1B91A7A10();
LABEL_10:
    v42 = &qword_1EBAC7228;
    v43 = "V#\v";
    v44 = v36;
LABEL_11:
    sub_1B8D9207C(v44, v42, v43);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_178(&v36[v39], 1, v20);
  if (!v41)
  {
    goto LABEL_10;
  }

  sub_1B8D9207C(v36, &qword_1EBAC71C0, "R#\v");
LABEL_13:
  if (sub_1B8D6123C(*(v1 + 1), *(v40 + 1)))
  {
    v46 = *(v1 + 2);
    v47 = *(v40 + 2);
    sub_1B8D70158();
    if (v48)
    {
      v50 = v71;
      v49 = v72;
      v51 = *(v71 + 36);
      v52 = *(v14 + 48);
      sub_1B8F1B8B8();
      v53 = v49;
      sub_1B8F1B8B8();
      v54 = OUTLINED_FUNCTION_602();
      v55 = v74;
      OUTLINED_FUNCTION_178(v54, v56, v74);
      if (v41)
      {
        OUTLINED_FUNCTION_178(v49 + v52, 1, v55);
        if (v41)
        {
          sub_1B8D9207C(v49, &qword_1EBAC71C8, "R#\v");
LABEL_20:
          v57 = *(v50 + 28);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_67();
          sub_1B8CD2AC8(v58, v59);
          sub_1B964C850();
          goto LABEL_28;
        }
      }

      else
      {
        v60 = v73;
        sub_1B8F1B8B8();
        OUTLINED_FUNCTION_178(v53 + v52, 1, v55);
        if (!v61)
        {
          OUTLINED_FUNCTION_26_16();
          v62 = v70;
          sub_1B91A7968();
          v63 = *v60;
          v64 = *v62;
          sub_1B8D5C668();
          if (v65)
          {
            v66 = *(v55 + 20);
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_67();
            sub_1B8CD2AC8(v67, v68);
            v69 = sub_1B964C850();
            sub_1B91A7A10();
            OUTLINED_FUNCTION_541_0();
            sub_1B91A7A10();
            sub_1B8D9207C(v53, &qword_1EBAC71C8, "R#\v");
            if ((v69 & 1) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_20;
          }

          sub_1B91A7A10();
          sub_1B91A7A10();
          v42 = &qword_1EBAC71C8;
          v43 = "R#\v";
          goto LABEL_25;
        }

        sub_1B91A7A10();
      }

      v42 = &qword_1EBAC7220;
      v43 = "R#\v";
LABEL_25:
      v44 = v53;
      goto LABEL_11;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B91A4BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77D0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A4C60(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7660, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A4CD0()
{
  sub_1B8CD2AC8(&qword_1EBAC7660, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A4D68()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7028);
  __swift_project_value_buffer(v0, qword_1EBAC7028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "item_type";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query_str";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ranking_only";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.decodeMessage<A>(decoder:)()
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
        sub_1B964C400();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8D10390();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v3 = *(v2 + 8), OUTLINED_FUNCTION_94_4(), sub_1B91AC3DC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v7 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
    {
      if (*(v2 + 32) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
      {
        v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  v4 = *(v1 + 8);
  if (!sub_1B8D92198(v3, *(v2 + 8), *v1))
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  v9 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91A523C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77C8, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A52BC(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7210, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A532C()
{
  sub_1B8CD2AC8(&qword_1EBAC7210, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A53C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7040);
  __swift_project_value_buffer(v0, qword_1EBAC7040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "library_result_text_match_min_score";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "library_result_universal_score_multiplier";
  *(v10 + 8) = 41;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "library_result_typed_score_multipliers";
  *(v12 + 1) = 38;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pims_recommendation_score_multiplier";
  *(v14 + 1) = 36;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91AF790(v3, v4, v5, v6, v7);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
    {
      if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier(0), sub_1B8CD2AC8(&qword_1EBAC7240, type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6B0(), !v1))
        {
          v4 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4))
  {
    return 0;
  }

  v6 = *(v3 + 8);
  v7 = *(v2 + 8);
  sub_1B8D6FED0();
  if ((v8 & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v9 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v10, v11);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91A5998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A5A18(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7218, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A5A88()
{
  sub_1B8CD2AC8(&qword_1EBAC7218, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A5B20()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7058);
  __swift_project_value_buffer(v0, qword_1EBAC7058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shared_user_id";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token_error_code";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors.decodeMessage<A>(decoder:)()
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

uint64_t Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors(0);
  OUTLINED_FUNCTION_188_1(v7);
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91A5F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A5FB4(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7258, type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A6024()
{
  sub_1B8CD2AC8(&qword_1EBAC7258, type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A60BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7070);
  __swift_project_value_buffer(v0, qword_1EBAC7070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dynamite_client_state_errors";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "should_prioritize_classical_playback";
  *(v10 + 8) = 36;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "nls_container_id";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "did_server_infer_app_bundle_id";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "should_shuffle_classical";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "search_box_string";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.decodeMessage<A>(decoder:)()
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
        sub_1B91A6454();
        break;
      case 2:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 3:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91A6454()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors(0);
  sub_1B8CD2AC8(&qword_1EBAC7258, type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioIntentDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors(0), sub_1B8CD2AC8(&qword_1EBAC7258, type metadata accessor for Apple_Parsec_Siri_V2alpha_DynamiteClientStateErrors), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (*(v2 + 8) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
      OUTLINED_FUNCTION_1();
      if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
      {
        if (*(v2 + 32) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
        {
          if (*(v2 + 33) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            v7 = *(v2 + 40);
            v8 = *(v2 + 48);
            OUTLINED_FUNCTION_1();
            if (!v9 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
            {
              v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0) + 40);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioIntentDetails.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_51_2(a1);
  v4 = *v3;
  sub_1B8D68748();
  if ((v5 & 1) == 0 || *(v2 + 8) != *(v1 + 8))
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 32) != *(v1 + 32) || *(v2 + 33) != *(v1 + 33))
  {
    return 0;
  }

  v10 = *(v2 + 40) == *(v1 + 40) && *(v2 + 48) == *(v1 + 48);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v12, v13);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91A67EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77B0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A686C(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC76A8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A68DC()
{
  sub_1B8CD2AC8(&qword_1EBAC76A8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A6974()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7088);
  __swift_project_value_buffer(v0, qword_1EBAC7088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "is_playable_in_apple_music_classical";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "siri_explanation_text";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "nls_id";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItemDetails.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioItemDetails.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
  {
    if (!*(v2[1] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
    {
      v4 = v2[2];
      v5 = v2[3];
      OUTLINED_FUNCTION_1();
      if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
      {
        v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioItemDetails.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*(v2 + 8), *(v3 + 8)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91A6E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77A8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91A6EA8(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC76C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91A6F18()
{
  sub_1B8CD2AC8(&qword_1EBAC76C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails);

  return sub_1B964C5D0();
}

uint64_t sub_1B91A6FB0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC70A0);
  __swift_project_value_buffer(v0, qword_1EBAC70A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1B964EE90;
  v4 = v69 + v3 + v1[14];
  *(v69 + v3) = 1;
  *v4 = "verb";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v69 + v3 + v2 + v1[14];
  *(v69 + v3 + v2) = 2;
  *v8 = "requested_media_type";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v69 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "entity";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v7();
  v12 = (v69 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "artist";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v7();
  v14 = (v69 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "album";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v7();
  v16 = (v69 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "simple_3p_play_music";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v7();
  v18 = (v69 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "noun";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v7();
  v20 = (v69 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "attributes";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v7();
  v22 = (v69 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "music_title";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v7();
  v24 = (v69 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "playlist_title";
  *(v25 + 1) = 14;
  v25[16] = 2;
  v7();
  v26 = (v69 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "activities";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v7();
  v28 = (v69 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "moods";
  *(v29 + 1) = 5;
  v29[16] = 2;
  v7();
  v30 = (v69 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 14;
  *v31 = "audiobook_author";
  *(v31 + 1) = 16;
  v31[16] = 2;
  v7();
  v32 = (v69 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 15;
  *v33 = "audiobook_title";
  *(v33 + 1) = 15;
  v33[16] = 2;
  v7();
  v34 = (v69 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 16;
  *v35 = "app_name";
  *(v35 + 1) = 8;
  v35[16] = 2;
  v7();
  v36 = (v69 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 17;
  *v37 = "show_title";
  *(v37 + 1) = 10;
  v37[16] = 2;
  v7();
  v38 = (v69 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "podcast_title";
  *(v39 + 1) = 13;
  v39[16] = 2;
  v7();
  v40 = (v69 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "radio_station_name";
  *(v41 + 1) = 18;
  v41[16] = 2;
  v7();
  v42 = (v69 + v3 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "decade";
  *(v43 + 1) = 6;
  v43[16] = 2;
  v7();
  v44 = (v69 + v3 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "genres";
  *(v45 + 1) = 6;
  v45[16] = 2;
  v7();
  v46 = (v69 + v3 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "sort";
  *(v47 + 1) = 4;
  v47[16] = 2;
  v7();
  v48 = (v69 + v3 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "reference";
  *(v49 + 1) = 9;
  v49[16] = 2;
  v7();
  v50 = (v69 + v3 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "audio_radio_type";
  *(v51 + 1) = 16;
  v51[16] = 2;
  v7();
  v52 = (v69 + v3 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "radio_station_frequency";
  *(v53 + 1) = 23;
  v53[16] = 2;
  v7();
  v54 = (v69 + v3 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "home_automation_entity";
  *(v55 + 1) = 22;
  v55[16] = 2;
  v7();
  v56 = (v69 + v3 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "activity";
  *(v57 + 1) = 8;
  v57[16] = 2;
  v7();
  v58 = (v69 + v3 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "mood";
  *(v59 + 1) = 4;
  v59[16] = 2;
  v7();
  v60 = (v69 + v3 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "genre";
  *(v61 + 1) = 5;
  v61[16] = 2;
  v7();
  v62 = (v69 + v3 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 30;
  *v63 = "modifier";
  *(v63 + 1) = 8;
  v63[16] = 2;
  v7();
  v64 = (v69 + v3 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "entity_original_value";
  *(v65 + 1) = 21;
  v65[16] = 2;
  v7();
  v66 = (v69 + v3 + 30 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "playlist_title_original_value";
  *(v67 + 1) = 29;
  v67[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B91A78D8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_57_0(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B91A7968()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B91A79BC()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_21_7(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B91A7A10()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B91A7B64()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = MEMORY[0x1E69E7CC0];
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 160) = v1;
  *(v0 + 168) = v1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0xE000000000000000;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0xE000000000000000;
  *(v0 + 240) = 0;
  *(v0 + 248) = 0xE000000000000000;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0xE000000000000000;
  *(v0 + 272) = 0;
  *(v0 + 280) = 1;
  *(v0 + 288) = v1;
  *(v0 + 296) = 0;
  *(v0 + 304) = 1;
  *(v0 + 312) = 0;
  *(v0 + 320) = 1;
  *(v0 + 328) = 0;
  *(v0 + 336) = 1;
  *(v0 + 344) = 0;
  v2 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__homeAutomationEntity;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre) = v1;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B91A7C90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D0, "R#\v");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v118 = &v100 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  v101 = (v1 + 64);
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v102 = (v1 + 80);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v103 = (v1 + 96);
  *(v1 + 104) = 0;
  v104 = (v1 + 104);
  *(v1 + 112) = 1;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + 120) = MEMORY[0x1E69E7CC0];
  v105 = (v1 + 120);
  *(v1 + 128) = 0;
  v106 = (v1 + 128);
  *(v1 + 144) = 0;
  v107 = (v1 + 144);
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 160) = v6;
  v108 = (v1 + 160);
  *(v1 + 168) = v6;
  v109 = (v1 + 168);
  *(v1 + 176) = 0;
  v110 = (v1 + 176);
  *(v1 + 184) = 0xE000000000000000;
  *(v1 + 192) = 0;
  v111 = (v1 + 192);
  *(v1 + 208) = 0;
  v112 = (v1 + 208);
  *(v1 + 200) = 0xE000000000000000;
  *(v1 + 216) = 0xE000000000000000;
  *(v1 + 224) = 0;
  v113 = (v1 + 224);
  *(v1 + 232) = 0xE000000000000000;
  *(v1 + 240) = 0;
  v114 = (v1 + 240);
  *(v1 + 248) = 0xE000000000000000;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0xE000000000000000;
  *(v1 + 272) = 0;
  *(v1 + 280) = 1;
  *(v1 + 288) = v6;
  *(v1 + 296) = 0;
  *(v1 + 304) = 1;
  *(v1 + 312) = 0;
  *(v1 + 320) = 1;
  *(v1 + 328) = 0;
  *(v1 + 336) = 1;
  *(v1 + 344) = 0;
  v7 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__homeAutomationEntity;
  v115 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__homeAutomationEntity;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v116 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity) = v6;
  v117 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood) = v6;
  v119 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre) = v6;
  v9 = v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
  v120 = v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
  v121 = (v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  swift_beginAccess();
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v12;
  *(v1 + 24) = v13;
  swift_beginAccess();
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v14;
  *(v1 + 40) = v15;
  swift_beginAccess();
  v17 = *(a1 + 48);
  v16 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v17;
  *(v1 + 56) = v16;
  swift_beginAccess();
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = v101;
  swift_beginAccess();
  *v20 = v18;
  *(v1 + 72) = v19;

  swift_beginAccess();
  v22 = *(a1 + 80);
  v21 = *(a1 + 88);
  v23 = v102;
  swift_beginAccess();
  v24 = *(v1 + 88);
  *v23 = v22;
  *(v1 + 88) = v21;

  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 96);
  v25 = v103;
  swift_beginAccess();
  *v25 = v21;
  swift_beginAccess();
  v26 = *(a1 + 104);
  LOBYTE(v25) = *(a1 + 112);
  v27 = v104;
  swift_beginAccess();
  *v27 = v26;
  *(v1 + 112) = v25;
  swift_beginAccess();
  v28 = *(a1 + 120);
  v29 = v105;
  swift_beginAccess();
  v30 = *v29;
  *v29 = v28;

  swift_beginAccess();
  v32 = *(a1 + 128);
  v31 = *(a1 + 136);
  v33 = v106;
  swift_beginAccess();
  v34 = *(v1 + 136);
  *v33 = v32;
  *(v1 + 136) = v31;

  swift_beginAccess();
  v36 = *(a1 + 144);
  v35 = *(a1 + 152);
  v37 = v107;
  swift_beginAccess();
  v38 = *(v1 + 152);
  *v37 = v36;
  *(v1 + 152) = v35;

  swift_beginAccess();
  v39 = *(a1 + 160);
  v40 = v108;
  swift_beginAccess();
  v41 = *v40;
  *v40 = v39;

  swift_beginAccess();
  v42 = *(a1 + 168);
  v43 = v109;
  swift_beginAccess();
  v44 = *v43;
  *v43 = v42;

  swift_beginAccess();
  v46 = *(a1 + 176);
  v45 = *(a1 + 184);
  v47 = v110;
  swift_beginAccess();
  v48 = *(v1 + 184);
  *v47 = v46;
  *(v1 + 184) = v45;

  swift_beginAccess();
  v50 = *(a1 + 192);
  v49 = *(a1 + 200);
  v51 = v111;
  swift_beginAccess();
  v52 = *(v1 + 200);
  *v51 = v50;
  *(v1 + 200) = v49;

  swift_beginAccess();
  v54 = *(a1 + 208);
  v53 = *(a1 + 216);
  v55 = v112;
  swift_beginAccess();
  v56 = *(v1 + 216);
  *v55 = v54;
  *(v1 + 216) = v53;

  swift_beginAccess();
  v58 = *(a1 + 224);
  v57 = *(a1 + 232);
  v59 = v113;
  swift_beginAccess();
  v60 = *(v1 + 232);
  *v59 = v58;
  *(v1 + 232) = v57;

  swift_beginAccess();
  v62 = *(a1 + 240);
  v61 = *(a1 + 248);
  v63 = v114;
  swift_beginAccess();
  v64 = *(v1 + 248);
  *v63 = v62;
  *(v1 + 248) = v61;

  swift_beginAccess();
  v66 = *(a1 + 256);
  v65 = *(a1 + 264);
  swift_beginAccess();
  v67 = *(v1 + 264);
  *(v1 + 256) = v66;
  *(v1 + 264) = v65;

  swift_beginAccess();
  v68 = *(a1 + 272);
  LOBYTE(v67) = *(a1 + 280);
  swift_beginAccess();
  *(v1 + 272) = v68;
  *(v1 + 280) = v67;
  swift_beginAccess();
  v69 = *(a1 + 288);
  swift_beginAccess();
  v70 = *(v1 + 288);
  *(v1 + 288) = v69;

  swift_beginAccess();
  v71 = *(a1 + 296);
  LOBYTE(v70) = *(a1 + 304);
  swift_beginAccess();
  *(v1 + 296) = v71;
  *(v1 + 304) = v70;
  swift_beginAccess();
  v72 = *(a1 + 312);
  LOBYTE(v70) = *(a1 + 320);
  swift_beginAccess();
  *(v1 + 312) = v72;
  *(v1 + 320) = v70;
  swift_beginAccess();
  v73 = *(a1 + 328);
  LOBYTE(v70) = *(a1 + 336);
  swift_beginAccess();
  *(v1 + 328) = v73;
  *(v1 + 336) = v70;
  swift_beginAccess();
  v74 = *(a1 + 344);
  swift_beginAccess();
  *(v1 + 344) = v74;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v75 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity;
  swift_beginAccess();
  v76 = *(a1 + v75);
  v77 = v116;
  swift_beginAccess();
  v78 = *(v1 + v77);
  *(v1 + v77) = v76;

  v79 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood;
  swift_beginAccess();
  v80 = *(a1 + v79);
  v81 = v117;
  swift_beginAccess();
  v82 = *(v1 + v81);
  *(v1 + v81) = v80;

  v83 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre;
  swift_beginAccess();
  v84 = *(a1 + v83);
  v85 = v119;
  swift_beginAccess();
  v86 = *(v1 + v85);
  *(v1 + v85) = v84;

  v87 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier);
  swift_beginAccess();
  v88 = *v87;
  LOBYTE(v87) = *(v87 + 8);
  v89 = v120;
  swift_beginAccess();
  *v89 = v88;
  *(v89 + 8) = v87;
  v90 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
  swift_beginAccess();
  v92 = *v90;
  v91 = v90[1];
  v93 = v121;
  swift_beginAccess();
  v94 = v93[1];
  *v93 = v92;
  v93[1] = v91;

  v95 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue);
  swift_beginAccess();
  v97 = *v95;
  v96 = v95[1];

  swift_beginAccess();
  v98 = v11[1];
  *v11 = v97;
  v11[1] = v96;

  return v1;
}

void *sub_1B91A87D8()
{
  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[15];

  v5 = v0[17];

  v6 = v0[19];

  v7 = v0[20];

  v8 = v0[21];

  v9 = v0[23];

  v10 = v0[25];

  v11 = v0[27];

  v12 = v0[29];

  v13 = v0[31];

  v14 = v0[33];

  v15 = v0[36];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__homeAutomationEntity, &qword_1EBAC71D0, "R#\v");
  v16 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity);

  v17 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood);

  v18 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre);

  v19 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue + 8);

  v20 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue + 8);

  return v0;
}

uint64_t sub_1B91A8950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = a5(0);
    OUTLINED_FUNCTION_57_0(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_40_0();
    v17 = a6(v19);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

void sub_1B91A8A14()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1B91A8DC8();
        break;
      case 2:
        sub_1B91A8E5C();
        break;
      case 3:
        sub_1B91AC85C();
        break;
      case 4:
        sub_1B8E16ACC();
        break;
      case 5:
        sub_1B91AC944();
        break;
      case 6:
        sub_1B8ED5CB4();
        break;
      case 7:
        sub_1B91A8EF0();
        break;
      case 8:
        sub_1B91A8F84();
        break;
      case 9:
        sub_1B91ACA1C();
        break;
      case 10:
        sub_1B91ACA70();
        break;
      case 11:
        sub_1B91A9018();
        break;
      case 12:
        sub_1B91A90AC();
        break;
      case 14:
        sub_1B8E71A68();
        break;
      case 15:
        sub_1B91ACC50();
        break;
      case 16:
        sub_1B91ACCA4();
        break;
      case 17:
        sub_1B91ACCF8();
        break;
      case 18:
        sub_1B8E2FF18();
        break;
      case 19:
        sub_1B91A9140();
        break;
      case 20:
        sub_1B91A91C4();
        break;
      case 21:
        sub_1B91A9258();
        break;
      case 22:
        sub_1B91A92EC();
        break;
      case 23:
        sub_1B91A9380();
        break;
      case 24:
        sub_1B91A9414();
        break;
      case 25:
        sub_1B91A94A8();
        break;
      case 26:
        sub_1B91A952C();
        break;
      case 27:
      case 28:
      case 29:
        sub_1B91A9608();
        break;
      case 30:
        sub_1B91A9668();
        break;
      case 31:
      case 32:
        sub_1B91A9704();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91A8DC8()
{
  swift_beginAccess();
  sub_1B91B527C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A8E5C()
{
  swift_beginAccess();
  sub_1B91B5228();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A8EF0()
{
  swift_beginAccess();
  sub_1B91B51D4();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A8F84()
{
  swift_beginAccess();
  sub_1B91B4F34();
  sub_1B964C3E0();
  return swift_endAccess();
}

uint64_t sub_1B91A9018()
{
  swift_beginAccess();
  sub_1B91B5180();
  sub_1B964C3E0();
  return swift_endAccess();
}

uint64_t sub_1B91A90AC()
{
  swift_beginAccess();
  sub_1B91B512C();
  sub_1B964C3E0();
  return swift_endAccess();
}

uint64_t sub_1B91A9140()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B91A91C4()
{
  swift_beginAccess();
  sub_1B91B4FDC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A9258()
{
  swift_beginAccess();
  sub_1B91B50D8();
  sub_1B964C3E0();
  return swift_endAccess();
}

uint64_t sub_1B91A92EC()
{
  swift_beginAccess();
  sub_1B91B4F88();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A9380()
{
  swift_beginAccess();
  sub_1B91B5030();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A9414()
{
  swift_beginAccess();
  sub_1B91B4E8C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A94A8()
{
  swift_beginAccess();
  sub_1B964C510();
  return swift_endAccess();
}

uint64_t sub_1B91A952C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  sub_1B8CD2AC8(&qword_1EBAC7738, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91A9608()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C4D0();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B91A9668()
{
  swift_beginAccess();
  sub_1B91B5084();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91A9704()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C530();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B91A9794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_12();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B91A980C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D0, "R#\v");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v64 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v10 = *(a1 + 24);
    v78 = *(a1 + 16);
    v79 = v10;
    sub_1B91B527C();
    result = sub_1B964C680();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (!sub_1B8D92198(*(a1 + 32), *(a1 + 40), 0))
  {
    v12 = *(a1 + 40);
    v76 = *(a1 + 32);
    v77 = v12;
    sub_1B91B5228();
    result = sub_1B964C680();
    if (v1)
    {
      return result;
    }
  }

  v80 = v8;
  swift_beginAccess();
  v13 = *(a1 + 56);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = *(a1 + 56);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 72);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = *(a1 + 72);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 88);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = *(a1 + 88);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 96) == 1)
  {
    result = sub_1B964C670();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 104))
  {
    v22 = *(a1 + 112);
    v74 = *(a1 + 104);
    v75 = v22;
    sub_1B91B51D4();
    result = sub_1B964C680();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 120) + 16))
  {
    sub_1B91B4F34();

    sub_1B964C600();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v23 = *(a1 + 136);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = *(a1 + 136);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v26 = *(a1 + 152);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = *(a1 + 152);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 160) + 16))
  {
    sub_1B91B5180();

    sub_1B964C600();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 168) + 16))
  {
    sub_1B91B512C();

    sub_1B964C600();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 184);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = *(a1 + 176) & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v31 = *(a1 + 184);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 200);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 192) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v34 = *(a1 + 200);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 216);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *(a1 + 208) & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v37 = *(a1 + 216);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 232);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = *(a1 + 224) & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v40 = *(a1 + 232);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v41 = *(a1 + 248);
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = *(a1 + 240) & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v43 = *(a1 + 248);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v44 = *(a1 + 264);
  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = *(a1 + 256) & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {
    goto LABEL_73;
  }

  v46 = *(a1 + 264);

  sub_1B964C700();
  if (v1)
  {
  }

LABEL_73:
  swift_beginAccess();
  if (!*(a1 + 272) || (v47 = *(a1 + 280), v72 = *(a1 + 272), v73 = v47, sub_1B91B4FDC(), result = sub_1B964C680(), !v1))
  {
    swift_beginAccess();
    if (*(*(a1 + 288) + 16))
    {
      sub_1B91B50D8();

      sub_1B964C600();
      if (v1)
      {
      }
    }

    swift_beginAccess();
    if (!*(a1 + 296) || (v48 = *(a1 + 304), v70 = *(a1 + 296), v71 = v48, sub_1B91B4F88(), result = sub_1B964C680(), !v1))
    {
      swift_beginAccess();
      if (!*(a1 + 312) || (v49 = *(a1 + 320), v68 = *(a1 + 312), v69 = v49, sub_1B91B5030(), result = sub_1B964C680(), !v1))
      {
        swift_beginAccess();
        if (!*(a1 + 328) || (v50 = *(a1 + 336), v66 = *(a1 + 328), v67 = v50, sub_1B91B4E8C(), result = sub_1B964C680(), !v1))
        {
          swift_beginAccess();
          if (*(a1 + 344) == 0.0 || (result = sub_1B964C6F0(), !v1))
          {
            swift_beginAccess();
            sub_1B8F1B8B8();
            if (__swift_getEnumTagSinglePayload(v7, 1, v80) == 1)
            {
              sub_1B8D9207C(v7, &qword_1EBAC71D0, "R#\v");
            }

            else
            {
              sub_1B91A7968();
              sub_1B8CD2AC8(&qword_1EBAC7738, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities);
              sub_1B964C740();
              result = sub_1B91A7A10();
              if (v1)
              {
                return result;
              }
            }

            v51 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity;
            swift_beginAccess();
            if (!*(*(a1 + v51) + 16) || (, sub_1B964C6E0(), result = , !v1))
            {
              v52 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood;
              swift_beginAccess();
              if (!*(*(a1 + v52) + 16) || (, sub_1B964C6E0(), result = , !v1))
              {
                v53 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre;
                swift_beginAccess();
                if (!*(*(a1 + v53) + 16) || (, sub_1B964C6E0(), result = , !v1))
                {
                  v54 = a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier;
                  swift_beginAccess();
                  if (!*v54 || (v55 = *(v54 + 8), v64[3] = *v54, v65 = v55, sub_1B91B5084(), result = sub_1B964C680(), !v1))
                  {
                    v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
                    swift_beginAccess();
                    v57 = *v56;
                    v58 = v56[1];
                    v59 = HIBYTE(v58) & 0xF;
                    if ((v58 & 0x2000000000000000) == 0)
                    {
                      v59 = v57 & 0xFFFFFFFFFFFFLL;
                    }

                    if (!v59 || (, sub_1B964C700(), result = , !v2))
                    {
                      v60 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue);
                      result = swift_beginAccess();
                      v61 = *v60;
                      v62 = v60[1];
                      v63 = HIBYTE(v62) & 0xF;
                      if ((v62 & 0x2000000000000000) == 0)
                      {
                        v63 = v61 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v63)
                      {

                        sub_1B964C700();
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

uint64_t sub_1B91AA504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7860, &qword_1B96A16E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v108 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D0, "R#\v");
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v108 - v14;
  swift_beginAccess();
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  swift_beginAccess();
  v18 = *(a2 + 24);
  if (!sub_1B8D92198(v16, v17, *(a2 + 16)))
  {
    return 0;
  }

  swift_beginAccess();
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  swift_beginAccess();
  v21 = *(a2 + 40);
  if (!sub_1B8D92198(v19, v20, *(a2 + 32)))
  {
    return 0;
  }

  swift_beginAccess();
  v23 = *(a1 + 48);
  v22 = *(a1 + 56);
  swift_beginAccess();
  v24 = v23 == *(a2 + 48) && v22 == *(a2 + 56);
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v25 = *(a1 + 64);
  v26 = *(a1 + 72);
  swift_beginAccess();
  v27 = v25 == *(a2 + 64) && v26 == *(a2 + 72);
  if (!v27 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v28 = *(a1 + 80);
  v29 = *(a1 + 88);
  swift_beginAccess();
  v30 = v28 == *(a2 + 80) && v29 == *(a2 + 88);
  if (!v30 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v31 = *(a1 + 96);
  swift_beginAccess();
  if (v31 != *(a2 + 96))
  {
    return 0;
  }

  swift_beginAccess();
  v32 = *(a1 + 104);
  v33 = *(a1 + 112);
  swift_beginAccess();
  v34 = *(a2 + 112);
  if (!sub_1B8D92198(v32, v33, *(a2 + 104)))
  {
    return 0;
  }

  swift_beginAccess();
  v35 = *(a1 + 120);
  swift_beginAccess();
  if ((sub_1B8D8DBB0(v35, *(a2 + 120)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v36 = *(a1 + 128);
  v37 = *(a1 + 136);
  swift_beginAccess();
  v38 = v36 == *(a2 + 128) && v37 == *(a2 + 136);
  if (!v38 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v39 = *(a1 + 144);
  v40 = *(a1 + 152);
  swift_beginAccess();
  v41 = v39 == *(a2 + 144) && v40 == *(a2 + 152);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v42 = *(a1 + 160);
  swift_beginAccess();
  if ((sub_1B8D921B0(v42, *(a2 + 160)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v43 = *(a1 + 168);
  swift_beginAccess();
  if ((sub_1B8D921B0(v43, *(a2 + 168)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 176);
  v45 = *(a1 + 184);
  swift_beginAccess();
  v46 = v44 == *(a2 + 176) && v45 == *(a2 + 184);
  if (!v46 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v47 = *(a1 + 192);
  v48 = *(a1 + 200);
  swift_beginAccess();
  v49 = v47 == *(a2 + 192) && v48 == *(a2 + 200);
  if (!v49 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v50 = *(a1 + 208);
  v51 = *(a1 + 216);
  swift_beginAccess();
  v52 = v50 == *(a2 + 208) && v51 == *(a2 + 216);
  if (!v52 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v53 = *(a1 + 224);
  v54 = *(a1 + 232);
  swift_beginAccess();
  v55 = v53 == *(a2 + 224) && v54 == *(a2 + 232);
  if (!v55 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v56 = *(a1 + 240);
  v57 = *(a1 + 248);
  swift_beginAccess();
  v58 = v56 == *(a2 + 240) && v57 == *(a2 + 248);
  if (!v58 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v59 = *(a1 + 256);
  v60 = *(a1 + 264);
  swift_beginAccess();
  v61 = v59 == *(a2 + 256) && v60 == *(a2 + 264);
  if (!v61 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v62 = *(a1 + 272);
  v63 = *(a1 + 280);
  swift_beginAccess();
  v64 = *(a2 + 280);
  if (!sub_1B8D92198(v62, v63, *(a2 + 272)))
  {
    return 0;
  }

  swift_beginAccess();
  v65 = *(a1 + 288);
  swift_beginAccess();
  if ((sub_1B8D921B0(v65, *(a2 + 288)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v66 = *(a1 + 296);
  v67 = *(a1 + 304);
  swift_beginAccess();
  v68 = *(a2 + 304);
  if (!sub_1B8D92198(v66, v67, *(a2 + 296)))
  {
    return 0;
  }

  swift_beginAccess();
  v69 = *(a1 + 312);
  v70 = *(a1 + 320);
  swift_beginAccess();
  v71 = *(a2 + 320);
  if (!sub_1B8D92198(v69, v70, *(a2 + 312)))
  {
    return 0;
  }

  swift_beginAccess();
  v72 = *(a1 + 328);
  v73 = *(a1 + 336);
  swift_beginAccess();
  v74 = *(a2 + 336);
  if (!sub_1B8D92198(v72, v73, *(a2 + 328)))
  {
    return 0;
  }

  swift_beginAccess();
  v75 = *(a1 + 344);
  swift_beginAccess();
  if (v75 != *(a2 + 344))
  {
    return 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v76 = *(v6 + 48);
  v77 = v110;
  sub_1B8F1B8B8();
  v109 = v76;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v77, 1, v4) == 1)
  {

    sub_1B8D9207C(v15, &qword_1EBAC71D0, "R#\v");
    if (__swift_getEnumTagSinglePayload(v110 + v109, 1, v4) == 1)
    {
      sub_1B8D9207C(v110, &qword_1EBAC71D0, "R#\v");
      goto LABEL_76;
    }

LABEL_74:
    sub_1B8D9207C(v110, &qword_1EBAC7860, &qword_1B96A16E0);
    goto LABEL_99;
  }

  v78 = v110;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v78 + v109, 1, v4) == 1)
  {

    sub_1B8D9207C(v15, &qword_1EBAC71D0, "R#\v");
    sub_1B91A7A10();
    goto LABEL_74;
  }

  v79 = v110;
  sub_1B91A7968();

  v80 = static Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.== infix(_:_:)(v13);
  sub_1B91A7A10();
  sub_1B8D9207C(v15, &qword_1EBAC71D0, "R#\v");
  sub_1B91A7A10();
  sub_1B8D9207C(v79, &qword_1EBAC71D0, "R#\v");
  if ((v80 & 1) == 0)
  {
    goto LABEL_99;
  }

LABEL_76:
  v81 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity;
  swift_beginAccess();
  v82 = *(a1 + v81);
  v83 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__activity;
  swift_beginAccess();
  if ((sub_1B8D6123C(v82, *(a2 + v83)) & 1) == 0)
  {
    goto LABEL_99;
  }

  v84 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood;
  swift_beginAccess();
  v85 = *(a1 + v84);
  v86 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__mood;
  swift_beginAccess();
  if ((sub_1B8D6123C(v85, *(a2 + v86)) & 1) == 0)
  {
    goto LABEL_99;
  }

  v87 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre;
  swift_beginAccess();
  v88 = *(a1 + v87);
  v89 = OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__genre;
  swift_beginAccess();
  if ((sub_1B8D6123C(v88, *(a2 + v89)) & 1) == 0)
  {
    goto LABEL_99;
  }

  v90 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier);
  swift_beginAccess();
  v91 = *v90;
  v92 = *(v90 + 8);
  v93 = (a2 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__modifier);
  swift_beginAccess();
  v94 = *v93;
  v95 = v91 != 0;
  if (!v92)
  {
    v95 = v91;
  }

  if (*(v93 + 8) != 1)
  {
    if (v95 != v94)
    {
      goto LABEL_99;
    }

    goto LABEL_88;
  }

  if (!v94)
  {
    if (!v95)
    {
      goto LABEL_88;
    }

LABEL_99:

    return 0;
  }

  if (v95 != 1)
  {
    goto LABEL_99;
  }

LABEL_88:
  v96 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = (a2 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__entityOriginalValue);
  swift_beginAccess();
  v100 = v97 == *v99 && v98 == v99[1];
  if (!v100 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_99;
  }

  v101 = (a1 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue);
  swift_beginAccess();
  v102 = *v101;
  v103 = v101[1];
  v104 = (a2 + OBJC_IVAR____TtCV10PegasusAPI44Apple_Parsec_Siri_V2alpha_AudioUnderstandingP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__playlistTitleOriginalValue);
  swift_beginAccess();
  if (v102 == *v104 && v103 == v104[1])
  {
  }

  else
  {
    v106 = sub_1B964C9F0();

    if ((v106 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B91AB278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC77A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91AB2F8(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC76D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91AB368()
{
  sub_1B8CD2AC8(&qword_1EBAC76D8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioUnderstanding);

  return sub_1B964C5D0();
}

uint64_t sub_1B91AB400()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC70C0);
  __swift_project_value_buffer(v0, qword_1EBAC70C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1B9652FF0;
  v4 = v50 + v3;
  v5 = v50 + v3 + v1[14];
  *(v50 + v3) = 1;
  *v5 = "artist";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "identifier";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "type";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "asset_info";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v16 = *MEMORY[0x1E69AADE8];
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "recommendation_id";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "amp_confidence_score";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "internal_signals";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "shared_user_id_from_playable_music_account";
  *(v24 + 1) = 42;
  v24[16] = 2;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "punchout_uri";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "requires_subscription";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  v29 = (v4 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "provider";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  v31 = (v4 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "is_available";
  *(v32 + 1) = 12;
  v32[16] = 2;
  v8();
  v33 = (v4 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "is_hard_ban";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v4 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "bundle_id";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v8();
  v37 = (v4 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "universal_resource_link";
  *(v38 + 1) = 23;
  v38[16] = 2;
  v8();
  v39 = (v4 + 16 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "provider_app_name";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v8();
  v41 = (v4 + 17 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "amp_confidence_level";
  *(v42 + 1) = 20;
  v42[16] = 2;
  v8();
  v43 = (v4 + 18 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "audio_sub_items";
  *(v44 + 1) = 15;
  v44[16] = 2;
  v8();
  v45 = (v4 + 19 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "images";
  *(v46 + 1) = 6;
  v46[16] = 2;
  v8();
  v47 = (v4 + 20 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "details";
  *(v48 + 1) = 7;
  v48[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B91ABAB8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 120) = MEMORY[0x1E69E7CC0];
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0xE000000000000000;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0xE000000000000000;
  *(v0 + 240) = 0;
  *(v0 + 248) = 1;
  *(v0 + 256) = v1;
  *(v0 + 264) = v1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__details;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  return v0;
}

uint64_t sub_1B91ABB5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D8, "R#\v");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v77 = &v63 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v64 = (v1 + 96);
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  v65 = (v1 + 112);
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + 120) = MEMORY[0x1E69E7CC0];
  v66 = (v1 + 120);
  *(v1 + 128) = 0;
  v67 = (v1 + 128);
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 144) = 0;
  v68 = (v1 + 144);
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 160) = 0;
  v69 = (v1 + 160);
  *(v1 + 168) = 0;
  v70 = (v1 + 168);
  *(v1 + 176) = 0xE000000000000000;
  *(v1 + 184) = 0;
  v71 = (v1 + 184);
  *(v1 + 192) = 0;
  v72 = (v1 + 192);
  *(v1 + 200) = 0xE000000000000000;
  *(v1 + 208) = 0;
  v73 = (v1 + 208);
  *(v1 + 216) = 0xE000000000000000;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0xE000000000000000;
  *(v1 + 240) = 0;
  v74 = (v1 + 224);
  v75 = (v1 + 240);
  *(v1 + 72) = 1;
  *(v1 + 248) = 1;
  *(v1 + 256) = v6;
  *(v1 + 264) = v6;
  v7 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__details;
  v76 = OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__details;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  swift_beginAccess();
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v10;
  *(v1 + 24) = v9;
  swift_beginAccess();
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v11;
  *(v1 + 40) = v12;

  swift_beginAccess();
  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  swift_beginAccess();
  v15 = *(v1 + 56);
  *(v1 + 48) = v14;
  *(v1 + 56) = v13;

  swift_beginAccess();
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v16;
  *(v1 + 72) = v17;
  swift_beginAccess();
  v19 = *(a1 + 80);
  v18 = *(a1 + 88);
  swift_beginAccess();
  v20 = *(v1 + 88);
  *(v1 + 80) = v19;
  *(v1 + 88) = v18;

  swift_beginAccess();
  v22 = *(a1 + 96);
  v21 = *(a1 + 104);
  v23 = v64;
  swift_beginAccess();
  v24 = *(v1 + 104);
  *v23 = v22;
  *(v1 + 104) = v21;

  swift_beginAccess();
  v25 = *(a1 + 112);
  v26 = v65;
  swift_beginAccess();
  *v26 = v25;
  swift_beginAccess();
  v27 = *(a1 + 120);
  v28 = v66;
  swift_beginAccess();
  v29 = *v28;
  *v28 = v27;

  swift_beginAccess();
  v31 = *(a1 + 128);
  v30 = *(a1 + 136);
  v32 = v67;
  swift_beginAccess();
  v33 = *(v1 + 136);
  *v32 = v31;
  *(v1 + 136) = v30;

  swift_beginAccess();
  v35 = *(a1 + 144);
  v34 = *(a1 + 152);
  v36 = v68;
  swift_beginAccess();
  v37 = *(v1 + 152);
  *v36 = v35;
  *(v1 + 152) = v34;

  swift_beginAccess();
  LOBYTE(v34) = *(a1 + 160);
  v38 = v69;
  swift_beginAccess();
  *v38 = v34;
  swift_beginAccess();
  v40 = *(a1 + 168);
  v39 = *(a1 + 176);
  v41 = v70;
  swift_beginAccess();
  v42 = *(v1 + 176);
  *v41 = v40;
  *(v1 + 176) = v39;

  swift_beginAccess();
  LOBYTE(v39) = *(a1 + 184);
  v43 = v71;
  swift_beginAccess();
  *v43 = v39;
  swift_beginAccess();
  LOBYTE(v39) = *(a1 + 185);
  swift_beginAccess();
  *(v1 + 185) = v39;
  swift_beginAccess();
  v45 = *(a1 + 192);
  v44 = *(a1 + 200);
  v46 = v72;
  swift_beginAccess();
  v47 = *(v1 + 200);
  *v46 = v45;
  *(v1 + 200) = v44;

  swift_beginAccess();
  v49 = *(a1 + 208);
  v48 = *(a1 + 216);
  v50 = v73;
  swift_beginAccess();
  v51 = *(v1 + 216);
  *v50 = v49;
  *(v1 + 216) = v48;

  swift_beginAccess();
  v53 = *(a1 + 224);
  v52 = *(a1 + 232);
  v54 = v74;
  swift_beginAccess();
  v55 = *(v1 + 232);
  *v54 = v53;
  *(v1 + 232) = v52;

  swift_beginAccess();
  v56 = *(a1 + 240);
  LOBYTE(v55) = *(a1 + 248);
  v57 = v75;
  swift_beginAccess();
  *v57 = v56;
  *(v1 + 248) = v55;
  swift_beginAccess();
  v58 = *(a1 + 256);
  swift_beginAccess();
  v59 = *(v1 + 256);
  *(v1 + 256) = v58;

  swift_beginAccess();
  v60 = *(a1 + 264);
  swift_beginAccess();
  v61 = *(v1 + 264);
  *(v1 + 264) = v60;

  swift_beginAccess();
  sub_1B8F1B8B8();

  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  return v1;
}

unint64_t sub_1B91AC334()
{
  result = qword_1EBAC71E8;
  if (!qword_1EBAC71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC71E8);
  }

  return result;
}

unint64_t sub_1B91AC388()
{
  result = qword_1EBAC71F0;
  if (!qword_1EBAC71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC71F0);
  }

  return result;
}

unint64_t sub_1B91AC3DC()
{
  result = qword_1EBAC7200;
  if (!qword_1EBAC7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAC7200);
  }

  return result;
}

void *sub_1B91AC430()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[22];

  v10 = v0[25];

  v11 = v0[27];

  v12 = v0[29];

  v13 = v0[32];

  v14 = v0[33];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemP33_296B022CB63F8D2655D52431FFE0737A13_StorageClass__details, &qword_1EBAC71D8, "R#\v");
  return v0;
}

uint64_t sub_1B91AC4F0(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1B91AC5A0()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1B8DAA85C();
        break;
      case 2:
        sub_1B8DC46F4();
        break;
      case 3:
        sub_1B91AC85C();
        break;
      case 4:
        sub_1B91AC8B0();
        break;
      case 5:
        sub_1B91AC944();
        break;
      case 6:
        sub_1B8E16BD4();
        break;
      case 7:
        sub_1B91AC998();
        break;
      case 8:
        sub_1B910DA00();
        break;
      case 9:
        sub_1B91ACA1C();
        break;
      case 10:
        sub_1B91ACA70();
        break;
      case 11:
        sub_1B91ACAC4();
        break;
      case 12:
        sub_1B8F3C308();
        break;
      case 13:
        sub_1B91ACB48();
        break;
      case 14:
        sub_1B91ACBCC();
        break;
      case 15:
        sub_1B91ACC50();
        break;
      case 16:
        sub_1B91ACCA4();
        break;
      case 17:
        sub_1B91ACCF8();
        break;
      case 18:
        sub_1B91ACD4C();
        break;
      case 19:
        sub_1B91ACDE0();
        break;
      case 20:
        sub_1B91ACEAC();
        break;
      case 21:
        sub_1B91ACF78();
        break;
      default:
        continue;
    }
  }
}

void sub_1B91AC85C()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C530();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B91AC8B0()
{
  swift_beginAccess();
  sub_1B91AC3DC();
  sub_1B964C420();
  return swift_endAccess();
}

void sub_1B91AC944()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C530();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B91AC998()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

void sub_1B91ACA1C()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C530();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B91ACA70()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C530();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B91ACAC4()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B91ACB48()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B91ACBCC()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

void sub_1B91ACC50()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C530();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B91ACCA4()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C530();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

void sub_1B91ACCF8()
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  sub_1B964C530();
  OUTLINED_FUNCTION_199_1();
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B91ACD4C()
{
  swift_beginAccess();
  sub_1B91B4EE0();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B91ACDE0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem(0);
  sub_1B8CD2AC8(&qword_1EBAC7708, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91ACEAC()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Image(0);
  sub_1B8CD2AC8(&qword_1EBAC7720, type metadata accessor for Apple_Parsec_Siri_V2alpha_Image);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B91ACF78()
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  sub_1B8CD2AC8(&qword_1EBAC76C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B91AD084(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D8, "R#\v");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v45 - v5;
  v51 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  v7 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  swift_beginAccess();
  v8 = *(a1 + 24);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v11 = *(a1 + 40);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = *(a1 + 40);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v14 = *(a1 + 56);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = *(a1 + 56);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 64))
  {
    v17 = *(a1 + 72);
    v49 = *(a1 + 64);
    v50 = v17;
    sub_1B91AC3DC();
    result = sub_1B964C680();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 88);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = *(a1 + 88);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 104);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = *(a1 + 104);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 112) != 0.0)
  {
    result = sub_1B964C6B0();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 120) + 16))
  {
    v25 = *(a1 + 120);

    sub_1B964C6E0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v26 = *(a1 + 136);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = *(a1 + 136);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 152);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v31 = *(a1 + 152);

    sub_1B964C700();
    if (!v1)
    {

      goto LABEL_42;
    }
  }

LABEL_42:
  swift_beginAccess();
  if (*(a1 + 160) != 1 || (result = sub_1B964C670(), !v1))
  {
    swift_beginAccess();
    v32 = *(a1 + 176);
    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = *(a1 + 168) & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v34 = *(a1 + 176);

      sub_1B964C700();
      if (v1)
      {
      }
    }

    swift_beginAccess();
    if (*(a1 + 184) != 1 || (result = sub_1B964C670(), !v1))
    {
      swift_beginAccess();
      if (*(a1 + 185) != 1 || (result = sub_1B964C670(), !v1))
      {
        swift_beginAccess();
        v35 = *(a1 + 200);
        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = *(a1 + 192) & 0xFFFFFFFFFFFFLL;
        }

        if (!v36 || (v37 = *(a1 + 200), , sub_1B964C700(), result = , !v1))
        {
          swift_beginAccess();
          v38 = *(a1 + 216);
          v39 = HIBYTE(v38) & 0xF;
          if ((v38 & 0x2000000000000000) == 0)
          {
            v39 = *(a1 + 208) & 0xFFFFFFFFFFFFLL;
          }

          if (!v39 || (v40 = *(a1 + 216), , sub_1B964C700(), result = , !v1))
          {
            swift_beginAccess();
            v41 = *(a1 + 232);
            v42 = HIBYTE(v41) & 0xF;
            if ((v41 & 0x2000000000000000) == 0)
            {
              v42 = *(a1 + 224) & 0xFFFFFFFFFFFFLL;
            }

            if (!v42 || (v43 = *(a1 + 232), , sub_1B964C700(), result = , !v1))
            {
              swift_beginAccess();
              if (!*(a1 + 240) || (v44 = *(a1 + 248), v47 = *(a1 + 240), v48 = v44, sub_1B91B4EE0(), result = sub_1B964C680(), !v1))
              {
                swift_beginAccess();
                if (!*(*(a1 + 256) + 16) || (v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem(0), sub_1B8CD2AC8(&qword_1EBAC7708, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem), , sub_1B964C730(), result = , !v1))
                {
                  swift_beginAccess();
                  if (!*(*(a1 + 264) + 16) || (v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Image(0), sub_1B8CD2AC8(&qword_1EBAC7720, type metadata accessor for Apple_Parsec_Siri_V2alpha_Image), , sub_1B964C730(), result = , !v1))
                  {
                    swift_beginAccess();
                    sub_1B8F1B8B8();
                    if (__swift_getEnumTagSinglePayload(v6, 1, v51) == 1)
                    {
                      return sub_1B8D9207C(v6, &qword_1EBAC71D8, "R#\v");
                    }

                    else
                    {
                      sub_1B91A7968();
                      sub_1B8CD2AC8(&qword_1EBAC76C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails);
                      sub_1B964C740();
                      return sub_1B91A7A10();
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

uint64_t sub_1B91ADA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_468();
  v8 = *(v7(0) + 20);
  v9 = *(v5 + v8);
  v10 = *(v4 + v8);
  if (v9 != v10)
  {
    v11 = *(v5 + v8);

    v12 = a4(v9, v10);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v13, v14);
  OUTLINED_FUNCTION_231();
  return sub_1B964C850() & 1;
}

BOOL sub_1B91ADADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC7858, &qword_1B96A16D8);
  OUTLINED_FUNCTION_59_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_185();
  v89 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC71D8, "R#\v");
  v17 = OUTLINED_FUNCTION_183(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_66();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v87 - v24;
  OUTLINED_FUNCTION_521();
  v27 = *(a1 + 16);
  v26 = *(a1 + 24);
  OUTLINED_FUNCTION_521();
  v28 = v27 == *(a2 + 16) && v26 == *(a2 + 24);
  if (!v28 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v29 = *(a1 + 32);
  v30 = *(a1 + 40);
  OUTLINED_FUNCTION_521();
  v31 = v29 == *(a2 + 32) && v30 == *(a2 + 40);
  if (!v31 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v32 = *(a1 + 48);
  v33 = *(a1 + 56);
  OUTLINED_FUNCTION_521();
  v34 = v32 == *(a2 + 48) && v33 == *(a2 + 56);
  if (!v34 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v35 = *(a1 + 64);
  v36 = *(a1 + 72);
  OUTLINED_FUNCTION_521();
  v37 = *(a2 + 72);
  if (!sub_1B8D92198(v35, v36, *(a2 + 64)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v38 = *(a1 + 80);
  v39 = *(a1 + 88);
  OUTLINED_FUNCTION_521();
  v40 = v38 == *(a2 + 80) && v39 == *(a2 + 88);
  if (!v40 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v41 = *(a1 + 96);
  v42 = *(a1 + 104);
  OUTLINED_FUNCTION_521();
  v43 = v41 == *(a2 + 96) && v42 == *(a2 + 104);
  if (!v43 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v44 = *(a1 + 112);
  OUTLINED_FUNCTION_521();
  if (v44 != *(a2 + 112))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v45 = *(a1 + 120);
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v45, *(a2 + 120)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v46 = *(a1 + 128);
  v47 = *(a1 + 136);
  OUTLINED_FUNCTION_521();
  v48 = v46 == *(a2 + 128) && v47 == *(a2 + 136);
  if (!v48 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v49 = *(a1 + 144);
  v50 = *(a1 + 152);
  OUTLINED_FUNCTION_521();
  v51 = v49 == *(a2 + 144) && v50 == *(a2 + 152);
  if (!v51 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v52 = *(a1 + 160);
  OUTLINED_FUNCTION_521();
  if (v52 != *(a2 + 160))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v53 = *(a1 + 168);
  v54 = *(a1 + 176);
  OUTLINED_FUNCTION_521();
  v55 = v53 == *(a2 + 168) && v54 == *(a2 + 176);
  if (!v55 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v56 = *(a1 + 184);
  OUTLINED_FUNCTION_521();
  if (v56 != *(a2 + 184))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v57 = *(a1 + 185);
  OUTLINED_FUNCTION_521();
  if (v57 != *(a2 + 185))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v59 = *(a1 + 192);
  v60 = *(a1 + 200);
  OUTLINED_FUNCTION_521();
  v61 = v59 == *(a2 + 192) && v60 == *(a2 + 200);
  if (!v61 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v62 = *(a1 + 208);
  v63 = *(a1 + 216);
  OUTLINED_FUNCTION_521();
  v64 = v62 == *(a2 + 208) && v63 == *(a2 + 216);
  if (!v64 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v65 = *(a1 + 224);
  v66 = *(a1 + 232);
  OUTLINED_FUNCTION_521();
  v67 = v65 == *(a2 + 224) && v66 == *(a2 + 232);
  if (!v67 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v68 = *(a1 + 240);
  v69 = *(a1 + 248);
  OUTLINED_FUNCTION_521();
  if (!sub_1B8D580CC(v68, v69, *(a2 + 240), *(a2 + 248)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v70 = *(a1 + 256);
  OUTLINED_FUNCTION_521();
  v71 = *(a2 + 256);

  sub_1B8D8DD2C();
  v88 = v72;

  if ((v88 & 1) == 0)
  {
    goto LABEL_72;
  }

  OUTLINED_FUNCTION_521();
  v73 = *(a1 + 264);
  OUTLINED_FUNCTION_521();
  v74 = *(a2 + 264);

  sub_1B8D8DED4();
  v88 = v75;

  if ((v88 & 1) == 0)
  {
LABEL_72:

    return 0;
  }

  OUTLINED_FUNCTION_521();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_521();
  v76 = *(v11 + 48);
  v77 = v89;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_37_0(v77);
  if (!v28)
  {
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_37_0(v77 + v76);
    if (!v78)
    {
      OUTLINED_FUNCTION_23_12();
      sub_1B91A7968();
      if (*v22 == *v10 && (sub_1B8D6123C(v22[1], v10[1]) & 1) != 0)
      {
        v82 = v22[2] == v10[2] && v22[3] == v10[3];
        if (v82 || (sub_1B964C9F0() & 1) != 0)
        {
          v83 = *(v4 + 28);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_67();
          sub_1B8CD2AC8(v84, v85);
          v86 = sub_1B964C850();

          sub_1B8D9207C(v25, &qword_1EBAC71D8, "R#\v");
          sub_1B91A7A10();
          OUTLINED_FUNCTION_491();
          sub_1B91A7A10();
          sub_1B8D9207C(v89, &qword_1EBAC71D8, "R#\v");
          return (v86 & 1) != 0;
        }
      }

      sub_1B8D9207C(v25, &qword_1EBAC71D8, "R#\v");
      sub_1B91A7A10();
      OUTLINED_FUNCTION_541_0();
      sub_1B91A7A10();
      v81 = v89;
      v79 = &qword_1EBAC71D8;
      v80 = "R#\v";
LABEL_87:
      sub_1B8D9207C(v81, v79, v80);
      return 0;
    }

    sub_1B8D9207C(v25, &qword_1EBAC71D8, "R#\v");
    sub_1B91A7A10();
    v77 = v89;
LABEL_76:
    v79 = &qword_1EBAC7858;
    v80 = &qword_1B96A16D8;
    v81 = v77;
    goto LABEL_87;
  }

  sub_1B8D9207C(v25, &qword_1EBAC71D8, "R#\v");
  OUTLINED_FUNCTION_37_0(v77 + v76);
  if (!v28)
  {
    goto LABEL_76;
  }

  sub_1B8D9207C(v77, &qword_1EBAC71D8, "R#\v");
  return 1;
}

uint64_t sub_1B91AE400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC7798, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91AE480(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC76F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91AE4F0()
{
  sub_1B8CD2AC8(&qword_1EBAC76F0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B91AE588()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC70E0);
  __swift_project_value_buffer(v0, qword_1EBAC70E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "asset_info";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_AudioSubItem.decodeMessage<A>(decoder:)()
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

uint64_t Apple_Parsec_Siri_V2alpha_AudioSubItem.traverse<A>(visitor:)()
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
      v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_AudioSubItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem(0);
  OUTLINED_FUNCTION_188_1(v8);
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91AE9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC7790, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91AEA28(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7708, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91AEA98()
{
  sub_1B8CD2AC8(&qword_1EBAC7708, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioSubItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B91AEB30()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC70F8);
  __swift_project_value_buffer(v0, qword_1EBAC70F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uri_format_string";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "width";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "height";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "type";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.decodeMessage<A>(decoder:)()
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
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B91AEE40();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_Image.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
  {
    if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6F0(), !v1))
    {
      if (*(v2 + 24) == 0.0 || (OUTLINED_FUNCTION_22(), result = sub_1B964C6F0(), !v1))
      {
        if (!*(v2 + 32) || (v7 = *(v2 + 40), OUTLINED_FUNCTION_94_4(), sub_1B91B11E0(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
        {
          v8 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Image(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_Image.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 16) != *(v2 + 16) || *(v3 + 24) != *(v2 + 24))
  {
    return 0;
  }

  v7 = *(v3 + 32);
  v8 = *(v2 + 32);
  if (*(v3 + 40))
  {
    v7 = v7 != 0;
  }

  if (*(v2 + 40) == 1)
  {
    if (v8)
    {
      if (v7 != 1)
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }
  }

  else if (v7 != v8)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_Image(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91AF134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC7788, type metadata accessor for Apple_Parsec_Siri_V2alpha_Image);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91AF1B4(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7720, type metadata accessor for Apple_Parsec_Siri_V2alpha_Image);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91AF224()
{
  sub_1B8CD2AC8(&qword_1EBAC7720, type metadata accessor for Apple_Parsec_Siri_V2alpha_Image);

  return sub_1B964C5D0();
}

uint64_t sub_1B91AF2BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7110);
  __swift_project_value_buffer(v0, qword_1EBAC7110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "service_names";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intent_from_entities";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "intent_device_quantifier";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "intent_device_type";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "intent_place_hint";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "intent_reference";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "intent_device_quantifier_enum";
  *(v20 + 1) = 29;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "intent_device_type_enum";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "intent_place_hint_enum";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.decodeMessage<A>(decoder:)()
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
        sub_1B964C4D0();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B91AF790(v3, v4, v5, v6, v7);
        break;
      case 3:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B91AF828();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B91AF890();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B91AF8F8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B91AF790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  v5 = OUTLINED_FUNCTION_128();
  sub_1B8CD2AC8(v5, v6);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity(0), sub_1B8CD2AC8(&qword_1EBAC7298, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationFromEntity), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
      OUTLINED_FUNCTION_1();
      if (!v6 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
      {
        v7 = *(v2 + 32);
        v8 = *(v2 + 40);
        OUTLINED_FUNCTION_1();
        if (!v9 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
        {
          v10 = *(v2 + 48);
          v11 = *(v2 + 56);
          OUTLINED_FUNCTION_1();
          if (!v12 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
          {
            v13 = *(v2 + 64);
            v14 = *(v2 + 72);
            OUTLINED_FUNCTION_1();
            if (!v15 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
            {
              if (!*(v2 + 80) || (v16 = *(v2 + 88), OUTLINED_FUNCTION_94_4(), sub_1B91B1234(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
              {
                if (!*(v2 + 96) || (v17 = *(v2 + 104), OUTLINED_FUNCTION_94_4(), sub_1B91B1288(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
                {
                  if (!*(v2 + 112) || (v18 = *(v2 + 120), OUTLINED_FUNCTION_94_4(), sub_1B91B12DC(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
                  {
                    v19 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0) + 52);
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

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_HomeAutomationEntities.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  if ((sub_1B8D6123C(v3, *v4) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 8);
  v6 = *(v1 + 8);
  sub_1B8D66C48();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v2 + 48) == *(v1 + 48) && *(v2 + 56) == *(v1 + 56);
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v2 + 64) == *(v1 + 64) && *(v2 + 72) == *(v1 + 72);
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v1 + 88);
  if (!sub_1B8D92198(*(v2 + 80), *(v2 + 88), *(v1 + 80)))
  {
    return 0;
  }

  v15 = *(v1 + 104);
  if (!sub_1B8D92198(*(v2 + 96), *(v2 + 104), *(v1 + 96)))
  {
    return 0;
  }

  v16 = *(v1 + 120);
  if (!sub_1B8D92198(*(v2 + 112), *(v2 + 120), *(v1 + 112)))
  {
    return 0;
  }

  v17 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities(0) + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_67();
  sub_1B8CD2AC8(v18, v19);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B91AFD6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2AC8(&qword_1EBAC7780, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B91AFDEC(uint64_t a1)
{
  v2 = sub_1B8CD2AC8(&qword_1EBAC7738, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B91AFE5C()
{
  sub_1B8CD2AC8(&qword_1EBAC7738, type metadata accessor for Apple_Parsec_Siri_V2alpha_HomeAutomationEntities);

  return sub_1B964C5D0();
}

uint64_t sub_1B91AFEDC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC7128);
  __swift_project_value_buffer(v0, qword_1EBAC7128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEVICE_QUANTIFIER_UNKNOWN";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DEVICE_QUANTIFIER_ONE";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DEVICE_QUANTIFIER_BOTH";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DEVICE_QUANTIFIER_SOME";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "DEVICE_QUANTIFIER_ALL";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DEVICE_QUANTIFIER_EXCEPT";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}