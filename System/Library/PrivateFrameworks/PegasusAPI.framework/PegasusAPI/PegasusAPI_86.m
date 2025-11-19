void Searchfoundation_RFImageSource.value.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  *(v1 + 56) = __swift_coroFrameAllocStub(v7);
  *(v1 + 64) = __swift_coroFrameAllocStub(v7);
  v8 = *(type metadata accessor for Searchfoundation_RFImageSource(0) + 20);
  *(v1 + 72) = v8;
  v9 = *(v0 + v8);
  OUTLINED_FUNCTION_62_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_242();
}

void sub_1B955D718(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v5 = *(v2 + 48);
    sub_1B8D92024();
    Searchfoundation_RFImageSource.value.setter();
    v6 = OUTLINED_FUNCTION_236();
    sub_1B8D9207C(v6, v7, &unk_1B964D5E0);
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
      v15 = type metadata accessor for Searchfoundation_RFImageSource._StorageClass(0);
      OUTLINED_FUNCTION_57_0(v15);
      swift_allocObject();
      v16 = OUTLINED_FUNCTION_40_0();
      *(v14 + v13) = sub_1B9565A6C(v16);
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_131();
    swift_beginAccess();
    sub_1B8DAA170();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Searchfoundation_RFImageSource.url.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DE0, &unk_1B964D5E0);
    return Searchfoundation_RFUrlImage.init()(a1);
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
    return Searchfoundation_RFUrlImage.init()(a1);
  }

  OUTLINED_FUNCTION_29_34();
  OUTLINED_FUNCTION_182();
  return sub_1B956DD18();
}

uint64_t Searchfoundation_RFUrlImage.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for Searchfoundation_RFUrlImage(0);
  v3 = v2[6];
  type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_105_10(v2[7]);
  OUTLINED_FUNCTION_105_10(v2[8]);
  OUTLINED_FUNCTION_105_10(v2[9]);
  OUTLINED_FUNCTION_105_10(v2[10]);
  *(a1 + v2[11]) = 0;
  v8 = a1 + v2[12];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v9 = v2[13];
  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v2[14];
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void Searchfoundation_RFImageSource.url.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Searchfoundation_RFUrlImage(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_29_34();
      OUTLINED_FUNCTION_177_1();
      sub_1B956DD18();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  v15 = v8[6];
  type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_110_9(v8[7]);
  OUTLINED_FUNCTION_110_9(v8[8]);
  OUTLINED_FUNCTION_110_9(v8[9]);
  OUTLINED_FUNCTION_110_9(v8[10]);
  *(v12 + v8[11]) = 0;
  v20 = v12 + v8[12];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v21 = v8[13];
  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = v8[14];
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
LABEL_7:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFImageSource.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_3_82();
      OUTLINED_FUNCTION_182();
      return sub_1B956DD18();
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v13 = *(type metadata accessor for Searchfoundation_RFSymbolImage(0) + 20);
  if (qword_1ED9D2DA0 != -1)
  {
    OUTLINED_FUNCTION_22_30();
  }

  *(a1 + v13) = qword_1ED9D2DA8;
}

uint64_t sub_1B955DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_177_1();
  sub_1B956DD70();
  return a7(v7);
}

void Searchfoundation_RFImageSource.symbol.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Searchfoundation_RFSymbolImage(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_3_82();
      OUTLINED_FUNCTION_177_1();
      sub_1B956DD18();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1ED9D2DA0 != -1)
  {
    OUTLINED_FUNCTION_22_30();
  }

  *&v12[v15] = qword_1ED9D2DA8;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

void sub_1B955DFA0()
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
    sub_1B956DD70();
    v2(v3);
    sub_1B9565C54();
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

uint64_t Searchfoundation_RFImageSource.appIcon.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_36_13();
      OUTLINED_FUNCTION_182();
      return sub_1B956DD18();
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  v11 = OUTLINED_FUNCTION_56_12();
  v12 = type metadata accessor for Searchfoundation_RFAppIconImage(v11);
  return OUTLINED_FUNCTION_279(v12);
}

void Searchfoundation_RFImageSource.appIcon.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Searchfoundation_RFAppIconImage(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
LABEL_7:
    OUTLINED_FUNCTION_129_7();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_36_13();
  OUTLINED_FUNCTION_177_1();
  sub_1B956DD18();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFImageSource.avatar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_35_18();
      OUTLINED_FUNCTION_182();
      return sub_1B956DD18();
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v13 = type metadata accessor for Searchfoundation_RFAvatarImage(0);
  return OUTLINED_FUNCTION_279(v13);
}

uint64_t Searchfoundation_RFAvatarImage.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = type metadata accessor for Searchfoundation_RFAvatarImage(0);
  return OUTLINED_FUNCTION_279(v1);
}

void Searchfoundation_RFImageSource.avatar.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Searchfoundation_RFAvatarImage(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
LABEL_7:
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = 0;
    *(v12 + 16) = 1;
    v15 = v12 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_35_18();
  OUTLINED_FUNCTION_177_1();
  sub_1B956DD18();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFImageSource.monogram.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_34_15();
      OUTLINED_FUNCTION_182();
      return sub_1B956DD18();
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  v11 = OUTLINED_FUNCTION_56_12();
  v12 = type metadata accessor for Searchfoundation_RFMonogramImage(v11);
  return OUTLINED_FUNCTION_279(v12);
}

uint64_t sub_1B955E6B8()
{
  v0 = OUTLINED_FUNCTION_56_12();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_279(v2);
}

void Searchfoundation_RFImageSource.monogram.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Searchfoundation_RFMonogramImage(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
LABEL_7:
    OUTLINED_FUNCTION_129_7();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_34_15();
  OUTLINED_FUNCTION_177_1();
  sub_1B956DD18();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFImageSource.badgedImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_33_15();
      OUTLINED_FUNCTION_182();
      return sub_1B956DD18();
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v13 = *(type metadata accessor for Searchfoundation_RFBadgedImage(0) + 20);
  if (qword_1EBAB8810 != -1)
  {
    OUTLINED_FUNCTION_103_7();
  }

  *(a1 + v13) = qword_1EBAD0DE0;
}

uint64_t sub_1B955E9C4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_461();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void Searchfoundation_RFImageSource.badgedImage.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Searchfoundation_RFBadgedImage(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_33_15();
      OUTLINED_FUNCTION_177_1();
      sub_1B956DD18();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB8810 != -1)
  {
    OUTLINED_FUNCTION_103_7();
  }

  *&v12[v15] = qword_1EBAD0DE0;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFImageSource.defaultBrowserAppIcon.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_41_24(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_9_44();
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_31_27();
      OUTLINED_FUNCTION_182();
      return sub_1B956DD18();
    }

    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
  }

  *a1 = 0;
  return OUTLINED_FUNCTION_165_7();
}

void sub_1B955ECE4()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = *(type metadata accessor for Searchfoundation_RFImageSource(v6) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for Searchfoundation_RFImageSource._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    *(v1 + v7) = sub_1B9565A6C(v12);
  }

  sub_1B956DD18();
  v13 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  OUTLINED_FUNCTION_472();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

void Searchfoundation_RFImageSource.defaultBrowserAppIcon.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_15_28();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_8_47();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
LABEL_7:
    *v12 = 0;
    v12[8] = 1;
    v15 = &v12[*(v8 + 20)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_31_27();
  OUTLINED_FUNCTION_177_1();
  sub_1B956DD18();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFImageSource.doNotShowLoadingPlaceholder.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  v3 = *(type metadata accessor for Searchfoundation_RFImageSource(0) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void static Searchfoundation_RFImageSource.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v112 = v0;
  v113 = v1;
  v101 = type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(0);
  v2 = OUTLINED_FUNCTION_59_1(v101);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21();
  v109 = v5;
  v6 = OUTLINED_FUNCTION_201();
  v104 = type metadata accessor for Searchfoundation_RFBadgedImage(v6);
  v7 = OUTLINED_FUNCTION_59_1(v104);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v108 = v10;
  v11 = OUTLINED_FUNCTION_201();
  v100 = type metadata accessor for Searchfoundation_RFMonogramImage(v11);
  v12 = OUTLINED_FUNCTION_59_1(v100);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  v107 = v15;
  v16 = OUTLINED_FUNCTION_201();
  v98 = type metadata accessor for Searchfoundation_RFAvatarImage(v16);
  v17 = OUTLINED_FUNCTION_59_1(v98);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21();
  v106 = v20;
  v21 = OUTLINED_FUNCTION_201();
  v99 = type metadata accessor for Searchfoundation_RFAppIconImage(v21);
  v22 = OUTLINED_FUNCTION_59_1(v99);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21();
  v105 = v25;
  v26 = OUTLINED_FUNCTION_201();
  v102 = type metadata accessor for Searchfoundation_RFSymbolImage(v26);
  v27 = OUTLINED_FUNCTION_59_1(v102);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_21();
  v103 = v30;
  v31 = OUTLINED_FUNCTION_201();
  v32 = type metadata accessor for Searchfoundation_RFUrlImage(v31);
  v33 = OUTLINED_FUNCTION_183(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_62();
  v36 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v37 = OUTLINED_FUNCTION_59_1(v36);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v110 = &v98 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v111 = &v98 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v98 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v98 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v98 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v98 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E30, &qword_1B96D9DB8);
  OUTLINED_FUNCTION_183(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_176();
  v60 = MEMORY[0x1EEE9AC00](v59);
  v62 = &v98 - v61;
  v63 = *(v60 + 56);
  sub_1B956DD70();
  sub_1B956DD70();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_62();
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10() != 1)
      {
        OUTLINED_FUNCTION_37_16();
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_3_82();
      v78 = v103;
      sub_1B956DD18();
      v79 = *(v102 + 20);
      if (*&v55[v79] == *(v78 + v79) || (v80 = *&v55[v79], , , v81 = OUTLINED_FUNCTION_432(), v83 = sub_1B956F188(v81, v82), , , v83))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_91();
        sub_1B8CD3770(v84, v85);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_92_13();
      sub_1B9565C54();
      goto LABEL_52;
    case 2u:
      OUTLINED_FUNCTION_4_62();
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10() != 2)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_36_13();
      v69 = v105;
      sub_1B956DD18();
      v70 = *v52 == *v69 && *(v52 + 1) == *(v69 + 8);
      if (v70 || (sub_1B964C9F0()) && sub_1B8D580F8(*(v52 + 2), v52[24], *(v69 + 16), *(v69 + 24)))
      {
        v71 = *(v99 + 24);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_91();
        sub_1B8CD3770(v72, v73);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_95_9();
      sub_1B9565C54();
      goto LABEL_52;
    case 3u:
      OUTLINED_FUNCTION_4_62();
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10() != 3)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_35_18();
      v74 = v106;
      sub_1B956DD18();
      if ((sub_1B8D6123C(*v49, *v74) & 1) != 0 && sub_1B8D580F8(*(v49 + 1), v49[16], *(v74 + 8), *(v74 + 16)))
      {
        v75 = *(v98 + 24);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_91();
        sub_1B8CD3770(v76, v77);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_94_13();
      sub_1B9565C54();
      goto LABEL_52;
    case 4u:
      OUTLINED_FUNCTION_4_62();
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10() != 4)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_34_15();
      v64 = v107;
      sub_1B956DD18();
      v65 = *v46 == *v64 && *(v46 + 1) == *(v64 + 8);
      if (v65 || (sub_1B964C9F0()) && sub_1B8D580F8(*(v46 + 2), v46[24], *(v64 + 16), *(v64 + 24)))
      {
        v66 = *(v100 + 24);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_91();
        sub_1B8CD3770(v67, v68);
        sub_1B964C850();
      }

      goto LABEL_51;
    case 5u:
      OUTLINED_FUNCTION_4_62();
      v86 = v111;
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10() != 5)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_33_15();
      v87 = v108;
      sub_1B956DD18();
      v88 = *(v104 + 20);
      if (*&v86[v88] == *(v87 + v88) || (v89 = *&v86[v88], , , OUTLINED_FUNCTION_432(), v90 = sub_1B956AAF4(), , , v90))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_91();
        sub_1B8CD3770(v91, v92);
        OUTLINED_FUNCTION_186();
        sub_1B964C850();
      }

LABEL_51:
      sub_1B9565C54();
      goto LABEL_52;
    case 6u:
      OUTLINED_FUNCTION_4_62();
      v93 = v110;
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10() == 6)
      {
        OUTLINED_FUNCTION_31_27();
        v94 = v109;
        sub_1B956DD18();
        if (sub_1B8D580F8(*v93, v93[8], *v94, *(v94 + 8)))
        {
          v95 = *(v101 + 20);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_1_91();
          sub_1B8CD3770(v96, v97);
          sub_1B964C850();
        }

        OUTLINED_FUNCTION_6_47();
        sub_1B9565C54();
        OUTLINED_FUNCTION_6_47();
LABEL_52:
        sub_1B9565C54();
        OUTLINED_FUNCTION_0_109();
        sub_1B9565C54();
      }

      else
      {
        OUTLINED_FUNCTION_6_47();
LABEL_45:
        sub_1B9565C54();
        sub_1B8D9207C(v62, &qword_1EBAD0E30, &qword_1B96D9DB8);
      }

LABEL_53:
      OUTLINED_FUNCTION_283();
      return;
    default:
      OUTLINED_FUNCTION_4_62();
      sub_1B956DD70();
      if (OUTLINED_FUNCTION_145_10())
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_29_34();
      sub_1B956DD18();
      OUTLINED_FUNCTION_472();
      static Searchfoundation_RFUrlImage.== infix(_:_:)();
      sub_1B9565C54();
      OUTLINED_FUNCTION_514();
      sub_1B9565C54();
      OUTLINED_FUNCTION_0_109();
      sub_1B9565C54();
      goto LABEL_53;
  }
}

