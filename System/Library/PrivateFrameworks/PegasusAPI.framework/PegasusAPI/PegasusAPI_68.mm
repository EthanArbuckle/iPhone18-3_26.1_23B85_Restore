void sub_1B935000C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC5D8, &qword_1B96B9948);
    OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_185_7();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC5D8, &qword_1B96B9948);
    OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_PlayWatchListItemButtonItem.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_PlayWatchListItemButtonItem.title.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_1B93501F0()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_690();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *((v1)(v9) + 32);
  OUTLINED_FUNCTION_77_7();
  v11 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v1 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (v0 != 1)
    {
      return sub_1B8D9207C(v2, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_PlayWatchListItemButtonItem.image.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Image(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_PlayWatchListItemButtonItem.image.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_Image(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 32));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B93504A4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8EA8, &unk_1B96B77D0);
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_24_24();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8EA8, &unk_1B96B77D0);
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_PlayWatchListItemButtonItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_PlayWatchListItemButtonItem(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_PlayAudioButtonItem.mediaMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    Searchfoundation_MediaMetadata.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC5E8, &qword_1B96B9958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_21();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_PlayAudioButtonItem.mediaMetadata.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_PlayAudioButtonItem._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9425040(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_26_21();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_MediaMetadata(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_PlayAudioButtonItem.mediaMetadata.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_MediaMetadata(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  v16 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v15);
  OUTLINED_FUNCTION_77_0(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v17)
  {
    OUTLINED_FUNCTION_126_2();
    *(v11 + 48) = 0;
    *(v11 + 56) = v18;
    OUTLINED_FUNCTION_874(v18);
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBACC5E8, &qword_1B96B9958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_21();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_PlayAudioButtonItem.hasMediaMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v8 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_PlayAudioButtonItem.clearMediaMetadata()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_PlayAudioButtonItem._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9425040(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void sub_1B9350B38()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_31_2();
  v12 = v4(v11);
  OUTLINED_FUNCTION_642_0(v12);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_713_0();
  sub_1B8D92024();
  v13 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  OUTLINED_FUNCTION_60_11(v13);
  if (v14)
  {
    OUTLINED_FUNCTION_77_2();
    OUTLINED_FUNCTION_1201();
    v15 = *(v2 + 28);
    v16 = type metadata accessor for Searchfoundation_Image(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    v20 = *(v2 + 32);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
    OUTLINED_FUNCTION_19_17();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC6F0, &qword_1B96B9A68);
    }
  }

  else
  {
    OUTLINED_FUNCTION_221();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_PlayAudioButtonItem.toggleButtonConfiguration.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_PlayAudioButtonItem._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9425040(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_50_13();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_PlayAudioButtonItem.toggleButtonConfiguration.modify()
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
  v11 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_224_2(v15);
  v17 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v16);
  OUTLINED_FUNCTION_77_0(v17);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v18)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0();
    v19 = OUTLINED_FUNCTION_914();
    v20 = type metadata accessor for Searchfoundation_Image(v19);
    OUTLINED_FUNCTION_264_3(v20);
    v21 = OUTLINED_FUNCTION_245_4(*(v1 + 32));
    OUTLINED_FUNCTION_38_11(v21, v22, v23, v0);
    if (!v18)
    {
      sub_1B8D9207C(v2, &qword_1EBACC6F0, &qword_1B96B9A68);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_13();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_PlayAudioButtonItem.hasToggleButtonConfiguration.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v8 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_PlayAudioButtonItem.clearToggleButtonConfiguration()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6F0, &qword_1B96B9A68);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_PlayAudioButtonItem._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9425040(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Searchfoundation_ToggleButtonConfiguration(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_PlayAudioButtonItem.audioData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Searchfoundation_AudioData();
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    Searchfoundation_AudioData.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC698, &qword_1B96B9A08);
    }
  }

  else
  {
    OUTLINED_FUNCTION_160_4();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_PlayAudioButtonItem.audioData.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_PlayAudioButtonItem._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9425040(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_160_4();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_AudioData();
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_PlayAudioButtonItem.audioData.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_71(v7);
  v8 = type metadata accessor for Searchfoundation_AudioData();
  OUTLINED_FUNCTION_135_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  v14 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v13);
  OUTLINED_FUNCTION_77_0(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_1155(xmmword_1B9652FE0);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACC698, &qword_1B96B9A08);
    }
  }

  else
  {
    OUTLINED_FUNCTION_160_4();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_PlayAudioButtonItem.hasAudioData.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v8 = type metadata accessor for Searchfoundation_AudioData();
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_PlayAudioButtonItem.clearAudioData()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_PlayAudioButtonItem._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B9425040(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Searchfoundation_AudioData();
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_PlayAudioButtonItem.uniqueID.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Searchfoundation_PlayAudioButtonItem(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_838();
  return OUTLINED_FUNCTION_105_0();
}

void Searchfoundation_StoreButtonItem.identifierType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_StoreButtonItem.identifierType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Searchfoundation_StoreButtonItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_StoreButtonItem(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_StoreButtonItem.StoreButtonItemIdentifierType.rawValue.getter()
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

uint64_t sub_1B9351710(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C96C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B93517F0@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_StoreButtonItem.StoreButtonItemIdentifierType.allCases.getter();
  *a1 = result;
  return result;
}

void sub_1B9351830(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_ScoreboardCardSection.punchoutOptions.setter();
}

uint64_t Searchfoundation_ScoreboardCardSection.punchoutOptions.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v2);
  OUTLINED_FUNCTION_231_5(v3);
  OUTLINED_FUNCTION_1031();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9351954(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_ScoreboardCardSection.punchoutPickerTitle.setter();
}

uint64_t Searchfoundation_ScoreboardCardSection.punchoutPickerTitle.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v2);
  OUTLINED_FUNCTION_229_2(v3);
  OUTLINED_FUNCTION_1009();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9351A8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_ScoreboardCardSection.punchoutPickerDismissText.setter();
}

uint64_t Searchfoundation_ScoreboardCardSection.punchoutPickerDismissText.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v2);
  OUTLINED_FUNCTION_228_2(v3);
  OUTLINED_FUNCTION_1008();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ScoreboardCardSection.canBeHidden.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v2);
  OUTLINED_FUNCTION_234_5(v3);
  OUTLINED_FUNCTION_1007();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_ScoreboardCardSection.hasTopPadding_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v2);
  OUTLINED_FUNCTION_232_2(v3);
  OUTLINED_FUNCTION_1006();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_ScoreboardCardSection.hasBottomPadding_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v2);
  OUTLINED_FUNCTION_233_1(v3);
  OUTLINED_FUNCTION_1005();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9351E58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_ScoreboardCardSection.type.setter();
}