void static Searchfoundation_RFUrlImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v94 = type metadata accessor for Searchfoundation_RFColor(0);
  v2 = OUTLINED_FUNCTION_59_1(v94);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC0, &unk_1B964D5C0);
  OUTLINED_FUNCTION_59_1(v93);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v88 - v17;
  v98 = type metadata accessor for Searchfoundation_RFAspectRatio(0);
  v19 = OUTLINED_FUNCTION_59_1(v98);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21();
  v95 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E38, &qword_1B96D9DD0);
  OUTLINED_FUNCTION_183(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  v96 = (&v88 - v27);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E40, &qword_1B96D9DD8);
  OUTLINED_FUNCTION_59_1(v97);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  v99 = &v88 - v31;
  v32 = OUTLINED_FUNCTION_201();
  v33 = type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(v32);
  v34 = OUTLINED_FUNCTION_59_1(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E48, &qword_1B96D9DE0);
  OUTLINED_FUNCTION_183(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E50, &qword_1B96D9DE8);
  OUTLINED_FUNCTION_59_1(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v88 - v45;
  v47 = *v1 == *v0 && v1[1] == v0[1];
  if (v47 || (sub_1B964C9F0() & 1) != 0)
  {
    v48 = v1[2] == v0[2] && v1[3] == v0[3];
    if (v48 || (sub_1B964C9F0() & 1) != 0)
    {
      v90 = v18;
      v91 = v13;
      v89 = v7;
      v92 = type metadata accessor for Searchfoundation_RFUrlImage(0);
      v49 = *(v92 + 24);
      v50 = *(v41 + 48);
      sub_1B8D92024();
      sub_1B8D92024();
      OUTLINED_FUNCTION_117(v46);
      if (v47)
      {
        OUTLINED_FUNCTION_117(&v46[v50]);
        if (v47)
        {
          sub_1B8D9207C(v46, &qword_1EBAD0E48, &qword_1B96D9DE0);
          goto LABEL_22;
        }
      }

      else
      {
        OUTLINED_FUNCTION_686();
        sub_1B8D92024();
        OUTLINED_FUNCTION_117(&v46[v50]);
        if (!v51)
        {
          sub_1B956DD18();
          v54 = static Searchfoundation_RFUrlImage.OneOf_PlaceholderImage.== infix(_:_:)();
          sub_1B9565C54();
          sub_1B9565C54();
          sub_1B8D9207C(v46, &qword_1EBAD0E48, &qword_1B96D9DE0);
          if ((v54 & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_22:
          v55 = v92;
          v56 = OUTLINED_FUNCTION_38_14(*(v92 + 28));
          if (!sub_1B8D580F8(v56, v57, v58, v59))
          {
            goto LABEL_52;
          }

          v60 = v55[13];
          v61 = *(v97 + 48);
          v46 = v99;
          sub_1B8D92024();
          OUTLINED_FUNCTION_160_5();
          v62 = v98;
          OUTLINED_FUNCTION_178(v46, 1, v98);
          if (v47)
          {
            OUTLINED_FUNCTION_37_0(&v46[v61]);
            v63 = v91;
            if (v47)
            {
              sub_1B8D9207C(v46, &qword_1EBAD0E38, &qword_1B96D9DD0);
LABEL_28:
              v64 = OUTLINED_FUNCTION_38_14(v55[8]);
              if (!sub_1B8D92198(v64, v65, v66))
              {
                goto LABEL_52;
              }

              v67 = OUTLINED_FUNCTION_38_14(v55[9]);
              if (!sub_1B8D92198(v67, v68, v69))
              {
                goto LABEL_52;
              }

              v70 = v55[14];
              v71 = *(v93 + 48);
              v46 = v90;
              sub_1B8D92024();
              OUTLINED_FUNCTION_160_5();
              OUTLINED_FUNCTION_178(v46, 1, v94);
              if (v47)
              {
                OUTLINED_FUNCTION_37_0(&v46[v71]);
                if (v47)
                {
                  sub_1B8D9207C(v46, &qword_1EBAB8DB8, &unk_1B96D9DC0);
LABEL_49:
                  v82 = OUTLINED_FUNCTION_38_14(v55[10]);
                  if (sub_1B8D92198(v82, v83, v84) && *(v1 + v55[11]) == *(v0 + v55[11]))
                  {
                    v85 = v55[12];
                    sub_1B964C2B0();
                    OUTLINED_FUNCTION_1_91();
                    sub_1B8CD3770(v86, v87);
                    sub_1B964C850();
                  }

                  goto LABEL_52;
                }
              }

              else
              {
                OUTLINED_FUNCTION_686();
                sub_1B8D92024();
                OUTLINED_FUNCTION_37_0(&v46[v71]);
                if (!v79)
                {
                  OUTLINED_FUNCTION_2_76();
                  v80 = v89;
                  sub_1B956DD18();
                  v81 = static Searchfoundation_RFColor.== infix(_:_:)(v63, v80);
                  sub_1B9565C54();
                  sub_1B9565C54();
                  sub_1B8D9207C(v46, &qword_1EBAB8DB8, &unk_1B96D9DC0);
                  if ((v81 & 1) == 0)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_49;
                }

                OUTLINED_FUNCTION_30_32();
                sub_1B9565C54();
              }

              v52 = &qword_1EBAB8DC0;
              v53 = &unk_1B964D5C0;
LABEL_20:
              sub_1B8D9207C(v46, v52, v53);
              goto LABEL_52;
            }
          }

          else
          {
            v72 = v96;
            sub_1B8D92024();
            OUTLINED_FUNCTION_37_0(&v46[v61]);
            v63 = v91;
            if (!v73)
            {
              OUTLINED_FUNCTION_5_52();
              v74 = v95;
              sub_1B956DD18();
              if (*v72 != *v74 || v72[1] != v74[1])
              {
                sub_1B9565C54();
                sub_1B9565C54();
                v52 = &qword_1EBAD0E38;
                v53 = &qword_1B96D9DD0;
                goto LABEL_20;
              }

              v75 = *(v62 + 24);
              sub_1B964C2B0();
              OUTLINED_FUNCTION_1_91();
              sub_1B8CD3770(v76, v77);
              v78 = sub_1B964C850();
              sub_1B9565C54();
              sub_1B9565C54();
              sub_1B8D9207C(v46, &qword_1EBAD0E38, &qword_1B96D9DD0);
              if ((v78 & 1) == 0)
              {
                goto LABEL_52;
              }

              goto LABEL_28;
            }

            OUTLINED_FUNCTION_32_25();
            sub_1B9565C54();
          }

          v52 = &qword_1EBAD0E40;
          v53 = &qword_1B96D9DD8;
          goto LABEL_20;
        }

        sub_1B9565C54();
      }

      v52 = &qword_1EBAD0E50;
      v53 = &qword_1B96D9DE8;
      goto LABEL_20;
    }
  }

LABEL_52:
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_RFAvatarImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if ((sub_1B8D6123C(*v2, *v3) & 1) == 0 || !sub_1B8D580F8(*(v1 + 8), *(v1 + 16), *(v0 + 8), *(v0 + 16)))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Searchfoundation_RFAvatarImage(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_91();
  sub_1B8CD3770(v5, v6);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B95603E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_468();
  v7 = *v6 == *v3 && *(v4 + 8) == *(v3 + 8);
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D580F8(*(v4 + 16), *(v4 + 24), *(v3 + 16), *(v3 + 24)))
  {
    return 0;
  }

  v8 = *(a3(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_91();
  sub_1B8CD3770(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t static Searchfoundation_RFDefaultBrowserAppIconImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if (!sub_1B8D580F8(*v2, *(v1 + 8), *v0, *(v0 + 8)))
  {
    return 0;
  }

  v3 = *(type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_91();
  sub_1B8CD3770(v4, v5);
  return OUTLINED_FUNCTION_634() & 1;
}

void Searchfoundation_RFDefaultBrowserAppIconImage.imageStyle.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_RFDefaultBrowserAppIconImage.imageStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1B95605E8()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9560670()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Searchfoundation_RFDefaultBrowserAppIconImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_RFBadgedImage.image.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_RFImageSource(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  v13 = type metadata accessor for Searchfoundation_RFBadgedImage(0);
  OUTLINED_FUNCTION_77_0(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v8 + 20);
    if (qword_1ED9D2DC0 != -1)
    {
      OUTLINED_FUNCTION_42_17();
    }

    *&v12[v15] = qword_1ED9D2DC8[0];
    v16 = OUTLINED_FUNCTION_25_23();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, v18);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAD0E58, &qword_1B96D9DF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_97_7();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95608F0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E58, &qword_1B96D9DF0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = type metadata accessor for Searchfoundation_RFBadgedImage(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_119_0();
  sub_1B8D92024();
  v9 = type metadata accessor for Searchfoundation_RFImageSource(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v11 = *(v9 + 20);
    if (qword_1ED9D2DC0 != -1)
    {
      OUTLINED_FUNCTION_42_17();
    }

    *(a1 + v11) = qword_1ED9D2DC8;
    v12 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v9);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAD0E58, &qword_1B96D9DF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B956DD18();
  }

  return result;
}

uint64_t sub_1B9560A44(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E58, &qword_1B96D9DF0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_116();
  v9 = *(type metadata accessor for Searchfoundation_RFBadgedImage(0) + 20);
  v10 = *(v2 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for Searchfoundation_RFBadgedImage._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v13);
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    *(v4 + v9) = sub_1B956A24C();
  }

  OUTLINED_FUNCTION_461();
  sub_1B956DD18();
  type metadata accessor for Searchfoundation_RFImageSource(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = *a2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFBadgedImage.badge.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_RFImageSource(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  v13 = type metadata accessor for Searchfoundation_RFBadgedImage(0);
  OUTLINED_FUNCTION_77_0(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v8 + 20);
    if (qword_1ED9D2DC0 != -1)
    {
      OUTLINED_FUNCTION_42_17();
    }

    *&v12[v15] = qword_1ED9D2DC8[0];
    v16 = OUTLINED_FUNCTION_25_23();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, v17, v18);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAD0E58, &qword_1B96D9DF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_97_7();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9560D08()
{
  v1 = OUTLINED_FUNCTION_472();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_208();
  v7 = type metadata accessor for Searchfoundation_RFBadgedImage(0);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_119_0();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_RFImageSource(0);
  OUTLINED_FUNCTION_178(v0, 1, v8);
  sub_1B8D9207C(v0, &qword_1EBAD0E58, &qword_1B96D9DF0);
  return OUTLINED_FUNCTION_466_0();
}

uint64_t sub_1B9560DE4(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E58, &qword_1B96D9DF0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_116();
  v8 = type metadata accessor for Searchfoundation_RFBadgedImage(0);
  v9 = OUTLINED_FUNCTION_47(v8);
  v10 = *(v1 + v2);
  if ((v9 & 1) == 0)
  {
    v11 = type metadata accessor for Searchfoundation_RFBadgedImage._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v11);
    swift_allocObject();
    OUTLINED_FUNCTION_40_0();
    v12 = sub_1B956A24C();
    OUTLINED_FUNCTION_135(v12);
  }

  type metadata accessor for Searchfoundation_RFImageSource(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = *a1;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_RFMonogramImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFMonogramImage(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFAvatarImage.contactIds.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void Searchfoundation_RFAvatarImage.imageStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_RFAvatarImage.imageStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1B9561058()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B95610E0()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Searchfoundation_RFAvatarImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFAvatarImage(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_RFAppIconImage.imageStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_RFAppIconImage.imageStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Searchfoundation_RFAppIconImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFAppIconImage(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFUrlImage.url.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_RFUrlImage.url.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_RFUrlImage.darkModeURL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_RFUrlImage.darkModeURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_RFUrlImage.placeholderImage.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Searchfoundation_RFUrlImage(v0) + 24);
  return sub_1B8D92024();
}

uint64_t Searchfoundation_RFUrlImage.placeholderImage.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFUrlImage(v0) + 24);
  return sub_1B8DAA170();
}

uint64_t Searchfoundation_RFUrlImage.placeholderImage.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFUrlImage(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFUrlImage.symbolPlaceholderImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_116();
  v9 = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 24);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
  OUTLINED_FUNCTION_178(v1, 1, v10);
  if (v11)
  {
    sub_1B8D9207C(v1, &qword_1EBAD0E48, &qword_1B96D9DE0);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(type metadata accessor for Searchfoundation_RFSymbolImage(0) + 20);
    if (qword_1ED9D2DA0 != -1)
    {
      OUTLINED_FUNCTION_22_30();
    }

    *(a1 + v12) = qword_1ED9D2DA8;
  }

  else
  {
    OUTLINED_FUNCTION_3_82();
    return OUTLINED_FUNCTION_162_4();
  }
}

uint64_t Searchfoundation_RFUrlImage.symbolPlaceholderImage.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFUrlImage(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAD0E48, &qword_1B96D9DE0);
  OUTLINED_FUNCTION_3_82();
  OUTLINED_FUNCTION_122_0();
  sub_1B956DD18();
  type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFUrlImage.symbolPlaceholderImage.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[1] = v8;
  v9 = type metadata accessor for Searchfoundation_RFSymbolImage(0);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  v3[2] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[3] = v12;
  *(v3 + 10) = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 24);
  sub_1B8D92024();
  v13 = type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
  v3[4] = v13;
  OUTLINED_FUNCTION_178(v8, 1, v13);
  if (v14)
  {
    sub_1B8D9207C(v8, &qword_1EBAD0E48, &qword_1B96D9DE0);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v9 + 20);
    if (qword_1ED9D2DA0 != -1)
    {
      OUTLINED_FUNCTION_22_30();
    }

    *&v12[v15] = qword_1ED9D2DA8;
  }

  else
  {
    OUTLINED_FUNCTION_3_82();
    sub_1B956DD18();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B956172C()
{
  OUTLINED_FUNCTION_243();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = *(*v0 + 10);
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    OUTLINED_FUNCTION_461();
    sub_1B956DD70();
    sub_1B8D9207C(v6 + v3, &qword_1EBAD0E48, &qword_1B96D9DE0);
    OUTLINED_FUNCTION_3_82();
    sub_1B956DD18();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_37_16();
    sub_1B9565C54();
  }

  else
  {
    sub_1B8D9207C(v6 + v3, &qword_1EBAD0E48, &qword_1B96D9DE0);
    OUTLINED_FUNCTION_3_82();
    sub_1B956DD18();
    OUTLINED_FUNCTION_30_2();
  }

  free(v1);
  free(v5);
  free(v4);
  OUTLINED_FUNCTION_242();

  free(v8);
}

void Searchfoundation_RFUrlImage.imageStyle.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = type metadata accessor for Searchfoundation_RFUrlImage(v0);
  OUTLINED_FUNCTION_43_20(*(v1 + 28));
}

uint64_t Searchfoundation_RFUrlImage.imageStyle.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFUrlImage(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFUrlImage.aspectRatio.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Searchfoundation_RFUrlImage(v9) + 52);
  sub_1B8D92024();
  v11 = type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    *a1 = 0;
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAD0E38, &qword_1B96D9DD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_52();
    OUTLINED_FUNCTION_182();
    return sub_1B956DD18();
  }

  return result;
}

uint64_t Searchfoundation_RFUrlImage.aspectRatio.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFUrlImage(v1);
  sub_1B8D9207C(v0 + *(v2 + 52), &qword_1EBAD0E38, &qword_1B96D9DD0);
  OUTLINED_FUNCTION_5_52();
  OUTLINED_FUNCTION_122_0();
  sub_1B956DD18();
  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Searchfoundation_RFAspectRatio.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = type metadata accessor for Searchfoundation_RFAspectRatio(0);
  return OUTLINED_FUNCTION_279(v1);
}

void Searchfoundation_RFUrlImage.aspectRatio.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[1] = v8;
  v9 = type metadata accessor for Searchfoundation_RFAspectRatio(0);
  v3[2] = v9;
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  v3[3] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[4] = v12;
  *(v3 + 10) = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 52);
  sub_1B8D92024();
  v13 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v13, v14, v9);
  if (v15)
  {
    *v12 = 0;
    v16 = v12 + *(v9 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v17, v18, v9);
    if (!v15)
    {
      sub_1B8D9207C(v8, &qword_1EBAD0E38, &qword_1B96D9DD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_52();
    OUTLINED_FUNCTION_461();
    sub_1B956DD18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9561B9C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B956DD70();
    sub_1B8D9207C(v4 + v3, &qword_1EBAD0E38, &qword_1B96D9DD0);
    OUTLINED_FUNCTION_5_52();
    sub_1B956DD18();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_32_25();
    sub_1B9565C54();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAD0E38, &qword_1B96D9DD0);
    OUTLINED_FUNCTION_5_52();
    sub_1B956DD18();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_RFUrlImage.hasAspectRatio.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_RFUrlImage(v7) + 52);
  OUTLINED_FUNCTION_147_2();
  v9 = type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Searchfoundation_RFUrlImage.clearAspectRatio()()
{
  v1 = type metadata accessor for Searchfoundation_RFUrlImage(0);
  sub_1B8D9207C(v0 + *(v1 + 52), &qword_1EBAD0E38, &qword_1B96D9DD0);
  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Searchfoundation_RFUrlImage.sizingMode.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = type metadata accessor for Searchfoundation_RFUrlImage(v0);
  OUTLINED_FUNCTION_43_20(*(v1 + 32));
}

uint64_t Searchfoundation_RFUrlImage.sizingMode.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFUrlImage(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

void Searchfoundation_RFUrlImage.imageRenderingMode.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = type metadata accessor for Searchfoundation_RFUrlImage(v0);
  OUTLINED_FUNCTION_43_20(*(v1 + 36));
}

uint64_t Searchfoundation_RFUrlImage.imageRenderingMode.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFUrlImage(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFUrlImage.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_31_2();
  v10 = *(type metadata accessor for Searchfoundation_RFUrlImage(v9) + 56);
  sub_1B8D92024();
  v11 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_57(v1);
  if (v12)
  {
    type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    v13 = OUTLINED_FUNCTION_493();
    __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
    v16 = a1 + *(v11 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v11 + 24);
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    OUTLINED_FUNCTION_472();
    return sub_1B956DD18();
  }

  return result;
}

uint64_t Searchfoundation_RFUrlImage.backgroundColor.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFUrlImage(v1);
  sub_1B8D9207C(v0 + *(v2 + 56), &qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_2_76();
  OUTLINED_FUNCTION_122_0();
  sub_1B956DD18();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFUrlImage.backgroundColor.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[1] = v8;
  v9 = type metadata accessor for Searchfoundation_RFColor(0);
  v3[2] = v9;
  OUTLINED_FUNCTION_59_1(v9);
  v11 = *(v10 + 64);
  v3[3] = __swift_coroFrameAllocStub(v11);
  v3[4] = __swift_coroFrameAllocStub(v11);
  *(v3 + 10) = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 56);
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    v13 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_59_16(v13);
    OUTLINED_FUNCTION_164_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v8, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    OUTLINED_FUNCTION_246();
    sub_1B956DD18();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B9562190()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B956DD70();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    OUTLINED_FUNCTION_2_76();
    sub_1B956DD18();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_30_32();
    sub_1B9565C54();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    OUTLINED_FUNCTION_2_76();
    sub_1B956DD18();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_RFUrlImage.hasBackgroundColor.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_RFUrlImage(v7) + 56);
  OUTLINED_FUNCTION_147_2();
  v9 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_11(v9);
  return v0;
}

Swift::Void __swiftcall Searchfoundation_RFUrlImage.clearBackgroundColor()()
{
  v1 = type metadata accessor for Searchfoundation_RFUrlImage(0);
  sub_1B8D9207C(v0 + *(v1 + 56), &qword_1EBAB8DB8, &unk_1B96D9DC0);
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Searchfoundation_RFUrlImage.cornerRoundingMode.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = type metadata accessor for Searchfoundation_RFUrlImage(v0);
  OUTLINED_FUNCTION_43_20(*(v1 + 40));
}

uint64_t Searchfoundation_RFUrlImage.cornerRoundingMode.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFUrlImage(v0) + 40);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFUrlImage.insetPadding.setter(float a1)
{
  result = type metadata accessor for Searchfoundation_RFUrlImage(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t Searchfoundation_RFUrlImage.insetPadding.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFUrlImage(v0) + 44);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFUrlImage.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Searchfoundation_RFUrlImage(v0) + 48);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Searchfoundation_RFUrlImage.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFUrlImage(v0) + 48);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Searchfoundation_RFUrlImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFUrlImage(v0) + 48);
  return OUTLINED_FUNCTION_25();
}

uint64_t static Searchfoundation_RFUrlImage.OneOf_PlaceholderImage.== infix(_:_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E70, &qword_1B96D9DF8);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = &v16 + *(v4 + 56) - v5;
  sub_1B956DD70();
  sub_1B956DD70();
  OUTLINED_FUNCTION_39_16();
  v9 = *&v6[v8];
  v10 = *&v7[v8];
  if (v9 == v10 || (v11 = *&v6[v8], , , v12 = sub_1B956F188(v9, v10), , , v12))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_1_91();
    sub_1B8CD3770(v13, v14);
    OUTLINED_FUNCTION_514();
    sub_1B964C850();
  }

  sub_1B9565C54();
  OUTLINED_FUNCTION_472();
  sub_1B9565C54();
  return OUTLINED_FUNCTION_466_0();
}

uint64_t Searchfoundation_RFSymbolImage.name.getter()
{
  OUTLINED_FUNCTION_39_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_521();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9562768(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_RFSymbolImage.name.setter();
}

uint64_t Searchfoundation_RFSymbolImage.name.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Searchfoundation_RFSymbolImage(0);
  v5 = OUTLINED_FUNCTION_47(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B956DF58(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_18();
  v9 = *(v6 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
}

uint64_t Searchfoundation_RFSymbolImage.name.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_39_16();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 24);
  *(v1 + 48) = *(v4 + 16);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9562898(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 64);
    v6 = *(*a1 + 56);

    OUTLINED_FUNCTION_461();
    Searchfoundation_RFSymbolImage.name.setter();
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
      OUTLINED_FUNCTION_50_16();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B956DF58(v15);
      *(v14 + v13) = v12;
    }

    OUTLINED_FUNCTION_18();
    v16 = *(v12 + 24);
    *(v12 + 16) = v3;
    *(v12 + 24) = v4;
  }

  free(v2);
}