uint64_t Searchfoundation_ScoreboardCardSection.type.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v2);
  OUTLINED_FUNCTION_230_3(v3);
  OUTLINED_FUNCTION_1004();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ScoreboardCardSection.separatorStyle.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v2);
  OUTLINED_FUNCTION_227_1(v3);
  OUTLINED_FUNCTION_337_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_ScoreboardCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v9);
  OUTLINED_FUNCTION_77_0(v10);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_ScoreboardCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_ScoreboardCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94279B4(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Color(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ScoreboardCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_Color(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  v16 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v15);
  OUTLINED_FUNCTION_77_0(v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ScoreboardCardSection.hasBackgroundColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v8 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_ScoreboardCardSection.clearBackgroundColor()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_ScoreboardCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94279B4(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void sub_1B9352558(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_ScoreboardCardSection.title.setter();
}

uint64_t Searchfoundation_ScoreboardCardSection.title.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B93526B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_ScoreboardCardSection.subtitle.setter();
}

uint64_t Searchfoundation_ScoreboardCardSection.subtitle.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ScoreboardCardSection.team1.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC700, &qword_1B96B9A78);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_ScoreboardCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94279B4(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_340_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_SportsTeam(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_SportsTeam.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  v3 = type metadata accessor for Searchfoundation_SportsTeam(0);
  v4 = a1 + v3[9];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = v3[10];
  v6 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_696_0(v6);
  v7 = v3[11];
  type metadata accessor for Searchfoundation_ButtonItem(0);
  v8 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Searchfoundation_ScoreboardCardSection.team1.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_SportsTeam(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  v15 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v14);
  OUTLINED_FUNCTION_77_0(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_128_7();
    OUTLINED_FUNCTION_1385(v17);
    v18 = OUTLINED_FUNCTION_929();
    type metadata accessor for Searchfoundation_Image(v18);
    v19 = OUTLINED_FUNCTION_87_5();
    v23 = OUTLINED_FUNCTION_1193(v19, v20, v21, v22);
    v24 = type metadata accessor for Searchfoundation_ButtonItem(v23);
    OUTLINED_FUNCTION_6_19(v24);
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC700, &qword_1B96B9A78);
    }
  }

  else
  {
    OUTLINED_FUNCTION_340_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ScoreboardCardSection.hasTeam1.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v8 = type metadata accessor for Searchfoundation_SportsTeam(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_ScoreboardCardSection.clearTeam1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC700, &qword_1B96B9A78);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_ScoreboardCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94279B4(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Searchfoundation_SportsTeam(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t sub_1B9352C48()
{
  OUTLINED_FUNCTION_1373();
  v3 = OUTLINED_FUNCTION_690();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_31_2();
  v10 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v9);
  OUTLINED_FUNCTION_642_0(v10);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1189();
  v11 = type metadata accessor for Searchfoundation_SportsTeam(0);
  OUTLINED_FUNCTION_60_11(v11);
  if (v12)
  {
    OUTLINED_FUNCTION_295_1();
    *(v2 + 16) = 0;
    *(v2 + 24) = v13;
    *(v2 + 32) = 0;
    *(v2 + 40) = v13;
    *(v2 + 48) = 0;
    *(v2 + 56) = v13;
    *(v2 + 64) = 0;
    v14 = v2 + *(v1 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_1078();
    type metadata accessor for Searchfoundation_Image(v15);
    v16 = OUTLINED_FUNCTION_162_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = *(v1 + 44);
    v21 = type metadata accessor for Searchfoundation_ButtonItem(0);
    result = OUTLINED_FUNCTION_11_31(v21);
    if (!v12)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC700, &qword_1B96B9A78);
    }
  }

  else
  {
    OUTLINED_FUNCTION_472();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_ScoreboardCardSection.team2.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC700, &qword_1B96B9A78);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_ScoreboardCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94279B4(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_340_1();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_SportsTeam(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ScoreboardCardSection.team2.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_SportsTeam(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  v15 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v14);
  OUTLINED_FUNCTION_77_0(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_128_7();
    OUTLINED_FUNCTION_1385(v17);
    v18 = OUTLINED_FUNCTION_929();
    type metadata accessor for Searchfoundation_Image(v18);
    v19 = OUTLINED_FUNCTION_87_5();
    v23 = OUTLINED_FUNCTION_1193(v19, v20, v21, v22);
    v24 = type metadata accessor for Searchfoundation_ButtonItem(v23);
    OUTLINED_FUNCTION_6_19(v24);
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC700, &qword_1B96B9A78);
    }
  }

  else
  {
    OUTLINED_FUNCTION_340_1();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ScoreboardCardSection.hasTeam2.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v6);
  OUTLINED_FUNCTION_77_0(v7);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v8 = type metadata accessor for Searchfoundation_SportsTeam(0);
  OUTLINED_FUNCTION_11(v8);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_ScoreboardCardSection.clearTeam2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC700, &qword_1B96B9A78);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_ScoreboardCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94279B4(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Searchfoundation_SportsTeam(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void sub_1B9353140(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_ScoreboardCardSection.accessibilityDescription.setter();
}

uint64_t Searchfoundation_ScoreboardCardSection.accessibilityDescription.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B935329C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_ScoreboardCardSection.eventStatus.setter();
}

uint64_t Searchfoundation_ScoreboardCardSection.eventStatus.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_ScoreboardCardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_SportsTeam.logo.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Searchfoundation_SportsTeam(v9) + 40);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_SportsTeam.logo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_SportsTeam(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Image(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_SportsTeam.logo.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_Image(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_SportsTeam(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 40));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_SportsTeam.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_SportsTeam.name.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_1B9353808()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 44), &qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Searchfoundation_SportsTeam.button.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_SportsTeam(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 44));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B93539B4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC580, &qword_1B96B98B8);
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_16_27();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC580, &qword_1B96B98B8);
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B9353AC4()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_103();
  v9 = *(v1(v8) + 44);
  OUTLINED_FUNCTION_225_0();
  sub_1B8D92024();
  v10 = v0(0);
  OUTLINED_FUNCTION_220_2(v10);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9353B88()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v3 = *(v2(v1) + 44);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1B9353C30()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v2 = *(v1(v0) + 36);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B9353CB4()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 36);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Searchfoundation_SportsTeam.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_SportsTeam(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.text1.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.text1.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1077(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFactItemButtonCardSection.text1.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RFTextProperty(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_206_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.hasText1.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFFactItemButtonCardSection.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1076(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.button1.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.button1.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1077(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  OUTLINED_FUNCTION_401_1();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFactItemButtonCardSection.button1.modify()
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
  v11 = type metadata accessor for Searchfoundation_ButtonItem(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_206_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.hasButton1.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFFactItemButtonCardSection.clearButton1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1076(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  OUTLINED_FUNCTION_401_1();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.button2.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.button2.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1077(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  OUTLINED_FUNCTION_401_1();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFactItemButtonCardSection.button2.modify()
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
  v11 = type metadata accessor for Searchfoundation_ButtonItem(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_206_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.hasButton2.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFFactItemButtonCardSection.clearButton2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1076(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  OUTLINED_FUNCTION_401_1();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.button3.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.button3.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1077(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  OUTLINED_FUNCTION_401_1();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFactItemButtonCardSection.button3.modify()
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
  v11 = type metadata accessor for Searchfoundation_ButtonItem(v10);
  OUTLINED_FUNCTION_135_0(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_187(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_206_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.hasButton3.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFFactItemButtonCardSection.clearButton3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1076(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  OUTLINED_FUNCTION_401_1();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.text2.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.text2.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1077(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFactItemButtonCardSection.text2.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RFTextProperty(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_206_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.hasText2.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFFactItemButtonCardSection.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1076(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.text3.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.text3.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1077(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFactItemButtonCardSection.text3.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RFTextProperty(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_206_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.hasText3.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFFactItemButtonCardSection.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1076(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void sub_1B93558D8(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_RFFactItemButtonCardSection.text4.setter();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.text4.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.text5.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.text5.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1077(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFactItemButtonCardSection.text5.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RFTextProperty(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_206_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.hasText5.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFFactItemButtonCardSection.clearText5()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1076(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.thumbnail.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.thumbnail.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1077(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_13_28();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFactItemButtonCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RFVisualProperty(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_206_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.hasThumbnail.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFFactItemButtonCardSection.clearThumbnail()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1076(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.thumbnail2.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.thumbnail2.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1077(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_13_28();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFFactItemButtonCardSection.thumbnail2.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_RFVisualProperty(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_206_4();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.hasThumbnail2.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_442_0(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFFactItemButtonCardSection.clearThumbnail2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_1076(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_659_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B942B7B0(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFFactItemButtonCardSection.buttonItemsAreBottom.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_RFFactItemButtonCardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_RFSimpleItemPlayerCardSection.text1.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSimpleItemPlayerCardSection.text1.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B93569DC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_12_31();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8DF8, &qword_1B96B9A80);
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Searchfoundation_RFSimpleItemPlayerCardSection.text2.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSimpleItemPlayerCardSection.text2.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFSimpleItemPlayerCardSection.text4.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSimpleItemPlayerCardSection.text4.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFSimpleItemPlayerCardSection.player.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(v9) + 36);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSimpleItemPlayerCardSection.player.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSimpleItemPlayerCardSection.player.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 36));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFSimpleItemPlayerCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFSimpleItemPlayerCardSection(v0) + 20);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFSummaryItemPlayerCardSection.text1.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSummaryItemPlayerCardSection.text1.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFSummaryItemPlayerCardSection.text2.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSummaryItemPlayerCardSection.text2.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9357708()
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
  OUTLINED_FUNCTION_77_7();
  v10 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPlayerCardSection.text3.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSummaryItemPlayerCardSection.text3.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFSummaryItemPlayerCardSection.text4.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSummaryItemPlayerCardSection.text4.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFSummaryItemPlayerCardSection.thumbnail.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v7) + 36);
  OUTLINED_FUNCTION_100_0();
  v9 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_29_14(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPlayerCardSection.thumbnail.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_13_28();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSummaryItemPlayerCardSection.thumbnail.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFVisualProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 36));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFSummaryItemPlayerCardSection.player.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v9) + 40);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPlayerCardSection.player.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSummaryItemPlayerCardSection.player.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFSummaryItemPlayerCardSection(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 40));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B93581EC()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = v0(v8);
  OUTLINED_FUNCTION_445_1(v9);
  OUTLINED_FUNCTION_1189();
  v10 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemHeroButtonCardSection.number.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFFactItemHeroButtonCardSection.number.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B93584D4()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = v0(v8);
  OUTLINED_FUNCTION_463_1(v9);
  OUTLINED_FUNCTION_1189();
  v10 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemHeroButtonCardSection.text1.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFFactItemHeroButtonCardSection.text1.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFFactItemHeroButtonCardSection.button.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(v9) + 28);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFFactItemHeroButtonCardSection.button.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFFactItemHeroButtonCardSection.button.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFFactItemHeroButtonCardSection(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9358AF4()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  v9 = *(v0(v8) + 32);
  OUTLINED_FUNCTION_77_7();
  v10 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemButtonCardSection.text1.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSummaryItemButtonCardSection.text1.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFSummaryItemButtonCardSection.button1.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v9) + 36);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemButtonCardSection.button1.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSummaryItemButtonCardSection.button1.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 36));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFSummaryItemButtonCardSection.button2.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v9) + 40);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemButtonCardSection.button2.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSummaryItemButtonCardSection.button2.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 40));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B935940C()
{
  OUTLINED_FUNCTION_79_4();
  v3 = OUTLINED_FUNCTION_690();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *((v1)(v9) + 44);
  OUTLINED_FUNCTION_77_7();
  v11 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v1 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (v0 != 1)
    {
      return sub_1B8D9207C(v2, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

void Searchfoundation_RFSummaryItemButtonCardSection.button3.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 44));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFSummaryItemButtonCardSection.text4.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v7) + 48);
  OUTLINED_FUNCTION_100_0();
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemButtonCardSection.text4.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSummaryItemButtonCardSection.text4.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 48));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9359998()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_103();
  v9 = *(v1(v8) + 48);
  OUTLINED_FUNCTION_225_0();
  sub_1B8D92024();
  v10 = v0(0);
  OUTLINED_FUNCTION_220_2(v10);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9359A5C()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v3 = *(v2(v1) + 48);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Searchfoundation_RFSummaryItemButtonCardSection.thumbnail.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v7) + 52);
  OUTLINED_FUNCTION_100_0();
  v9 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_29_14(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemButtonCardSection.thumbnail.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 52), &qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_13_28();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFSummaryItemButtonCardSection.thumbnail.modify()
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
  v9 = type metadata accessor for Searchfoundation_RFVisualProperty(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 52));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_657(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9359D08()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_189_3();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC708, &unk_1B96D92F0);
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t sub_1B9359E18()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_103();
  v9 = *(v1(v8) + 52);
  OUTLINED_FUNCTION_225_0();
  sub_1B8D92024();
  v10 = v0(0);
  OUTLINED_FUNCTION_220_2(v10);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9359EDC()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v3 = *(v2(v1) + 52);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v4, v5, v6);
  v0(0);
  v7 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Searchfoundation_RFSummaryItemButtonCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFSummaryItemButtonCardSection(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.number1.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.number1.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.number1.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasNumber1.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearNumber1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.number2.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.number2.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.number2.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasNumber2.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearNumber2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text1.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text1.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.text1.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasText1.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearText1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text2.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text2.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.text2.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasText2.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearText2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text3.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text3.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.text3.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasText3.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearText3()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text4.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text4.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.text4.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasText4.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearText4()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void sub_1B935BA14(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_RFSummaryItemPairNumberCardSection.text5.setter();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text5.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_RFSummaryItemPairNumberCardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.thumbnail1.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.thumbnail1.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_13_28();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.thumbnail1.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFVisualProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasThumbnail1.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearThumbnail1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.thumbnail2.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.thumbnail2.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_13_28();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFVisualProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.thumbnail2.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFVisualProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC708, &unk_1B96D92F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_28();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasThumbnail2.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearThumbnail2()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC708, &unk_1B96D92F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFVisualProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text6.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text6.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.text6.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasText6.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearText6()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text7.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text7.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.text7.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasText7.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearText7()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.button1.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.button1.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  OUTLINED_FUNCTION_401_1();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.button1.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_170_4(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasButton1.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearButton1()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  OUTLINED_FUNCTION_401_1();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text8.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text8.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.text8.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasText8.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearText8()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text9.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text9.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.text9.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasText9.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearText9()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text10.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_465_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.text10.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_913(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_3_58();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RFTextProperty(0);
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RFSummaryItemPairNumberCardSection.text10.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  v9 = type metadata accessor for Searchfoundation_RFTextProperty(v8);
  OUTLINED_FUNCTION_135_0(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_170_4(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_488_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8DF8, &qword_1B96B9A80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_58();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RFSummaryItemPairNumberCardSection.hasText10.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_392_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RFSummaryItemPairNumberCardSection.clearText10()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DF8, &qword_1B96B9A80);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = OUTLINED_FUNCTION_912(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_487_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9436C04(v9);
    OUTLINED_FUNCTION_157_2(v10);
  }

  v11 = type metadata accessor for Searchfoundation_RFTextProperty(0);
  OUTLINED_FUNCTION_274_1(v11);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RFReferenceItemButtonCardSection.button1.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection(v9);
  OUTLINED_FUNCTION_436_1(v10);
  v11 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFReferenceItemButtonCardSection.button1.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFReferenceItemButtonCardSection.button1.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFReferenceItemButtonCardSection(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFButtonCardSection.button.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Searchfoundation_RFButtonCardSection(v9);
  OUTLINED_FUNCTION_436_1(v10);
  v11 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFButtonCardSection.button.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFButtonCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFButtonCardSection.button.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFButtonCardSection(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFBinaryButtonCardSection.primaryButton.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(v9);
  OUTLINED_FUNCTION_436_1(v10);
  v11 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFBinaryButtonCardSection.primaryButton.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFBinaryButtonCardSection.primaryButton.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFBinaryButtonCardSection.secondaryButton.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10 = *(type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(v9) + 24);
  OUTLINED_FUNCTION_100_0();
  v11 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_29_14(v11);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RFBinaryButtonCardSection.secondaryButton.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBACC580, &qword_1B96B98B8);
  OUTLINED_FUNCTION_6_35();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RFBinaryButtonCardSection.secondaryButton.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_ButtonItem(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RFBinaryButtonCardSection(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_1EBAB5438 != -1)
    {
      OUTLINED_FUNCTION_58_12();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC580, &qword_1B96B98B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_35();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RFMultiButtonCardSection.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_RFMultiButtonCardSection(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

void sub_1B935EC04(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_RichTitleCardSection.punchoutOptions.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.punchoutOptions.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_231_5(v3);
  OUTLINED_FUNCTION_1031();

  return OUTLINED_FUNCTION_514();
}

void sub_1B935ED28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.punchoutPickerTitle.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.punchoutPickerTitle.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_1009();

  return OUTLINED_FUNCTION_514();
}

void sub_1B935EE64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.punchoutPickerDismissText.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.punchoutPickerDismissText.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_1008();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_RichTitleCardSection.canBeHidden.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_234_5(v3);
  OUTLINED_FUNCTION_1007();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_RichTitleCardSection.hasTopPadding_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_232_2(v3);
  OUTLINED_FUNCTION_1006();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_RichTitleCardSection.hasBottomPadding_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_233_1(v3);
  OUTLINED_FUNCTION_1005();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B935F234(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.type.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.type.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_1004();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_RichTitleCardSection.separatorStyle.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_227_1(v3);
  OUTLINED_FUNCTION_337_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_RichTitleCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_646_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RichTitleCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B944020C(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Color(0);
  v12 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RichTitleCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_Color(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_646_1(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v0 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RichTitleCardSection.hasBackgroundColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_646_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RichTitleCardSection.clearBackgroundColor()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B944020C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void sub_1B935F914(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.title.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.title.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B935FA6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.subtitle.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.subtitle.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B935FBC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.contentAdvisory.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.contentAdvisory.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_RichTitleCardSection.titleImage.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_646_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RichTitleCardSection.titleImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B944020C(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Image(0);
  v12 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RichTitleCardSection.titleImage.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_Image(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_646_1(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v0 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RichTitleCardSection.hasTitleImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_646_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RichTitleCardSection.clearTitleImage()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B944020C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RichTitleCardSection.isCentered.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B93602DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.descriptionText.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.descriptionText.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

float Searchfoundation_RichTitleCardSection.rating.getter()
{
  v0 = type metadata accessor for Searchfoundation_RichTitleCardSection(0);
  OUTLINED_FUNCTION_1372(v0);
  v2 = v1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__rating;
  OUTLINED_FUNCTION_6_2();
  return *v2;
}

uint64_t Searchfoundation_RichTitleCardSection.rating.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Searchfoundation_RichTitleCardSection(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B944020C(v8);
    *(v2 + v4) = v7;
  }

  v9 = (v7 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__rating);
  result = OUTLINED_FUNCTION_214_2();
  *v9 = a1;
  return result;
}

uint64_t Searchfoundation_RichTitleCardSection.rating.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Searchfoundation_RichTitleCardSection(v4);
  OUTLINED_FUNCTION_264_1(v5);
  OUTLINED_FUNCTION_41();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9360540(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
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
    OUTLINED_FUNCTION_669_1();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B944020C(v11);
    *(v10 + v9) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__rating);
  OUTLINED_FUNCTION_211_0();
  *v12 = v3;

  free(v1);
}

void sub_1B9360610(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.ratingText.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.ratingText.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_RichTitleCardSection.reviewGlyph.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_646_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RichTitleCardSection.reviewGlyph.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B944020C(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Image(0);
  v12 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RichTitleCardSection.reviewGlyph.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_Image(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_646_1(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v0 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RichTitleCardSection.hasReviewGlyph.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_646_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RichTitleCardSection.clearReviewGlyph()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B944020C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void sub_1B9360C28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.reviewText.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.reviewText.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_RichTitleCardSection.reviewNewLine.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9360E80(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_RichTitleCardSection.moreGlyphs.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.moreGlyphs.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9360FC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.auxiliaryTopText.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.auxiliaryTopText.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9361120(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.auxiliaryMiddleText.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.auxiliaryMiddleText.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9361278(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.auxiliaryBottomText.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.auxiliaryBottomText.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_RichTitleCardSection.auxiliaryBottomTextColor.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_RichTitleCardSection.auxiliaryAlignment.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Searchfoundation_RichTitleCardSection(v4);
  OUTLINED_FUNCTION_21_8(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__auxiliaryAlignment;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v0 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_RichTitleCardSection.hideVerticalDivider.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_RichTitleCardSection.titleAlign.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9361748()
{
  v2 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_646_1(v2);
  v3 = *v0;
  OUTLINED_FUNCTION_10_4();
  return *(v1 + v3);
}

void sub_1B9361790()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_313();
  v6 = type metadata accessor for Searchfoundation_RichTitleCardSection(v5);
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = *(v1 + v2);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B944020C(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v8 + v4) = v0;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_RichTitleCardSection.titleWeight.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_6_11(v3);
  v5 = type metadata accessor for Searchfoundation_RichTitleCardSection(v4);
  OUTLINED_FUNCTION_21_8(v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_RichTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleWeight;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v0 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9361868()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_238(v3);
  v5 = *(v4 + 80);
  v6 = *(v0 + 84);
  v7 = *(v0 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 84);
    v12 = *(v0 + 72);
    OUTLINED_FUNCTION_669_1();
    v13 = OUTLINED_FUNCTION_40_0();
    v14 = sub_1B944020C(v13);
    OUTLINED_FUNCTION_73_2(v14);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v10 + v2) = v5;
  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t Searchfoundation_RichTitleCardSection.titleNoWrap.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_RichTitleCardSection.thumbnailCropCircle.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_RichTitleCardSection.imageOverlay.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_646_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RichTitleCardSection.imageOverlay.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B944020C(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Image(0);
  v12 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RichTitleCardSection.imageOverlay.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_Image(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_646_1(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v0 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RichTitleCardSection.hasImageOverlay.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_646_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RichTitleCardSection.clearImageOverlay()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B944020C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RichTitleCardSection.playAction.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_646_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_ActionItem(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB7DB0 != -1)
    {
      OUTLINED_FUNCTION_27_14();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAFA8, &qword_1B96B9880);
    }
  }

  else
  {
    OUTLINED_FUNCTION_145_7();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RichTitleCardSection.playAction.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B944020C(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_145_7();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_ActionItem(0);
  v12 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RichTitleCardSection.playAction.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_ActionItem(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_646_1(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v0 + 20);
    if (qword_1EBAB7DB0 != -1)
    {
      OUTLINED_FUNCTION_27_14();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACAFA8, &qword_1B96B9880);
    }
  }

  else
  {
    OUTLINED_FUNCTION_145_7();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RichTitleCardSection.hasPlayAction.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_646_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_ActionItem(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RichTitleCardSection.clearPlayAction()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B944020C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_ActionItem(0);
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RichTitleCardSection.playActionAlign.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B93625A4(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_RichTitleCardSection.offers.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.offers.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B93626EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_RichTitleCardSection.footnote.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.footnote.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_119_5(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9362824()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_58_0(v8);
  if (v10)
  {
    v11 = v9;
    OUTLINED_FUNCTION_191();
    v12 = OUTLINED_FUNCTION_461();
    v11(v12);
    v13 = *(v0 + 56);
  }

  else
  {
    OUTLINED_FUNCTION_236_2();
    v14 = OUTLINED_FUNCTION_1386();
    v15 = *(v7 + v1);
    if ((v14 & 1) == 0)
    {
      v16 = *(v0 + 72);
      v17 = *(v0 + 64);
      v18 = v6(0);
      OUTLINED_FUNCTION_57_0(v18);
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_40_0();
      v20 = v5(v19);
      OUTLINED_FUNCTION_529_0(v20);
    }

    v21 = (v15 + *v4);
    OUTLINED_FUNCTION_211_0();
    v22 = v21[1];
    *v21 = v3;
    v21[1] = v2;
  }

  OUTLINED_FUNCTION_283();

  free(v23);
}

uint64_t Searchfoundation_RichTitleCardSection.richSubtitle.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B944020C(v10);
    OUTLINED_FUNCTION_135(v11);
  }

  OUTLINED_FUNCTION_8_37();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RichText();
  v12 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_RichTitleCardSection.richSubtitle.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_71(v7);
  v8 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_135_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  OUTLINED_FUNCTION_646_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_846_0();
    type metadata accessor for Searchfoundation_Text();
    v15 = OUTLINED_FUNCTION_87_5();
    v19 = OUTLINED_FUNCTION_478_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Searchfoundation_GraphicalFloat(v19);
    OUTLINED_FUNCTION_6_19(v20);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_37();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_RichTitleCardSection.hasRichSubtitle.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_646_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_RichTitleCardSection.clearRichSubtitle()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_RichTitleCardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_669_1();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B944020C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_274_1(v12);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_RichTitleCardSection.subtitleIsEmphasized.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9362DC8(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_RichTitleCardSection.buttonItems.setter();
}

uint64_t Searchfoundation_RichTitleCardSection.buttonItems.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_RichTitleCardSection(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9362EF0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238(v3);
  v7 = *(v6 + 48);
  if (v8)
  {
    v9 = v5;
    v10 = OUTLINED_FUNCTION_61_1();
    v9(v10);
    v11 = *(v0 + 48);
  }

  else
  {
    v12 = v4;
    OUTLINED_FUNCTION_134_2();
    v13 = *(v0 + 64);
    v14 = *(v0 + 56);
    v15 = *(v14 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = *(v0 + 64);
      v19 = *(v0 + 56);
      v20 = v2(0);
      OUTLINED_FUNCTION_57_0(v20);
      swift_allocObject();
      v21 = OUTLINED_FUNCTION_40_0();
      v22 = v1(v21);
      OUTLINED_FUNCTION_228_1(v22);
    }

    v23 = *v12;
    OUTLINED_FUNCTION_59_3();
    v24 = *(v17 + v23);
    *(v17 + v23) = v7;
  }

  OUTLINED_FUNCTION_242();

  free(v25);
}

void sub_1B9362FF0(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_AttributionFooterCardSection.punchoutOptions.setter();
}

uint64_t Searchfoundation_AttributionFooterCardSection.punchoutOptions.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v2);
  OUTLINED_FUNCTION_231_5(v3);
  OUTLINED_FUNCTION_1031();

  return OUTLINED_FUNCTION_514();
}

void sub_1B93630FC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238(v3);
  v6 = *(v5 + 48);
  if (v7)
  {
    v8 = v4;
    v9 = OUTLINED_FUNCTION_61_1();
    v8(v9);
    v10 = *(v0 + 48);
  }

  else
  {
    OUTLINED_FUNCTION_451_0();
    v11 = *(v0 + 64);
    v12 = *(v0 + 56);
    v13 = *(v12 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v0 + 64);
      v17 = *(v0 + 56);
      v18 = v2(0);
      OUTLINED_FUNCTION_57_0(v18);
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_40_0();
      v20 = v1(v19);
      OUTLINED_FUNCTION_73_2(v20);
    }

    OUTLINED_FUNCTION_59_3();
    v21 = *(v15 + 16);
    *(v15 + 16) = v6;
  }

  OUTLINED_FUNCTION_242();

  free(v22);
}

void sub_1B93631D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_AttributionFooterCardSection.punchoutPickerTitle.setter();
}

uint64_t Searchfoundation_AttributionFooterCardSection.punchoutPickerTitle.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v2);
  OUTLINED_FUNCTION_229_2(v3);
  OUTLINED_FUNCTION_1009();

  return OUTLINED_FUNCTION_514();
}

void sub_1B93632F4()
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
    v17 = *(v12 + 32);
    *(v12 + 24) = v3;
    *(v12 + 32) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

void sub_1B93633B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_AttributionFooterCardSection.punchoutPickerDismissText.setter();
}

uint64_t Searchfoundation_AttributionFooterCardSection.punchoutPickerDismissText.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v2);
  OUTLINED_FUNCTION_228_2(v3);
  OUTLINED_FUNCTION_1008();

  return OUTLINED_FUNCTION_514();
}

void sub_1B93634D0()
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
    v17 = *(v12 + 48);
    *(v12 + 40) = v3;
    *(v12 + 48) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

uint64_t Searchfoundation_AttributionFooterCardSection.canBeHidden.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v2);
  OUTLINED_FUNCTION_234_5(v3);
  OUTLINED_FUNCTION_1007();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_AttributionFooterCardSection.hasTopPadding_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v2);
  OUTLINED_FUNCTION_232_2(v3);
  OUTLINED_FUNCTION_1006();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_AttributionFooterCardSection.hasBottomPadding_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v2);
  OUTLINED_FUNCTION_233_1(v3);
  OUTLINED_FUNCTION_1005();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9363820(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_AttributionFooterCardSection.type.setter();
}

uint64_t Searchfoundation_AttributionFooterCardSection.type.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v2);
  OUTLINED_FUNCTION_230_3(v3);
  OUTLINED_FUNCTION_1004();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9363940()
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
    v17 = *(v12 + 72);
    *(v12 + 64) = v3;
    *(v12 + 72) = v2;
  }

  OUTLINED_FUNCTION_242();

  free(v18);
}

uint64_t sub_1B9363A40(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  OUTLINED_FUNCTION_94_4();
  return v3(&v5);
}

uint64_t Searchfoundation_AttributionFooterCardSection.separatorStyle.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v2);
  OUTLINED_FUNCTION_227_1(v3);
  OUTLINED_FUNCTION_337_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_AttributionFooterCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_660_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_AttributionFooterCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_AttributionFooterCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94466F0(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Color(0);
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_AttributionFooterCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  v10 = type metadata accessor for Searchfoundation_Color(v9);
  OUTLINED_FUNCTION_135_0(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_660_1(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = *(v0 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_AttributionFooterCardSection.hasBackgroundColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_660_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_AttributionFooterCardSection.clearBackgroundColor()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_AttributionFooterCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94466F0(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_AttributionFooterCardSection.leadingAttribution.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_AttributionFooterCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94466F0(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_8_37();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RichText();
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_AttributionFooterCardSection.leadingAttribution.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_71(v7);
  v8 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_135_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  OUTLINED_FUNCTION_660_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_846_0();
    type metadata accessor for Searchfoundation_Text();
    v15 = OUTLINED_FUNCTION_87_5();
    v19 = OUTLINED_FUNCTION_478_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Searchfoundation_GraphicalFloat(v19);
    OUTLINED_FUNCTION_6_19(v20);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_37();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_AttributionFooterCardSection.hasLeadingAttribution.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_660_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_AttributionFooterCardSection.clearLeadingAttribution()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_AttributionFooterCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94466F0(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_AttributionFooterCardSection.leadingAttributionPunchout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_660_1(v9);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for Searchfoundation_Punchout();
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    Searchfoundation_Punchout.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v11)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_15();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_AttributionFooterCardSection.leadingAttributionPunchout.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_AttributionFooterCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94466F0(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Punchout();
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_AttributionFooterCardSection.leadingAttributionPunchout.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_71(v7);
  v8 = type metadata accessor for Searchfoundation_Punchout();
  OUTLINED_FUNCTION_135_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  OUTLINED_FUNCTION_660_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_128_7();
    OUTLINED_FUNCTION_100_7(v15);
    v16 = OUTLINED_FUNCTION_1097();
    v17 = type metadata accessor for Searchfoundation_UserActivityData(v16);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_15();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_AttributionFooterCardSection.hasLeadingAttributionPunchout.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_660_1(v6);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v7 = type metadata accessor for Searchfoundation_Punchout();
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_AttributionFooterCardSection.clearLeadingAttributionPunchout()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v6);
  v8 = OUTLINED_FUNCTION_182_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_AttributionFooterCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94466F0(v11);
    OUTLINED_FUNCTION_157_2(v12);
  }

  v13 = type metadata accessor for Searchfoundation_Punchout();
  OUTLINED_FUNCTION_274_1(v13);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void sub_1B93648A4()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_31_2();
  v12 = v2(v11);
  OUTLINED_FUNCTION_642_0(v12);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_713_0();
  sub_1B8D92024();
  v13 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_60_11(v13);
  if (v14)
  {
    OUTLINED_FUNCTION_803_0();
    v15 = MEMORY[0x1E69E7CC0];
    *(v4 + 16) = MEMORY[0x1E69E7CC0];
    *(v4 + 24) = v15;
    OUTLINED_FUNCTION_1228();
    OUTLINED_FUNCTION_1175();
    v16 = type metadata accessor for Searchfoundation_Text();
    OUTLINED_FUNCTION_457_1(v16);
    v17 = OUTLINED_FUNCTION_1049();
    v18 = type metadata accessor for Searchfoundation_GraphicalFloat(v17);
    OUTLINED_FUNCTION_457_1(v18);
    OUTLINED_FUNCTION_19_17();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_221();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_AttributionFooterCardSection.trailingAttribution.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_31_2();
  v7 = type metadata accessor for Searchfoundation_AttributionFooterCardSection(v6);
  v8 = OUTLINED_FUNCTION_47(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for Searchfoundation_AttributionFooterCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v12 = sub_1B94466F0(v11);
    OUTLINED_FUNCTION_135(v12);
  }

  OUTLINED_FUNCTION_8_37();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_RichText();
  v13 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_AttributionFooterCardSection.trailingAttribution.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_71(v7);
  v8 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_135_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  OUTLINED_FUNCTION_660_1(v13);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_110_4();
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_846_0();
    type metadata accessor for Searchfoundation_Text();
    v15 = OUTLINED_FUNCTION_87_5();
    v19 = OUTLINED_FUNCTION_478_1(v15, v16, v17, v18);
    v20 = type metadata accessor for Searchfoundation_GraphicalFloat(v19);
    OUTLINED_FUNCTION_6_19(v20);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_37();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}