uint64_t Searchfoundation_RFSymbolImage.primaryColor.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RFSymbolImage(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B956DF58(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_2_76();
  OUTLINED_FUNCTION_162_4();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSymbolImage.primaryColor.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFColor(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v2 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_16();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    v16 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_59_16(v16);
    OUTLINED_FUNCTION_164_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    OUTLINED_FUNCTION_246();
    sub_1B956DD18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSymbolImage.hasPrimaryColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_RFSymbolImage(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_147_2();
  v8 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSymbolImage.clearPrimaryColor()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RFSymbolImage(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B956DF58(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSymbolImage.secondaryColor.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RFSymbolImage(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B956DF58(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_2_76();
  OUTLINED_FUNCTION_162_4();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSymbolImage.secondaryColor.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFColor(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v2 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_16();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    v16 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_59_16(v16);
    OUTLINED_FUNCTION_164_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    OUTLINED_FUNCTION_246();
    sub_1B956DD18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSymbolImage.hasSecondaryColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_RFSymbolImage(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_147_2();
  v8 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSymbolImage.clearSecondaryColor()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RFSymbolImage(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B956DF58(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSymbolImage.imageStyle.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_181_0(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B95631A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_39_16();
  v6 = *(v2 + v5) + *a1;
  result = OUTLINED_FUNCTION_6_2();
  v8 = *(v6 + 8);
  *a2 = *v6;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_1B9563208(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for Searchfoundation_RFSymbolImage(0) + 20);
  v8 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B956DF58(v11);
    *(v4 + v7) = v10;
  }

  v12 = v10 + *a2;
  result = OUTLINED_FUNCTION_18();
  *v12 = v5;
  *(v12 + 8) = v6;
  return result;
}

uint64_t Searchfoundation_RFSymbolImage.symbolRenderingMode.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_181_0(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B956330C()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 84);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + 84);
    v12 = *(v3 + 88);
    OUTLINED_FUNCTION_50_16();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B956DF58(v13);
    *(v12 + v11) = v10;
  }

  v14 = v10 + *v1;
  OUTLINED_FUNCTION_18();
  *v14 = v4;
  *(v14 + 8) = v7;
  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t sub_1B95633D0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  v8 = type metadata accessor for Searchfoundation_RFSymbolImage(v7);
  OUTLINED_FUNCTION_77_0(v8);
  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_209();
  sub_1B8D92024();
  v9 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_57(v1);
  if (v10)
  {
    type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    v11 = OUTLINED_FUNCTION_493();
    __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
    v14 = a1 + *(v9 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v9 + 24);
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    result = OUTLINED_FUNCTION_57(v1);
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_472();
    return sub_1B956DD18();
  }

  return result;
}

uint64_t Searchfoundation_RFSymbolImage.backgroundColor.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RFSymbolImage(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B956DF58(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_2_76();
  OUTLINED_FUNCTION_162_4();
  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSymbolImage.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_185_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_66_0(v4);
  v5 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFColor(v8);
  OUTLINED_FUNCTION_59_1(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  *(v2 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_39_16();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    v16 = type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_59_16(v16);
    OUTLINED_FUNCTION_164_3();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_76();
    OUTLINED_FUNCTION_246();
    sub_1B956DD18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSymbolImage.hasBackgroundColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_RFSymbolImage(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_147_2();
  v8 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSymbolImage.clearBackgroundColor()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RFSymbolImage(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_50_16();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B956DF58(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t sub_1B95638FC(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = a1(0);
  OUTLINED_FUNCTION_77_0(v4);
  v5 = *a2;
  OUTLINED_FUNCTION_521();
  return *(v2 + v5);
}

uint64_t sub_1B9563994(char a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  v12 = *(v5 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = a3(0);
    OUTLINED_FUNCTION_57_0(v15);
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_40_0();
    v14 = a4(v16);
    *(v9 + v11) = v14;
  }

  OUTLINED_FUNCTION_271_0();
  result = OUTLINED_FUNCTION_18();
  *(v14 + a5) = a1 & 1;
  return result;
}

uint64_t Searchfoundation_RFSymbolImage.punchesThroughBackground.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_39_16();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9563AEC()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *v6;
  v8 = *(*v6 + 80);
  v9 = *(*v6 + 72);
  v10 = *(*v6 + 84);
  v11 = *(v9 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v7 + 80);
    v15 = *(v7 + 72);
    v16 = v5(0);
    OUTLINED_FUNCTION_57_0(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v17);
    *(v15 + v14) = v13;
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18();
  *(v13 + v1) = v10;
  OUTLINED_FUNCTION_283();

  free(v18);
}

uint64_t Searchfoundation_RFSymbolImage.vibrancy.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_181_0(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void *sub_1B9563C44@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B9563C8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t Searchfoundation_RFSymbolImage.cornerRoundingMode.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_39_16();
  OUTLINED_FUNCTION_181_0(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_RFAspectRatio.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFAspectRatio(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9563E40()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5258);
  __swift_project_value_buffer(v0, qword_1EBAB5258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1B96880C0;
  v4 = v88 + v3 + v1[14];
  *(v88 + v3) = 0;
  *v4 = "RF_IMAGE_STYLE_DEFAULT";
  *(v4 + 8) = 22;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v88 + v3 + v2 + v1[14];
  *(v88 + v3 + v2) = 1;
  *v8 = "RF_IMAGE_STYLE_IMAGE_1";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v88 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "RF_IMAGE_STYLE_IMAGE_2";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v7();
  v11 = (v88 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "RF_IMAGE_STYLE_IMAGE_3";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v7();
  v13 = (v88 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "RF_IMAGE_STYLE_IMAGE_4";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v88 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "RF_IMAGE_STYLE_IMAGE_5";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v88 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "RF_IMAGE_STYLE_IMAGE_6";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v88 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "RF_IMAGE_STYLE_IMAGE_7";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v7();
  v21 = (v88 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "RF_IMAGE_STYLE_IMAGE_8";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v7();
  v23 = (v88 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "RF_IMAGE_STYLE_IMAGE_9";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v7();
  v25 = (v88 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "RF_IMAGE_STYLE_FULL_WIDTH";
  *(v26 + 1) = 25;
  v26[16] = 2;
  v7();
  v27 = (v88 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "RF_IMAGE_STYLE_FULL_BLEED";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v7();
  v29 = (v88 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "RF_IMAGE_STYLE_APP_ICON_1";
  *(v30 + 1) = 25;
  v30[16] = 2;
  v7();
  v31 = (v88 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "RF_IMAGE_STYLE_APP_ICON_2";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v7();
  v33 = (v88 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "RF_IMAGE_STYLE_APP_ICON_3";
  *(v34 + 1) = 25;
  v34[16] = 2;
  v7();
  v35 = (v88 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "RF_IMAGE_STYLE_APP_ICON_4";
  *(v36 + 1) = 25;
  v36[16] = 2;
  v7();
  v37 = (v88 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "RF_IMAGE_STYLE_APP_ICON_5";
  *(v38 + 1) = 25;
  v38[16] = 2;
  v7();
  v39 = (v88 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "RF_IMAGE_STYLE_CONTACT_IMAGE_1";
  *(v40 + 1) = 30;
  v40[16] = 2;
  v7();
  v41 = (v88 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "RF_IMAGE_STYLE_CONTACT_IMAGE_2";
  *(v42 + 1) = 30;
  v42[16] = 2;
  v7();
  v43 = (v88 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "RF_IMAGE_STYLE_CONTACT_IMAGE_3";
  *(v44 + 1) = 30;
  v44[16] = 2;
  v7();
  v45 = (v88 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "RF_IMAGE_STYLE_CONTACT_IMAGE_4";
  *(v46 + 1) = 30;
  v46[16] = 2;
  v7();
  v47 = (v88 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "RF_IMAGE_STYLE_CONTACT_IMAGE_5";
  *(v48 + 1) = 30;
  v48[16] = 2;
  v7();
  v49 = (v88 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "RF_IMAGE_STYLE_CONTAINER_IMAGE_1";
  *(v50 + 1) = 32;
  v50[16] = 2;
  v7();
  v51 = (v88 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "RF_IMAGE_STYLE_CONTAINER_IMAGE_2";
  *(v52 + 1) = 32;
  v52[16] = 2;
  v7();
  v53 = (v88 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "RF_IMAGE_STYLE_CONTAINER_IMAGE_3";
  *(v54 + 1) = 32;
  v54[16] = 2;
  v7();
  v55 = (v88 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "RF_IMAGE_STYLE_CONTAINER_IMAGE_4";
  *(v56 + 1) = 32;
  v56[16] = 2;
  v7();
  v57 = (v88 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "RF_IMAGE_STYLE_CONTACT_IMAGE_6";
  *(v58 + 1) = 30;
  v58[16] = 2;
  v7();
  v59 = (v88 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "RF_IMAGE_STYLE_IMAGE_2_A";
  *(v60 + 1) = 24;
  v60[16] = 2;
  v7();
  v61 = (v88 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "RF_IMAGE_STYLE_CONTACT_IMAGE_2_A";
  *(v62 + 1) = 32;
  v62[16] = 2;
  v7();
  v63 = (v88 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "RF_IMAGE_STYLE_CONTACT_IMAGE_7";
  *(v64 + 1) = 30;
  v64[16] = 2;
  v7();
  v65 = (v88 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "RF_IMAGE_STYLE_CONTACT_IMAGE_8";
  *(v66 + 1) = 30;
  v66[16] = 2;
  v7();
  v67 = (v88 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "RF_IMAGE_STYLE_CONTACT_IMAGE_9";
  *(v68 + 1) = 30;
  v68[16] = 2;
  v7();
  v69 = (v88 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "RF_IMAGE_STYLE_IMAGE_1_W";
  *(v70 + 1) = 24;
  v70[16] = 2;
  v7();
  v71 = (v88 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "RF_IMAGE_STYLE_IMAGE_2_W";
  *(v72 + 1) = 24;
  v72[16] = 2;
  v7();
  v73 = (v88 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "RF_IMAGE_STYLE_IMAGE_3_W";
  *(v74 + 1) = 24;
  v74[16] = 2;
  v7();
  v75 = (v88 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "RF_IMAGE_STYLE_IMAGE_4_W";
  *(v76 + 1) = 24;
  v76[16] = 2;
  v7();
  v77 = (v88 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "RF_IMAGE_STYLE_IMAGE_5_W";
  *(v78 + 1) = 24;
  v78[16] = 2;
  v7();
  v79 = (v88 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "RF_IMAGE_STYLE_IMAGE_6_W";
  *(v80 + 1) = 24;
  v80[16] = 2;
  v7();
  v81 = (v88 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "RF_IMAGE_STYLE_IMAGE_7_W";
  *(v82 + 1) = 24;
  v82[16] = 2;
  v7();
  v83 = (v88 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "RF_IMAGE_STYLE_IMAGE_8_W";
  *(v84 + 1) = 24;
  v84[16] = 2;
  v7();
  v85 = (v88 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "RF_IMAGE_STYLE_IMAGE_9_W";
  *(v86 + 1) = 24;
  v86[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B95648F8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0D68);
  __swift_project_value_buffer(v0, qword_1EBAD0D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_IMAGE_SIZING_MODE_DEFAULT";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_IMAGE_SIZING_MODE_FIXED_WIDTH";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_IMAGE_SIZING_MODE_FIXED_HEIGHT";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9564B24()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0D80);
  __swift_project_value_buffer(v0, qword_1EBAD0D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_RENDERING_MODE_DEFAULT";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_RENDERING_MODE_ORIGINAL";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_RENDERING_MODE_TEMPLATE";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9564D4C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0D98);
  __swift_project_value_buffer(v0, qword_1EBAD0D98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "RF_IMAGE_CORNER_ROUNDING_DEFAULT";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_IMAGE_CORNER_ROUNDING_DISABLED";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_IMAGE_CORNER_ROUNDING_CIRCLE";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9564F78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4708);
  __swift_project_value_buffer(v0, qword_1EBAB4708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RF_SYMBOL_RENDERING_MODE_DEFAULT";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_SYMBOL_RENDERING_MODE_MONOCHROME";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_SYMBOL_RENDERING_MODE_MULTICOLOR";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RF_SYMBOL_RENDERING_MODE_PALETTE";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RF_SYMBOL_RENDERING_MODE_HIERARCHICAL";
  *(v16 + 1) = 37;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B95652A4()
{
  type metadata accessor for Searchfoundation_RFImageSource(0);
  sub_1B8CD3770(&qword_1ED9D2DB8, type metadata accessor for Searchfoundation_RFImageSource);
  return sub_1B964C570();
}

uint64_t Searchfoundation_RFImageElement.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Searchfoundation_RFImageSource(0), OUTLINED_FUNCTION_93_11(), sub_1B8CD3770(v2, v3), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    v5 = *(type metadata accessor for Searchfoundation_RFImageElement(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B9565518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1040, type metadata accessor for Searchfoundation_RFImageElement);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9565598(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1ED9D2D28, type metadata accessor for Searchfoundation_RFImageElement);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9565608()
{
  sub_1B8CD3770(&qword_1ED9D2D28, type metadata accessor for Searchfoundation_RFImageElement);

  return sub_1B964C5D0();
}

uint64_t sub_1B9565694()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5188);
  __swift_project_value_buffer(v0, qword_1EBAB5188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B96511B0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "url";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "symbol";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "app_icon";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "avatar";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "monogram";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "badged_image";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "default_browser_app_icon";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "do_not_show_loading_placeholder";
  *(v22 + 1) = 31;
  v22[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B9565A00()
{
  v0 = type metadata accessor for Searchfoundation_RFImageSource._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  v5 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  result = __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder) = 0;
  qword_1ED9D2DC8 = v3;
  return result;
}

uint64_t sub_1B9565A6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  v6 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder) = 0;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v8 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder;
  swift_beginAccess();
  LOBYTE(v8) = *(a1 + v8);

  swift_beginAccess();
  *(v1 + v7) = v8;
  return v1;
}

uint64_t sub_1B9565C54()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B9565CC8()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value, &qword_1EBAB8DE0, &unk_1B964D5E0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B9565D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B9565EF8(a1, a2, a3, a4);
        break;
      case 2:
        sub_1B956644C(a1, a2, a3, a4);
        break;
      case 3:
        sub_1B95669BC(a1, a2, a3, a4);
        break;
      case 4:
        sub_1B9566F2C(a1, a2, a3, a4);
        break;
      case 5:
        sub_1B956749C(a1, a2, a3, a4);
        break;
      case 6:
        sub_1B9567A0C(a1, a2, a3, a4);
        break;
      case 7:
        sub_1B9567F7C(a1, a2, a3, a4);
        break;
      case 8:
        sub_1B8ED5EB0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9565EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for Searchfoundation_RFUrlImage(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1050, &qword_1B96DB7A0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - v24;
  __swift_storeEnumTagSinglePayload(&v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v34 = a1;
  v32 = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9565C54();
    }

    else
    {
      sub_1B8D9207C(v25, &qword_1EBAD1050, &qword_1B96DB7A0);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_1B8CD3770(&qword_1ED9D2F90, type metadata accessor for Searchfoundation_RFUrlImage);
  v28 = v37;
  sub_1B964C580();
  if (v28)
  {
    v29 = v25;
    return sub_1B8D9207C(v29, &qword_1EBAD1050, &qword_1B96DB7A0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAD1050, &qword_1B96DB7A0);
    v29 = v23;
    return sub_1B8D9207C(v29, &qword_1EBAD1050, &qword_1B96DB7A0);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v25, &qword_1EBAD1050, &qword_1B96DB7A0);
  v31 = v33;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v16);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B956644C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_RFSymbolImage(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1048, &unk_1B96DB790);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    v32[0] = a1;
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBAD1048, &unk_1B96DB790);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B9565C54();
    }
  }

  sub_1B8CD3770(&qword_1ED9D2D98, type metadata accessor for Searchfoundation_RFSymbolImage);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAD1048, &unk_1B96DB790);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAD1048, &unk_1B96DB790);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAD1048, &unk_1B96DB790);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAD1048, &unk_1B96DB790);
  v31 = v33;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B95669BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_RFAppIconImage(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1058, &qword_1B96DB7A8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    v32[0] = a1;
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v25, &qword_1EBAD1058, &qword_1B96DB7A8);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B9565C54();
    }
  }

  sub_1B8CD3770(&qword_1EBAD0FD0, type metadata accessor for Searchfoundation_RFAppIconImage);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAD1058, &qword_1B96DB7A8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAD1058, &qword_1B96DB7A8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAD1058, &qword_1B96DB7A8);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAD1058, &qword_1B96DB7A8);
  v31 = v33;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B9566F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_RFAvatarImage(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1060, &qword_1B96DB7B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    v32[0] = a1;
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v25, &qword_1EBAD1060, &qword_1B96DB7B0);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B9565C54();
    }
  }

  sub_1B8CD3770(&qword_1EBAD0FB8, type metadata accessor for Searchfoundation_RFAvatarImage);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAD1060, &qword_1B96DB7B0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAD1060, &qword_1B96DB7B0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAD1060, &qword_1B96DB7B0);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAD1060, &qword_1B96DB7B0);
  v31 = v33;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B956749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_RFMonogramImage(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1068, &qword_1B96DB7B8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    v32[0] = a1;
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v25, &qword_1EBAD1068, &qword_1B96DB7B8);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B9565C54();
    }
  }

  sub_1B8CD3770(&qword_1EBAD0FA0, type metadata accessor for Searchfoundation_RFMonogramImage);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAD1068, &qword_1B96DB7B8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAD1068, &qword_1B96DB7B8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAD1068, &qword_1B96DB7B8);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAD1068, &qword_1B96DB7B8);
  v31 = v33;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B9567A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_RFBadgedImage(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1070, &qword_1B96DB7C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    v32[0] = a1;
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v25, &qword_1EBAD1070, &qword_1B96DB7C0);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B9565C54();
    }
  }

  sub_1B8CD3770(&qword_1EBAD0F88, type metadata accessor for Searchfoundation_RFBadgedImage);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAD1070, &qword_1B96DB7C0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAD1070, &qword_1B96DB7C0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAD1070, &qword_1B96DB7C0);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAD1070, &qword_1B96DB7C0);
  v31 = v33;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B9567F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1078, &qword_1B96DB7C8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    v32[0] = a1;
    sub_1B956DD18();
    sub_1B956DD18();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v25, &qword_1EBAD1078, &qword_1B96DB7C8);
      sub_1B956DD18();
      sub_1B956DD18();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B9565C54();
    }
  }

  sub_1B8CD3770(&qword_1EBAD0F70, type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBAD1078, &qword_1B96DB7C8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBAD1078, &qword_1B96DB7C8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBAD1078, &qword_1B96DB7C8);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBAD1078, &qword_1B96DB7C8);
  v31 = v33;
  sub_1B956DD18();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B956851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16[-v11];
  swift_beginAccess();
  sub_1B8D92024();
  v13 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    goto LABEL_11;
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B95689A8(a1, a2, a3, a4);
      break;
    case 2u:
      sub_1B9568BDC(a1, a2, a3, a4);
      break;
    case 3u:
      sub_1B9568E10(a1, a2, a3, a4);
      break;
    case 4u:
      sub_1B9569044(a1, a2, a3, a4);
      break;
    case 5u:
      sub_1B9569278(a1, a2, a3, a4);
      break;
    case 6u:
      sub_1B95694AC(a1, a2, a3, a4);
      break;
    default:
      sub_1B9568778(a1, a2, a3, a4);
      break;
  }

  result = sub_1B9565C54();
  if (!v4)
  {
LABEL_11:
    v15 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder;
    result = swift_beginAccess();
    if (*(a1 + v15) == 1)
    {
      return sub_1B964C670();
    }
  }

  return result;
}

uint64_t sub_1B9568778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFUrlImage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1ED9D2F90, type metadata accessor for Searchfoundation_RFUrlImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95689A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFSymbolImage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1ED9D2D98, type metadata accessor for Searchfoundation_RFSymbolImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9568BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFAppIconImage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1EBAD0FD0, type metadata accessor for Searchfoundation_RFAppIconImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9568E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFAvatarImage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1EBAD0FB8, type metadata accessor for Searchfoundation_RFAvatarImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9569044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFMonogramImage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1EBAD0FA0, type metadata accessor for Searchfoundation_RFMonogramImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9569278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFBadgedImage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1EBAD0F88, type metadata accessor for Searchfoundation_RFBadgedImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B95694AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBAB8DE0, &unk_1B964D5E0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B956DD18();
      sub_1B8CD3770(&qword_1EBAD0F70, type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage);
      sub_1B964C740();
      return sub_1B9565C54();
    }

    result = sub_1B9565C54();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B956970C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_468();
  v8 = *(v7(0) + 20);
  if (*(v5 + v8) != *(v4 + v8))
  {
    v9 = *(v5 + v8);

    v10 = OUTLINED_FUNCTION_177_1();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_91();
  sub_1B8CD3770(v12, v13);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B95697E4()
{
  OUTLINED_FUNCTION_284();
  v31 = v1;
  v3 = v2;
  v4 = type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v30 = v8;
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DD8, &qword_1B964D5D8) - 8);
  v10 = *(*v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_116();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DE0, &unk_1B964D5E0);
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v21 = v31;
  OUTLINED_FUNCTION_521();
  v22 = v9[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v0, 1, v4);
  if (v23)
  {

    sub_1B8D9207C(v20, &qword_1EBAB8DE0, &unk_1B964D5E0);
    OUTLINED_FUNCTION_178(v0 + v22, 1, v4);
    if (v23)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
LABEL_12:
      v26 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder;
      OUTLINED_FUNCTION_521();
      v27 = *(v3 + v26);

      v28 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFImageSourceP33_A38875338ABAAF3606E34E94053D846813_StorageClass__doNotShowLoadingPlaceholder;
      OUTLINED_FUNCTION_521();
      v29 = *(v21 + v28);

      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v0 + v22, 1, v4);
  if (v23)
  {

    sub_1B8D9207C(v20, &qword_1EBAB8DE0, &unk_1B964D5E0);
    OUTLINED_FUNCTION_0_109();
    sub_1B9565C54();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB8DD8, &qword_1B964D5D8);
    goto LABEL_10;
  }

  v24 = v30;
  sub_1B956DD18();

  v25 = static Searchfoundation_RFImageSource.OneOf_Value.== infix(_:_:)(v18, v24);
  sub_1B9565C54();
  sub_1B8D9207C(v20, &qword_1EBAB8DE0, &unk_1B964D5E0);
  sub_1B9565C54();
  sub_1B8D9207C(v0, &qword_1EBAB8DE0, &unk_1B964D5E0);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:

LABEL_13:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9569C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1038, type metadata accessor for Searchfoundation_RFImageSource);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9569C8C(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1ED9D2DB8, type metadata accessor for Searchfoundation_RFImageSource);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9569CFC()
{
  sub_1B8CD3770(&qword_1ED9D2DB8, type metadata accessor for Searchfoundation_RFImageSource);

  return sub_1B964C5D0();
}

uint64_t sub_1B9569E04()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_691_1();
      v0(v4);
    }
  }

  return result;
}

uint64_t Searchfoundation_RFDefaultBrowserAppIconImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = *(v2 + 8);
  if (OUTLINED_FUNCTION_161_5() || (sub_1B9570294(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    v6 = *(type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(0) + 20);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t sub_1B956A004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1030, type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956A084(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1EBAD0F70, type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956A0F4()
{
  sub_1B8CD3770(&qword_1EBAD0F70, type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B956A1C4()
{
  v0 = type metadata accessor for Searchfoundation_RFBadgedImage._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFBadgedImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__image;
  v5 = type metadata accessor for Searchfoundation_RFImageSource(0);
  __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, v5);
  result = __swift_storeEnumTagSinglePayload(v3 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFBadgedImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__badge, 1, 1, v5);
  qword_1EBAD0DE0 = v3;
  return result;
}

uint64_t sub_1B956A24C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E58, &qword_1B96D9DF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFBadgedImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__image;
  v4 = type metadata accessor for Searchfoundation_RFImageSource(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFBadgedImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__badge, 1, 1, v4);
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
  return v0;
}

uint64_t sub_1B956A3F0()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFBadgedImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__image, &qword_1EBAD0E58, &qword_1B96D9DF0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFBadgedImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__badge, &qword_1EBAD0E58, &qword_1B96D9DF0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B956A4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1B956A5B0()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_1B956A654();
    }
  }

  return result;
}

uint64_t sub_1B956A654()
{
  OUTLINED_FUNCTION_147_1();
  v1 = *v0;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFImageSource(0);
  OUTLINED_FUNCTION_93_11();
  sub_1B8CD3770(v2, v3);
  OUTLINED_FUNCTION_153_7();
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B956A72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
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

uint64_t sub_1B956A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[11] = a4;
  v17[2] = a2;
  v17[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E58, &qword_1B96D9DF0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  v12 = type metadata accessor for Searchfoundation_RFImageSource(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v17[1] = v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1B8D9207C(v11, &qword_1EBAD0E58, &qword_1B96D9DF0);
  }

  else
  {
    sub_1B956DD18();
    sub_1B8CD3770(&qword_1ED9D2DB8, type metadata accessor for Searchfoundation_RFImageSource);
    sub_1B964C740();
    result = sub_1B9565C54();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
  {
    return sub_1B8D9207C(v9, &qword_1EBAD0E58, &qword_1B96D9DF0);
  }

  sub_1B956DD18();
  sub_1B8CD3770(&qword_1ED9D2DB8, type metadata accessor for Searchfoundation_RFImageSource);
  sub_1B964C740();
  return sub_1B9565C54();
}

BOOL sub_1B956AAF4()
{
  v54 = type metadata accessor for Searchfoundation_RFImageSource(0);
  v0 = *(*(v54 - 8) + 64);
  v1 = MEMORY[0x1EEE9AC00](v54);
  v48 = &v46[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v1);
  v50 = &v46[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1080, &unk_1B96DB7D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v52 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E58, &qword_1B96D9DF0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v53 = &v46[-v15];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v46[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46[-v19];
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v51 = v4;
  v21 = *(v4 + 48);
  v22 = v54;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v9, 1, v22) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v22) != 1)
    {
      v26 = v50;
      sub_1B956DD18();
      v27 = *(v22 + 20);
      v28 = *&v18[v27];
      v29 = *&v26[v27];

      if (v28 == v29 || (, , sub_1B95697E4(), v31 = v30, , , (v31 & 1) != 0))
      {
        sub_1B964C2B0();
        sub_1B8CD3770(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
        v47 = sub_1B964C850();
        sub_1B9565C54();
        sub_1B8D9207C(v20, &qword_1EBAD0E58, &qword_1B96D9DF0);
        sub_1B9565C54();
        sub_1B8D9207C(v9, &qword_1EBAD0E58, &qword_1B96D9DF0);
        if (v47)
        {
          goto LABEL_12;
        }

LABEL_8:

        return 0;
      }

      sub_1B9565C54();
      sub_1B8D9207C(v20, &qword_1EBAD0E58, &qword_1B96D9DF0);
      sub_1B9565C54();
      v25 = v9;
      v23 = &qword_1EBAD0E58;
      v24 = &qword_1B96D9DF0;
LABEL_7:
      sub_1B8D9207C(v25, v23, v24);
      goto LABEL_8;
    }

    sub_1B8D9207C(v20, &qword_1EBAD0E58, &qword_1B96D9DF0);
    sub_1B9565C54();
LABEL_6:
    v23 = &qword_1EBAD1080;
    v24 = &unk_1B96DB7D0;
    v25 = v9;
    goto LABEL_7;
  }

  sub_1B8D9207C(v20, &qword_1EBAD0E58, &qword_1B96D9DF0);
  if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v22) != 1)
  {
    goto LABEL_6;
  }

  sub_1B8D9207C(v9, &qword_1EBAD0E58, &qword_1B96D9DF0);
LABEL_12:
  swift_beginAccess();
  v32 = v53;
  sub_1B8D92024();
  swift_beginAccess();
  v33 = v52;
  v34 = *(v51 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v33, 1, v22) == 1)
  {

    sub_1B8D9207C(v32, &qword_1EBAD0E58, &qword_1B96D9DF0);
    if (__swift_getEnumTagSinglePayload(v33 + v34, 1, v22) == 1)
    {
      sub_1B8D9207C(v33, &qword_1EBAD0E58, &qword_1B96D9DF0);
      return 1;
    }

    goto LABEL_17;
  }

  v35 = v49;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v33 + v34, 1, v22) == 1)
  {

    sub_1B8D9207C(v32, &qword_1EBAD0E58, &qword_1B96D9DF0);
    sub_1B9565C54();
LABEL_17:
    v36 = &qword_1EBAD1080;
    v37 = &unk_1B96DB7D0;
    v38 = v33;
LABEL_18:
    sub_1B8D9207C(v38, v36, v37);
    return 0;
  }

  v40 = v48;
  sub_1B956DD18();
  v41 = *(v22 + 20);
  if (*&v35[v41] != *&v40[v41])
  {
    v42 = *&v35[v41];

    sub_1B95697E4();
    v44 = v43;

    if ((v44 & 1) == 0)
    {

      sub_1B9565C54();
      sub_1B8D9207C(v53, &qword_1EBAD0E58, &qword_1B96D9DF0);
      sub_1B9565C54();
      v38 = v33;
      v36 = &qword_1EBAD0E58;
      v37 = &qword_1B96D9DF0;
      goto LABEL_18;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3770(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v45 = sub_1B964C850();

  sub_1B9565C54();
  sub_1B8D9207C(v53, &qword_1EBAD0E58, &qword_1B96D9DF0);
  sub_1B9565C54();
  sub_1B8D9207C(v33, &qword_1EBAD0E58, &qword_1B96D9DF0);
  return (v45 & 1) != 0;
}

uint64_t sub_1B956B404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1028, type metadata accessor for Searchfoundation_RFBadgedImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956B484(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1EBAD0F88, type metadata accessor for Searchfoundation_RFBadgedImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956B4F4()
{
  sub_1B8CD3770(&qword_1EBAD0F88, type metadata accessor for Searchfoundation_RFBadgedImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B956B58C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD0DE8);
  __swift_project_value_buffer(v0, qword_1EBAD0DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "letters";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_style";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B956B87C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1020, type metadata accessor for Searchfoundation_RFMonogramImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956B8FC(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1EBAD0FA0, type metadata accessor for Searchfoundation_RFMonogramImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956B96C()
{
  sub_1B8CD3770(&qword_1EBAD0FA0, type metadata accessor for Searchfoundation_RFMonogramImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B956BA10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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
  *(v13 + 16) = xmmword_1B964D060;
  v14 = (v13 + v12);
  v15 = v13 + v12 + v10[14];
  *v14 = 1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = 2;
  v16 = *MEMORY[0x1E69AADE8];
  v17 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v17);
  v19 = *(v18 + 104);
  (v19)(v15, v16, v17);
  v20 = v14 + v11 + v10[14];
  *(v14 + v11) = 2;
  *v20 = "image_style";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v19();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFAvatarImage.decodeMessage<A>(decoder:)()
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
      sub_1B956BC50();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFAvatarImage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C6E0(), !v1))
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    if (OUTLINED_FUNCTION_161_5() || (sub_1B9570294(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      v6 = *(type metadata accessor for Searchfoundation_RFAvatarImage(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B956BE1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1018, type metadata accessor for Searchfoundation_RFAvatarImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956BE9C(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1EBAD0FB8, type metadata accessor for Searchfoundation_RFAvatarImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956BF0C()
{
  sub_1B8CD3770(&qword_1EBAD0FB8, type metadata accessor for Searchfoundation_RFAvatarImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B956C00C()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v4 = OUTLINED_FUNCTION_691_1();
      v0(v4);
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B956C0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  v8 = *v4;
  v9 = v4[1];
  OUTLINED_FUNCTION_1();
  if (!v10 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v5))
  {
    if (sub_1B8D580F8(*(v6 + 16), *(v6 + 24), 0, 1) || (sub_1B9570294(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v5))
    {
      v12 = *(a4(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B956C230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1010, type metadata accessor for Searchfoundation_RFAppIconImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956C2B0(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1EBAD0FD0, type metadata accessor for Searchfoundation_RFAppIconImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956C320()
{
  sub_1B8CD3770(&qword_1EBAD0FD0, type metadata accessor for Searchfoundation_RFAppIconImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B956C3B8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB53F0);
  __swift_project_value_buffer(v0, qword_1EBAB53F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B9656CE0;
  v4 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v4 = "url";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v27 + v3 + v2 + v1[14];
  *(v27 + v3 + v2) = 2;
  *v8 = "dark_mode_url";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v27 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "symbol_placeholder_image";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v7();
  v12 = (v27 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "image_style";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v7();
  v14 = (v27 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "aspect_ratio";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v7();
  v16 = (v27 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sizing_mode";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v7();
  v18 = (v27 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "image_rendering_mode";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v7();
  v20 = (v27 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "background_color";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v7();
  v22 = (v27 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "corner_rounding_mode";
  *(v23 + 1) = 20;
  v23[16] = 2;
  v7();
  v24 = (v27 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "inset_padding";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Searchfoundation_RFUrlImage.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
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
        v5 = OUTLINED_FUNCTION_432();
        sub_1B956C89C(v5, v6, v2, v1);
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B956CD54();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B956CDC8();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B956CE7C();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B956CEF0();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B956CF64();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B956D018();
        break;
      case 10:
        OUTLINED_FUNCTION_9();
        sub_1B956D08C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B956C89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Searchfoundation_RFSymbolImage(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E48, &qword_1B96D9DE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD1048, &unk_1B96DB790);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - v21;
  __swift_storeEnumTagSinglePayload(&v30 - v21, 1, 1, v5);
  v23 = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 24);
  v33 = a1;
  v31 = v23;
  sub_1B8D92024();
  v32 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAD0E48, &qword_1B96D9DE0);
  }

  else
  {
    sub_1B956DD18();
    sub_1B956DD18();
    sub_1B8D9207C(v22, &qword_1EBAD1048, &unk_1B96DB790);
    sub_1B956DD18();
    sub_1B956DD18();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  }

  sub_1B8CD3770(&qword_1ED9D2D98, type metadata accessor for Searchfoundation_RFSymbolImage);
  v25 = v35;
  sub_1B964C580();
  if (v25)
  {
    v26 = v22;
    return sub_1B8D9207C(v26, &qword_1EBAD1048, &unk_1B96DB790);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAD1048, &unk_1B96DB790);
    v26 = v20;
    return sub_1B8D9207C(v26, &qword_1EBAD1048, &unk_1B96DB790);
  }

  sub_1B956DD18();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v22, &qword_1EBAD1048, &unk_1B96DB790);
  v28 = v33;
  v29 = v31;
  sub_1B8D9207C(v33 + v31, &qword_1EBAD0E48, &qword_1B96D9DE0);
  sub_1B956DD18();
  return __swift_storeEnumTagSinglePayload(v28 + v29, 0, 1, v32);
}

uint64_t sub_1B956CD54()
{
  v0 = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 28);
  sub_1B9570294();
  return sub_1B964C420();
}

uint64_t sub_1B956CDC8()
{
  v0 = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 52);
  type metadata accessor for Searchfoundation_RFAspectRatio(0);
  sub_1B8CD3770(&qword_1ED9D2E90, type metadata accessor for Searchfoundation_RFAspectRatio);
  return sub_1B964C580();
}

uint64_t sub_1B956CE7C()
{
  v0 = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 32);
  sub_1B95702E8();
  return sub_1B964C420();
}

uint64_t sub_1B956CEF0()
{
  v0 = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 36);
  sub_1B957033C();
  return sub_1B964C420();
}

uint64_t sub_1B956CF64()
{
  v0 = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 56);
  type metadata accessor for Searchfoundation_RFColor(0);
  sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);
  return sub_1B964C580();
}

uint64_t sub_1B956D018()
{
  v0 = *(type metadata accessor for Searchfoundation_RFUrlImage(0) + 40);
  sub_1B9570390();
  return sub_1B964C420();
}

uint64_t Searchfoundation_RFUrlImage.traverse<A>(visitor:)()
{
  v3 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v60 - v9;
  v10 = OUTLINED_FUNCTION_201();
  v64 = type metadata accessor for Searchfoundation_RFColor(v10);
  v11 = OUTLINED_FUNCTION_59_1(v64);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21();
  v62 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E38, &qword_1B96D9DD0);
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_22_3();
  v68 = type metadata accessor for Searchfoundation_RFAspectRatio(v19);
  v20 = OUTLINED_FUNCTION_59_1(v68);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  v63 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD0E48, &qword_1B96D9DE0);
  OUTLINED_FUNCTION_183(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v60 - v28;
  v30 = type metadata accessor for Searchfoundation_RFSymbolImage(0);
  v31 = OUTLINED_FUNCTION_59_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_208();
  v34 = *v0;
  v35 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v36 || (result = sub_1B964C700(), !v1))
  {
    v38 = v0[2];
    v39 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v40 || (result = sub_1B964C700(), !v1))
    {
      v61 = type metadata accessor for Searchfoundation_RFUrlImage(0);
      v41 = *(v61 + 24);
      sub_1B8D92024();
      v42 = type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage(0);
      if (__swift_getEnumTagSinglePayload(v29, 1, v42) == 1)
      {
        sub_1B8D9207C(v29, &qword_1EBAD0E48, &qword_1B96D9DE0);
      }

      else
      {
        OUTLINED_FUNCTION_3_82();
        sub_1B956DD18();
        sub_1B8CD3770(&qword_1ED9D2D98, type metadata accessor for Searchfoundation_RFSymbolImage);
        sub_1B964C740();
        OUTLINED_FUNCTION_37_16();
        result = sub_1B9565C54();
        if (v1)
        {
          return result;
        }
      }

      v43 = v61;
      v44 = v0 + *(v61 + 28);
      v45 = sub_1B8D580F8(*v44, v44[8], 0, 1);
      v46 = v68;
      if (v45 || (v47 = v44[8], v66 = *v44, v67 = v47, sub_1B9570294(), OUTLINED_FUNCTION_57_16(), result = sub_1B964C680(), (v3 = v1) == 0))
      {
        v48 = v43[13];
        sub_1B8D92024();
        v49 = OUTLINED_FUNCTION_493();
        if (__swift_getEnumTagSinglePayload(v49, v50, v46) == 1)
        {
          sub_1B8D9207C(v2, &qword_1EBAD0E38, &qword_1B96D9DD0);
          v51 = v65;
        }

        else
        {
          OUTLINED_FUNCTION_5_52();
          sub_1B956DD18();
          sub_1B8CD3770(&qword_1ED9D2E90, type metadata accessor for Searchfoundation_RFAspectRatio);
          OUTLINED_FUNCTION_57_16();
          sub_1B964C740();
          v3 = v1;
          OUTLINED_FUNCTION_32_25();
          result = sub_1B9565C54();
          v51 = v65;
          if (v1)
          {
            return result;
          }
        }

        v52 = (v4 + v43[8]);
        if (!*v52 || (OUTLINED_FUNCTION_135_9(v52), sub_1B95702E8(), OUTLINED_FUNCTION_57_16(), result = sub_1B964C680(), (v3 = v1) == 0))
        {
          v53 = (v4 + v43[9]);
          if (!*v53 || (OUTLINED_FUNCTION_135_9(v53), sub_1B957033C(), OUTLINED_FUNCTION_57_16(), result = sub_1B964C680(), (v3 = v1) == 0))
          {
            v54 = v43[14];
            sub_1B8D92024();
            v55 = OUTLINED_FUNCTION_25_23();
            if (__swift_getEnumTagSinglePayload(v55, v56, v57) == 1)
            {
              sub_1B8D9207C(v51, &qword_1EBAB8DB8, &unk_1B96D9DC0);
            }

            else
            {
              OUTLINED_FUNCTION_2_76();
              sub_1B956DD18();
              sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);
              OUTLINED_FUNCTION_57_16();
              sub_1B964C740();
              v3 = v1;
              OUTLINED_FUNCTION_30_32();
              result = sub_1B9565C54();
              if (v1)
              {
                return result;
              }
            }

            v58 = (v4 + v43[10]);
            if (!*v58 || (OUTLINED_FUNCTION_135_9(v58), sub_1B9570390(), OUTLINED_FUNCTION_57_16(), result = sub_1B964C680(), (v3 = v1) == 0))
            {
              if (*(v4 + v43[11]) == 0.0 || (result = sub_1B964C6B0(), !v3))
              {
                v59 = v4 + v43[12];
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

uint64_t sub_1B956D7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1008, type metadata accessor for Searchfoundation_RFUrlImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956D82C(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1ED9D2F90, type metadata accessor for Searchfoundation_RFUrlImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956D89C()
{
  sub_1B8CD3770(&qword_1ED9D2F90, type metadata accessor for Searchfoundation_RFUrlImage);

  return sub_1B964C5D0();
}

uint64_t sub_1B956D928()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5168);
  __swift_project_value_buffer(v0, qword_1EBAB5168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "primary_color";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "secondary_color";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "image_style";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "symbol_rendering_mode";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "background_color";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "punches_through_background";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "vibrancy";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v9();
  v24 = (v5 + 8 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "corner_rounding_mode";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B956DCD8()
{
  v0 = type metadata accessor for Searchfoundation_RFSymbolImage._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B956DE68();
  qword_1ED9D2DA8 = result;
  return result;
}

uint64_t sub_1B956DD18()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B956DD70()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B956DE68()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__primaryColor;
  v2 = type metadata accessor for Searchfoundation_RFColor(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__secondaryColor, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode;
  *v4 = 0;
  *(v4 + 8) = 1;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__backgroundColor, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground) = 0;
  v5 = v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode;
  *v6 = 0;
  *(v6 + 8) = 1;
  return v0;
}

uint64_t sub_1B956DF58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__primaryColor;
  v6 = type metadata accessor for Searchfoundation_RFColor(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__secondaryColor, 1, 1, v6);
  v7 = v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode;
  *v8 = 0;
  *(v8 + 8) = 1;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__backgroundColor, 1, 1, v6);
  v23 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground) = 0;
  v9 = v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy;
  v24 = v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode;
  v25 = v1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode;
  *v10 = 0;
  *(v10 + 8) = 1;
  swift_beginAccess();
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v12;
  *(v1 + 24) = v11;
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
  v13 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle);
  swift_beginAccess();
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  swift_beginAccess();
  *v7 = v14;
  *(v7 + 8) = v13;
  v15 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode);
  swift_beginAccess();
  v16 = *v15;
  LOBYTE(v15) = *(v15 + 8);
  swift_beginAccess();
  *v8 = v16;
  *(v8 + 8) = v15;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground;
  swift_beginAccess();
  LOBYTE(v17) = *(a1 + v17);
  swift_beginAccess();
  *(v1 + v23) = v17;
  v18 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy);
  swift_beginAccess();
  v19 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  swift_beginAccess();
  *v24 = v19;
  *(v24 + 8) = v18;
  v20 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode);
  swift_beginAccess();
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);

  swift_beginAccess();
  *v25 = v21;
  *(v25 + 8) = v20;
  return v1;
}

uint64_t sub_1B956E3B0()
{
  v1 = *(v0 + 24);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__primaryColor, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__secondaryColor, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__backgroundColor, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  return v0;
}

uint64_t sub_1B956E438()
{
  v0 = sub_1B956E3B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B956E4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        continue;
      case 2:
        sub_1B956E6FC();
        continue;
      case 3:
        sub_1B956E7D8();
        continue;
      case 4:
        v11 = sub_1B9570294;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle;
        goto LABEL_13;
      case 5:
        v11 = sub_1B9572110;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode;
        goto LABEL_13;
      case 6:
        sub_1B956E8B4();
        continue;
      case 7:
        sub_1B8ED5EB0();
        continue;
      case 8:
        v11 = sub_1B9548DB0;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy;
        goto LABEL_13;
      case 9:
        v11 = sub_1B9570390;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode;
LABEL_13:
        sub_1B956E990(v12, v13, v14, v15, v16, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B956E6FC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFColor(0);
  sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B956E7D8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFColor(0);
  sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B956E8B4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RFColor(0);
  sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B956E990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  a6(v8);
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B956EA64(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v32 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v32 - v10;
  v43 = type metadata accessor for Searchfoundation_RFColor(0);
  v12 = *(*(v43 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v43);
  v32[1] = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v34 = v32 - v16;
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  v17 = *(a1 + 24);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v11, 1, v43) == 1)
  {
    sub_1B8D9207C(v11, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  }

  else
  {
    sub_1B956DD18();
    sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);
    sub_1B964C740();
    result = sub_1B9565C54();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  v21 = v43;
  if (__swift_getEnumTagSinglePayload(v9, 1, v43) == 1)
  {
    sub_1B8D9207C(v9, &qword_1EBAB8DB8, &unk_1B96D9DC0);
  }

  else
  {
    sub_1B956DD18();
    sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);
    sub_1B964C740();
    result = sub_1B9565C54();
    if (v1)
    {
      return result;
    }
  }

  v22 = a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle[0];
  swift_beginAccess();
  if (sub_1B8D580F8(*v22, *(v22 + 8), 0, 1) || (v23 = *(v22 + 8), v41 = *v22, v42 = v23, sub_1B9570294(), result = sub_1B964C680(), !v1))
  {
    v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode);
    swift_beginAccess();
    if (!*v24 || (v25 = *(v24 + 8), v39 = *v24, v40 = v25, sub_1B9572110(), result = sub_1B964C680(), !v1))
    {
      swift_beginAccess();
      v26 = v33;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v26, 1, v21) == 1)
      {
        sub_1B8D9207C(v26, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      }

      else
      {
        sub_1B956DD18();
        sub_1B8CD3770(&qword_1EBAB5540, type metadata accessor for Searchfoundation_RFColor);
        sub_1B964C740();
        result = sub_1B9565C54();
        if (v1)
        {
          return result;
        }
      }

      v27 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground;
      swift_beginAccess();
      if (*(a1 + v27) != 1 || (result = sub_1B964C670(), !v1))
      {
        v28 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy);
        swift_beginAccess();
        if (!*v28 || (v29 = *(v28 + 8), v37 = *v28, v38 = v29, sub_1B9548DB0(), result = sub_1B964C680(), !v1))
        {
          v30 = (a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode);
          result = swift_beginAccess();
          if (*v30)
          {
            v31 = *(v30 + 8);
            v35 = *v30;
            v36 = v31;
            sub_1B9570390();
            return sub_1B964C680();
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B956F188(uint64_t a1, uint64_t a2)
{
  v76 = type metadata accessor for Searchfoundation_RFColor(0);
  v4 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC0, &unk_1B964D5C0);
  v7 = *(*(v75 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v75);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v74 = &v68 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v68 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v72 = &v68 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v71 = &v68 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v73 = &v68 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v68 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v68 - v28;
  swift_beginAccess();
  v30 = *(a1 + 16);
  v31 = *(a1 + 24);
  swift_beginAccess();
  v32 = v30 == *(a2 + 16) && v31 == *(a2 + 24);
  if (v32 || (v33 = sub_1B964C9F0(), v34 = 0, (v33 & 1) != 0))
  {
    v70 = v6;
    v68 = v10;
    swift_beginAccess();
    sub_1B8D92024();
    swift_beginAccess();
    v35 = *(v75 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    v36 = v76;
    if (__swift_getEnumTagSinglePayload(v14, 1, v76) == 1)
    {

      sub_1B8D9207C(v29, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      if (__swift_getEnumTagSinglePayload(&v14[v35], 1, v36) != 1)
      {
        goto LABEL_17;
      }

      sub_1B8D9207C(v14, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      v37 = v70;
    }

    else
    {
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(&v14[v35], 1, v36) == 1)
      {

        goto LABEL_16;
      }

      v37 = v70;
      sub_1B956DD18();

      v38 = static Searchfoundation_RFColor.== infix(_:_:)(v27, v37);
      sub_1B9565C54();
      sub_1B8D9207C(v29, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      sub_1B9565C54();
      sub_1B8D9207C(v14, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      if ((v38 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    swift_beginAccess();
    v29 = v73;
    sub_1B8D92024();
    swift_beginAccess();
    v14 = v74;
    v39 = *(v75 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    v40 = v76;
    if (__swift_getEnumTagSinglePayload(v14, 1, v76) == 1)
    {
      sub_1B8D9207C(v29, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v14[v39], 1, v40);
      v29 = v72;
      if (EnumTagSinglePayload == 1)
      {
        sub_1B8D9207C(v14, &qword_1EBAB8DB8, &unk_1B96D9DC0);
        goto LABEL_21;
      }

LABEL_17:
      sub_1B8D9207C(v14, &qword_1EBAB8DC0, &unk_1B964D5C0);
      goto LABEL_18;
    }

    v42 = v71;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(&v14[v39], 1, v40) != 1)
    {
      sub_1B956DD18();
      LODWORD(v70) = static Searchfoundation_RFColor.== infix(_:_:)(v42, v37);
      sub_1B9565C54();
      sub_1B8D9207C(v29, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      sub_1B9565C54();
      sub_1B8D9207C(v14, &qword_1EBAB8DB8, &unk_1B96D9DC0);
      v29 = v72;
      if ((v70 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_21:
      v44 = a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle[0];
      swift_beginAccess();
      v45 = *v44;
      LOBYTE(v44) = *(v44 + 8);
      v46 = a2 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__imageStyle[0];
      swift_beginAccess();
      if (!sub_1B8D580F8(v45, v44, *v46, *(v46 + 8)))
      {
        goto LABEL_18;
      }

      v47 = a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode;
      swift_beginAccess();
      v48 = *v47;
      v49 = *(v47 + 8);
      v50 = a2 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__symbolRenderingMode;
      swift_beginAccess();
      v51 = *(v50 + 8);
      if (!sub_1B8D92198(v48, v49, *v50))
      {
        goto LABEL_18;
      }

      swift_beginAccess();
      sub_1B8D92024();
      swift_beginAccess();
      v52 = *(v75 + 48);
      v14 = v68;
      sub_1B8D92024();
      sub_1B8D92024();
      v53 = v76;
      if (__swift_getEnumTagSinglePayload(v14, 1, v76) == 1)
      {
        sub_1B8D9207C(v29, &qword_1EBAB8DB8, &unk_1B96D9DC0);
        if (__swift_getEnumTagSinglePayload(&v14[v52], 1, v53) == 1)
        {
          sub_1B8D9207C(v14, &qword_1EBAB8DB8, &unk_1B96D9DC0);
LABEL_28:
          v55 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground;
          swift_beginAccess();
          LODWORD(v55) = *(a1 + v55);
          v56 = OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__punchesThroughBackground;
          swift_beginAccess();
          if (v55 == *(a2 + v56))
          {
            v57 = a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy;
            swift_beginAccess();
            v58 = *v57;
            v59 = *(v57 + 8);
            v60 = a2 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__vibrancy;
            swift_beginAccess();
            v61 = *(v60 + 8);
            if (sub_1B8D92198(v58, v59, *v60))
            {
              v62 = a1 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode;
              swift_beginAccess();
              v63 = *v62;
              v64 = *(v62 + 8);

              v65 = a2 + OBJC_IVAR____TtCV10PegasusAPI30Searchfoundation_RFSymbolImageP33_A38875338ABAAF3606E34E94053D846813_StorageClass__cornerRoundingMode;
              swift_beginAccess();
              v66 = *v65;
              v67 = *(v65 + 8);

              return sub_1B8D92198(v63, v64, v66);
            }
          }

          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v54 = v69;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(&v14[v52], 1, v53) != 1)
      {
        sub_1B956DD18();
        LODWORD(v76) = static Searchfoundation_RFColor.== infix(_:_:)(v54, v37);
        sub_1B9565C54();
        sub_1B8D9207C(v29, &qword_1EBAB8DB8, &unk_1B96D9DC0);
        sub_1B9565C54();
        sub_1B8D9207C(v14, &qword_1EBAB8DB8, &unk_1B96D9DC0);
        if (v76)
        {
          goto LABEL_28;
        }

LABEL_18:

        return 0;
      }
    }

LABEL_16:
    sub_1B8D9207C(v29, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    sub_1B9565C54();
    goto LABEL_17;
  }

  return v34;
}

uint64_t sub_1B956FC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD1000, type metadata accessor for Searchfoundation_RFSymbolImage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B956FCF0(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1ED9D2D98, type metadata accessor for Searchfoundation_RFSymbolImage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B956FD60()
{
  sub_1B8CD3770(&qword_1ED9D2D98, type metadata accessor for Searchfoundation_RFSymbolImage);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_RFAspectRatio.decodeMessage<A>(decoder:)()
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

uint64_t Searchfoundation_RFAspectRatio.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
    {
      v3 = *(type metadata accessor for Searchfoundation_RFAspectRatio(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Searchfoundation_RFAspectRatio.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Searchfoundation_RFAspectRatio(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_91();
  sub_1B8CD3770(v5, v6);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9570004(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD3770(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B95700E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3770(&qword_1EBAD0FF8, type metadata accessor for Searchfoundation_RFAspectRatio);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9570164(uint64_t a1)
{
  v2 = sub_1B8CD3770(&qword_1ED9D2E90, type metadata accessor for Searchfoundation_RFAspectRatio);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95701D4()
{
  sub_1B8CD3770(&qword_1ED9D2E90, type metadata accessor for Searchfoundation_RFAspectRatio);

  return sub_1B964C5D0();
}

unint64_t sub_1B9570294()
{
  result = qword_1ED9CC3C8;
  if (!qword_1ED9CC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CC3C8);
  }

  return result;
}

unint64_t sub_1B95702E8()
{
  result = qword_1EBAD0EB0;
  if (!qword_1EBAD0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0EB0);
  }

  return result;
}

unint64_t sub_1B957033C()
{
  result = qword_1EBAB4908;
  if (!qword_1EBAB4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4908);
  }

  return result;
}

unint64_t sub_1B9570390()
{
  result = qword_1EBAD0EB8;
  if (!qword_1EBAD0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0EB8);
  }

  return result;
}

unint64_t sub_1B95703E8()
{
  result = qword_1ED9CC3C0;
  if (!qword_1ED9CC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CC3C0);
  }

  return result;
}

unint64_t sub_1B9570440()
{
  result = qword_1ED9CC3B0;
  if (!qword_1ED9CC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CC3B0);
  }

  return result;
}

unint64_t sub_1B9570498()
{
  result = qword_1ED9CC3B8;
  if (!qword_1ED9CC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CC3B8);
  }

  return result;
}

unint64_t sub_1B9570520()
{
  result = qword_1EBAD0EE8;
  if (!qword_1EBAD0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0EE8);
  }

  return result;
}

unint64_t sub_1B9570578()
{
  result = qword_1EBAD0EF0;
  if (!qword_1EBAD0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0EF0);
  }

  return result;
}

unint64_t sub_1B95705D0()
{
  result = qword_1EBAD0EF8;
  if (!qword_1EBAD0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0EF8);
  }

  return result;
}

unint64_t sub_1B9570658()
{
  result = qword_1EBAB4900;
  if (!qword_1EBAB4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4900);
  }

  return result;
}

unint64_t sub_1B95706B0()
{
  result = qword_1EBAB48F0;
  if (!qword_1EBAB48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB48F0);
  }

  return result;
}

unint64_t sub_1B9570708()
{
  result = qword_1EBAB48F8;
  if (!qword_1EBAB48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB48F8);
  }

  return result;
}

unint64_t sub_1B9570790()
{
  result = qword_1EBAD0F20;
  if (!qword_1EBAD0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0F20);
  }

  return result;
}

unint64_t sub_1B95707E8()
{
  result = qword_1EBAD0F28;
  if (!qword_1EBAD0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0F28);
  }

  return result;
}

unint64_t sub_1B9570840()
{
  result = qword_1EBAD0F30;
  if (!qword_1EBAD0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0F30);
  }

  return result;
}

unint64_t sub_1B95708C8()
{
  result = qword_1ED9CA428;
  if (!qword_1ED9CA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA428);
  }

  return result;
}

unint64_t sub_1B9570920()
{
  result = qword_1ED9CA418;
  if (!qword_1ED9CA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA418);
  }

  return result;
}

unint64_t sub_1B9570978()
{
  result = qword_1ED9CA420;
  if (!qword_1ED9CA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA420);
  }

  return result;
}

void sub_1B95715B4()
{
  sub_1B9571B18(319, &qword_1ED9D3A00, type metadata accessor for Searchfoundation_RFImageSource, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B95716A8()
{
  result = type metadata accessor for Searchfoundation_RFUrlImage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_RFSymbolImage(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Searchfoundation_RFAppIconImage(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Searchfoundation_RFAvatarImage(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Searchfoundation_RFMonogramImage(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Searchfoundation_RFBadgedImage(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B95717A8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B95718B4()
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

void sub_1B9571990()
{
  sub_1B9571B18(319, &qword_1ED9F22F0, type metadata accessor for Searchfoundation_RFUrlImage.OneOf_PlaceholderImage, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9571B18(319, &qword_1ED9F1EF0, type metadata accessor for Searchfoundation_RFAspectRatio, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B9571B18(319, &qword_1ED9F2C70, type metadata accessor for Searchfoundation_RFColor, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B9571B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9571B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_RFSymbolImage(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_115Tm_14_0);
}

uint64_t sub_1B9571BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Searchfoundation_RFSymbolImage(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_90Tm_0);
}

uint64_t sub_1B9571C3C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_RFSymbolImage(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t __swift_store_extra_inhabitant_index_90Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1B9571DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B9571E90()
{
  sub_1B9571B18(319, &qword_1ED9F1EB8, type metadata accessor for Searchfoundation_RFImageSource.OneOf_Value, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B9571F60()
{
  sub_1B9571B18(319, &qword_1ED9CC028, type metadata accessor for Searchfoundation_RFImageSource, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B9572028()
{
  sub_1B9571B18(319, &qword_1ED9F2C70, type metadata accessor for Searchfoundation_RFColor, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1B9572110()
{
  result = qword_1ED9CA430;
  if (!qword_1ED9CA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CA430);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_28()
{
  result = type metadata accessor for Searchfoundation_RFImageSource(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_22_30()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_14@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = *(v5 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_16()
{
  result = type metadata accessor for Searchfoundation_RFSymbolImage(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_24(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_RFImageSource(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_42_17()
{

  return swift_once();
}

void OUTLINED_FUNCTION_43_20(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v1 = v4;
  *(v1 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_50_16()
{
  v0 = type metadata accessor for Searchfoundation_RFSymbolImage._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_56_12()
{
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_59_16(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  v3 = v1 + *(v2 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_97_7()
{

  return sub_1B956DD18();
}

uint64_t OUTLINED_FUNCTION_103_7()
{

  return swift_once();
}

void OUTLINED_FUNCTION_105_10(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

void OUTLINED_FUNCTION_109_5(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v1;
  *(v4 + 8) = v3;
}

void OUTLINED_FUNCTION_110_9(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

uint64_t OUTLINED_FUNCTION_129_7()
{
  *v1 = 0;
  *(v1 + 8) = 0xE000000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = v1 + *(v0 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_130_7(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  return type metadata accessor for Searchfoundation_RFUrlImage(0);
}

void OUTLINED_FUNCTION_135_9(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  *(v2 - 96) = v1;
  *(v2 - 88) = v3;
}

uint64_t OUTLINED_FUNCTION_145_10()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_160_5()
{

  return sub_1B8D92024();
}

BOOL OUTLINED_FUNCTION_161_5()
{

  return sub_1B8D580F8(v0, v1, 0, 1);
}

uint64_t OUTLINED_FUNCTION_162_4()
{

  return sub_1B956DD18();
}

uint64_t OUTLINED_FUNCTION_164_3()
{
  v2 = *(v0 + 24);

  return type metadata accessor for Searchfoundation_RFOptionalFloat(0);
}

uint64_t OUTLINED_FUNCTION_165_7()
{
  *(v0 + 8) = 1;
  v1 = v0 + *(type metadata accessor for Searchfoundation_RFDefaultBrowserAppIconImage(0) + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

unint64_t Searchfoundation_RFLevelOfDetail.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B957280C@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFLevelOfDetail.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9572840(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9463500();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFLevelOfDetail.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD1088 = a1;
}

uint64_t sub_1B9572988@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFLevelOfDetail.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95729B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD1090);
  __swift_project_value_buffer(v0, qword_1EBAD1090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RF_LEVEL_OF_DETAIL_DEFAULT";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RF_LEVEL_OF_DETAIL_DECREASED";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RF_LEVEL_OF_DETAIL_STANDARD";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RF_LEVEL_OF_DETAIL_INCREASED";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_RFLevelOfDetail._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8830 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD1090);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B9572C98()
{
  result = qword_1EBAD10A8;
  if (!qword_1EBAD10A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD10A8);
  }

  return result;
}

unint64_t sub_1B9572CF0()
{
  result = qword_1EBAD10B0;
  if (!qword_1EBAD10B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD10B0);
  }

  return result;
}

unint64_t sub_1B9572D48()
{
  result = qword_1EBAD10B8;
  if (!qword_1EBAD10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD10B8);
  }

  return result;
}

unint64_t sub_1B9572DA0()
{
  result = qword_1EBAD10C0;
  if (!qword_1EBAD10C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAD10C8, &qword_1B96DBA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD10C0);
  }

  return result;
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.init()@<X0>(_WORD *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection();
  v3 = a1 + *(v2 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Searchfoundation_RFTextProperty(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t type metadata accessor for Searchfoundation_RFLongItemStandardCardSection()
{
  result = qword_1ED9EFE58;
  if (!qword_1ED9EFE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Searchfoundation_RFLongItemStandardCardSection.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600) - 8);
  v18 = *(*v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_2_77();
  v21 = *(v20 + 28);
  v22 = v17[14];
  sub_1B95740FC(&a1[v21], v2);
  sub_1B95740FC(&a2[v21], v2 + v22);
  v23 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v23, v24, v5);
  if (v29)
  {
    OUTLINED_FUNCTION_178(v2 + v22, 1, v5);
    if (v29)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_6;
    }

LABEL_12:
    v30 = &qword_1EBAB8E00;
    v31 = &qword_1B964D600;
LABEL_16:
    sub_1B8D9207C(v2, v30, v31);
LABEL_17:
    v28 = 0;
    return v28 & 1;
  }

  sub_1B95740FC(v2, v16);
  OUTLINED_FUNCTION_178(v2 + v22, 1, v5);
  if (v29)
  {
    sub_1B957416C(v16);
    goto LABEL_12;
  }

  sub_1B95741C8(v2 + v22, v10);
  v32 = *v16;
  v33 = *v10;
  sub_1B8D5BA08();
  if ((v34 & 1) == 0 || v16[8] != v10[8])
  {
    sub_1B957416C(v10);
    sub_1B957416C(v16);
    v30 = &qword_1EBAB8DF8;
    v31 = &qword_1B96B9A80;
    goto LABEL_16;
  }

  v36 = *(v5 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_92();
  sub_1B8CD37B8(v37, v38);
  v39 = sub_1B964C850();
  sub_1B957416C(v10);
  sub_1B957416C(v16);
  sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v39 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_17;
  }

  v25 = *(v20 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_92();
  sub_1B8CD37B8(v26, v27);
  v28 = sub_1B964C850();
  return v28 & 1;
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.text1.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_2_77();
  sub_1B95740FC(v1 + *(v8 + 28), v2);
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v10 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v10, v11, v9);
  if (!v12)
  {
    return sub_1B95741C8(v2, a1);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  v13 = a1 + *(v9 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v14 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v14, v15, v9);
  if (!v12)
  {
    return sub_1B8D9207C(v2, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  return result;
}

uint64_t sub_1B95732A8(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B957422C(a1, v5);
  return Searchfoundation_RFLongItemStandardCardSection.text1.setter(v5);
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.text1.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_RFLongItemStandardCardSection() + 28);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
  sub_1B95741C8(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_RFTextProperty(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_RFLongItemStandardCardSection.text1.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_RFLongItemStandardCardSection() + 28);
  *(v3 + 10) = v11;
  sub_1B95740FC(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v10[8] = 0;
    v15 = &v10[*(v7 + 24)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    sub_1B95741C8(v6, v10);
  }

  return sub_1B957350C;
}

void sub_1B957350C(uint64_t **a1, char a2)
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
    sub_1B957422C((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95741C8(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B957416C(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    sub_1B95741C8(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.hasText1.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_2_77();
  sub_1B95740FC(v0 + *(v6 + 28), v1);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
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

  sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  return v11;
}

Swift::Void __swiftcall Searchfoundation_RFLongItemStandardCardSection.clearText1()()
{
  v1 = *(type metadata accessor for Searchfoundation_RFLongItemStandardCardSection() + 28);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
  v2 = type metadata accessor for Searchfoundation_RFTextProperty(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_RFLongItemStandardCardSection() + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_RFLongItemStandardCardSection() + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t sub_1B95738A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAD10D0);
  __swift_project_value_buffer(v0, qword_1EBAD10D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text_1";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_quote";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "has_background_platter";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_RFLongItemStandardCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8838 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBAD10D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_1B964C400();
    }

    else if (result == 1)
    {
      sub_1B9573BF0();
    }
  }

  return result;
}

uint64_t sub_1B9573BF0()
{
  v0 = *(type metadata accessor for Searchfoundation_RFLongItemStandardCardSection() + 28);
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  sub_1B8CD37B8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
  return sub_1B964C580();
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Searchfoundation_RFLongItemStandardCardSection();
  sub_1B95740FC(&v2[*(v15 + 28)], v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B8D9207C(v8, &qword_1EBAB8DF8, &qword_1B96B9A80);
  }

  else
  {
    sub_1B95741C8(v8, v14);
    sub_1B8CD37B8(&qword_1ED9D2D08, type metadata accessor for Searchfoundation_RFTextProperty);
    sub_1B964C740();
    result = sub_1B957416C(v14);
    if (v1)
    {
      return result;
    }
  }

  if (*v2 != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
  {
    if (v2[1] != 1 || (result = OUTLINED_FUNCTION_0_31(), !v1))
    {
      v17 = &v2[*(v15 + 24)];
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t Searchfoundation_RFLongItemStandardCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_RFLongItemStandardCardSection();
  sub_1B8CD37B8(&qword_1EBAD10E8, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9573F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD37B8(&qword_1EBAD10F8, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B957400C(uint64_t a1)
{
  v2 = sub_1B8CD37B8(&qword_1EBAB4140, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B957407C()
{
  sub_1B8CD37B8(&qword_1EBAB4140, type metadata accessor for Searchfoundation_RFLongItemStandardCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B95740FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B957416C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B95741C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B957422C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B95743D8()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B957446C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B957446C()
{
  if (!qword_1ED9F1E00)
  {
    type metadata accessor for Searchfoundation_RFTextProperty(255);
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9F1E00);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_77()
{

  return type metadata accessor for Searchfoundation_RFLongItemStandardCardSection();
}

uint64_t Searchfoundation_RFMapCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = a1 + *(type metadata accessor for Searchfoundation_RFMapCardSection(0) + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

unint64_t Searchfoundation_RFMapSizeFormat.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Searchfoundation_RFMapSizeFormat.rawValue.getter()
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

uint64_t sub_1B95745C8@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_RFMapSizeFormat.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B95745FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B957ED58();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_RFMapSizeFormat.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBAD1100 = a1;
}

uint64_t (*static Searchfoundation_RFMapSizeFormat.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9574740@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_RFMapSizeFormat.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_RFMapPoint.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFMapPoint(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFMapPoint.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Searchfoundation_RFMapPoint(v1);
  *v0 = 0;
  v0[1] = 0;
  v3 = v0 + *(v2 + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_RFMapMarkerIdentifier.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Searchfoundation_RFMapMarkerIdentifier.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Searchfoundation_RFMapMarkerIdentifier.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFMapMarkerIdentifier.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  v2 = a1 + *(type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Searchfoundation_RFMapMarkerText.coordinate.modify()
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
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Searchfoundation_RFMapMarkerText(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_93_12();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFMapMarkerText.monogram.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_RFMapMarkerText(v5);
  OUTLINED_FUNCTION_115(*(v6 + 28));
  OUTLINED_FUNCTION_166_1();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_182();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t sub_1B9574D18()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B9574D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_177_1();
  sub_1B9574F78();
  return a7(v7);
}

uint64_t Searchfoundation_RFMapMarkerText.monogram.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFMapMarkerText(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_83();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFMapMarkerText.monogram.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Searchfoundation_RFMapMarkerText(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_83();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9574F78()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B9574FD0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Searchfoundation_RFMapMarkerText.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFMapMarkerText(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFMapMarkerText.init()()
{
  v0 = OUTLINED_FUNCTION_61_3();
  v1 = type metadata accessor for Searchfoundation_RFMapMarkerText(v0);
  OUTLINED_FUNCTION_200_3(v1);
  v2 = OUTLINED_FUNCTION_104_5();
  type metadata accessor for Searchfoundation_LatLng(v2);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Searchfoundation_RFTextProperty(v7);
  v8 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t Searchfoundation_RFMapMarkerImage.coordinate.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_RFMapMarkerImage(v5);
  OUTLINED_FUNCTION_115(*(v6 + 28));
  OUTLINED_FUNCTION_166_1();
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_113_12();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_182();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t Searchfoundation_RFMapMarkerImage.coordinate.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFMapMarkerImage(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_2_78();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_LatLng(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFMapMarkerImage.coordinate.modify()
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
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Searchfoundation_RFMapMarkerImage(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_93_12();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9575408()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_60();
  v9 = *(v1(v8) + 28);
  OUTLINED_FUNCTION_24_3();
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

uint64_t sub_1B95754F4()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Searchfoundation_RFMapMarkerImage.systemImage.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_RFMapMarkerImage.systemImage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B9575624()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B95756AC()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Searchfoundation_RFMapMarkerImage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFMapMarkerImage(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFMapMarkerImage.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  v2 = a1 + *(type metadata accessor for Searchfoundation_RFMapMarkerImage(0) + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Searchfoundation_LatLng(v3);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B95757EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC8, &unk_1B96DBC80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Searchfoundation_RFMapMarker.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27_9();
  v9 = OUTLINED_FUNCTION_94_14();
  OUTLINED_FUNCTION_57(v9);
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DC8, &unk_1B96DBC80);
LABEL_6:
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = 0;
    v12 = a1 + *(type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(0) + 28);
    return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B9574FD0();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_30_33();
  OUTLINED_FUNCTION_288();
  return sub_1B9574D18();
}

void Searchfoundation_RFMapMarker.identifier.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v1[2] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v1[3] = v11;
  OUTLINED_FUNCTION_56_13();
  v1[4] = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DC8, &unk_1B96DBC80);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_30_33();
      OUTLINED_FUNCTION_128();
      sub_1B9574D18();
      goto LABEL_7;
    }

    sub_1B9574FD0();
  }

  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v11[2] = 0;
  v11[3] = 0xE000000000000000;
  *(v11 + 32) = 0;
  v14 = v11 + *(v8 + 28);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFMapMarker.text.getter()
{
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_27_9();
  v7 = OUTLINED_FUNCTION_94_14();
  OUTLINED_FUNCTION_57(v7);
  if (v8)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DC8, &unk_1B96DBC80);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_29_35();
      OUTLINED_FUNCTION_288();
      return sub_1B9574D18();
    }

    sub_1B9574FD0();
  }

  v11 = OUTLINED_FUNCTION_61_3();
  v12 = type metadata accessor for Searchfoundation_RFMapMarkerText(v11);
  OUTLINED_FUNCTION_200_3(v12);
  v13 = OUTLINED_FUNCTION_104_5();
  type metadata accessor for Searchfoundation_LatLng(v13);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Searchfoundation_RFTextProperty(v18);
  v19 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

void Searchfoundation_RFMapMarker.text.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Searchfoundation_RFMapMarkerText(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v1[2] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v1[3] = v11;
  OUTLINED_FUNCTION_56_13();
  v1[4] = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DC8, &unk_1B96DBC80);
LABEL_7:
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v14 = v11 + v8[5];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = v8[6];
    type metadata accessor for Searchfoundation_LatLng(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = v8[7];
    type metadata accessor for Searchfoundation_RFTextProperty(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B9574FD0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_29_35();
  OUTLINED_FUNCTION_128();
  sub_1B9574D18();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFMapMarker.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_27_9();
  v9 = OUTLINED_FUNCTION_94_14();
  OUTLINED_FUNCTION_57(v9);
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8DC8, &unk_1B96DBC80);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_27_19();
      OUTLINED_FUNCTION_288();
      return sub_1B9574D18();
    }

    sub_1B9574FD0();
  }

  OUTLINED_FUNCTION_92_0();
  v13 = a1 + *(type metadata accessor for Searchfoundation_RFMapMarkerImage(0) + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v14 = OUTLINED_FUNCTION_244_3();
  type metadata accessor for Searchfoundation_LatLng(v14);
  v15 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_1B9575F60(uint64_t a1, uint64_t a2)
{
  sub_1B8D9207C(v2, &qword_1EBAB8DC8, &unk_1B96DBC80);
  OUTLINED_FUNCTION_128();
  sub_1B9574D18();
  OUTLINED_FUNCTION_94_14();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(v2, 0, 1, a2);
}

void Searchfoundation_RFMapMarker.image.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Searchfoundation_RFMapMarkerImage(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  v1[2] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v1[3] = v11;
  OUTLINED_FUNCTION_56_13();
  v1[4] = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8DC8, &unk_1B96DBC80);
LABEL_7:
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    v14 = v11 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v8 + 28);
    type metadata accessor for Searchfoundation_LatLng(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B9574FD0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_19();
  OUTLINED_FUNCTION_128();
  sub_1B9574D18();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9576198()
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
    sub_1B9574F78();
    sub_1B8D9207C(v5, &qword_1EBAB8DC8, &unk_1B96DBC80);
    sub_1B9574D18();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_132_9();
    sub_1B9574FD0();
  }

  else
  {
    sub_1B8D9207C(**v0, &qword_1EBAB8DC8, &unk_1B96DBC80);
    sub_1B9574D18();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_132_9();
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_283();

  free(v7);
}

uint64_t Searchfoundation_RFMapMarker.tint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = *(type metadata accessor for Searchfoundation_RFMapMarker(0) + 24);
  OUTLINED_FUNCTION_166_1();
  v9 = type metadata accessor for Searchfoundation_RFColor(0);
  OUTLINED_FUNCTION_57(v7);
  if (v10)
  {
    type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    v11 = OUTLINED_FUNCTION_493();
    __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
    v14 = a1 + *(v9 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v9 + 24);
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    result = OUTLINED_FUNCTION_57(v7);
    if (!v10)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_63();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t Searchfoundation_RFMapMarker.tint.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFMapMarker(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_4_63();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_RFColor(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFMapMarker.tint.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v0 + 8) = v5;
  v6 = type metadata accessor for Searchfoundation_RFColor(0);
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_89_0(v11);
  *(v0 + 40) = *(type metadata accessor for Searchfoundation_RFMapMarker(v12) + 24);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v5, 1, v6);
  if (v13)
  {
    type metadata accessor for Searchfoundation_RFColor.OneOf_Value(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = v8 + *(v6 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v19 = *(v6 + 24);
    type metadata accessor for Searchfoundation_RFOptionalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    OUTLINED_FUNCTION_178(v5, 1, v6);
    if (!v13)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_63();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B95765CC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9574F78();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_25_24();
    sub_1B9574FD0();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DB8, &unk_1B96D9DC0);
    OUTLINED_FUNCTION_4_63();
    OUTLINED_FUNCTION_119_7();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B95766DC()
{
  OUTLINED_FUNCTION_111_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_60();
  v9 = *(v1(v8) + 24);
  OUTLINED_FUNCTION_24_3();
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

uint64_t sub_1B95767C8()
{
  OUTLINED_FUNCTION_111_0();
  v5 = v4(0);
  sub_1B8D9207C(v1 + *(v5 + 24), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1B957685C()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B95768E4()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 20);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Searchfoundation_RFMapMarker.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFMapMarker(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_RFMapMarker.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v41[2] = v1;
  v41[3] = v2;
  v3 = type metadata accessor for Searchfoundation_RFMapMarkerImage(0);
  v4 = OUTLINED_FUNCTION_183(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v41[1] = v7;
  v8 = OUTLINED_FUNCTION_201();
  v9 = type metadata accessor for Searchfoundation_RFMapMarkerText(v8);
  v10 = OUTLINED_FUNCTION_183(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = OUTLINED_FUNCTION_60();
  v14 = type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(v13);
  v15 = OUTLINED_FUNCTION_59_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v18 = OUTLINED_FUNCTION_204_3();
  v19 = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(v18);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v24 = MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v41 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD11C8, &unk_1B96DBC90);
  OUTLINED_FUNCTION_183(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = v41 - v32;
  v34 = *(v31 + 56);
  sub_1B9574F78();
  sub_1B9574F78();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_24_29();
      sub_1B9574F78();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_29_35();
        sub_1B9574D18();
        static Searchfoundation_RFMapMarkerText.== infix(_:_:)();
        sub_1B9574FD0();
LABEL_9:
        sub_1B9574FD0();
        OUTLINED_FUNCTION_8_48();
        sub_1B9574FD0();
        goto LABEL_11;
      }
    }

    else
    {
      OUTLINED_FUNCTION_24_29();
      sub_1B9574F78();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_27_19();
        sub_1B9574D18();
        static Searchfoundation_RFMapMarkerImage.== infix(_:_:)();
        sub_1B9574FD0();
        goto LABEL_9;
      }
    }

LABEL_10:
    sub_1B9574FD0();
    sub_1B8D9207C(v33, &qword_1EBAD11C8, &unk_1B96DBC90);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_24_29();
  sub_1B9574F78();
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_30_33();
  sub_1B9574D18();
  v36 = *v26 == *v0 && *(v26 + 1) == *(v0 + 8);
  if (v36 || (sub_1B964C9F0() & 1) != 0)
  {
    v37 = *(v26 + 2) == *(v0 + 16) && *(v26 + 3) == *(v0 + 24);
    if (v37 || (sub_1B964C9F0()) && v26[32] == *(v0 + 32))
    {
      v38 = *(v14 + 28);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_93();
      sub_1B8CD3800(v39, v40);
      sub_1B964C850();
    }
  }

  OUTLINED_FUNCTION_65_12();
  sub_1B9574FD0();
  OUTLINED_FUNCTION_128();
  sub_1B9574FD0();
  OUTLINED_FUNCTION_8_48();
  sub_1B9574FD0();
LABEL_11:
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_RFMapMarkerIdentifier.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v4 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 32) != *(v0 + 32))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Searchfoundation_RFMapMarkerIdentifier(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

void static Searchfoundation_RFMapMarkerText.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v61 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  v6 = OUTLINED_FUNCTION_59_1(v61);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v57 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_185();
  v58 = v14;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E00, &qword_1B964D600);
  OUTLINED_FUNCTION_59_1(v59);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_185();
  v62 = v18;
  v19 = OUTLINED_FUNCTION_201();
  v20 = type metadata accessor for Searchfoundation_LatLng(v19);
  v21 = OUTLINED_FUNCTION_59_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v26 = (v25 - v24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_79();
  v31 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB018, &unk_1B96B9910) - 8);
  v32 = *(*v31 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_159();
  v60 = type metadata accessor for Searchfoundation_RFMapMarkerText(0);
  v34 = v60[6];
  v35 = v31[14];
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_161_2();
  OUTLINED_FUNCTION_37_0(v1);
  if (v43)
  {
    OUTLINED_FUNCTION_37_0(v1 + v35);
    if (v43)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1 + v35);
  if (v43)
  {
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
LABEL_19:
    v44 = &qword_1EBACB018;
    v45 = &unk_1B96B9910;
LABEL_26:
    v49 = v1;
LABEL_27:
    sub_1B8D9207C(v49, v44, v45);
LABEL_28:
    v42 = 0;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_2_78();
  sub_1B9574D18();
  if (*v0 != *v26 || v0[1] != v26[1])
  {
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    goto LABEL_25;
  }

  v46 = *(v20 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v47, v48);
  LOBYTE(v46) = sub_1B964C850();
  OUTLINED_FUNCTION_0_110();
  sub_1B9574FD0();
  if ((v46 & 1) == 0)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    v44 = &qword_1EBACAFA0;
    v45 = &unk_1B96CB440;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_0_110();
  sub_1B9574FD0();
LABEL_5:
  sub_1B8D9207C(v1, &qword_1EBACAFA0, &unk_1B96CB440);
  v36 = *v5 == *v3 && v5[1] == v3[1];
  if (!v36 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v37 = v60[7];
  v38 = *(v59 + 48);
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_235_1();
  OUTLINED_FUNCTION_44(v62, 1);
  if (v43)
  {
    OUTLINED_FUNCTION_48(v62 + v38);
    if (v43)
    {
      sub_1B8D9207C(v62, &qword_1EBAB8DF8, &qword_1B96B9A80);
      goto LABEL_15;
    }

LABEL_33:
    v44 = &qword_1EBAB8E00;
    v45 = &qword_1B964D600;
LABEL_37:
    v49 = v62;
    goto LABEL_27;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v62 + v38);
  if (v50)
  {
    OUTLINED_FUNCTION_11_44();
    sub_1B9574FD0();
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_3_83();
  sub_1B9574D18();
  v51 = *v58;
  v52 = *v57;
  sub_1B8D5BA08();
  if ((v53 & 1) == 0 || *(v58 + 8) != *(v57 + 8))
  {
    OUTLINED_FUNCTION_67_9();
    sub_1B9574FD0();
    sub_1B9574FD0();
    v44 = &qword_1EBAB8DF8;
    v45 = &qword_1B96B9A80;
    goto LABEL_37;
  }

  v54 = *(v61 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v55, v56);
  sub_1B964C850();
  OUTLINED_FUNCTION_60_14();
  sub_1B9574FD0();
  sub_1B9574FD0();
  sub_1B8D9207C(v62, &qword_1EBAB8DF8, &qword_1B96B9A80);
  if ((v54 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  v39 = v60[5];
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v40, v41);
  OUTLINED_FUNCTION_612();
  v42 = sub_1B964C850();
LABEL_29:
  OUTLINED_FUNCTION_264(v42);
  OUTLINED_FUNCTION_283();
}

void static Searchfoundation_RFMapMarkerImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Searchfoundation_LatLng(0);
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v36 - v16);
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB018, &unk_1B96B9910) - 8);
  v19 = *(*v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_79();
  v37 = type metadata accessor for Searchfoundation_RFMapMarkerImage(0);
  v21 = *(v37 + 28);
  v22 = v18[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0);
  if (v29)
  {
    OUTLINED_FUNCTION_37_0(v0 + v22);
    if (v29)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v22);
  if (v29)
  {
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
LABEL_19:
    v30 = &qword_1EBACB018;
    v31 = &unk_1B96B9910;
LABEL_26:
    sub_1B8D9207C(v0, v30, v31);
LABEL_27:
    v28 = 0;
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_2_78();
  sub_1B9574D18();
  if (*v17 != *v11 || v17[1] != v11[1])
  {
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    goto LABEL_25;
  }

  v32 = *(v5 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v33, v34);
  v35 = sub_1B964C850();
  OUTLINED_FUNCTION_0_110();
  sub_1B9574FD0();
  if ((v35 & 1) == 0)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
    v30 = &qword_1EBACAFA0;
    v31 = &unk_1B96CB440;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_0_110();
  sub_1B9574FD0();
LABEL_5:
  sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
  v23 = *v4 == *v2 && v4[1] == v2[1];
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v24 = v4[2] == v2[2] && v4[3] == v2[3];
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v25 = *(v37 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_93();
  sub_1B8CD3800(v26, v27);
  v28 = sub_1B964C850();
LABEL_28:
  OUTLINED_FUNCTION_264(v28);
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFMapMarker.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(v1);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for Searchfoundation_RFMapMarker(0);
  OUTLINED_FUNCTION_200_3(v6);
  v7 = *(v0 + 24);
  type metadata accessor for Searchfoundation_RFColor(0);
  v8 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_1B95777A8(uint64_t (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = a1(v7);
  OUTLINED_FUNCTION_115(*(v8 + 24));
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_LatLng(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_113_12();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t sub_1B95778B0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 24), &qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_2_78();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_LatLng(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Searchfoundation_RFMapAnnotation.coordinate.modify()
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
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Searchfoundation_RFMapAnnotation(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_93_12();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9577A24()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9574F78();
    sub_1B8D9207C(v4 + v3, &qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_0_110();
    sub_1B9574FD0();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_2_78();
    OUTLINED_FUNCTION_119_7();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_RFMapAnnotation.content.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_RFMapAnnotation(v5);
  OUTLINED_FUNCTION_115(*(v6 + 28));
  OUTLINED_FUNCTION_166_1();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_49();
    OUTLINED_FUNCTION_182();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t Searchfoundation_RFMapAnnotation.content.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFMapAnnotation(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_7_49();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFMapAnnotation.content.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Searchfoundation_RFVisualProperty(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Searchfoundation_RFMapAnnotation(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_49();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9577DB8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9574F78();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_7_49();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_28_25();
    sub_1B9574FD0();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_7_49();
    OUTLINED_FUNCTION_119_7();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_RFMapAnnotation.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_RFMapAnnotation.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Searchfoundation_RFMapAnnotation.anchor.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = type metadata accessor for Searchfoundation_RFMapAnnotation(v5);
  OUTLINED_FUNCTION_115(*(v6 + 32));
  OUTLINED_FUNCTION_166_1();
  type metadata accessor for Searchfoundation_RFMapPoint(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_113_12();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAD11D0, &qword_1B96DBCA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_182();
    return sub_1B9574D18();
  }

  return result;
}

uint64_t Searchfoundation_RFMapAnnotation.anchor.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFMapAnnotation(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAD11D0, &qword_1B96DBCA0);
  OUTLINED_FUNCTION_6_48();
  OUTLINED_FUNCTION_108_9();
  type metadata accessor for Searchfoundation_RFMapPoint(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFMapAnnotation.anchor.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_85(v6);
  v8 = type metadata accessor for Searchfoundation_RFMapPoint(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_89_0(v12);
  v14 = type metadata accessor for Searchfoundation_RFMapAnnotation(v13);
  OUTLINED_FUNCTION_64_0(*(v14 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    OUTLINED_FUNCTION_93_12();
    OUTLINED_FUNCTION_16_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAD11D0, &qword_1B96DBCA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_461();
    sub_1B9574D18();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B95781C0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B9574F78();
    sub_1B8D9207C(v4 + v3, &qword_1EBAD11D0, &qword_1B96DBCA0);
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_118_9();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_5_53();
    sub_1B9574FD0();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAD11D0, &qword_1B96DBCA0);
    OUTLINED_FUNCTION_6_48();
    OUTLINED_FUNCTION_119_7();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_RFMapAnnotation.hasAnchor.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD11D0, &qword_1B96DBCA0);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  v5 = type metadata accessor for Searchfoundation_RFMapAnnotation(v4);
  OUTLINED_FUNCTION_115(*(v5 + 32));
  OUTLINED_FUNCTION_161_2();
  type metadata accessor for Searchfoundation_RFMapPoint(0);
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
  sub_1B8D9207C(v11, v12, &qword_1B96DBCA0);
  return v10;
}