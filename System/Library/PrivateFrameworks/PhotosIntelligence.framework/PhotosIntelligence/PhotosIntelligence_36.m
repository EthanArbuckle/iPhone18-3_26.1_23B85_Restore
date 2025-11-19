uint64_t sub_1C720F7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_1_80();
  v10 = OUTLINED_FUNCTION_9_52();
  v11(v10);

  OUTLINED_FUNCTION_7_46();
  OUTLINED_FUNCTION_88_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1C720F854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();

  OUTLINED_FUNCTION_1_80();
  v10 = OUTLINED_FUNCTION_9_52();
  v11(v10);

  OUTLINED_FUNCTION_7_46();
  OUTLINED_FUNCTION_88_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1C720F8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();

  OUTLINED_FUNCTION_1_80();
  v10 = OUTLINED_FUNCTION_9_52();
  v11(v10);

  OUTLINED_FUNCTION_7_46();
  OUTLINED_FUNCTION_88_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1C720F954(uint64_t a1, uint64_t a2)
{
  v3[161] = v2;
  v3[160] = a2;
  v3[159] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C720F97C, 0, 0);
}

uint64_t sub_1C720F97C()
{
  v47 = v0;
  v2 = v0[160];
  v3 = *(v2 + 16);
  v4 = v2 + 40;
  if (v3)
  {
    while (1)
    {
      sub_1C75504FC();
      OUTLINED_FUNCTION_0_11();
      static MusicMood.musicMoodFromMoodName(_:)(v5);
      memcpy(v0 + 2, v0 + 18, 0x80uLL);
      if (sub_1C70808D8((v0 + 2)) != 1)
      {
        break;
      }

      v4 += 16;
      if (!--v3)
      {
        goto LABEL_4;
      }
    }

    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_46();
    }

    v19 = sub_1C754FF1C();
    __swift_project_value_buffer(v19, &dword_1EDD28D48);
    sub_1C75504FC();
    sub_1C7210498((v0 + 18), (v0 + 34));
    v20 = sub_1C754FEEC();
    sub_1C755117C();

    sub_1C7210508((v0 + 18));
    if (OUTLINED_FUNCTION_262_0())
    {
      swift_slowAlloc();
      v46[0] = OUTLINED_FUNCTION_41_20();
      *v1 = 136315394;
      v21 = OUTLINED_FUNCTION_0_11();
      v24 = sub_1C6F765A4(v21, v22, v23);

      *(v1 + 4) = v24;
      *(v1 + 12) = 2080;
      sub_1C75504FC();
      v25 = OUTLINED_FUNCTION_57_0();
      v28 = sub_1C6F765A4(v25, v26, v27);

      *(v1 + 14) = v28;
      OUTLINED_FUNCTION_88_1();
      _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v34 = v0[159];
    v35 = v0[161] + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_58_13();
    v36 = type metadata accessor for StoryMusicCurationDiagnostics();
    *(v35 + v36[14]) = 5;
    v37 = v0[4];
    v38 = (v35 + v36[12]);
    *v38 = v0[3];
    v38[1] = v37;
    sub_1C75504FC();

    memcpy(v46, v0 + 2, sizeof(v46));
    v39 = MusicMood.descriptionDetails.getter();
    OUTLINED_FUNCTION_28_21(v39, v40);
    OUTLINED_FUNCTION_20_18();
    v41 = (v35 + v36[35]);
    sub_1C6FB0600();
    OUTLINED_FUNCTION_54_18();
    OUTLINED_FUNCTION_48_17();
    *(v42 + 32) = 0xD000000000000027;
    *(v42 + 40) = 0x80000001C75A4C20;
    *v41 = v43;
    swift_endAccess();
    memcpy(v0 + 50, v0 + 2, 0x80uLL);
    CGRectMake(v44);
    memcpy(v34, v0 + 50, 0x80uLL);
    OUTLINED_FUNCTION_25();

    return v45();
  }

  else
  {
LABEL_4:
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_46();
    }

    v6 = sub_1C754FF1C();
    v0[162] = __swift_project_value_buffer(v6, &dword_1EDD28D48);
    v7 = sub_1C754FEEC();
    v8 = sub_1C755119C();
    if (OUTLINED_FUNCTION_21_0(v8))
    {
      v9 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v9);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v10, v11, "(Mood)(Pre-curated) No direct matching mood. Falling back to embeddings");
      OUTLINED_FUNCTION_23_3();
    }

    v12 = v0[161];
    v13 = v0[160];

    v0[158] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    v0[163] = sub_1C75505FC();
    v0[164] = v14;
    v15 = *(v12 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_storyMusicCache);
    type metadata accessor for MusicMoodRanker();
    OUTLINED_FUNCTION_137();
    v16 = v15;
    v17 = swift_task_alloc();
    v0[165] = v17;
    *v17 = v0;
    v17[1] = sub_1C720FDB8;
    OUTLINED_FUNCTION_17_42();

    return MusicMoodRanker.init(usingCache:)();
  }
}

uint64_t sub_1C720FDB8(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  v5[166] = a1;
  v5[167] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[168] = v12;
    *v12 = v7;
    v13 = OUTLINED_FUNCTION_29_23(v12);

    return sub_1C7178040(v13, v14);
  }
}

uint64_t sub_1C720FF20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1352) = v5;
  *(v3 + 1360) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C721002C()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C721008C()
{
  v48 = v0;
  v1 = *(v0 + 1352);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 1312);
    memcpy((v0 + 528), (v1 + 32), 0x80uLL);
    sub_1C709D4BC(v0 + 528, v0 + 656);

    v3 = *(v0 + 536);
    v4 = *(v0 + 544);
    sub_1C709D4BC(v0 + 528, v0 + 784);
    sub_1C75504FC();
    v5 = sub_1C754FEEC();
    sub_1C755117C();

    sub_1C713A098(v0 + 528);
    v6 = OUTLINED_FUNCTION_262_0();
    v7 = *(v0 + 1312);
    if (v6)
    {
      v8 = *(v0 + 1304);
      swift_slowAlloc();
      v47[0] = OUTLINED_FUNCTION_41_20();
      *v2 = 136315394;
      sub_1C6F765A4(v8, v7, v47);

      OUTLINED_FUNCTION_53_20();
      v9 = OUTLINED_FUNCTION_0_11();
      v12 = sub_1C6F765A4(v9, v10, v11);

      *(v2 + 14) = v12;
      OUTLINED_FUNCTION_88_1();
      _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v34 = *(v0 + 1272);
    v35 = *(v0 + 1288) + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_58_13();
    v36 = type metadata accessor for StoryMusicCurationDiagnostics();
    *(v35 + v36[14]) = 6;
    v37 = (v35 + v36[12]);
    *v37 = v3;
    v37[1] = v4;
    sub_1C75504FC();

    memcpy(v47, (v0 + 528), sizeof(v47));
    v38 = MusicMood.descriptionDetails.getter();
    OUTLINED_FUNCTION_28_21(v38, v39);
    OUTLINED_FUNCTION_20_18();
    v40 = v36[35];
    sub_1C6FB0600();
    v41 = *(*(v35 + v40) + 16);
    sub_1C6FB0EFC();
    v42 = *(v35 + v40);
    *(v42 + 16) = v41 + 1;
    v43 = v42 + 16 * v41;
    *(v43 + 32) = 0xD00000000000002DLL;
    *(v43 + 40) = 0x80000001C75A4C50;
    *(v35 + v40) = v42;
    swift_endAccess();

    memcpy((v0 + 912), (v0 + 528), 0x80uLL);
    CGRectMake(v44);
    v32 = (v0 + 912);
    v33 = v34;
  }

  else
  {

    sub_1C75504FC();
    v18 = sub_1C754FEEC();
    v19 = sub_1C755119C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 1280);
      v21 = OUTLINED_FUNCTION_41_0();
      v22 = OUTLINED_FUNCTION_20_1();
      v47[0] = v22;
      *v21 = 136315138;
      v23 = MEMORY[0x1CCA5D090](v20, MEMORY[0x1E69E6158]);
      v25 = sub_1C6F765A4(v23, v24, v47);

      *(v21 + 4) = v25;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_109();
    }

    v31 = *(v0 + 1272);
    sub_1C6FC0604((v0 + 1040));
    v32 = (v0 + 1040);
    v33 = v31;
  }

  memcpy(v33, v32, 0x80uLL);
  OUTLINED_FUNCTION_25();

  return v45();
}

uint64_t sub_1C7210438()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C7210498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7210508(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *OUTLINED_FUNCTION_40_22(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __dst)
{

  return memcpy(&__dst, (v10 + 24), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_42_22()
{
  v5 = (v2 + *(v3 + 48));
  *v5 = v0;
  v5[1] = v1;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_47_17()
{

  return type metadata accessor for MusicMoodRanker();
}

uint64_t OUTLINED_FUNCTION_53_20()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_54_18()
{

  sub_1C6FB0EFC();
}

void OUTLINED_FUNCTION_55_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_56_14()
{
}

uint64_t OUTLINED_FUNCTION_60_13()
{

  return sub_1C75515AC();
}

void *OUTLINED_FUNCTION_61_11(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  LOBYTE(v3) = 0;

  return static MusicMood.musicMoodFromMoodIdentifier(_:)(va, va1);
}

void OUTLINED_FUNCTION_62_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t sub_1C72106BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  v7 = a2 + 64;
  if (v6)
  {
    while (1)
    {
      v26 = v7;
      v27 = v6;
      v8 = *(v7 - 32);
      v9 = *(v7 - 24);
      v10 = *(v7 - 16);
      sub_1C75504FC();
      v11 = v10;
      sub_1C75504FC();
      sub_1C75504FC();
      v12 = sub_1C72136D0(v11, a4, a5);
      swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_1C6F78124(v8, v9);
      if (__OFADD__(a1[2], (v14 & 1) == 0))
      {
        break;
      }

      v15 = v13;
      v16 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0);
      if (sub_1C7551A2C())
      {
        v17 = sub_1C6F78124(v8, v9);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_14;
        }

        v15 = v17;
      }

      if (v16)
      {
        *(a1[7] + 8 * v15) = v12;
      }

      else
      {
        a1[(v15 >> 6) + 8] |= 1 << v15;
        v19 = (a1[6] + 16 * v15);
        *v19 = v8;
        v19[1] = v9;
        *(a1[7] + 8 * v15) = v12;
        v20 = a1[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_13;
        }

        a1[2] = v22;
      }

      v7 = v26 + 40;
      v6 = v27 - 1;
      if (v27 == 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
LABEL_11:

    return a1;
  }

  return result;
}

void sub_1C72108C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, double a9, double a10, char a11)
{
  v16 = sub_1C6FB6304();
  v17 = 0;
  v63 = OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_allQueryCharactersAssetUUIDs;
  v58 = OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_numberOfQueryCharacters;
  v59 = OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_promoteAssetsWithLocation;
  v72 = a1 & 0xFFFFFFFFFFFFFF8;
  v73 = a1 & 0xC000000000000001;
  v57 = a1;
  v71 = a1 + 32;
  v70 = MEMORY[0x1E69E7CC0];
  v62 = a3;
  v60 = v16;
  while (1)
  {
    if (v17 == v16)
    {

      return;
    }

    if (v73)
    {
      v18 = MEMORY[0x1CCA5DDD0](v17, v57);
    }

    else
    {
      if (v17 >= *(v72 + 16))
      {
        goto LABEL_54;
      }

      v18 = *(v71 + 8 * v17);
    }

    v19 = v18;
    if (__OFADD__(v17++, 1))
    {
      break;
    }

    v21 = sub_1C70CAC04(v18);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      if (a2)
      {
        if (*(a2 + 16))
        {
          sub_1C7551F3C();
          sub_1C75505AC();
          v25 = sub_1C7551FAC();
          v26 = ~(-1 << *(a2 + 32));
          while (1)
          {
            v27 = v25 & v26;
            if (((*(a2 + 56 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
            {
              break;
            }

            v28 = (*(a2 + 48) + 16 * v27);
            if (*v28 != v23 || v24 != v28[1])
            {
              v30 = sub_1C7551DBC();
              v25 = v27 + 1;
              if ((v30 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        v31 = sub_1C7009C30(v23, v24, *(a3 + v63));
        if (v31)
        {
          v32 = [v19 mediaAnalysisProperties];
          v33 = a3;
          v34 = [v32 faceCount];

          v35 = *(v33 + v58);
          v37 = v35 >= 0 && v34 == v35;
        }

        else
        {
          v37 = 0;
        }

        v38 = sub_1C7009C30(v23, v24, a4);
        v39 = sub_1C7009C30(v23, v24, a5);
        *a6 = (*a6 | v38) & 1;
        if (v39)
        {
          v40 = 4;
        }

        else
        {
          v40 = 3;
        }

        if (v38)
        {
          v40 = 2;
        }

        if ((v31 | v37))
        {
          v41 = !v37;
        }

        else
        {
          v41 = v40;
        }

        v42 = [v19 curationModel];
        v43 = [v42 isBadQualityForImageKeyAssetWithAsset:v19 statistics:a7];

        [v19 curationScore];
        if (a9 < 0.0)
        {
          goto LABEL_55;
        }

        v45 = v44;
        v68 = v43;
        v69 = v41;
        v74 = -a9;
        __swift_mutable_project_boxed_opaque_existential_0(a8, *(a8 + 24));
        sub_1C70AB55C();
        sub_1C70AB5B0();
        sub_1C755046C();
        v46 = v45 + v75;
        if (a10 > 0.0)
        {
          v46 = floor(v46 / a10) * a10;
        }

        a3 = v62;
        if (a11)
        {
          v47 = [v19 isVideo];
          v48 = &selRef_clsIsInterestingVideo;
          if (!v47)
          {
            v48 = &selRef_clsIsInterestingLivePhoto;
          }

          v49 = [v19 *v48];
        }

        else
        {
          v49 = 0;
        }

        if (*(v62 + v59) == 1)
        {
          [v19 locationCoordinate];
          v50 = CLLocationCoordinate2DIsValid(v76);
        }

        else
        {
          v50 = 0;
        }

        [v19 curationScore];
        v52 = v51;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB25D8();
          v70 = v55;
        }

        v53 = *(v70 + 16);
        if (v53 >= *(v70 + 24) >> 1)
        {
          sub_1C6FB25D8();
          v70 = v56;
        }

        *(v70 + 16) = v53 + 1;
        v54 = v70 + 48 * v53;
        *(v54 + 32) = v23;
        *(v54 + 40) = v24;
        *(v54 + 48) = v69;
        *(v54 + 49) = v68;
        *(v54 + 50) = LODWORD(v74);
        *(v54 + 54) = WORD2(v74);
        *(v54 + 56) = v46;
        *(v54 + 64) = v49;
        *(v54 + 65) = v50;
        *(v54 + 66) = LODWORD(v75);
        *(v54 + 70) = WORD2(v75);
        *(v54 + 72) = v52;
        v16 = v60;
      }
    }

    else
    {
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_1C7210DC8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C7219C9C(a1, sub_1C736F5A0, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C7210E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 304) = a5;
  *(v6 + 312) = v5;
  *(v6 + 288) = a3;
  *(v6 + 296) = a4;
  *(v6 + 280) = a2;
  *(v6 + 320) = type metadata accessor for QueryTokenCategoryType(0);
  *(v6 + 328) = swift_task_alloc();
  v8 = sub_1C754F38C();
  *(v6 + 336) = v8;
  *(v6 + 344) = *(v8 - 8);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = *a1;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  *(v6 + 376) = *(a1 + 24);
  *(v6 + 384) = v9;
  *(v6 + 392) = v10;
  v11 = *(a1 + 72);
  *(v6 + 400) = *(a1 + 56);
  *(v6 + 416) = v11;
  *(v6 + 432) = *(a1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1C7210FAC, 0, 0);
}

uint64_t sub_1C7210FAC()
{
  v146 = v0;
  v145[10] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  v2 = 0;
  sub_1C754F2CC();
  v3 = *(v0 + 384);
  v4 = *(v0 + 312);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  sub_1C75504FC();

  v7 = sub_1C72106BC(MEMORY[0x1E69E7CC8], v3, v4, v6, v5);
  v8 = *(v7 + 64);
  v145[0] = MEMORY[0x1E69E7CD0];
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & v8;
  v12 = (63 - v10) >> 6;
  sub_1C75504FC();
  v13 = 0;
  if (v11)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_98:
      OUTLINED_FUNCTION_62_13();
      OUTLINED_FUNCTION_65_16(v110, v111);

      sub_1C754F2EC();
      goto LABEL_122;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      do
      {
LABEL_9:
        v11 &= v11 - 1;
        v15 = sub_1C75504FC();
        sub_1C73978C4(v15);
      }

      while (v11);
      continue;
    }
  }

  v144 = v1;
  v16 = *(v0 + 312);

  v17 = v145[0];
  *(v0 + 272) = v145[0];
  v18 = OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_configuration;
  *(v0 + 448) = OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_configuration;
  v19 = v16 + v18;
  v20 = *(v16 + v18);
  v21 = *(v17 + 16);
  v22 = v20 - v21;
  if (v20 <= v21)
  {
    v29 = v7;
  }

  else
  {
    v142 = v19;
    v143 = 0;
    v13 = sub_1C72136D0(*(v0 + 408), *(v0 + 280), *(v0 + 288));
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v145[0] = v7;
    sub_1C6FC8264();
    v23 = 0;
    v24 = v7;
    for (i = (v13 + 40); *(v17 + 16) < v20; i += 2)
    {
      v26 = *(v13 + 16);
      if (v23 == v26)
      {
        break;
      }

      if (v23 >= v26)
      {
        __break(1u);
LABEL_122:
        v126 = *(v0 + 296);

        __swift_project_boxed_opaque_existential_1(v126, v126[3]);
        OUTLINED_FUNCTION_24_2();
        sub_1C754F1AC();
        v127 = OUTLINED_FUNCTION_23_28();
        v128(v127);

        OUTLINED_FUNCTION_44();

        __asm { BRAA            X2, X16 }
      }

      ++v23;
      v28 = *(i - 1);
      v27 = *i;
      sub_1C75504FC();
      sub_1C70F082C(v145, v28, v27);

      v17 = *(v0 + 272);
    }

    sub_1C75504FC();
    v30 = sub_1C754FEEC();
    v7 = sub_1C75511BC();
    if (os_log_type_enabled(v30, v7))
    {
      v31 = OUTLINED_FUNCTION_20_1();
      *v31 = 134218496;
      *(v31 + 4) = *(v17 + 16);
      *(v31 + 12) = 2048;
      *(v31 + 14) = v20;
      *(v31 + 22) = 2048;
      v32 = *(v13 + 16);

      if (v32 >= v22)
      {
        v33 = v22;
      }

      else
      {
        v33 = v32;
      }

      *(v31 + 24) = v33;

      _os_log_impl(&dword_1C6F5C000, v30, v7, "Not enough non-fallback assets (%ld < %ld, we will include %ld fallback assets", v31, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v29 = v24;
    v19 = v142;
    v2 = v143;
  }

  *(v0 + 456) = v29;
  *(v0 + 464) = v17;
  v34 = *(v0 + 304);
  sub_1C754F2DC();
  if (v2)
  {
    OUTLINED_FUNCTION_58_18();
    goto LABEL_45;
  }

  v35 = *(v0 + 328);
  v36 = *(v0 + 312);
  swift_storeEnumTagMultiPayload();
  v37 = v36 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements;
  *(swift_task_alloc() + 16) = v35;
  v13 = sub_1C707351C();
  v143 = 0;

  sub_1C721ABB0(v35, type metadata accessor for QueryTokenCategoryType);
  v7 = *(v19 + 40);
  v142 = v29;
  if ((v13 & 1) == 0 || !*(v7 + 16) || (sub_1C7551F3C(), sub_1C75505AC(), sub_1C7551FAC(), v13 = v7 + 56, OUTLINED_FUNCTION_9_2(), v40 = v39 & ~v38, ((*(v7 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0))
  {
LABEL_37:
    sub_1C75504FC();
    v42 = 0;
    goto LABEL_38;
  }

  v41 = ~v38;
  while (2)
  {
    switch(*(*(v7 + 48) + v40))
    {
      case 1:
        OUTLINED_FUNCTION_59_15();
        OUTLINED_FUNCTION_41_21();
        goto LABEL_35;
      case 2:

        goto LABEL_100;
      case 3:
        OUTLINED_FUNCTION_8_47();
        goto LABEL_35;
      case 4:
        OUTLINED_FUNCTION_0_107();
        goto LABEL_35;
      default:
LABEL_35:
        v19 = OUTLINED_FUNCTION_21_35();

        if ((v19 & 1) == 0)
        {
          v40 = (v40 + 1) & v41;
          if (((*(v13 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_37;
          }

          continue;
        }

LABEL_100:
        v112 = *(v7 + 32);
        v43 = v112 & 0x3F;
        v113 = ((1 << v112) + 63) >> 6;
        v19 = 8 * v113;
        v114 = sub_1C75504FC();
        v141 = v37;
        if (v43 > 0xD)
        {
          sub_1C75504FC();
          if (swift_stdlib_isStackAllocationSafe())
          {

            v29 = v142;
            goto LABEL_101;
          }

          v13 = swift_slowAlloc();

          v133 = OUTLINED_FUNCTION_34_20();
          v136 = sub_1C7219BF8(v133, v134, v7, v135, 0);
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          v143 = 0;
          v42 = 1;
          v7 = v136;
          v37 = v141;
          v29 = v142;
        }

        else
        {
LABEL_101:
          v137[1] = v137;
          MEMORY[0x1EEE9AC00](v114);
          v138 = v113;
          v139 = v137 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
          sub_1C71FAC38(0, v113, v139);
          v140 = 0;
          v115 = 0;
          v116 = 1 << *(v7 + 32);
          v117 = -1;
          if (v116 < 64)
          {
            v117 = ~(-1 << v116);
          }

          v118 = v117 & *(v7 + 56);
          v19 = (v116 + 63) >> 6;
          while (v118)
          {
            OUTLINED_FUNCTION_57_18();
            v118 &= v118 - 1;
LABEL_111:
            v37 = v119 | (v115 << 6);
            switch(*(*(v7 + 48) + v37))
            {
              case 1:
                OUTLINED_FUNCTION_41_21();
                break;
              case 2:

                v29 = v142;
                continue;
              case 3:
                OUTLINED_FUNCTION_24_26();
                break;
              case 4:
                OUTLINED_FUNCTION_2_73();
                break;
              default:
                break;
            }

            v43 = OUTLINED_FUNCTION_21_35();

            v29 = v142;
            if ((v43 & 1) == 0)
            {
              OUTLINED_FUNCTION_44_10();
              OUTLINED_FUNCTION_18_27(v123);
              if (__OFADD__(v140++, 1))
              {
                __break(1u);
                goto LABEL_120;
              }
            }
          }

          v120 = v115;
          v37 = v141;
          while (1)
          {
            v115 = v120 + 1;
            if (__OFADD__(v120, 1))
            {
              goto LABEL_129;
            }

            if (v115 >= v19)
            {
              break;
            }

            ++v120;
            if (*(v13 + 8 * v115))
            {
              OUTLINED_FUNCTION_78_0();
              v118 = v122 & v121;
              goto LABEL_111;
            }
          }

LABEL_120:
          sub_1C71FFBFC();
          v7 = v125;
          v42 = 1;
        }

LABEL_38:
        v43 = *(v0 + 312);
        memcpy((v0 + 96), (v37 + 216), 0x50uLL);
        memcpy(v145, (v37 + 216), 0x50uLL);
        sub_1C7027A20(v0 + 96, v0 + 176);
        sub_1C75504FC();
        v44 = sub_1C7213A5C(v7, v145, v17);

        memcpy((v0 + 16), v145, 0x50uLL);
        sub_1C7027A58(v0 + 16);
        if (v42)
        {
          sub_1C721409C(*(v0 + 384));
          OUTLINED_FUNCTION_51();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_130;
          }

          goto LABEL_40;
        }

LABEL_43:
        *(v0 + 472) = v44;
        v34 = *(v0 + 304);
        v48 = v143;
        sub_1C754F2DC();
        if (v48)
        {
          OUTLINED_FUNCTION_58_18();

LABEL_45:

          __swift_project_boxed_opaque_existential_1(v34, v144[3]);
          OUTLINED_FUNCTION_34_20();
          sub_1C754F1AC();
          (*(v29 + 8))(v13, v7);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v49 + 8))(v19);

          OUTLINED_FUNCTION_44();

          __asm { BRAA            X1, X16 }
        }

        v52 = *(v0 + 432);
        v13 = *(v0 + 440);
        v140 = v44;
        v139 = sub_1C72142A0(v44);
        *(v0 + 480) = v139;
        if (v52 && v13)
        {
          goto LABEL_55;
        }

        if (qword_1EDD09438 != -1)
        {
          OUTLINED_FUNCTION_3_69();
        }

        v53 = sub_1C754FF1C();
        __swift_project_value_buffer(v53, qword_1EDD09440);
        v54 = sub_1C754FEEC();
        v55 = sub_1C755119C();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_1C6F5C000, v54, v55, "Chapter is not fully ready for curation, requiredAssets and/or forbiddenAssets are nil", v56, 2u);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        if (v52)
        {
LABEL_55:
          v141 = v13;
          v43 = *(v0 + 432);
          v57 = sub_1C6FB6304();
          v29 = 0;
          v13 = v43 & 0xC000000000000001;
          v143 = MEMORY[0x1E69E7CC0];
          while (v57 != v29)
          {
            if (v13)
            {
              v58 = MEMORY[0x1CCA5DDD0](v29, v43);
            }

            else
            {
              if (v29 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_126;
              }

              v58 = *(v43 + 8 * v29 + 32);
            }

            v59 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              __break(1u);
LABEL_126:
              __break(1u);
LABEL_127:
              __break(1u);
LABEL_128:
              __break(1u);
LABEL_129:
              __break(1u);
LABEL_130:
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB2608();
              v44 = v131;
LABEL_40:
              v46 = *(v44 + 16);
              v45 = *(v44 + 24);
              v7 = v46 + 1;
              if (v46 >= v45 >> 1)
              {
                OUTLINED_FUNCTION_15(v45);
                sub_1C6FB2608();
                v44 = v132;
              }

              *(v44 + 16) = v7;
              v47 = v44 + 16 * v46;
              *(v47 + 32) = 2;
              *(v47 + 40) = v43;
              goto LABEL_43;
            }

            v19 = v58;
            v60 = [v19 uuid];
            if (v60)
            {
              v61 = v60;
              v138 = sub_1C755068C();
              v63 = v62;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB1814();
                v143 = v68;
              }

              v65 = *(v143 + 16);
              v64 = *(v143 + 24);
              v19 = v65 + 1;
              if (v65 >= v64 >> 1)
              {
                OUTLINED_FUNCTION_15(v64);
                sub_1C6FB1814();
                v143 = v69;
              }

              v66 = v143;
              *(v143 + 16) = v19;
              v67 = v66 + 16 * v65;
              *(v67 + 32) = v138;
              *(v67 + 40) = v63;
              v29 = v59;
            }

            else
            {

              ++v29;
            }
          }

          v70 = v143;
          v13 = v141;
        }

        else
        {
          v70 = MEMORY[0x1E69E7CC0];
        }

        *(v0 + 488) = v70;
        v143 = v70;
        if (v13)
        {
          v43 = *(v0 + 440);
          v71 = sub_1C6FB6304();
          v72 = 0;
          v29 = v43 & 0xC000000000000001;
          v141 = MEMORY[0x1E69E7CC0];
          while (v71 != v72)
          {
            if (v29)
            {
              v73 = MEMORY[0x1CCA5DDD0](v72, v43);
            }

            else
            {
              if (v72 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_128;
              }

              v73 = *(v43 + 8 * v72 + 32);
            }

            v74 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
              goto LABEL_127;
            }

            v19 = v73;
            v75 = [v19 uuid];
            if (v75)
            {
              v76 = v75;
              v77 = sub_1C755068C();
              v138 = v78;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB1814();
                v141 = v83;
              }

              v13 = *(v141 + 16);
              v79 = *(v141 + 24);
              v19 = v13 + 1;
              if (v13 >= v79 >> 1)
              {
                OUTLINED_FUNCTION_15(v79);
                sub_1C6FB1814();
                v141 = v84;
              }

              v80 = v141;
              *(v141 + 16) = v19;
              v81 = v80 + 16 * v13;
              v82 = v138;
              *(v81 + 32) = v77;
              *(v81 + 40) = v82;
              v72 = v74;
            }

            else
            {

              ++v72;
            }
          }

          v85 = v141;
        }

        else
        {
          v85 = MEMORY[0x1E69E7CC0];
        }

        *(v0 + 496) = v85;
        sub_1C754F2DC();
        if (*(*(v0 + 312) + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_performDeduping) != 1)
        {

          if (qword_1EDD09438 != -1)
          {
            OUTLINED_FUNCTION_3_69();
          }

          v98 = *(v0 + 440);
          v143 = *(v0 + 432);
          v144 = v98;
          v99 = *(v0 + 408);
          v141 = *(v0 + 400);
          v100 = sub_1C754FF1C();
          __swift_project_value_buffer(v100, qword_1EDD09440);
          OUTLINED_FUNCTION_51();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v101 = v99;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v102 = sub_1C754FEEC();
          v103 = sub_1C75511BC();

          v104 = v102;

          if (os_log_type_enabled(v102, v103))
          {
            v106 = *(v0 + 360);
            v105 = *(v0 + 368);
            v107 = OUTLINED_FUNCTION_41_0();
            v108 = OUTLINED_FUNCTION_20_1();
            v145[0] = v108;
            *v107 = 136315138;
            sub_1C75504FC();
            v109 = sub_1C6F765A4(v106, v105, v145);

            *(v107 + 4) = v109;
            _os_log_impl(&dword_1C6F5C000, v104, v103, "No further deduping to perform for chapter %s", v107, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v108);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          sub_1C754F2DC();
          goto LABEL_98;
        }

        sub_1C75504FC();
        sub_1C74C3924();
        v87 = v86;
        v88 = sub_1C75504FC();
        v89 = sub_1C70739AC(v88, v87);
        *(v0 + 504) = sub_1C71CD85C(v89);
        v90 = sub_1C75504FC();
        *(v0 + 512) = sub_1C71CD85C(v90);
        sub_1C75504FC();
        v91 = swift_task_alloc();
        *(v0 + 520) = v91;
        *v91 = v0;
        v91[1] = sub_1C7212260;
        OUTLINED_FUNCTION_44();

        return static StoryGenerationUtilities.memoriesDedupedAssetUUIDs(from:in:eligibleAssetUUIDs:requiredAssetUUIDs:)(v92, v93, v94, v95);
    }
  }
}

uint64_t sub_1C7212260(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    swift_bridgeObjectRelease_n();

    v4 = sub_1C7212B84;
  }

  else
  {

    v4 = sub_1C7212448;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C7212448()
{
  v65 = v0;
  v64[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDD09438 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v61 = v0 + 256;
    v63 = v0;
    v1 = *(v0 + 408);
    v2 = v63[48];
    v3 = v63[47];
    v4 = sub_1C754FF1C();
    __swift_project_value_buffer(v4, qword_1EDD09440);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v5 = v1;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v6 = sub_1C754FEEC();
    v7 = sub_1C75511BC();

    v8 = v63;

    v9 = os_log_type_enabled(v6, v7);
    v10 = v63[66];
    if (v9)
    {
      v11 = v63[58];
      v12 = v63[46];
      v13 = v63[45];
      v14 = v7;
      v15 = OUTLINED_FUNCTION_20_1();
      v16 = OUTLINED_FUNCTION_20_1();
      v64[0] = v16;
      *v15 = 136315650;
      sub_1C75504FC();
      v17 = sub_1C6F765A4(v13, v12, v64);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2048;
      v18 = *(v11 + 16);
      v8 = v63;
      *(v15 + 14) = v18;
      *(v15 + 22) = 2048;
      *(v15 + 24) = *(v10 + 16);

      _os_log_impl(&dword_1C6F5C000, v6, v14, "Deduping chapter %s assets strongly, %ld -> %ld", v15, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v19 = v8[57];
    v22 = *(v19 + 64);
    v21 = v19 + 64;
    v20 = v22;
    v23 = -1;
    v24 = -1 << *(v8[57] + 32);
    if (-v24 < 64)
    {
      v23 = ~(-1 << -v24);
    }

    v25 = v23 & v20;
    v26 = (63 - v24) >> 6;
    v27 = v8[67];
    v56 = v8[57];
    swift_bridgeObjectRetain_n();
    v28 = 0;
    v29 = MEMORY[0x1E69E7CC8];
    v54 = v26;
    v55 = v21;
    if (!v25)
    {
      break;
    }

LABEL_8:
    v58 = v29;
    v0 = v28;
LABEL_13:
    v57 = (v25 - 1) & v25;
    v30 = *(*(v56 + 56) + 8 * (__clz(__rbit64(v25)) | (v0 << 6)));
    v2 = *(v30 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v31 = 0;
    v32 = v30 + 40;
    v59 = MEMORY[0x1E69E7CC0];
LABEL_14:
    for (i = (v32 + 16 * v31); ; i += 2)
    {
      if (v2 == v31)
      {

        swift_isUniquelyReferenced_nonNull_native();
        v64[0] = v58;
        sub_1C6FC8264();
        swift_bridgeObjectRelease_n();

        v29 = v64[0];
        v28 = v0;
        v26 = v54;
        v21 = v55;
        v25 = v57;
        if (!v57)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if (v31 >= *(v30 + 16))
      {
        break;
      }

      v34 = *(i - 1);
      v3 = *i;
      v63[32] = v34;
      v63[33] = v3;
      *(swift_task_alloc() + 16) = v61;
      sub_1C75504FC();
      v35 = sub_1C70735F4();

      if (v35)
      {
        v36 = v59;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64[0] = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_16_34();
          sub_1C6F7ED9C();
          v36 = v64[0];
        }

        v39 = *(v36 + 16);
        v38 = *(v36 + 24);
        if (v39 >= v38 >> 1)
        {
          OUTLINED_FUNCTION_15(v38);
          OUTLINED_FUNCTION_146();
          sub_1C6F7ED9C();
          v36 = v64[0];
        }

        ++v31;
        *(v36 + 16) = v39 + 1;
        v59 = v36;
        v40 = v36 + 16 * v39;
        *(v40 + 32) = v34;
        *(v40 + 40) = v3;
        v32 = v30 + 40;
        goto LABEL_14;
      }

      ++v31;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    OUTLINED_FUNCTION_3_69();
  }

  while (1)
  {
LABEL_9:
    v0 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_36;
    }

    if (v0 >= v26)
    {
      break;
    }

    v25 = *(v21 + 8 * v0);
    ++v28;
    if (v25)
    {
      v58 = v29;
      goto LABEL_13;
    }
  }

  v41 = v63[57];

  swift_bridgeObjectRelease_n();

  sub_1C754F2DC();
  if (v27)
  {
    OUTLINED_FUNCTION_63_14();
    v60 = v43;
    v62 = v42;

    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    OUTLINED_FUNCTION_51();
    sub_1C754F1AC();
    (*(v2 + 8))(v41, v60);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v44 + 8))(v62);

    v48 = v63[1];

    return v48();
  }

  else
  {
    OUTLINED_FUNCTION_62_13();
    v47 = OUTLINED_FUNCTION_65_16(v45, v46);

    sub_1C754F2EC();
    v50 = v63[37];

    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    OUTLINED_FUNCTION_24_2();
    sub_1C754F1AC();
    v51 = OUTLINED_FUNCTION_23_28();
    v52(v51);

    v53 = v63[1];

    return v53(v47);
  }
}

uint64_t sub_1C7212B84()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[37];
  v5 = v0[38];

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_24_2();
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1C7212CF0()
{
  sub_1C7551B2C();
  OUTLINED_FUNCTION_24_2();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C7212D38(char a1)
{
  result = 0x6574636172616843;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_41_21();
      break;
    case 2:
      v3 = 1701669204;
      goto LABEL_6;
    case 3:
      v3 = OUTLINED_FUNCTION_24_26();
LABEL_6:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 4:
      result = OUTLINED_FUNCTION_2_73();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7212E08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C7212CF0();
  *a1 = result;
  return result;
}

uint64_t sub_1C7212E38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C7212D38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1C7212E74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a1)
  {
    v43 = a1;
    v24 = [v43 integerValue];
    v25 = MEMORY[0x1E69E7CD0];
    if (v24)
    {
      OUTLINED_FUNCTION_46_19();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_5_52();
      if ((*(v25 + v27 + 56) >> v22))
      {
        v28 = ~v26;
        while (2)
        {
          OUTLINED_FUNCTION_61_12();
          switch(v29)
          {
            case 1:
            case 2:
              goto LABEL_8;
            case 3:
              OUTLINED_FUNCTION_8_47();
              goto LABEL_8;
            case 4:
              OUTLINED_FUNCTION_0_107();
LABEL_8:
              sub_1C7551DBC();
              OUTLINED_FUNCTION_364();
              if (v21)
              {
                goto LABEL_11;
              }

              v22 = (v22 + 1) & v28;
              if (((*(v25 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v22) & 1) == 0)
              {
                break;
              }

              continue;
            default:

              v25 = MEMORY[0x1E69E7CD0];
              if ((v24 & 2) != 0)
              {
                goto LABEL_12;
              }

              goto LABEL_19;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_45();
      sub_1C72F0790();
      v25 = v44;
    }

LABEL_11:
    if ((v24 & 2) != 0)
    {
LABEL_12:
      OUTLINED_FUNCTION_46_19();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_5_52();
      if ((*(v25 + 56 + v30) >> v22))
      {
        while (2)
        {
          OUTLINED_FUNCTION_61_12();
          switch(v31)
          {
            case 1:

              goto LABEL_19;
            case 3:
              OUTLINED_FUNCTION_8_47();
              goto LABEL_16;
            case 4:
              OUTLINED_FUNCTION_0_107();
              goto LABEL_16;
            default:
LABEL_16:
              sub_1C7551DBC();
              OUTLINED_FUNCTION_364();
              if (v21)
              {
                goto LABEL_19;
              }

              OUTLINED_FUNCTION_10_51();
              if ((v32 & 1) == 0)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_45();
      sub_1C72F0790();
      v25 = v44;
    }

LABEL_19:
    if ((v24 & 4) != 0)
    {
      OUTLINED_FUNCTION_46_19();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_5_52();
      if ((*(v25 + 56 + v33) >> v22))
      {
        while (2)
        {
          OUTLINED_FUNCTION_61_12();
          switch(v34)
          {
            case 1:
              OUTLINED_FUNCTION_59_15();
              goto LABEL_25;
            case 2:

              if ((v24 & 8) != 0)
              {
                goto LABEL_29;
              }

              goto LABEL_36;
            case 3:
              OUTLINED_FUNCTION_8_47();
              goto LABEL_25;
            case 4:
              OUTLINED_FUNCTION_0_107();
              goto LABEL_25;
            default:
LABEL_25:
              sub_1C7551DBC();
              OUTLINED_FUNCTION_364();
              if (v21)
              {
                goto LABEL_28;
              }

              OUTLINED_FUNCTION_10_51();
              if ((v35 & 1) == 0)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_45();
      sub_1C72F0790();
      v25 = v44;
    }

LABEL_28:
    if ((v24 & 8) != 0)
    {
LABEL_29:
      OUTLINED_FUNCTION_46_19();
      OUTLINED_FUNCTION_64_11();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_5_52();
      if ((*(v25 + 56 + v36) >> v22))
      {
        while (2)
        {
          OUTLINED_FUNCTION_61_12();
          switch(v37)
          {
            case 1:
              OUTLINED_FUNCTION_59_15();
              goto LABEL_33;
            case 3:

              goto LABEL_36;
            case 4:
              OUTLINED_FUNCTION_0_107();
              goto LABEL_33;
            default:
LABEL_33:
              OUTLINED_FUNCTION_40_23();
              OUTLINED_FUNCTION_364();
              if (v21)
              {
                goto LABEL_36;
              }

              OUTLINED_FUNCTION_10_51();
              if ((v38 & 1) == 0)
              {
                break;
              }

              continue;
          }

          break;
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_15_45();
      sub_1C72F0790();
      v25 = v44;
    }

LABEL_36:
    if ((v24 & 0x10) == 0)
    {
LABEL_37:

      return;
    }

    OUTLINED_FUNCTION_46_19();
    OUTLINED_FUNCTION_39_23();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_9_2();
    v41 = v40 & ~v39;
    if ((*(v25 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
    {
      v42 = ~v39;
      do
      {
        switch(*(*(v25 + 48) + v41))
        {
          case 1:
            OUTLINED_FUNCTION_59_15();
            break;
          case 3:
            OUTLINED_FUNCTION_8_47();
            break;
          case 4:

            goto LABEL_37;
          default:
            break;
        }

        OUTLINED_FUNCTION_32_21();
        OUTLINED_FUNCTION_364();
        if (v21)
        {
          goto LABEL_37;
        }

        v41 = (v41 + 1) & v42;
      }

      while (((*(v25 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0);
    }

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_15_45();
    sub_1C72F0790();
  }

  else
  {

    sub_1C706E4EC(&unk_1F469EDB8, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
  }
}

uint64_t sub_1C721337C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD09440);
  __swift_project_value_buffer(v0, qword_1EDD09440);
  return sub_1C754FEFC();
}

uint64_t sub_1C72133FC(_OWORD *a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  memcpy(v32, a2, 0x130uLL);
  v11 = *a4;
  v12 = *(a4 + 4);
  v13 = a4[2];
  v14 = OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_logger;
  if (qword_1EDD09438 != -1)
  {
    OUTLINED_FUNCTION_3_69();
  }

  v15 = sub_1C754FF1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDD09440);
  (*(*(v15 - 8) + 16))(v6 + v14, v16, v15);
  v17 = OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_curationSession;
  *(v6 + v17) = [objc_allocWithZone(CLSCurationSession) init];
  v18 = (v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_configuration);
  v19 = a1[2];
  v18[1] = a1[1];
  v18[2] = v19;
  *v18 = *a1;
  memcpy((v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements), a2, 0x130uLL);
  *(v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_performDeduping) = a3 & 1;
  v20 = v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyPhotoLibraryContext;
  *v20 = v11;
  *(v20 + 8) = v12;
  *(v20 + 16) = v13;
  *(v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_diagnosticContext) = a5;
  memcpy(v31, (a2 + 216), sizeof(v31));
  memcpy(v30, (a2 + 216), sizeof(v30));
  sub_1C7027A20(&v32[216], v29);
  sub_1C7027A20(&v32[216], v29);
  sub_1C6FDE884(v32, v29);

  sub_1C7013BC0();
  v22 = MEMORY[0x1E69E7CD0];
  if (v21)
  {
    v22 = v21;
  }

  *(v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_allQueryCharactersAssetUUIDs) = v22;
  v23 = ExtendedTokenCollection.numberOfQueryCharacters.getter();
  sub_1C7027A58(&v32[216]);
  *(v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_numberOfQueryCharacters) = v23;
  if (qword_1EDD0E038 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v25 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v25);
  v26 = sub_1C707351C();

  sub_1C6FE0DC0(v32);
  *(v6 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_promoteAssetsWithLocation) = v26;
  return v6;
}

uint64_t sub_1C72136D0(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = [a1 fetchedObjects];
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = v6;
  sub_1C6FDEC1C();
  v8 = sub_1C7550B5C();
  v9 = v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_configuration;
  v10 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_configuration + 16);
  v11 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_configuration + 24);
  v12 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_configuration + 33);
  v33 = 0;
  [*(v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_curationSession) prepareAssets_];

  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  v13 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements + 168);
  v14 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements + 184);
  sub_1C75504FC();

  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C72108C8(v8, a2, v3, v13, v14, &v33, v31, a3, v10, v11, v12);
  v16 = v15;

  if (v33 == 1 && *(v9 + 32) == 1)
  {
    v17 = 0;
    v18 = *(v16 + 16);
    v19 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v20 = 48 * v17 + 32;
    while (v18 != v17)
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
      }

      v21 = *(v16 + v20 + 32);
      v22 = *(v16 + v20);
      v36 = *(v16 + v20 + 16);
      v37 = v21;
      v35 = v22;
      if (v36 != 3)
      {
        sub_1C721A9E8(&v35, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C716DE18();
        }

        v23 = *(v19 + 16);
        v24 = v23 + 1;
        if (v23 >= *(v19 + 24) >> 1)
        {
          v30 = *(v19 + 16);
          sub_1C716DE18();
          v23 = v30;
        }

        ++v17;
        *(v19 + 16) = v24;
        v25 = (v19 + 48 * v23);
        v26 = v35;
        v27 = v37;
        v25[3] = v36;
        v25[4] = v27;
        v25[2] = v26;
        goto LABEL_5;
      }

      v20 += 48;
      ++v17;
    }
  }

  else
  {
    v19 = v16;
  }

  v28 = static FreeformStoryAssetElector.sortedAssetUUIDs(from:)(v19);

  return v28;
}

uint64_t sub_1C7213970(_BYTE *a1)
{
  switch(*a1)
  {
    case 2:

      v1 = 0;
      break;
    default:
      v2 = sub_1C7551DBC();

      v1 = v2 ^ 1;
      break;
  }

  return v1 & 1;
}

uint64_t sub_1C7213A5C(uint64_t a1, const void *a2, uint64_t a3)
{
  memcpy(__dst, a2, 0x50uLL);
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_45_19();
  sub_1C75505AC();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_35_16();
  if (v6)
  {
    while (2)
    {
      switch(*(*(a1 + 48) + v4))
      {
        case 1:
        case 2:
          goto LABEL_6;
        case 3:
          OUTLINED_FUNCTION_24_26();
          goto LABEL_6;
        case 4:
          OUTLINED_FUNCTION_0_107();
LABEL_6:
          v3 = sub_1C7551DBC();

          if (v3)
          {
            goto LABEL_11;
          }

          OUTLINED_FUNCTION_27_28();
          if ((v7 & 1) == 0)
          {
            break;
          }

          continue;
        default:

LABEL_11:
          v9 = OUTLINED_FUNCTION_55_17();
          v10 = sub_1C72162EC(v9);
          sub_1C6FB2608();
          v8 = v11;
          v4 = *(v11 + 16);
          v12 = *(v11 + 24);
          v3 = v4 + 1;
          if (v4 >= v12 >> 1)
          {
            OUTLINED_FUNCTION_15(v12);
            sub_1C6FB2608();
            v8 = v32;
          }

          *(v8 + 16) = v3;
          v13 = v8 + 16 * v4;
          *(v13 + 32) = 0;
          *(v13 + 40) = v10;
          goto LABEL_14;
      }

      break;
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_14:
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_45_19();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_35_16();
    if (v14)
    {
      while (1)
      {
        switch(*(*(a1 + 48) + v4))
        {
          case 1:

            goto LABEL_23;
          case 3:
            OUTLINED_FUNCTION_24_26();
            break;
          case 4:
            OUTLINED_FUNCTION_0_107();
            break;
          default:
            break;
        }

        v3 = sub_1C7551DBC();

        if (v3)
        {
          break;
        }

        OUTLINED_FUNCTION_27_28();
        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_23:
      v16 = OUTLINED_FUNCTION_55_17();
      sub_1C721654C(v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB2608();
        v8 = v33;
      }

      OUTLINED_FUNCTION_19_38();
      if (v17)
      {
        OUTLINED_FUNCTION_13_47();
        v8 = v34;
      }

      OUTLINED_FUNCTION_54_19();
      OUTLINED_FUNCTION_56_15(v18);
    }

LABEL_28:
    if (!*(a1 + 16))
    {
      return v8;
    }

    OUTLINED_FUNCTION_45_19();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_7_47();
    if (v19)
    {
      while (1)
      {
        switch(*(*(a1 + 48) + v3))
        {
          case 2:

            goto LABEL_37;
          case 3:
            OUTLINED_FUNCTION_24_26();
            break;
          case 4:
            OUTLINED_FUNCTION_2_73();
            break;
          default:
            break;
        }

        v20 = OUTLINED_FUNCTION_21_35();

        if (v20)
        {
          break;
        }

        OUTLINED_FUNCTION_11_41();
        if ((v21 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

LABEL_37:
      sub_1C72166A8(__dst, a3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB2608();
        v8 = v35;
      }

      OUTLINED_FUNCTION_19_38();
      if (v17)
      {
        OUTLINED_FUNCTION_13_47();
        v8 = v36;
      }

      OUTLINED_FUNCTION_54_19();
      OUTLINED_FUNCTION_56_15(v22);
    }

LABEL_42:
    if (!*(a1 + 16))
    {
      return v8;
    }

    OUTLINED_FUNCTION_45_19();
    OUTLINED_FUNCTION_64_11();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_7_47();
    if (v23)
    {
      while (1)
      {
        switch(*(*(a1 + 48) + v3))
        {
          case 3:

            goto LABEL_50;
          case 4:
            OUTLINED_FUNCTION_2_73();
            break;
          default:
            break;
        }

        v24 = OUTLINED_FUNCTION_40_23();

        if (v24)
        {
          break;
        }

        OUTLINED_FUNCTION_11_41();
        if ((v25 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

LABEL_50:
      sub_1C72168AC(__dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB2608();
        v8 = v37;
      }

      OUTLINED_FUNCTION_19_38();
      if (v17)
      {
        OUTLINED_FUNCTION_13_47();
        v8 = v38;
      }

      OUTLINED_FUNCTION_54_19();
      OUTLINED_FUNCTION_56_15(v26);
    }

LABEL_55:
    if (!*(a1 + 16))
    {
      return v8;
    }

    OUTLINED_FUNCTION_45_19();
    OUTLINED_FUNCTION_39_23();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_7_47();
    if ((v27 & 1) == 0)
    {
      return v8;
    }

    while (1)
    {
      switch(*(*(a1 + 48) + v3))
      {
        case 3:
          OUTLINED_FUNCTION_24_26();
          goto LABEL_59;
        case 4:

          goto LABEL_63;
        default:
LABEL_59:
          v28 = OUTLINED_FUNCTION_32_21();

          if (v28)
          {
LABEL_63:
            sub_1C72169FC(a3);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB2608();
              v8 = v39;
            }

            OUTLINED_FUNCTION_19_38();
            if (v17)
            {
              OUTLINED_FUNCTION_13_47();
              v8 = v40;
            }

            OUTLINED_FUNCTION_54_19();
            OUTLINED_FUNCTION_56_15(v30);
            return v8;
          }

          OUTLINED_FUNCTION_11_41();
          if ((v29 & 1) == 0)
          {
            return v8;
          }

          break;
      }
    }
  }

  return v8;
}

uint64_t sub_1C721409C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v19 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(1499027801, 0xE400000000000000, v6);
  sub_1C754E31C();
  sub_1C754E35C();
  v7 = OUTLINED_FUNCTION_50_19();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) != 1)
  {
    v8 = sub_1C754E32C();
    (*(*(v1 - 8) + 8))(v5, v1);
  }

  [v6 setTimeZone_];

  v23 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  for (i = (a1 + 64); v9; --v9)
  {
    v12 = *(i - 1);
    v11 = *i;
    v13 = *(i - 3);
    v14 = *(i - 2);
    v19[0] = *(i - 4);
    v19[1] = v13;
    v20 = v14;
    v21 = v12;
    v22 = v11;
    sub_1C75504FC();
    v15 = v14;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7215F28(&v23, v19, v6);
    v16 = v20;

    i += 5;
  }

  return v23;
}

uint64_t sub_1C72142A0(uint64_t a1)
{
  v156 = *(a1 + 16);
  if (v156)
  {
    v1 = 0;
    v157 = a1 + 32;
    v153 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v160 = v1;
      v2 = v157 + 16 * v1;
      v3 = *(v2 + 8);
      LOBYTE(v174[0]) = *v2;
      sub_1C75504FC();
      v159 = sub_1C75506EC();
      v5 = v4;
      if (*(v3 + 16))
      {
        break;
      }

      sub_1C75504FC();
      v76 = sub_1C754FEEC();
      v77 = sub_1C75511BC();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = OUTLINED_FUNCTION_41_0();
        v79 = OUTLINED_FUNCTION_20_1();
        v174[0] = v79;
        *v78 = 136315138;
        v80 = sub_1C6F765A4(v159, v5, v174);

        *(v78 + 4) = v80;
        _os_log_impl(&dword_1C6F5C000, v76, v77, "No feature for %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v79);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
LABEL_108:
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

LABEL_112:
      v1 = v160 + 1;
      if (v160 + 1 == v156)
      {
        return v153;
      }
    }

    v158 = v4;
    v6 = v3 + 64;
    OUTLINED_FUNCTION_90_1();
    v9 = v8 & v7;
    v168 = (v10 + 63) >> 6;
    sub_1C75504FC();
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC8];
    v162 = v3 + 64;
    v165 = v3;
LABEL_5:
    v167 = v12;
    if (v9)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      if (v13 >= v168)
      {
        break;
      }

      v9 = *(v6 + 8 * v13);
      ++v11;
      if (v9)
      {
        v11 = v13;
LABEL_10:
        OUTLINED_FUNCTION_57_18();
        v15 = v14 | (v11 << 6);
        v16 = *(v3 + 56);
        v17 = (*(v3 + 48) + 16 * v15);
        v19 = *v17;
        v18 = v17[1];
        v170 = *(*(v16 + 8 * v15) + 16);
        sub_1C75504FC();
        sub_1C75504FC();
        swift_isUniquelyReferenced_nonNull_native();
        v174[0] = v167;
        v20 = OUTLINED_FUNCTION_34_20();
        sub_1C6F78124(v20, v21);
        OUTLINED_FUNCTION_31_1();
        if (__OFADD__(v24, v25))
        {
          goto LABEL_131;
        }

        v26 = v22;
        v27 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
        if ((sub_1C7551A2C() & 1) == 0)
        {
          goto LABEL_14;
        }

        v28 = OUTLINED_FUNCTION_34_20();
        v30 = sub_1C6F78124(v28, v29);
        if ((v27 & 1) != (v31 & 1))
        {
          goto LABEL_139;
        }

        v26 = v30;
LABEL_14:
        v32 = v174[0];
        if (v27)
        {
          *(*(v174[0] + 56) + 8 * v26) = v170;
          v33 = v32;

          v12 = v33;
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_60_14(v174[0] + 8 * (v26 >> 6));
        v35 = (v34 + 16 * v26);
        *v35 = v19;
        v35[1] = v18;
        *(*(v36 + 56) + 8 * v26) = v170;
        v37 = v36;

        v38 = *(v37 + 16);
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_132;
        }

        v12 = v37;
        *(v37 + 16) = v40;
LABEL_18:
        v9 &= v9 - 1;
        v3 = v165;
        v6 = v162;
        goto LABEL_5;
      }
    }

    v41 = 0;
    v42 = 1 << *(v167 + 32);
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v44 = v43 & *(v167 + 64);
    v45 = (v42 + 63) >> 6;
    v46 = 0.0;
    if (v44)
    {
      while (1)
      {
        v47 = v41;
LABEL_28:
        v48 = __clz(__rbit64(v44));
        v44 &= v44 - 1;
        v46 = v46 + *(*(v167 + 56) + ((v47 << 9) | (8 * v48)));
        if (!v44)
        {
          goto LABEL_24;
        }
      }
    }

    while (1)
    {
LABEL_24:
      v47 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_117;
      }

      if (v47 >= v45)
      {
        break;
      }

      v44 = *(v167 + 64 + 8 * v47);
      ++v41;
      if (v44)
      {
        v41 = v47;
        goto LABEL_28;
      }
    }

    v49 = *(v167 + 16);
    v50 = v46 / v49;
    if (v49)
    {
      v174[0] = MEMORY[0x1E69E7CC0];
      v171 = v49;
      sub_1C716DA70();
      v51 = v174[0];
      v52 = sub_1C70D4544(v167);
      v53 = v167;
      v54 = v167 + 64;
      v55 = 1;
      v56 = v52;
      v58 = v57;
      v59 = v171;
      v61 = v60;
      v62 = 0;
      if (v52 < 0)
      {
        goto LABEL_119;
      }

      while (1)
      {
        if (v56 >= v55 << *(v53 + 32))
        {
          goto LABEL_119;
        }

        v63 = v56 >> 6;
        v64 = v55 << v56;
        if ((*(v54 + 8 * (v56 >> 6)) & (v55 << v56)) == 0)
        {
          goto LABEL_120;
        }

        if (*(v53 + 36) != v58)
        {
          break;
        }

        v65 = *(*(v53 + 56) + 8 * v56);
        v174[0] = v51;
        v67 = *(v51 + 16);
        v66 = *(v51 + 24);
        if (v67 >= v66 >> 1)
        {
          OUTLINED_FUNCTION_15(v66);
          OUTLINED_FUNCTION_146();
          sub_1C716DA70();
          OUTLINED_FUNCTION_29_24();
          v51 = v174[0];
        }

        *(v51 + 16) = v67 + 1;
        *(v51 + 8 * v67 + 32) = (v65 - v50) * (v65 - v50);
        v68 = v55 << *(v53 + 32);
        if (v56 >= v68)
        {
          goto LABEL_122;
        }

        v69 = *(v54 + 8 * v63);
        if ((v69 & v64) == 0)
        {
          goto LABEL_123;
        }

        if (*(v53 + 36) != v58)
        {
          goto LABEL_124;
        }

        v70 = v69 & (-2 << (v56 & 0x3F));
        if (v70)
        {
          v68 = __clz(__rbit64(v70)) | v56 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v71 = v63 << 6;
          v72 = v63 + 1;
          v73 = (v167 + 72 + 8 * v63);
          while (v72 < (v68 + 63) >> 6)
          {
            v75 = *v73++;
            v74 = v75;
            v71 += 64;
            ++v72;
            if (v75)
            {
              sub_1C6F9ED50(v56, v58, v61 & 1);
              OUTLINED_FUNCTION_29_24();
              v68 = __clz(__rbit64(v74)) + v71;
              goto LABEL_47;
            }
          }

          sub_1C6F9ED50(v56, v58, v61 & 1);
          OUTLINED_FUNCTION_29_24();
        }

LABEL_47:
        if (++v62 == v59)
        {
          v3 = v165;
          v6 = v162;
          goto LABEL_54;
        }

        v61 = 0;
        v58 = *(v53 + 36);
        v56 = v68;
        if (v68 < 0)
        {
          goto LABEL_119;
        }
      }

LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    v51 = MEMORY[0x1E69E7CC0];
LABEL_54:
    v81 = *(v51 + 16);
    if (v81)
    {
      v82 = (v51 + 32);
      v83 = 0.0;
      do
      {
        v84 = *v82++;
        v83 = v83 + v84;
        --v81;
      }

      while (v81);
    }

    else
    {
      v83 = 0.0;
    }

    v85 = sqrt(v83 / *(v167 + 16));
    v86 = v85 * 0.5;
    if (v85 * 0.5 <= v50 * 0.6)
    {
      v86 = v50 * 0.6;
    }

    v87 = v50 - v86;
    v88 = ceil(v50 - v86);
    if ((*&v88 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    if (v88 <= -9.22337204e18)
    {
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      result = sub_1C7551E4C();
      __break(1u);
      return result;
    }

    if (v88 >= 9.22337204e18)
    {
      goto LABEL_135;
    }

    v89 = 0;
    v90 = 0;
    v164 = v88;
    v91 = 1 << *(v3 + 32);
    if (v91 < 64)
    {
      v92 = ~(-1 << v91);
    }

    else
    {
      v92 = -1;
    }

    v93 = v92 & *(v3 + 64);
    v94 = (v91 + 63) >> 6;
    while (1)
    {
      do
      {
        if (!v93)
        {
          while (1)
          {
            v95 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              break;
            }

            if (v95 >= v94)
            {

              v117 = v167;
              v118 = *(v167 + 16);
              if (v118)
              {
                v155 = v90;
                v176 = MEMORY[0x1E69E7CC0];
                sub_1C6F7ED9C();
                v119 = v176;
                v122 = sub_1C70D4544(v167);
                v117 = v167;
                v123 = v167 + 64;
                v124 = 0;
                v161 = v120;
                v163 = v118;
                while ((v122 & 0x8000000000000000) == 0 && v122 < 1 << *(v117 + 32))
                {
                  v125 = v122 >> 6;
                  if ((*(v123 + 8 * (v122 >> 6)) & (1 << v122)) == 0)
                  {
                    goto LABEL_126;
                  }

                  if (*(v117 + 36) != v120)
                  {
                    goto LABEL_127;
                  }

                  v169 = v124;
                  v173 = v120;
                  v166 = v121;
                  v126 = (*(v117 + 48) + 16 * v122);
                  v128 = *v126;
                  v127 = v126[1];
                  v129 = *(*(v117 + 56) + 8 * v122);
                  v174[0] = v128;
                  v174[1] = v127;
                  v174[2] = v129;
                  sub_1C7216DD4(v174, v164, v175);
                  v131 = v175[0];
                  v130 = v175[1];
                  v176 = v119;
                  v133 = *(v119 + 16);
                  v132 = *(v119 + 24);
                  v134 = v119;
                  if (v133 >= v132 >> 1)
                  {
                    OUTLINED_FUNCTION_15(v132);
                    OUTLINED_FUNCTION_146();
                    sub_1C6F7ED9C();
                    v134 = v176;
                  }

                  *(v134 + 16) = v133 + 1;
                  v135 = v134 + 16 * v133;
                  *(v135 + 32) = v131;
                  *(v135 + 40) = v130;
                  v136 = 1 << *(v117 + 32);
                  if (v122 >= v136)
                  {
                    goto LABEL_128;
                  }

                  v123 = v167 + 64;
                  v137 = *(v167 + 64 + 8 * v125);
                  if ((v137 & (1 << v122)) == 0)
                  {
                    goto LABEL_129;
                  }

                  v119 = v134;
                  if (*(v117 + 36) != v173)
                  {
                    goto LABEL_130;
                  }

                  v138 = v137 & (-2 << (v122 & 0x3F));
                  if (v138)
                  {
                    v136 = __clz(__rbit64(v138)) | v122 & 0x7FFFFFFFFFFFFFC0;
                  }

                  else
                  {
                    v139 = v125 << 6;
                    v140 = v125 + 1;
                    v141 = (v167 + 72 + 8 * v125);
                    while (v140 < (v136 + 63) >> 6)
                    {
                      v143 = *v141++;
                      v142 = v143;
                      v139 += 64;
                      ++v140;
                      if (v143)
                      {
                        sub_1C6F9ED50(v122, v173, v166 & 1);
                        v117 = v167;
                        v123 = v167 + 64;
                        v136 = __clz(__rbit64(v142)) + v139;
                        goto LABEL_103;
                      }
                    }

                    sub_1C6F9ED50(v122, v173, v166 & 1);
                    v117 = v167;
                    v123 = v167 + 64;
                  }

LABEL_103:
                  v121 = 0;
                  v124 = v169 + 1;
                  v122 = v136;
                  v120 = v161;
                  if (v169 + 1 == v163)
                  {
                    v90 = v155;
                    goto LABEL_106;
                  }
                }

                goto LABEL_125;
              }

              v119 = MEMORY[0x1E69E7CC0];
LABEL_106:
              v144 = v117;
              sub_1C75504FC();
              sub_1C75504FC();
              sub_1C75504FC();
              v76 = sub_1C754FEEC();
              v145 = sub_1C75511BC();

              if (os_log_type_enabled(v76, v145))
              {
                v146 = swift_slowAlloc();
                v174[0] = swift_slowAlloc();
                *v146 = 136316674;
                v147 = sub_1C6F765A4(v159, v158, v174);

                *(v146 + 4) = v147;
                *(v146 + 12) = 2048;
                v148 = *(v144 + 16);

                *(v146 + 14) = v148;

                *(v146 + 22) = 2048;
                *(v146 + 24) = v50;
                *(v146 + 32) = 2048;
                *(v146 + 34) = v85;
                *(v146 + 42) = 2048;
                *(v146 + 44) = v87;
                *(v146 + 52) = 2080;
                v175[0] = v119;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
                sub_1C7099594(&qword_1EDD0CF58, &unk_1EC217A00);
                v149 = sub_1C75505FC();
                v151 = v150;

                sub_1C6F765A4(v149, v151, v174);
                OUTLINED_FUNCTION_51();

                *(v146 + 54) = v149;
                *(v146 + 62) = 2048;
                *(v146 + 64) = v90;
                _os_log_impl(&dword_1C6F5C000, v76, v145, "%s: %ld features\n    meanScore = %f, standardDeviation = %f, threshold = %f\n    %s\n    %ld filtered features", v146, 0x48u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_235();
                MEMORY[0x1CCA5F8E0]();
                goto LABEL_108;
              }

              swift_bridgeObjectRelease_n();
              goto LABEL_112;
            }

            v93 = *(v6 + 8 * v95);
            ++v89;
            if (v93)
            {
              v89 = v95;
              goto LABEL_73;
            }
          }

LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

LABEL_73:
        OUTLINED_FUNCTION_57_18();
        v93 &= v93 - 1;
        v97 = v96 | (v89 << 6);
        v98 = *(*(v3 + 56) + 8 * v97);
      }

      while (*(v98 + 16) < v164);
      v154 = v90;
      v99 = (*(v3 + 48) + 16 * v97);
      v101 = *v99;
      v100 = v99[1];
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v174[0] = v153;
      sub_1C6F78124(v101, v100);
      OUTLINED_FUNCTION_31_1();
      if (__OFADD__(v104, v105))
      {
        goto LABEL_136;
      }

      v106 = v102;
      v172 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
      if (sub_1C7551A2C())
      {
        v107 = v101;
        v108 = v101;
        v109 = v100;
        v110 = sub_1C6F78124(v108, v100);
        v3 = v165;
        v6 = v162;
        if ((v172 & 1) != (v111 & 1))
        {
          goto LABEL_139;
        }

        v106 = v110;
        if ((v172 & 1) == 0)
        {
LABEL_78:
          OUTLINED_FUNCTION_60_14(v174[0] + 8 * (v106 >> 6));
          v114 = (v113 + 16 * v106);
          *v114 = v107;
          v114[1] = v109;
          *(*(v112 + 56) + 8 * v106) = v98;
          v115 = *(v112 + 16);
          v39 = __OFADD__(v115, 1);
          v116 = v115 + 1;
          if (v39)
          {
            goto LABEL_138;
          }

          v153 = v112;
          *(v112 + 16) = v116;
          goto LABEL_82;
        }
      }

      else
      {
        v107 = v101;
        v109 = v100;
        v3 = v165;
        v6 = v162;
        if ((v172 & 1) == 0)
        {
          goto LABEL_78;
        }
      }

      v153 = v174[0];
      *(*(v174[0] + 56) + 8 * v106) = v98;

LABEL_82:
      v90 = v154 + 1;
      if (__OFADD__(v154, 1))
      {
        goto LABEL_137;
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1C7214F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_27_1();
  v216 = swift_allocObject();
  *(v216 + 16) = a4;
  OUTLINED_FUNCTION_27_1();
  v8 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  v215 = v8;
  *(v8 + 16) = sub_1C706D154(a4);
  v195 = v8 + 16;
  v9 = sub_1C75504FC();
  v10 = sub_1C706D154(v9);
  v11 = sub_1C75504FC();
  v234 = sub_1C70739AC(v11, v10);
  v12 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyPhotoLibraryContext + 16);
  v13 = sub_1C75504FC();
  sub_1C706D154(v13);
  StoryGenerationCache.momentUUIDByAssetUUID(for:)();
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_27_1();
  v214 = swift_allocObject();
  *(v214 + 16) = sub_1C706D87C(v12);
  OUTLINED_FUNCTION_27_1();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  v213 = v14;
  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C739C450(a1, v16, v17, v18, v19, v20, v21, v22, v174, v176, v178, v180, v182, v184, a3, v188, log, v192, v14 + 16, v195, v198, v200, v216 + 16, v202, v205, v208);
  v228[0] = v23;
  sub_1C7218160(v228, sub_1C7422BDC, &qword_1EC218188, &unk_1C7570F40, sub_1C7423D18);
  v24 = v228[0];
  v25 = *(v228[0] + 16);
  if (v25)
  {
    v228[0] = v15;
    sub_1C716D5B0(0, v25, 0);
    v26 = 48;
    v27 = v228[0];
    do
    {
      v28 = *(v24 + v26);
      v228[0] = v27;
      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      sub_1C75504FC();
      if (v30 >= v29 >> 1)
      {
        OUTLINED_FUNCTION_146();
        sub_1C716D5B0(v31, v32, v33);
        v27 = v228[0];
      }

      *(v27 + 16) = v30 + 1;
      *(v27 + 8 * v30 + 32) = v28;
      v26 += 24;
      --v25;
    }

    while (v25);
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  v34 = 0;
  v35 = 0;
  v36 = *(v27 + 16);
  v226 = v27 + 32;
  while (v36 != v34)
  {
    v37 = v27 + 8 * v34++;
    v38 = *(*(v37 + 32) + 16);
    if (v38 > v35)
    {
      v35 = v38;
    }
  }

  OUTLINED_FUNCTION_90_1();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;
  sub_1C75504FC();
  v44 = 0;
  v223 = MEMORY[0x1E69E7CC8];
  v225 = v5;
  v221 = v27;
  v189 = v35;
  loga = v43;
  v217 = v36;
  if (v41)
  {
LABEL_17:
    OUTLINED_FUNCTION_49_16();
    v203 = v41;
    v48 = v46 | (v47 << 6);
    v49 = (v187[6] + 16 * v48);
    v50 = *(v187[7] + 8 * v48);
    v209 = *v49;
    v211 = v49[1];
    v51 = v50 + 56;
    OUTLINED_FUNCTION_90_1();
    v43 = v53 & v52;
    v55 = (v54 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v220 = v50;
    swift_bridgeObjectRetain_n();
    v56 = 0;
    v57 = 0;
    v206 = v51;
    if (v43)
    {
      goto LABEL_22;
    }

LABEL_18:
    while (1)
    {
      v58 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v58 >= v55)
      {

        sub_1C6F6E5B4(v56);

        v41 = v203;
        goto LABEL_17;
      }

      v43 = *(v51 + 8 * v58);
      ++v57;
      if (v43)
      {
        v57 = v58;
LABEL_22:
        while (1)
        {
          OUTLINED_FUNCTION_57_18();
          v60 = (*(v220 + 48) + ((v57 << 10) | (16 * v59)));
          v61 = *v60;
          v62 = v60[1];
          sub_1C75504FC();
          sub_1C6F6E5B4(v56);
          swift_isUniquelyReferenced_nonNull_native();
          v228[0] = v223;
          sub_1C6F78124(v61, v62);
          OUTLINED_FUNCTION_31_1();
          if (__OFADD__(v64, v65))
          {
            goto LABEL_101;
          }

          v66 = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
          v67 = sub_1C7551A2C();
          v223 = v228[0];
          if (v67)
          {
            sub_1C6F78124(v61, v62);
            if ((v66 & 1) != (v68 & 1))
            {
              goto LABEL_105;
            }
          }

          if (v66)
          {
          }

          else
          {
            v69 = OUTLINED_FUNCTION_23_28();
            sub_1C6FCABE4(v69);
          }

          v51 = v206;
          v43 &= v43 - 1;
          sub_1C75504FC();
          sub_1C70F082C(v228, v209, v211);

          v56 = sub_1C719D928;
          if (!v43)
          {
            goto LABEL_18;
          }
        }
      }
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_99;
    }

    if (v45 >= v43)
    {
      break;
    }

    v41 = v187[v45 + 8];
    ++v44;
    if (v41)
    {
      goto LABEL_17;
    }
  }

  v207 = v187[2];
  OUTLINED_FUNCTION_27_1();
  v212 = swift_allocObject();
  *(v212 + 16) = MEMORY[0x1E69E7CD0];
  v181 = (v212 + 16);
  OUTLINED_FUNCTION_27_1();
  v210 = swift_allocObject();
  *(v210 + 16) = 0;
  v183 = (v210 + 16);
  v204 = *(v5 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements + 168);
  v193 = *(v5 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements + 184);
  swift_beginAccess();
  v70 = 0;
  *&v71 = 136315138;
  v199 = v71;
  v72 = a2;
  while (*(*v201 + 16) < v72)
  {
    if (v36)
    {
      v73 = 0;
      do
      {
        while (1)
        {
          if (v73 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_98;
          }

          v74 = *(v226 + 8 * v73++);
          if (v70 < *(v74 + 16))
          {
            break;
          }

LABEL_71:
          if (v73 == v36)
          {
            goto LABEL_72;
          }
        }

        v75 = v74 + 16 * v70;
        v43 = *(v75 + 32);
        v76 = *(v75 + 40);
        v77 = v234;
        if (*(v234 + 16))
        {
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75505AC();
          sub_1C7551FAC();
          OUTLINED_FUNCTION_9_2();
          v80 = ~v79;
          while (1)
          {
            v81 = v78 & v80;
            if (((*(v77 + 56 + (((v78 & v80) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v78 & v80)) & 1) == 0)
            {
              break;
            }

            v82 = (*(v77 + 48) + 16 * v81);
            if (*v82 != v43 || v82[1] != v76)
            {
              v84 = sub_1C7551DBC();
              v78 = v81 + 1;
              if ((v84 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_71;
          }
        }

        else
        {
          sub_1C75504FC();
        }

        sub_1C75504FC();
        sub_1C70F082C(v228, v43, v76);

        v85._countAndFlagsBits = OUTLINED_FUNCTION_49_3();
        v86 = StoryGenerationCache.momentUUID(forAssetUUID:)(v85);
        if (!v86.value._object)
        {
          sub_1C75504FC();
          v90 = sub_1C754FEEC();
          v91 = sub_1C755119C();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = OUTLINED_FUNCTION_41_0();
            v93 = OUTLINED_FUNCTION_20_1();
            v228[0] = v93;
            *v92 = v199;
            v94 = OUTLINED_FUNCTION_49_3();
            v43 = sub_1C6F765A4(v94, v95, v96);

            *(v92 + 4) = v43;
            _os_log_impl(&dword_1C6F5C000, v90, v91, "Couldn't find momentUUID for assetUUID '%s'", v92, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v93);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          else
          {
          }

          v27 = v221;
          goto LABEL_71;
        }

        v87 = OUTLINED_FUNCTION_49_3();
        if (sub_1C7009C30(v87, v88, v204))
        {
          v89 = 0;
        }

        else
        {
          v97 = OUTLINED_FUNCTION_49_3();
          if (sub_1C7009C30(v97, v98, v193))
          {
            v89 = 1;
          }

          else
          {
            v89 = 2;
          }
        }

        if (*(v223 + 16) && (v99 = OUTLINED_FUNCTION_49_3(), v101 = sub_1C6F78124(v99, v100), (v102 & 1) != 0))
        {
          v103 = *(*(v223 + 56) + 8 * v101);
          sub_1C75504FC();
        }

        else
        {
          v103 = 0;
        }

        *&v235 = v43;
        *(&v235 + 1) = v76;
        LOBYTE(v236) = v89;
        *(&v236 + 1) = v86.value._countAndFlagsBits;
        *&v237 = v86.value._object;
        *(&v237 + 1) = v103;
        v43 = v225;
        if ((sub_1C7216F94(&v235, v215, v214, v212, v207, v216, v225, v210, v213, a2) & 1) == 0)
        {
          swift_beginAccess();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C6FB09E0();
          v105 = *(*v194 + 16);
          sub_1C6FB123C();
          v106 = *v194;
          *(v106 + 16) = v105 + 1;
          v107 = (v106 + 48 * v105);
          v108 = v236;
          v107[2] = v235;
          v107[3] = v108;
          v107[4] = v237;
          *v194 = v106;
          swift_endAccess();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v109 = sub_1C754FEEC();
          v110 = sub_1C755117C();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = OUTLINED_FUNCTION_41_0();
            v43 = OUTLINED_FUNCTION_20_1();
            v228[0] = v43;
            *v111 = v199;
            loga = v109;
            v112 = sub_1C7217D08();
            v114 = v113;

            v115 = sub_1C6F765A4(v112, v114, v228);

            *(v111 + 4) = v115;
            _os_log_impl(&dword_1C6F5C000, loga, v110, "%s\n\tadding to waiting room", v111, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v43);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          else
          {
          }

          v27 = v221;
          v36 = v217;
          goto LABEL_71;
        }

        v36 = v217;
        v104 = v73 != v217 && *(*v201 + 16) < a2;
        v27 = v221;
      }

      while (v104);
    }

LABEL_72:
    ++v70;
    v72 = a2;
    if (v70 >= v189)
    {
      break;
    }
  }

  swift_beginAccess();
  v123 = *v194;
  if (*(*v194 + 16))
  {
    v124 = *v201;
    if (*(*v201 + 16) < v72)
    {
      v125 = sub_1C754FEEC();
      v126 = sub_1C755117C();
      if (OUTLINED_FUNCTION_7_0(v126))
      {
        v43 = OUTLINED_FUNCTION_20_1();
        *v43 = 134218496;
        *(v43 + 4) = *(v124 + 16);
        *(v43 + 12) = 2048;
        *(v43 + 14) = v72;
        *(v43 + 22) = 2048;
        *(v43 + 24) = *(v123 + 16);
        OUTLINED_FUNCTION_17();
        _os_log_impl(v127, v128, v129, v130, v131, 0x20u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v132 = sub_1C75504FC();
      v133 = sub_1C7080ED4(v132);
      swift_beginAccess();
      *v181 = v133;

      swift_beginAccess();
      v134 = *v183 + 1;
      if (!__OFADD__(*v183, 1))
      {
        *v183 = v134;
        v135 = sub_1C754FEEC();
        v136 = sub_1C755117C();
        if (OUTLINED_FUNCTION_7_0(v136))
        {
          v43 = OUTLINED_FUNCTION_41_0();
          *v43 = 134217984;
          *(v43 + 4) = v134;
          OUTLINED_FUNCTION_17();
          _os_log_impl(v137, v138, v139, v140, v141, 0xCu);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v142 = *(v123 + 16);
        sub_1C75504FC();
        v143 = (v123 + 72);
        v144 = -v142;
        v145 = -1;
        do
        {
          if (v144 + v145 == -1)
          {
            break;
          }

          if (++v145 >= *(v123 + 16))
          {
            goto LABEL_102;
          }

          v146 = v143 + 6;
          v147 = *(v143 - 4);
          v148 = *(v143 - 24);
          v149 = *(v143 - 2);
          v150 = *(v143 - 1);
          v43 = *v143;
          v228[0] = *(v143 - 5);
          v228[1] = v147;
          v229 = v148;
          v230 = v149;
          v231 = v150;
          v232 = v43;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C7216F94(v228, v215, v214, v212, v207, v216, v225, v210, v213, a2);

          v143 = v146;
        }

        while (*(*(v216 + 16) + 16) < a2);

        v151 = sub_1C754FEEC();
        v152 = sub_1C755117C();
        if (OUTLINED_FUNCTION_7_0(v152))
        {
          v43 = OUTLINED_FUNCTION_41_0();
          *v43 = 134217984;
          *(v43 + 4) = *v183;
          OUTLINED_FUNCTION_17();
          _os_log_impl(v153, v154, v155, v156, v157, 0xCu);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        if (!__OFSUB__(*v183, 1))
        {
          --*v183;
          goto LABEL_88;
        }

LABEL_104:
        __break(1u);
LABEL_105:
        sub_1C7551E4C();
        __break(1u);

        goto LABEL_107;
      }

LABEL_103:
      __break(1u);
      goto LABEL_104;
    }
  }

LABEL_88:
  sub_1C739C410(v187, v116, v117, v118, v119, v120, v121, v122, v175, v177, v179, v181, v183, 0, v187, v189, loga, v193, v194, v196, v199, *(&v199 + 1), v201, v204, v207, v210);
  v233 = v158;
  v43 = v185;
  sub_1C7218160(&v233, sub_1C7422BC4, &qword_1EC216F58, &unk_1C7577D90, sub_1C7423D18);
  if (v185)
  {

LABEL_107:

    __break(1u);
    return result;
  }

  v159 = 0;
  v160 = v233;
  v161 = *(v233 + 16);
  v162 = (v233 + 48);
  v222 = v233;
  v219 = v161;
  while (v161 != v159)
  {
    if (v159 >= *(v160 + 16))
    {
      goto LABEL_100;
    }

    v164 = *(v162 - 2);
    v163 = *(v162 - 1);
    v165 = *v162;
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    v227 = *(sub_1C7219F48(v165, v197) + 2);

    sub_1C75504FC();
    sub_1C75504FC();
    v166 = sub_1C754FEEC();
    v167 = sub_1C75511BC();

    if (os_log_type_enabled(v166, v167))
    {
      v168 = OUTLINED_FUNCTION_20_1();
      v224 = v43;
      v169 = OUTLINED_FUNCTION_20_1();
      v233 = v169;
      *v168 = 136315650;
      v170 = sub_1C6F765A4(v164, v163, &v233);

      *(v168 + 4) = v170;
      *(v168 + 12) = 2048;
      *(v168 + 14) = v227;
      *(v168 + 22) = 2048;
      v171 = *(v165 + 16);

      *(v168 + 24) = v171;

      _os_log_impl(&dword_1C6F5C000, v166, v167, "Feature '%s' represented by %ld assets out of %ld available", v168, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v169);
      v160 = v222;
      v43 = v224;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v161 = v219;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v162 += 3;
    ++v159;
  }

  v172 = *(v216 + 16);
  sub_1C75504FC();

  return v172;
}

uint64_t sub_1C7215F28(uint64_t *a1, uint64_t a2, void *a3)
{
  v46 = a3;
  v53 = a1;
  v45 = sub_1C754DF6C();
  v4 = *(v45 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v45).n128_u64[0];
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(a2 + 16) fetchedObjects];
  if (v7)
  {
    v8 = v7;
    sub_1C6FDEC1C();
    v9 = sub_1C7550B5C();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1C6FB6304();
  v11 = 0;
  v12 = 0;
  v47 = v9 & 0xC000000000000001;
  v48 = v10;
  v42 = v9;
  v43 = (v4 + 8);
  while (1)
  {
    if (v48 == v11)
    {

      return sub_1C6F6E5B4(v12);
    }

    v13 = v47;
    sub_1C6FB6330(v11, v47 == 0, v9);
    v14 = v13 ? MEMORY[0x1CCA5DDD0](v11, v9) : *(v9 + 8 * v11 + 32);
    v15 = v14;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v16 = [v14 localCreationDate];
    if (!v16)
    {
      goto LABEL_24;
    }

    v17 = v16;
    v50 = v11;
    v18 = v44;
    sub_1C754DF2C();

    v19 = sub_1C754DECC();
    (*v43)(v18, v45);
    v20 = [v46 stringFromDate_];

    v21 = sub_1C755068C();
    v23 = v22;

    v51 = 0x3A72616559;
    v52 = 0xE500000000000000;
    MEMORY[0x1CCA5CD70](v21, v23);
    v24 = v51;
    v25 = v52;
    v26 = v15;
    v49 = sub_1C6FCA214(v26);
    if (!v27)
    {
      goto LABEL_25;
    }

    v28 = v27;

    sub_1C6F6E5B4(v12);
    v29 = v53;
    swift_isUniquelyReferenced_nonNull_native();
    v51 = *v29;
    v30 = v51;
    v31 = sub_1C6F78124(v24, v25);
    if (__OFADD__(*(v30 + 16), (v32 & 1) == 0))
    {
      goto LABEL_23;
    }

    v33 = v31;
    v34 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
    v35 = sub_1C7551A2C();
    v36 = v51;
    if (v35)
    {
      v37 = sub_1C6F78124(v24, v25);
      v9 = v42;
      v39 = v50;
      if ((v34 & 1) != (v38 & 1))
      {
        goto LABEL_26;
      }

      v33 = v37;
    }

    else
    {
      v9 = v42;
      v39 = v50;
    }

    *v53 = v36;
    if (v34)
    {
    }

    else
    {
      sub_1C6FCABE4(v33);
    }

    sub_1C70F082C(&v51, v49, v28);

    v11 = v39 + 1;
    v12 = sub_1C719D928;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void *sub_1C72162EC(void *result)
{
  v1 = 0;
  v3 = *result;
  v2 = result[1];
  v4 = *(*result + 16);
  v5 = *result + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v5 + 72 * v1);
  while (v4 != v1)
  {
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    result = memcpy(__dst, v7, 0x41uLL);
    if ((__dst[3] & 1) == 0 && !__dst[2])
    {
      sub_1C7025F3C(__dst, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716D97C();
        v6 = v24;
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_15(v9);
        sub_1C716D97C();
        v6 = v24;
      }

      ++v1;
      *(v6 + 16) = v10 + 1;
      result = memcpy((v6 + 72 * v10 + 32), __dst, 0x41uLL);
      goto LABEL_2;
    }

    v7 += 72;
    ++v1;
  }

  v11 = 0;
  v12 = *(v2 + 16);
  v13 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v14 = (v2 + 32 + 72 * v11);
  while (v12 != v11)
  {
    if (v11 >= *(v2 + 16))
    {
      goto LABEL_27;
    }

    result = memcpy(__dst, v14, 0x42uLL);
    if ((__dst[3] & 1) == 0 && !__dst[2])
    {
      sub_1C7025FF8(__dst, v22);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v24 = v13;
      if ((v15 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716D940();
        v13 = v24;
      }

      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_15(v16);
        sub_1C716D940();
        v13 = v24;
      }

      ++v11;
      *(v13 + 16) = v17 + 1;
      result = memcpy((v13 + 72 * v17 + 32), __dst, 0x42uLL);
      goto LABEL_14;
    }

    v14 += 72;
    ++v11;
  }

  sub_1C71B9E20(v6);

  v18 = OUTLINED_FUNCTION_52_0();
  v19 = sub_1C7216C90(v18);

  sub_1C71B9F20(v13);

  v20 = OUTLINED_FUNCTION_52_0();
  v21 = sub_1C7216C90(v20);

  return sub_1C7210DC8(v21, v19);
}

void sub_1C721654C(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = v3 + 32 + 56 * v2; ; i += 56)
  {
    if (v4 == v2)
    {
      sub_1C71BA020(v5);
      OUTLINED_FUNCTION_50_19();

      sub_1C7216C90(v1);

      return;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    v7 = *i;
    v8 = *(i + 48);
    v9 = *(i + 32);
    v19 = *(i + 16);
    v20 = v9;
    v21 = v8;
    v18 = v7;
    if ((BYTE8(v9) & 1) == 0 && !v20)
    {
      sub_1C70260B4(&v18, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_16_34();
        sub_1C716DD2C();
        v5 = v22;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      v1 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_15(v11);
        sub_1C716DD2C();
        v5 = v22;
      }

      ++v2;
      *(v5 + 16) = v1;
      v13 = v5 + 56 * v12;
      v14 = v18;
      v15 = v19;
      v16 = v20;
      *(v13 + 80) = v21;
      *(v13 + 48) = v15;
      *(v13 + 64) = v16;
      *(v13 + 32) = v14;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
}

void sub_1C72166A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeExtendedToken(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = 0;
  v12 = *(a1 + 40);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v11)
    {
      sub_1C71BA224();
      OUTLINED_FUNCTION_50_19();

      sub_1C7216C90(v5);

      return;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = *(v5 + 72);
    sub_1C721AB4C(v12 + v15 + v16 * v11, v10);
    if ((v10[56] & 1) != 0 || *(v10 + 6))
    {
      sub_1C721ABB0(v10, type metadata accessor for TimeExtendedToken);
      ++v11;
    }

    else
    {
      sub_1C721AC04(v10, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = a2;
      v23 = v14;
      v21 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_16_34();
        sub_1C716DCA8();
        v14 = v23;
      }

      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_15(v18);
        sub_1C716DCA8();
        v14 = v23;
      }

      ++v11;
      *(v14 + 16) = v19 + 1;
      v7 = v21;
      sub_1C721AC04(v21, v14 + v15 + v19 * v16);
      a2 = v22;
    }
  }

  __break(1u);
}

void sub_1C72168AC(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 64);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v3 + 32 + (v2 << 6)); ; i += 4)
  {
    if (v4 == v2)
    {
      sub_1C71BA624(v5);
      OUTLINED_FUNCTION_50_19();

      sub_1C7216C90(v1);

      return;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    v7 = i[3];
    v8 = *i;
    v9 = i[1];
    v20 = i[2];
    v21 = v7;
    v18 = v8;
    v19 = v9;
    if ((BYTE8(v9) & 1) == 0 && !v19)
    {
      sub_1C7026698(&v18, &v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716DBE8();
        v5 = v22;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      v1 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_15(v11);
        sub_1C716DBE8();
        v5 = v22;
      }

      ++v2;
      *(v5 + 16) = v1;
      v13 = (v5 + (v12 << 6));
      v14 = v18;
      v15 = v19;
      v16 = v21;
      v13[4] = v20;
      v13[5] = v16;
      v13[2] = v14;
      v13[3] = v15;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
}

uint64_t sub_1C72169FC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyPhotoLibraryContext);
  v4 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyPhotoLibraryContext + 8);
  v5 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyPhotoLibraryContext + 16);
  v38 = v3;
  LOWORD(v39) = v4;
  v40 = v5;
  v6 = v3;

  v7 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(a1, &v38);
  v8 = v38;

  v9 = v7 + 64;
  OUTLINED_FUNCTION_11();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  sub_1C75504FC();
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC8];
  v36 = v14;
  if (!v12)
  {
    goto LABEL_2;
  }

LABEL_6:
  while (1)
  {
    v18 = (v15 << 10) | (16 * __clz(__rbit64(v12)));
    v19 = (*(v7 + 48) + v18);
    v20 = v19[1];
    v37 = *v19;
    v21 = (*(v7 + 56) + v18);
    v22 = *v21;
    v23 = v21[1];
    v38 = 0x3A746E656D6F4DLL;
    v39 = 0xE700000000000000;
    sub_1C75504FC();
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v22, v23);
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v38 = v16;
    v24 = OUTLINED_FUNCTION_52_0();
    v26 = sub_1C6F78124(v24, v25);
    if (__OFADD__(v16[2], (v27 & 1) == 0))
    {
      break;
    }

    v28 = v26;
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
    v30 = sub_1C7551A2C();
    v16 = v38;
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_52_0();
      v33 = sub_1C6F78124(v31, v32);
      if ((v29 & 1) != (v34 & 1))
      {
        goto LABEL_18;
      }

      v28 = v33;
    }

    if (v29)
    {
    }

    else
    {
      sub_1C6FCABE4(v28);
    }

    v14 = v36;
    v9 = v7 + 64;
    v12 &= v12 - 1;
    sub_1C70F082C(&v38, v37, v20);

    if (!v12)
    {
LABEL_2:
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {

          return v16;
        }

        v12 = *(v9 + 8 * v17);
        ++v15;
        if (v12)
        {
          v15 = v17;
          goto LABEL_6;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_18:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C7216C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC8];
  do
  {
    sub_1C6FB5E28(v2, v12);
    v4 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = OUTLINED_FUNCTION_51();
    v7 = v6(v5, v4);
    if (v7)
    {
      sub_1C706D154(v7);
      sub_1C7069A44();
      if (*(v8 + 16))
      {
        v9 = v13;
        v10 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v10 + 64))(v9, v10);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C6FC7D38();
      }

      else
      {
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1C7216DD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (a1[2] >= a2)
  {
    sub_1C755180C();

    v12 = 0x2820736573736170;
    v13 = 0xE800000000000000;
    v9 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v9);

    v7 = 540884512;
    v8 = 0xE400000000000000;
  }

  else
  {
    v12 = 0x2820736C696166;
    v13 = 0xE700000000000000;
    v6 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v6);

    v7 = 2112544;
    v8 = 0xE300000000000000;
  }

  MEMORY[0x1CCA5CD70](v7, v8);
  v10 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v10);

  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](v12, v13);

  *a3 = v5;
  a3[1] = v4;
  return result;
}

uint64_t sub_1C7216F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  v83 = a2;
  v15 = *(a2 + 16);
  v17 = *a1;
  v16 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v18 = sub_1C7009C30(v17, v16, v15);

  if (v18)
  {
    swift_bridgeObjectRelease_n();
    return 0;
  }

  swift_beginAccess();
  v19 = *(a3 + 16);
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  sub_1C75504FC();
  sub_1C75504FC();
  v22 = sub_1C7009C30(v20, v21, v19);

  if (*(a1 + 16) == 2 && (v22 & 1) == 0)
  {
LABEL_5:
    swift_bridgeObjectRelease_n();

    return 0;
  }

  v77 = v20;
  swift_beginAccess();
  v78 = *(*(a4 + 16) + 16);
  v81 = v78 < a5;
  v79 = v22;
  if (v78 < a5)
  {
    v24 = *(a1 + 40);
    v89 = v24;
    if (!v24)
    {
      goto LABEL_5;
    }

    v25 = a3;
    sub_1C721AA74(&v89, &v90);
    sub_1C721AA74(&v89, &v90);
    v26 = sub_1C75504FC();
    v27 = sub_1C7238810(v26, v24);

    v28 = *(v27 + 16);

    if (!v28)
    {
      swift_bridgeObjectRelease_n();

      sub_1C721AAE4(&v89);
      return 0;
    }

    swift_beginAccess();
    sub_1C739796C(v24);
    swift_endAccess();
    a3 = v25;
  }

  swift_beginAccess();
  sub_1C6FB0600();
  v29 = *(*(a6 + 16) + 16);
  sub_1C6FB0EFC();
  v30 = *(a6 + 16);
  *(v30 + 16) = v29 + 1;
  v31 = v30 + 16 * v29;
  *(v31 + 32) = v17;
  *(v31 + 40) = v16;
  *(a6 + 16) = v30;
  swift_endAccess();
  swift_beginAccess();
  sub_1C70F082C(&v87, v17, v16);
  swift_endAccess();

  if (v79)
  {
  }

  else
  {
    swift_beginAccess();
    sub_1C70F082C(&v87, v77, v21);
    swift_endAccess();

    v81 = 1;
  }

  v88 = *(a1 + 40);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C721AA74(&v88, &v90);
  v32 = sub_1C754FEEC();
  v33 = sub_1C755117C();

  sub_1C721AAE4(&v88);
  v82 = a3;
  if (os_log_type_enabled(v32, v33))
  {
    log = v32;
    v34 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v87 = v75;
    *v34 = 136315650;
    v35 = sub_1C7217D08();
    v37 = sub_1C6F765A4(v35, v36, &v87);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v38 = v78;
    if (v78 < a5)
    {
      v39 = 0xD000000000000016;
    }

    else
    {
      v39 = 0;
    }

    v40 = 0xE000000000000000;
    if (v78 >= a5)
    {
      v41 = 0xE000000000000000;
    }

    else
    {
      v41 = 0x80000001C75A4D30;
    }

    v42 = sub_1C6F765A4(v39, v41, &v87);

    *(v34 + 14) = v42;
    *(v34 + 22) = 2080;
    if (v79)
    {
      v43 = 0;
    }

    else
    {
      v90 = 0;
      v91 = 0xE000000000000000;
      sub_1C755180C();

      v90 = 0xD000000000000015;
      v91 = 0x80000001C75A4D10;
      MEMORY[0x1CCA5CD70](v77, v21);
      v43 = v90;
      v40 = v91;
    }

    v44 = v81;
    v45 = sub_1C6F765A4(v43, v40, &v87);

    *(v34 + 24) = v45;
    _os_log_impl(&dword_1C6F5C000, log, v33, "%s\n\tadding asset%s%s", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v75, -1, -1);
    MEMORY[0x1CCA5F8E0](v34, -1, -1);
  }

  else
  {

    v44 = v81;
    v38 = v78;
  }

  if (v38 < a5)
  {
    swift_beginAccess();
    if (*(*(a4 + 16) + 16) < a5)
    {

      v46 = sub_1C754FEEC();
      v47 = sub_1C755117C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 134218240;
        swift_beginAccess();
        *(v48 + 4) = *(*(a4 + 16) + 16);

        *(v48 + 12) = 2048;
        *(v48 + 14) = a5;
        _os_log_impl(&dword_1C6F5C000, v46, v47, "%ld features represented out of %ld", v48, 0x16u);
        MEMORY[0x1CCA5F8E0](v48, -1, -1);

        if (!v44)
        {
          return 1;
        }
      }

      else
      {

        if (!v44)
        {
          return 1;
        }
      }

      goto LABEL_35;
    }

    v49 = sub_1C754FEEC();
    v50 = sub_1C755117C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1C6F5C000, v49, v50, "Feature representation complete", v51, 2u);
      MEMORY[0x1CCA5F8E0](v51, -1, -1);
    }
  }

  if (!v44)
  {
    return 1;
  }

LABEL_35:
  result = swift_beginAccess();
  v52 = *(a8 + 16);
  v53 = __OFADD__(v52, 1);
  v54 = v52 + 1;
  if (v53)
  {
LABEL_53:
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v54;

    v55 = sub_1C754FEEC();
    v56 = sub_1C755117C();
    v80 = a4;
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      swift_beginAccess();
      *(v57 + 4) = *(a8 + 16);
      v58 = a8;

      _os_log_impl(&dword_1C6F5C000, v55, v56, "Starting to process waiting room level %ld", v57, 0xCu);
      MEMORY[0x1CCA5F8E0](v57, -1, -1);
    }

    else
    {

      v58 = a8;
    }

    swift_beginAccess();
    v59 = *(a9 + 16);
    v60 = *(v59 + 16);
    sub_1C75504FC();
    result = swift_beginAccess();
    v61 = (v59 + 72);
    v62 = -v60;
    v63 = -1;
    do
    {
      if (v62 + v63 == -1)
      {
        break;
      }

      if (++v63 >= *(v59 + 16))
      {
        __break(1u);
        goto LABEL_53;
      }

      v64 = v61 + 6;
      v65 = *(v61 - 4);
      v66 = *(v61 - 24);
      v67 = *(v61 - 2);
      v68 = *(v61 - 1);
      v69 = *v61;
      v90 = *(v61 - 5);
      v91 = v65;
      v92 = v66;
      v93 = v67;
      v94 = v68;
      v95 = v69;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7216F94(&v90, v83, v82, v80, a5, a6, a7, v58, a9, a10);

      v61 = v64;
    }

    while (*(*(a6 + 16) + 16) < a10);

    v70 = sub_1C754FEEC();
    v71 = sub_1C755117C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 134217984;
      swift_beginAccess();
      *(v72 + 4) = *(v58 + 16);

      _os_log_impl(&dword_1C6F5C000, v70, v71, "Done processing waiting room level %ld", v72, 0xCu);
      MEMORY[0x1CCA5F8E0](v72, -1, -1);
    }

    else
    {
    }

    result = swift_beginAccess();
    v73 = *(v58 + 16);
    v53 = __OFSUB__(v73, 1);
    v74 = v73 - 1;
    if (!v53)
    {
      *(v58 + 16) = v74;
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t FreeformStoryAssetElector.StochatizedAsset.PriorityType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void __swiftcall FreeformStoryAssetElector.StochatizedAsset.init(uuid:priorityType:isBadQuality:stochatizedCurationScore:isPlayable:hasPromotableLocation:originalCurationScore:)(PhotosIntelligence::FreeformStoryAssetElector::StochatizedAsset *__return_ptr retstr, Swift::String uuid, PhotosIntelligence::FreeformStoryAssetElector::StochatizedAsset::PriorityType priorityType, Swift::Bool isBadQuality, Swift::Double stochatizedCurationScore, Swift::Bool isPlayable, Swift::Bool hasPromotableLocation, Swift::Double originalCurationScore)
{
  v8 = *priorityType;
  retstr->uuid = uuid;
  retstr->priorityType = v8;
  retstr->isBadQuality = isBadQuality;
  retstr->stochatizedCurationScore = stochatizedCurationScore;
  retstr->isPlayable = isPlayable;
  retstr->hasPromotableLocation = hasPromotableLocation;
  retstr->originalCurationScore = originalCurationScore;
}

uint64_t static FreeformStoryAssetElector.sortedAssetUUIDs(from:)(uint64_t a1)
{
  v11 = a1;
  sub_1C75504FC();
  sub_1C72180F4(&v11);
  v1 = v11;
  v2 = *(v11 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v11 = v3;
      v7 = *(v3 + 16);
      v8 = *(v3 + 24);
      sub_1C75504FC();
      if (v7 >= v8 >> 1)
      {
        OUTLINED_FUNCTION_146();
        sub_1C6F7ED9C();
        v3 = v11;
      }

      *(v3 + 16) = v7 + 1;
      v9 = v3 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

BOOL sub_1C7217AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 16) == 0;
  v4 = *(a2 + 16);
  if (v3 != (*(a2 + 16) != 0))
  {
    v3 = v2 == 1;
    if (v3 != (v4 != 1))
    {
      v3 = v2 == 2;
      if (v3 != (v4 != 2))
      {
        v3 = *(a2 + 17);
        if (*(a1 + 17) == v3)
        {
          v5 = *(a1 + 24);
          v6 = *(a2 + 24);
          if (v5 == v6)
          {
            v3 = *(a1 + 32);
            if (v3 == *(a2 + 32))
            {
              v3 = *(a1 + 33);
              if (v3 == *(a2 + 33))
              {
                if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
                {
                  return sub_1C7551DBC() & 1;
                }

                return 0;
              }
            }
          }

          else
          {
            return v6 < v5;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t FreeformStoryAssetElector.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  memcpy(__dst, (v0 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyElements), 0x130uLL);
  sub_1C6FE0DC0(__dst);
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence25FreeformStoryAssetElector_storyPhotoLibraryContext);

  return v0;
}

uint64_t FreeformStoryAssetElector.__deallocating_deinit()
{
  FreeformStoryAssetElector.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C7217D08()
{
  if (v0[5])
  {
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](*v0, v0[1]);
    MEMORY[0x1CCA5CD70](10272, 0xE200000000000000);
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
    sub_1C75504FC();
    v1 = sub_1C7033D84(8);
    v2 = MEMORY[0x1CCA5CC40](v1);
    v4 = v3;

    MEMORY[0x1CCA5CD70](v2, v4);

    MEMORY[0x1CCA5CD70](542842924, 0xE400000000000000);
    sub_1C703FD7C();
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v26 = MEMORY[0x1E69E7CC0];
      sub_1C716D51C();
      v8 = v6 + 40;
      do
      {
        sub_1C75504FC();
        sub_1C755082C();
        v9 = sub_1C755098C();
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v16 = *(v26 + 16);
        if (v16 >= *(v26 + 24) >> 1)
        {
          sub_1C716D51C();
        }

        *(v26 + 16) = v16 + 1;
        v17 = (v26 + 32 * v16);
        v17[4] = v9;
        v17[5] = v11;
        v17[6] = v13;
        v17[7] = v15;
        v8 += 16;
        --v7;
      }

      while (v7);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219368);
    sub_1C7099594(&qword_1EDD06A40, &qword_1EC219368);
    sub_1C721AA20();
    v22 = sub_1C7550A4C();
    v24 = v23;

    MEMORY[0x1CCA5CD70](v22, v24);

    MEMORY[0x1CCA5CD70](23840, 0xE200000000000000);
  }

  else
  {
    MEMORY[0x1CCA5CD70](*v0, v0[1]);
    MEMORY[0x1CCA5CD70](10272, 0xE200000000000000);
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
    sub_1C75504FC();
    v18 = sub_1C7033D84(8);
    v19 = MEMORY[0x1CCA5CC40](v18);
    v21 = v20;

    MEMORY[0x1CCA5CD70](v19, v21);
  }

  return 0;
}

uint64_t sub_1C72180F4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422BAC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C7218464(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C7218160(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t a4, void (*a5)(char *, int64_t, char *))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1C7218558(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

unint64_t sub_1C7218200()
{
  result = qword_1EC219360;
  if (!qword_1EC219360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219360);
  }

  return result;
}

uint64_t type metadata accessor for FreeformStoryAssetElector()
{
  result = qword_1EDD09428;
  if (!qword_1EDD09428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C72182A8()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C72183C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C7218408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C7218464(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C72187F8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C721866C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C7218558(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(char *, int64_t, char *))
{
  v7 = a1[1];
  result = sub_1C7551D7C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v11 = sub_1C7550BBC();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;
      sub_1C7218FF4(v12, v13, a1, v9, a4);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return sub_1C70B4A38(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1C721866C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v4 = a3;
  v6 = *a4;
  v7 = *a4 + 48 * a3 - 48;
  v8 = result - a3;
  while (2)
  {
    v9 = v8;
    v10 = v7;
    do
    {
      v11 = (v10 + 48);
      result = *(v10 + 48);
      v12 = *(v10 + 64);
      v13 = *(v10 + 64) == 0;
      v14 = *(v10 + 16);
      if (v13 == (*(v10 + 16) != 0) || (v13 = v12 == 1, v13 == (v14 != 1)) || (v13 = v12 == 2, v13 == (v14 != 2)) || (v13 = *(v10 + 17), *(v10 + 65) != v13))
      {
LABEL_11:
        if ((v13 & 1) == 0)
        {
          break;
        }

        goto LABEL_12;
      }

      v15 = *(v10 + 72);
      v16 = *(v10 + 24);
      if (v15 == v16)
      {
        v13 = *(v10 + 80);
        if (v13 != *(v10 + 32))
        {
          goto LABEL_11;
        }

        v13 = *(v10 + 81);
        if (v13 != *(v10 + 33))
        {
          goto LABEL_11;
        }

        if (result == *v10 && *(v10 + 56) == *(v10 + 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }
      }

      else if (v16 >= v15)
      {
        break;
      }

LABEL_12:
      if (!v6)
      {
        __break(1u);
        return result;
      }

      v18 = *(v10 + 64);
      v17 = *(v10 + 80);
      v19 = *v11;
      v20 = *(v10 + 16);
      *v11 = *v10;
      *(v10 + 64) = v20;
      v21 = *(v10 + 32);
      *v10 = v19;
      *(v10 + 16) = v18;
      *(v10 + 32) = v17;
      v10 -= 48;
      v11[2] = v21;
    }

    while (!__CFADD__(v9++, 1));
    ++v4;
    v7 += 48;
    --v8;
    if (v4 != a2)
    {
      continue;
    }

    return result;
  }
}

void sub_1C72187F8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v133 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_119;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_3:
  if (v6 + 1 >= v5)
  {
    v5 = v6 + 1;
    goto LABEL_34;
  }

  v8 = *v133;
  v9 = (*v133 + 48 * (v6 + 1));
  v10 = *v9;
  v11 = v9[2];
  v131[1] = v9[1];
  v131[2] = v11;
  v131[0] = v10;
  v12 = v9[1];
  v128 = *v9;
  v129 = v12;
  v130 = v9[2];
  v13 = (v8 + 48 * v6);
  v15 = v13[1];
  v14 = v13[2];
  v132[0] = *v13;
  v132[1] = v15;
  v132[2] = v14;
  v16 = v13[1];
  v125 = *v13;
  v126 = v16;
  v127 = v13[2];
  v17 = sub_1C7217AE0(&v128, &v125);
  if (v4)
  {
    v119 = v125;
    v120 = v126;
    v121 = v127;
    sub_1C721A9E8(v131, &v122);
    sub_1C721A9E8(v132, &v122);
    sub_1C721AC68(&v119);
    v122 = v128;
    v123 = v129;
    v124 = v130;
    sub_1C721AC68(&v122);
    goto LABEL_131;
  }

  v18 = v17;
  v119 = v125;
  v120 = v126;
  v121 = v127;
  sub_1C721A9E8(v131, v118);
  sub_1C721A9E8(v132, v118);
  sub_1C721AC68(&v119);
  v122 = v128;
  v123 = v129;
  v124 = v130;
  sub_1C721AC68(&v122);
  v19 = v6 + 2;
  v20 = 48 * v6;
  for (i = (v8 + 48 * v6 + 129); ; i += 48)
  {
    if (v19 >= v5)
    {
      goto LABEL_26;
    }

    v22 = *(i - 17);
    v23 = *(i - 17) == 0;
    v24 = *(i - 65);
    if (v23 == (*(i - 65) != 0))
    {
      break;
    }

    v23 = v22 == 1;
    if (v23 == (v24 != 1))
    {
      break;
    }

    v23 = v22 == 2;
    if (v23 == (v24 != 2))
    {
      break;
    }

    v23 = *(i - 64);
    if (*(i - 16) != v23)
    {
      break;
    }

    v25 = *(i - 9);
    v26 = *(i - 57);
    if (v25 != v26)
    {
      v23 = v26 < v25;
      break;
    }

    v23 = *(i - 1);
    if (v23 != *(i - 49))
    {
      break;
    }

    v23 = *i;
    if (v23 != *(i - 48))
    {
      break;
    }

    if (*(i - 33) != *(i - 81) || *(i - 25) != *(i - 73))
    {
      v23 = sub_1C7551DBC();
      break;
    }

    if (v18)
    {
      v5 = v19;
      goto LABEL_27;
    }

LABEL_21:
    ++v19;
  }

  if (((v18 ^ v23) & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = v19;
LABEL_26:
  if (!v18)
  {
LABEL_34:
    v39 = v133[1];
    if (v5 >= v39)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v5, v6))
    {
      goto LABEL_152;
    }

    if (v5 - v6 >= a4)
    {
      goto LABEL_43;
    }

    if (__OFADD__(v6, a4))
    {
      goto LABEL_153;
    }

    if (v6 + a4 >= v39)
    {
      v40 = v133[1];
    }

    else
    {
      v40 = (v6 + a4);
    }

    if (v40 < v6)
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    if (v5 == v40)
    {
LABEL_43:
      v41 = v5;
      goto LABEL_44;
    }

    v85 = *v133;
    v86 = *v133 + 48 * v5 - 48;
    v116 = v40;
    v117 = v6;
    v87 = (v6 - v5);
    while (1)
    {
      v88 = v87;
      v89 = v86;
      while (1)
      {
        v90 = (v89 + 48);
        v91 = *(v89 + 64);
        v92 = *(v89 + 64) == 0;
        v93 = *(v89 + 16);
        if (v92 == (*(v89 + 16) != 0))
        {
          goto LABEL_104;
        }

        v92 = v91 == 1;
        if (v92 == (v93 != 1))
        {
          goto LABEL_104;
        }

        v92 = v91 == 2;
        if (v92 == (v93 != 2))
        {
          goto LABEL_104;
        }

        v92 = *(v89 + 17);
        if (*(v89 + 65) != v92)
        {
          goto LABEL_104;
        }

        v94 = *(v89 + 72);
        v95 = *(v89 + 24);
        if (v94 == v95)
        {
          break;
        }

        if (v95 >= v94)
        {
          goto LABEL_116;
        }

LABEL_105:
        if (!v85)
        {
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        v97 = *(v89 + 64);
        v96 = *(v89 + 80);
        v98 = *v90;
        v99 = *(v89 + 16);
        *v90 = *v89;
        *(v89 + 64) = v99;
        v100 = *(v89 + 32);
        *v89 = v98;
        *(v89 + 16) = v97;
        *(v89 + 32) = v96;
        v89 -= 48;
        v90[2] = v100;
        if (__CFADD__(v88++, 1))
        {
          goto LABEL_116;
        }
      }

      v92 = *(v89 + 80);
      if (v92 != *(v89 + 32) || (v92 = *(v89 + 81), v92 != *(v89 + 33)))
      {
LABEL_104:
        if ((v92 & 1) == 0)
        {
          goto LABEL_116;
        }

        goto LABEL_105;
      }

      v102 = *(v89 + 48) == *v89 && *(v89 + 56) == *(v89 + 8);
      if (!v102 && (sub_1C7551DBC() & 1) != 0)
      {
        goto LABEL_105;
      }

LABEL_116:
      ++v5;
      v86 += 48;
      --v87;
      v41 = v116;
      if (v5 == v116)
      {
        v6 = v117;
LABEL_44:
        if (v41 < v6)
        {
          goto LABEL_151;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB17EC();
          v7 = v103;
        }

        v42 = *(v7 + 2);
        v43 = v42 + 1;
        if (v42 >= *(v7 + 3) >> 1)
        {
          sub_1C6FB17EC();
          v7 = v104;
        }

        *(v7 + 2) = v43;
        v44 = v7 + 32;
        v45 = &v7[16 * v42 + 32];
        *v45 = v6;
        *(v45 + 1) = v41;
        v117 = *a1;
        if (!*a1)
        {
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
          return;
        }

        v115 = v41;
        if (v42)
        {
          while (2)
          {
            v46 = v43 - 1;
            v47 = &v44[16 * v43 - 16];
            v48 = &v7[16 * v43];
            if (v43 >= 4)
            {
              v53 = &v44[16 * v43];
              v54 = *(v53 - 8);
              v55 = *(v53 - 7);
              v59 = __OFSUB__(v55, v54);
              v56 = v55 - v54;
              if (v59)
              {
                goto LABEL_136;
              }

              v58 = *(v53 - 6);
              v57 = *(v53 - 5);
              v59 = __OFSUB__(v57, v58);
              v51 = v57 - v58;
              v52 = v59;
              if (v59)
              {
                goto LABEL_137;
              }

              v60 = *(v48 + 1);
              v61 = v60 - *v48;
              if (__OFSUB__(v60, *v48))
              {
                goto LABEL_139;
              }

              v59 = __OFADD__(v51, v61);
              v62 = v51 + v61;
              if (v59)
              {
                goto LABEL_142;
              }

              if (v62 >= v56)
              {
                v76 = *v47;
                v75 = *(v47 + 1);
                v59 = __OFSUB__(v75, v76);
                v77 = v75 - v76;
                if (v59)
                {
                  goto LABEL_150;
                }

                if (v51 < v77)
                {
                  v46 = v43 - 2;
                }
              }

              else
              {
LABEL_64:
                if (v52)
                {
                  goto LABEL_138;
                }

                v64 = *v48;
                v63 = *(v48 + 1);
                v65 = __OFSUB__(v63, v64);
                v66 = v63 - v64;
                v67 = v65;
                if (v65)
                {
                  goto LABEL_141;
                }

                v68 = *(v47 + 1);
                v69 = v68 - *v47;
                if (__OFSUB__(v68, *v47))
                {
                  goto LABEL_144;
                }

                if (__OFADD__(v66, v69))
                {
                  goto LABEL_146;
                }

                if (v66 + v69 < v51)
                {
                  goto LABEL_79;
                }

                if (v51 < v69)
                {
                  v46 = v43 - 2;
                }
              }
            }

            else
            {
              if (v43 == 3)
              {
                v49 = *(v7 + 4);
                v50 = *(v7 + 5);
                v59 = __OFSUB__(v50, v49);
                v51 = v50 - v49;
                v52 = v59;
                goto LABEL_64;
              }

              if (v43 < 2)
              {
                goto LABEL_140;
              }

              v71 = *v48;
              v70 = *(v48 + 1);
              v59 = __OFSUB__(v70, v71);
              v66 = v70 - v71;
              v67 = v59;
LABEL_79:
              if (v67)
              {
                goto LABEL_143;
              }

              v73 = *v47;
              v72 = *(v47 + 1);
              v59 = __OFSUB__(v72, v73);
              v74 = v72 - v73;
              if (v59)
              {
                goto LABEL_145;
              }

              if (v74 < v66)
              {
                break;
              }
            }

            if (v46 - 1 >= v43)
            {
              __break(1u);
LABEL_133:
              __break(1u);
LABEL_134:
              __break(1u);
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              __break(1u);
LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
              goto LABEL_154;
            }

            if (!*v133)
            {
              goto LABEL_158;
            }

            v78 = &v44[16 * v46 - 16];
            v79 = *v78;
            v80 = &v44[16 * v46];
            v81 = *(v80 + 1);
            sub_1C7219678((*v133 + 48 * *v78), (*v133 + 48 * *v80), (*v133 + 48 * v81), v117);
            if (v4)
            {
              goto LABEL_131;
            }

            if (v81 < v79)
            {
              goto LABEL_133;
            }

            v82 = v7;
            v83 = *(v7 + 2);
            if (v46 > v83)
            {
              goto LABEL_134;
            }

            *v78 = v79;
            *(v78 + 1) = v81;
            if (v46 >= v83)
            {
              goto LABEL_135;
            }

            v43 = v83 - 1;
            sub_1C7423CF4(v80 + 16, v83 - 1 - v46, &v44[16 * v46]);
            *(v82 + 2) = v83 - 1;
            v84 = v83 > 2;
            v7 = v82;
            if (!v84)
            {
              break;
            }

            continue;
          }
        }

        v5 = v133[1];
        v6 = v115;
        if (v115 >= v5)
        {
LABEL_119:
          v117 = *a1;
          if (*a1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_156;
            }

            goto LABEL_121;
          }

          goto LABEL_162;
        }

        goto LABEL_3;
      }
    }
  }

LABEL_27:
  if (v5 >= v6)
  {
    if (v6 < v5)
    {
      v28 = 48 * v5 - 48;
      v29 = v5;
      v30 = v6;
      do
      {
        if (v30 != --v29)
        {
          v31 = *v133;
          if (!*v133)
          {
            goto LABEL_160;
          }

          v32 = (v31 + v20);
          v33 = (v31 + v28);
          v34 = *v32;
          v35 = v32[1];
          v36 = v32[2];
          v38 = v33[1];
          v37 = v33[2];
          *v32 = *v33;
          v32[1] = v38;
          v32[2] = v37;
          v33[1] = v35;
          v33[2] = v36;
          *v33 = v34;
        }

        ++v30;
        v28 -= 48;
        v20 += 48;
      }

      while (v30 < v29);
    }

    goto LABEL_34;
  }

LABEL_155:
  __break(1u);
LABEL_156:
  v7 = sub_1C7420830();
LABEL_121:
  v105 = v7 + 16;
  v106 = *(v7 + 2);
  while (v106 >= 2)
  {
    if (!*v133)
    {
      goto LABEL_159;
    }

    v107 = v7;
    v108 = &v7[16 * v106];
    v109 = *v108;
    v110 = &v105[2 * v106];
    v111 = *(v110 + 1);
    sub_1C7219678((*v133 + 48 * *v108), (*v133 + 48 * *v110), (*v133 + 48 * v111), v117);
    if (v4)
    {
      break;
    }

    if (v111 < v109)
    {
      goto LABEL_147;
    }

    if (v106 - 2 >= *v105)
    {
      goto LABEL_148;
    }

    *v108 = v109;
    *(v108 + 1) = v111;
    v112 = *v105 - v106;
    if (*v105 < v106)
    {
      goto LABEL_149;
    }

    v106 = *v105 - 1;
    sub_1C7423CF4(v110 + 16, v112, v110);
    *v105 = v106;
    v7 = v107;
  }

LABEL_131:
}

void sub_1C7218FF4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(char *, int64_t, char *))
{
  v6 = v5;
  v7 = a3[1];
  v99 = MEMORY[0x1E69E7CC0];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v12 = *a3;
        v13 = (*a3 + 24 * v11);
        v14 = *v13;
        v15 = v13[1];
        v16 = (*a3 + 24 * v10);
        if (v14 == *v16 && v15 == v16[1])
        {
          v18 = 0;
        }

        else
        {
          v18 = sub_1C7551DBC();
        }

        v11 = v10 + 2;
        v19 = v12 + 24 * v10;
        v20 = 24 * v10;
        v21 = (v19 + 56);
        while (v11 < v7)
        {
          if (*(v21 - 1) == *(v21 - 4) && *v21 == *(v21 - 3))
          {
            if (v18)
            {
              goto LABEL_21;
            }
          }

          else if ((v18 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v11;
          v21 += 3;
        }

        if ((v18 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v11 < v10)
        {
          goto LABEL_122;
        }

        if (v10 < v11)
        {
          v23 = 24 * v11;
          v24 = v11;
          v25 = v10;
          do
          {
            if (v25 != --v24)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v27 = (v26 + v20);
              v28 = v26 + v23;
              v29 = *v27;
              v30 = *(v27 + 1);
              v31 = *(v28 - 24);
              v27[2] = *(v28 - 8);
              *v27 = v31;
              *(v28 - 24) = v29;
              *(v28 - 16) = v30;
            }

            ++v25;
            v23 -= 24;
            v20 += 24;
          }

          while (v25 < v24);
        }
      }

LABEL_28:
      v32 = a3[1];
      if (v11 < v32)
      {
        if (__OFSUB__(v11, v10))
        {
          goto LABEL_121;
        }

        if (v11 - v10 < a4)
        {
          if (__OFADD__(v10, a4))
          {
            goto LABEL_123;
          }

          v96 = v6;
          if (v10 + a4 >= v32)
          {
            v33 = a3[1];
          }

          else
          {
            v33 = v10 + a4;
          }

          if (v33 < v10)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v11 != v33)
          {
            v34 = *a3;
            v35 = *a3 + 24 * v11 - 24;
            v94 = v10;
            v36 = v10 - v11;
            do
            {
              v37 = v11;
              v38 = (v34 + 24 * v11);
              v39 = *v38;
              v40 = v38[1];
              v41 = v36;
              v42 = v35;
              do
              {
                v43 = v39 == *v42 && v40 == *(v42 + 8);
                if (v43 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_125;
                }

                v44 = *(v42 + 32);
                v45 = *(v42 + 16);
                v39 = *(v42 + 24);
                *(v42 + 24) = *v42;
                *(v42 + 40) = v45;
                *v42 = v39;
                *(v42 + 8) = v44;
                v40 = v44;
                v42 -= 24;
              }

              while (!__CFADD__(v41++, 1));
              ++v11;
              v35 += 24;
              --v36;
            }

            while (v37 + 1 != v33);
            v11 = v33;
            v10 = v94;
          }

          v6 = v96;
        }
      }

      if (v11 < v10)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB17EC();
        v9 = v90;
      }

      v47 = v9[2];
      v48 = v47 + 1;
      if (v47 >= v9[3] >> 1)
      {
        sub_1C6FB17EC();
        v9 = v91;
      }

      v9[2] = v48;
      v49 = v9 + 4;
      v50 = &v9[2 * v47 + 4];
      *v50 = v10;
      v50[1] = v11;
      v97 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          v52 = &v49[2 * v48 - 2];
          v53 = &v9[2 * v48];
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v54 = v9[4];
            v55 = v9[5];
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_70:
            if (v57)
            {
              goto LABEL_110;
            }

            v69 = *v53;
            v68 = v53[1];
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_113;
            }

            v73 = v52[1];
            v74 = v73 - *v52;
            if (__OFSUB__(v73, *v52))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v71, v74))
            {
              goto LABEL_118;
            }

            if (v71 + v74 >= v56)
            {
              if (v56 < v74)
              {
                v51 = v48 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v48 < 2)
          {
            goto LABEL_112;
          }

          v76 = *v53;
          v75 = v53[1];
          v64 = __OFSUB__(v75, v76);
          v71 = v75 - v76;
          v72 = v64;
LABEL_85:
          if (v72)
          {
            goto LABEL_115;
          }

          v78 = *v52;
          v77 = v52[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_117;
          }

          if (v79 < v71)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v51 - 1 >= v48)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v83 = &v49[2 * v51 - 2];
          v84 = *v83;
          v85 = &v49[2 * v51];
          v86 = v85[1];
          sub_1C72199A0((*a3 + 24 * *v83), (*a3 + 24 * *v85), *a3 + 24 * v86, v97, a5);
          if (v6)
          {
            goto LABEL_103;
          }

          if (v86 < v84)
          {
            goto LABEL_105;
          }

          v87 = v9;
          v88 = v9[2];
          if (v51 > v88)
          {
            goto LABEL_106;
          }

          *v83 = v84;
          v83[1] = v86;
          if (v51 >= v88)
          {
            goto LABEL_107;
          }

          v48 = v88 - 1;
          memmove(&v49[2 * v51], v85 + 2, 16 * (v88 - 1 - v51));
          v87[2] = v88 - 1;
          v89 = v88 > 2;
          v9 = v87;
          v6 = 0;
          if (!v89)
          {
            goto LABEL_99;
          }
        }

        v58 = &v49[2 * v48];
        v59 = *(v58 - 8);
        v60 = *(v58 - 7);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_108;
        }

        v63 = *(v58 - 6);
        v62 = *(v58 - 5);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_109;
        }

        v65 = v53[1];
        v66 = v65 - *v53;
        if (__OFSUB__(v65, *v53))
        {
          goto LABEL_111;
        }

        v64 = __OFADD__(v56, v66);
        v67 = v56 + v66;
        if (v64)
        {
          goto LABEL_114;
        }

        if (v67 >= v61)
        {
          v81 = *v52;
          v80 = v52[1];
          v64 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v64)
          {
            goto LABEL_119;
          }

          if (v56 < v82)
          {
            v51 = v48 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v7 = a3[1];
      v8 = v11;
      if (v11 >= v7)
      {
        v99 = v9;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1C7219540(&v99, *a1, a3, a5);
LABEL_103:
}

uint64_t sub_1C7219540(uint64_t *a1, char *a2, void *a3, void (*a4)(char *, int64_t, char *))
{
  i = a1;
  v17 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v17 = result;
  }

  v13 = i;
  *i = v17;
  v7 = (v17 + 16);
  for (i = *(v17 + 16); ; *v7 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v13 = v17;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v8 = (v17 + 16 * i);
    v9 = *v8;
    v10 = &v7[2 * i];
    v11 = v10[1];
    sub_1C72199A0((*a3 + 24 * *v8), (*a3 + 24 * *v10), *a3 + 24 * v11, a2, a4);
    if (v4)
    {
      goto LABEL_10;
    }

    if (v11 < v9)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v8 = v9;
    v8[1] = v11;
    v12 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v10, v10 + 2, 16 * v12);
  }

  *v13 = v17;
  __break(1u);
  return result;
}

uint64_t sub_1C7219678(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_1C741E414(a1, (a2 - a1) / 48, a4);
    v10 = &v4[6 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v23 = v7;
        goto LABEL_56;
      }

      v12 = v6[16];
      v13 = v6[16] == 0;
      v14 = *(v4 + 16);
      if (v13 == (*(v4 + 16) != 0))
      {
        break;
      }

      v13 = v12 == 1;
      if (v13 == (v14 != 1))
      {
        break;
      }

      v13 = v12 == 2;
      if (v13 == (v14 != 2))
      {
        break;
      }

      v13 = *(v4 + 17);
      if (v6[17] != v13)
      {
        break;
      }

      v15 = *(v6 + 3);
      v16 = v4[3];
      if (v15 == v16)
      {
        v13 = v6[32];
        if (v13 != *(v4 + 32))
        {
          break;
        }

        v13 = v6[33];
        if (v13 != *(v4 + 33))
        {
          break;
        }

        v18 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
        if (v18 || (sub_1C7551DBC() & 1) == 0)
        {
LABEL_25:
          v17 = v4;
          v18 = v7 == v4;
          v4 += 6;
          if (v18)
          {
            goto LABEL_27;
          }

LABEL_26:
          v19 = *v17;
          v20 = v17[2];
          *(v7 + 1) = v17[1];
          *(v7 + 2) = v20;
          *v7 = v19;
          goto LABEL_27;
        }
      }

      else if (v16 >= v15)
      {
        goto LABEL_25;
      }

LABEL_15:
      v17 = v6;
      v18 = v7 == v6;
      v6 += 48;
      if (!v18)
      {
        goto LABEL_26;
      }

LABEL_27:
      v7 += 48;
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  sub_1C741E414(a2, (a3 - a2) / 48, a4);
  v21 = &v4[6 * v9];
LABEL_29:
  v22 = 0;
  v23 = v6;
  v6 -= 48;
  while (1)
  {
    v10 = &v21[v22 / 8];
    if (&v21[v22 / 8] <= v4 || v23 <= v7)
    {
      break;
    }

    v25 = *(v10 - 32);
    v26 = *(v10 - 32) == 0;
    v27 = *(v23 - 32);
    if (v26 == (*(v23 - 32) != 0) || (v26 = v25 == 1, v26 == (v27 != 1)) || (v26 = v25 == 2, v26 == (v27 != 2)) || (v26 = *(v23 - 31), *(v10 - 31) != v26))
    {
LABEL_42:
      if (v26)
      {
        goto LABEL_53;
      }

      goto LABEL_43;
    }

    v28 = *(v10 - 3);
    v29 = *(v23 - 3);
    if (v28 == v29)
    {
      v26 = *(v10 - 16);
      if (v26 != *(v23 - 16))
      {
        goto LABEL_42;
      }

      v26 = *(v10 - 15);
      if (v26 != *(v23 - 15))
      {
        goto LABEL_42;
      }

      v33 = *(v10 - 6) == *(v23 - 6) && *(v10 - 5) == *(v23 - 5);
      if (!v33 && (sub_1C7551DBC() & 1) != 0)
      {
LABEL_53:
        v34 = &v5[v22];
        v5 = &v5[v22 - 48];
        v21 = (v21 + v22);
        if (v34 != v23)
        {
          v35 = *v6;
          v36 = *(v6 + 2);
          *(v5 + 1) = *(v6 + 1);
          *(v5 + 2) = v36;
          *v5 = v35;
        }

        goto LABEL_29;
      }
    }

    else if (v29 < v28)
    {
      goto LABEL_53;
    }

LABEL_43:
    if (v10 != &v5[v22])
    {
      v30 = &v5[v22 - 48];
      v31 = *(v10 - 3);
      v32 = *(v10 - 1);
      *(v30 + 1) = *(v10 - 2);
      *(v30 + 2) = v32;
      *v30 = v31;
    }

    v22 -= 48;
  }

LABEL_56:
  v37 = (v10 - v4) / 48;
  if (v23 != v4 || v23 >= &v4[6 * v37])
  {
    memmove(v23, v4, 48 * v37);
  }

  return 1;
}

uint64_t sub_1C72199A0(char *a1, char *a2, unint64_t a3, char *a4, void (*a5)(char *, int64_t, char *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 24;
  v10 = (a3 - a2) / 24;
  if (v9 < v10)
  {
    a5(a1, (a2 - a1) / 24, a4);
    v11 = &v5[24 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_36;
      }

      v13 = *v7 == *v5 && *(v7 + 1) == *(v5 + 1);
      if (v13 || (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v14 = v7;
      v13 = v8 == v7;
      v7 += 24;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      v8 += 24;
    }

    v14 = v5;
    v13 = v8 == v5;
    v5 += 24;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    v15 = *v14;
    *(v8 + 2) = *(v14 + 2);
    *v8 = v15;
    goto LABEL_17;
  }

  a5(a2, (a3 - a2) / 24, a4);
  v11 = &v5[24 * v10];
LABEL_19:
  v16 = v7 - 24;
  for (v6 -= 24; v11 > v5 && v7 > v8; v6 -= 24)
  {
    v18 = *(v11 - 3) == *(v7 - 3) && *(v11 - 2) == *(v7 - 2);
    if (!v18 && (sub_1C7551DBC() & 1) != 0)
    {
      v13 = v6 + 24 == v7;
      v7 -= 24;
      if (!v13)
      {
        v20 = *v16;
        *(v6 + 16) = *(v16 + 2);
        *v6 = v20;
        v7 = v16;
      }

      goto LABEL_19;
    }

    if (v11 != (v6 + 24))
    {
      v19 = *(v11 - 24);
      *(v6 + 16) = *(v11 - 1);
      *v6 = v19;
    }

    v11 -= 24;
  }

LABEL_36:
  v21 = (v11 - v5) / 24;
  if (v7 != v5 || v7 >= &v5[24 * v21])
  {
    memmove(v7, v5, 24 * v21);
  }

  return 1;
}

void *sub_1C7219B70(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C721A2B0(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1C7219BF8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C721A624(v9, a2, a3, a4, a5, sub_1C71FFBFC);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_1C7219C9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v42 = a5;
  sub_1C6F78034(v41);
  v6 = v41[1];
  v7 = v41[3];
  v8 = v41[4];
  v34 = v41[5];
  v35 = v41[0];
  v9 = (v41[2] + 64) >> 6;
  sub_1C75504FC();

  v33 = v6;
  if (v8)
  {
    while (1)
    {
      v36 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v35 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v35 + 56) + 8 * v12);
      v40[0] = *v13;
      v40[1] = v14;
      v40[2] = v15;
      sub_1C75504FC();
      sub_1C75504FC();
      v34(&v37, v40);

      v16 = v37;
      v17 = v38;
      v18 = v39;
      v19 = *v42;
      v21 = sub_1C6F78124(v37, v38);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v24 = v20;
      if (v19[3] >= v22 + v23)
      {
        if ((v36 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C73541F4();
        v25 = sub_1C6F78124(v16, v17);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_24;
        }

        v21 = v25;
      }

      v8 &= v8 - 1;
      v27 = *v42;
      if (v24)
      {

        *(v27[7] + 8 * v21) = v18;
      }

      else
      {
        v27[(v21 >> 6) + 8] |= 1 << v21;
        v28 = (v27[6] + 16 * v21);
        *v28 = v16;
        v28[1] = v17;
        *(v27[7] + 8 * v21) = v18;
        v29 = v27[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_23;
        }

        v27[2] = v31;
      }

      a4 = 1;
      v7 = v10;
      v6 = v33;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C6F61E88();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v36 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void *sub_1C7219F48(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a1;
  v38 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v7;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v31[3] = v3;
    v31[1] = v31;
    MEMORY[0x1EEE9AC00](a1);
    v31[2] = v7;
    v34 = v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C71FAC38(0, v7, v34);
    v3 = v5 + 56;
    v8 = 1 << *(v5 + 32);
    v9 = v8 < 64 ? ~(-1 << v8) : -1;
    v10 = v9 & *(v5 + 56);
    swift_beginAccess();
    v11 = 0;
    v12 = 0;
    v7 = (v8 + 63) >> 6;
    v32 = a2;
    v33 = v5;
LABEL_6:
    while (v10)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v16 = v13 | (v12 << 6);
      v17 = *a2;
      if (*(*a2 + 16))
      {
        v36 = v10;
        v37 = v11;
        v18 = *(v5 + 48);
        v35 = v16;
        v19 = (v18 + 16 * v16);
        v8 = *v19;
        v20 = v19[1];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        v21 = sub_1C7551FAC();
        v22 = ~(-1 << *(v17 + 32));
        do
        {
          v23 = v21 & v22;
          if (((*(v17 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
          {

            a2 = v32;
            v5 = v33;
            v10 = v36;
            v11 = v37;
            goto LABEL_6;
          }

          v24 = (*(v17 + 48) + 16 * v23);
          if (*v24 == v8 && v24[1] == v20)
          {
            break;
          }

          v26 = sub_1C7551DBC();
          v21 = v23 + 1;
        }

        while ((v26 & 1) == 0);

        *(v34 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        v10 = v36;
        v11 = v37 + 1;
        a2 = v32;
        v5 = v33;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_28;
        }
      }
    }

    v14 = v12;
    while (1)
    {
      v12 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v12 >= v7)
      {
        sub_1C71FFA70();
        return v27;
      }

      v15 = *(v3 + 8 * v12);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v30 = swift_slowAlloc();
  v28 = sub_1C7219B70(v30, v7, v5, a2);

  MEMORY[0x1CCA5F8E0](v30, -1, -1);
  return v28;
}

void sub_1C721A2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 56);
  swift_beginAccess();
  v8 = 0;
  v9 = 0;
  v10 = (v5 + 63) >> 6;
LABEL_5:
  while (v7)
  {
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_12:
    v14 = *a4;
    if (*(*a4 + 16))
    {
      v28 = v7;
      v29 = v8;
      v25 = v11 | (v9 << 6);
      v15 = (*(a3 + 48) + 16 * v25);
      v16 = *v15;
      v17 = v15[1];
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75505AC();
      v18 = sub_1C7551FAC();
      v19 = ~(-1 << *(v14 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v14 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v7 = v28;
          goto LABEL_5;
        }

        v21 = (*(v14 + 48) + 16 * v20);
        if (*v21 == v16 && v21[1] == v17)
        {
          break;
        }

        v23 = sub_1C7551DBC();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      *(a1 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      ++v8;
      v7 = v28;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v10)
    {

      sub_1C71FFA70();
      return;
    }

    v13 = *(v4 + 8 * v9);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v7 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1C721A4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v24 = a3;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 56;
  OUTLINED_FUNCTION_11();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  while (v9)
  {
    OUTLINED_FUNCTION_51_0();
LABEL_9:
    v16 = (*(v24 + 48) + 16 * (v12 | (v5 << 6)));
    v17 = v16[1];
    v23[0] = *v16;
    v23[1] = v17;
    sub_1C75504FC();
    v18 = a4(v23);

    if (v4)
    {
      return;
    }

    if (v18)
    {
      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_18_27(v19);
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_14:

        sub_1C71FFA70();
        return;
      }
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v11)
    {
      goto LABEL_14;
    }

    ++v13;
    if (*(v6 + 8 * v5))
    {
      OUTLINED_FUNCTION_78_0();
      v9 = v15 & v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1C721A624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = 0;
  v10 = a3 + 56;
  OUTLINED_FUNCTION_11();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  while (v13)
  {
    OUTLINED_FUNCTION_51_0();
LABEL_9:
    v27 = *(*(a3 + 48) + (v16 | (v9 << 6)));
    v20 = a4(&v27);
    if (v6)
    {
      return;
    }

    if (v20)
    {
      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_18_27(v21);
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_14:

        a6(a1, a2, v26, a3);
        return;
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v15)
    {
      goto LABEL_14;
    }

    ++v17;
    if (*(v10 + 8 * v9))
    {
      OUTLINED_FUNCTION_78_0();
      v13 = v19 & v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1C721A7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v35 = a2;
  v36 = a7;
  v42 = a4;
  v37 = a1;
  v45 = a6(0);
  MEMORY[0x1EEE9AC00](v45);
  v43 = a3;
  v44 = &v35 - v9;
  v10 = 0;
  v11 = a3 + 56;
  OUTLINED_FUNCTION_11();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v40 = v17 + 16;
  v41 = v17;
  v38 = 0;
  v39 = v17 + 8;
  while (v14)
  {
    OUTLINED_FUNCTION_49_16();
    v19 = v18 | (v10 << 6);
    v20 = v45;
    v21 = v44;
LABEL_9:
    (*(v41 + 16))(v21, *(v43 + 48) + *(v41 + 72) * v19, v20);
    v26 = v42(v21);
    if (v7)
    {
      v33 = OUTLINED_FUNCTION_47_18();
      v34(v33);
      return;
    }

    v27 = v26;
    v28 = OUTLINED_FUNCTION_47_18();
    v29(v28);
    if (v27)
    {
      OUTLINED_FUNCTION_44_10();
      OUTLINED_FUNCTION_18_27(v30);
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_14:
        v32 = v43;

        v36(v37, v35, v38, v32);
        return;
      }
    }
  }

  v22 = v10;
  v20 = v45;
  v21 = v44;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v16)
    {
      goto LABEL_14;
    }

    ++v22;
    if (*(v11 + 8 * v10))
    {
      OUTLINED_FUNCTION_78_0();
      v14 = v24 & v23;
      v19 = v25 | (v10 << 6);
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1C721AA20()
{
  result = qword_1EDD06C90;
  if (!qword_1EDD06C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06C90);
  }

  return result;
}

uint64_t sub_1C721AA74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C721AAE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C721AB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeExtendedToken(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C721ABB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C721AC04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeExtendedToken(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryAssetElector.CandidateAsset.Type(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C721AD84(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C721AEA8()
{
  result = qword_1EC219388;
  if (!qword_1EC219388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219388);
  }

  return result;
}

unint64_t sub_1C721AF00()
{
  result = qword_1EDD09460;
  if (!qword_1EDD09460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09460);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_35()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_32_21()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_40_23()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_64_11()
{

  return sub_1C75505AC();
}

uint64_t PromptSuggestion.Source.description.getter()
{
  result = 1701736270;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_79_0();
      break;
    case 2:
      result = OUTLINED_FUNCTION_48_18();
      break;
    case 3:
      result = OUTLINED_FUNCTION_32_22();
      break;
    case 4:
      result = OUTLINED_FUNCTION_47_2();
      break;
    default:
      return result;
  }

  return result;
}

BOOL PromptSuggestion.usedLocationData.getter()
{
  if (sub_1C705FC40(*(v0 + 72), &unk_1F46A7D20))
  {
    return 1;
  }

  v2 = *(v0 + 80);

  return sub_1C705D108(v2, &unk_1F46A7D48);
}

uint64_t static PromptSuggestion.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return OUTLINED_FUNCTION_10_6();
  }

  else
  {
    return OUTLINED_FUNCTION_313();
  }
}

void PromptSuggestionContext.shortDescription.getter()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for PromptSuggestion(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_14_0();
  v5 = v4 - v3;
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v8 = v18;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_1C71592A8(v9, v5);
      v12 = *(v5 + 104);
      v11 = *(v5 + 112);
      sub_1C75504FC();
      sub_1C715930C(v5);
      v13 = *(v18 + 16);
      if (v13 >= *(v18 + 24) >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v18 + 16) = v13 + 1;
      v14 = v18 + 16 * v13;
      *(v14 + 32) = v12;
      *(v14 + 40) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  v15 = MEMORY[0x1CCA5D090](v8, MEMORY[0x1E69E6158]);
  v17 = v16;

  MEMORY[0x1CCA5CD70](v15, v17);

  OUTLINED_FUNCTION_25_0();
}

uint64_t static PromptSuggestionContext.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return OUTLINED_FUNCTION_10_6();
  }

  else
  {
    return OUTLINED_FUNCTION_313();
  }
}

void sub_1C721B350()
{
  OUTLINED_FUNCTION_48_2();
  v4 = 0;
  v5 = *v0;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = *(&unk_1F469D500 + v4 + 32);
    if ((v7 & ~v5) != 0)
    {
      goto LABEL_39;
    }

    if ((v7 & ~v5) == 0 || !v3)
    {
      v2 = 0xE400000000000000;
      v1 = 1701736302;
      switch(v7)
      {
        case 0:
          goto LABEL_34;
        case 1:
          v2 = 0xEA0000000000656DLL;
          v1 = 0x614E6E6F73726570;
          goto LABEL_34;
        case 2:
          v1 = 0xD000000000000012;
          v2 = 0x80000001C75A5050;
          goto LABEL_34;
        case 3:
        case 5:
        case 6:
        case 7:
          goto LABEL_19;
        case 4:
          v2 = 0xE500000000000000;
          v1 = 0x6563616C70;
          goto LABEL_34;
        case 8:
          v1 = 2037672291;
          goto LABEL_34;
        default:
          JUMPOUT(0);
      }
    }

    switch(v7)
    {
      case 0x10:
        v1 = 0x6F6F4D636973756DLL;
        goto LABEL_24;
      case 0x20:
        OUTLINED_FUNCTION_64_12();
        v2 = v2 & 0xFFFF0000FFFFLL | 0xEB00000000740000;
        goto LABEL_34;
      case 0x40:
        v2 = 0xE900000000000067;
        v1 = 0x6E6F53636973756DLL;
        goto LABEL_34;
      case 0x80:
        OUTLINED_FUNCTION_64_12();
        v2 = v2 | 0xEF676E6F53740000;
        goto LABEL_34;
      case 0x100:
        v2 = 0xE500000000000000;
        v1 = 0x7469617274;
        goto LABEL_34;
      case 0x200:
        v2 = 0xE600000000000000;
        v1 = 0x796C696D6166;
        goto LABEL_34;
      case 0x400:
        v2 = 0xE700000000000000;
        v1 = 0x73646E65697266;
        goto LABEL_34;
      case 0x800:
        v2 = 0xE400000000000000;
        v1 = 1935960427;
        goto LABEL_34;
      case 0x1000:
        v2 = 0xE900000000000065;
        v1 = 0x756761656C6C6F63;
        goto LABEL_34;
      case 0x2000:
        v2 = 0xE300000000000000;
        v1 = 7628144;
        goto LABEL_34;
    }

    if (v7 != 0x4000)
    {
LABEL_19:
      v1 = 0x656E696665646E75;
LABEL_24:
      v2 = 0xE900000000000064;
      goto LABEL_34;
    }

    v2 = 0xE400000000000000;
    v1 = 1701669236;
LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB1814();
      v6 = v10;
    }

    v8 = *(v6 + 16);
    if (v8 >= *(v6 + 24) >> 1)
    {
      sub_1C6FB1814();
      v6 = v11;
    }

    *(v6 + 16) = v8 + 1;
    v9 = v6 + 16 * v8;
    *(v9 + 32) = v1;
    *(v9 + 40) = v2;
LABEL_39:
    v4 += 8;
    v3 = v4 >= 0x78;
  }

  while (v4 != 120);
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_15_46(&qword_1EDD0CF58);
    sub_1C75505FC();
  }

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_52_1();
}

PhotosIntelligence::PromptSuggestionContext __swiftcall PromptSuggestionContext.init(id:prompts:)(Swift::String id, Swift::OpaquePointer prompts)
{
  *v2 = id;
  *(v2 + 16) = prompts;
  result.id = id;
  result.prompts = prompts;
  return result;
}

uint64_t sub_1C721B6C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374706D6F7270 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C721B780(char a1)
{
  if (a1)
  {
    return 0x7374706D6F7270;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1C721B7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C721B6C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C721B7DC(uint64_t a1)
{
  v2 = sub_1C722433C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721B818(uint64_t a1)
{
  v2 = sub_1C722433C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestionContext.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2193C8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v2, v2[3]);
  sub_1C722433C();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217988);
    sub_1C7224390(&unk_1EDD06B90);
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  v5 = OUTLINED_FUNCTION_7_18();
  v6(v5, v3);
  OUTLINED_FUNCTION_125();
}

void PromptSuggestionContext.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2193D8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_389();
  OUTLINED_FUNCTION_70(v2, v2[3]);
  sub_1C722433C();
  OUTLINED_FUNCTION_73_12();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v6 = sub_1C7551BBC();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217988);
    sub_1C7224390(&unk_1EDD0D030);
    sub_1C7551C1C();
    v9 = OUTLINED_FUNCTION_282();
    v10(v9);
    *v4 = v6;
    v4[1] = v8;
    v4[2] = v11;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C721BC30@<X0>(uint64_t *a1@<X8>)
{
  result = PromptSuggestionContext.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void __swiftcall TemplatedPromptMetadata.init(associatedContactName:associatedPlaceName:associatedCityName:associatedTimeReferenceString:)(PhotosIntelligence::TemplatedPromptMetadata *__return_ptr retstr, Swift::String_optional associatedContactName, Swift::String_optional associatedPlaceName, Swift::String_optional associatedCityName, Swift::String_optional associatedTimeReferenceString)
{
  retstr->associatedContactName = associatedContactName;
  retstr->associatedPlaceName = associatedPlaceName;
  retstr->associatedCityName = associatedCityName;
  retstr->associatedTimeReferenceString = associatedTimeReferenceString;
}

void TemplatedPromptMetadata.description.getter()
{
  OUTLINED_FUNCTION_48_2();
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1C75504FC();
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000033, 0x80000001C75A4D50);
  if (v1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 7104878;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x1CCA5CD70](v7, v1);

  v8 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v8 | 0x616C702000000000, 0xEF3A656D614E6563);
  if (v3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 7104878;
  }

  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v9, v10);

  v11 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v11 | 0x7469632000000000, 0xEF203A656D614E79);
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = 7104878;
  }

  if (v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v12, v13);

  MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C75A4D90);
  sub_1C75504FC();
  v14 = OUTLINED_FUNCTION_64();
  MEMORY[0x1CCA5CD70](v14);

  OUTLINED_FUNCTION_52_1();
}

void static TemplatedPromptMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v1;
  v3 = v0[1];
  v4 = v0[2];
  v6 = v0[3];
  v5 = v0[4];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[7];
  v10 = v2[1];
  v11 = v2[2];
  v13 = v2[3];
  v12 = v2[4];
  v15 = v2[5];
  v14 = v2[6];
  v16 = v2[7];
  if (v3)
  {
    if (!v10)
    {
      goto LABEL_35;
    }

    if (*v0 != *v2 || v3 != v10)
    {
      v33 = v0[5];
      v34 = v2[5];
      v18 = v0[4];
      v19 = v2[6];
      v20 = v2[7];
      v21 = v0[7];
      v22 = v0[6];
      v23 = v2[4];
      v24 = sub_1C7551DBC();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v16 = v20;
      v14 = v19;
      v5 = v18;
      v8 = v33;
      v15 = v34;
      if ((v24 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_35;
  }

  if (v6)
  {
    if (!v13)
    {
      goto LABEL_35;
    }

    if (v4 != v11 || v6 != v13)
    {
      v26 = v7;
      v27 = v12;
      v28 = sub_1C7551DBC();
      v12 = v27;
      v7 = v26;
      if ((v28 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v13)
  {
    goto LABEL_35;
  }

  if (v8)
  {
    if (!v15)
    {
      goto LABEL_35;
    }

    if (v5 != v12 || v8 != v15)
    {
      v30 = v7;
      v31 = sub_1C7551DBC();
      v7 = v30;
      if ((v31 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v15)
  {
    goto LABEL_35;
  }

  if (v9 && v16 && (v7 != v14 || v9 != v16))
  {
    sub_1C7551DBC();
  }

LABEL_35:
  OUTLINED_FUNCTION_52_1();
}

uint64_t sub_1C721C03C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x80000001C75A4F90 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001C75A4FB0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C75A4FD0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001DLL && 0x80000001C75A4FF0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C721C198(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C721C224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C721C03C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C721C24C(uint64_t a1)
{
  v2 = sub_1C7224458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721C288(uint64_t a1)
{
  v2 = sub_1C7224458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TemplatedPromptMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2193E0);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_61_1();
  v6 = OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_70(v6, v7);
  sub_1C7224458();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  sub_1C7551C7C();
  if (!v0)
  {
    OUTLINED_FUNCTION_97();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_97();
    sub_1C7551C7C();
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_97();
    sub_1C7551C7C();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_125();
}

void TemplatedPromptMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  if (v0[1])
  {
    sub_1C7551F5C();
    sub_1C75505AC();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C7551F5C();
    if (v1)
    {
LABEL_3:
      sub_1C7551F5C();
      sub_1C75505AC();
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_1C7551F5C();
      if (v3)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_1C7551F5C();
      OUTLINED_FUNCTION_25_0();
      return;
    }
  }

  sub_1C7551F5C();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_1C7551F5C();
  sub_1C75505AC();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_1C7551F5C();
  OUTLINED_FUNCTION_25_0();

  sub_1C75505AC();
}

uint64_t TemplatedPromptMetadata.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  TemplatedPromptMetadata.hash(into:)();
  return sub_1C7551FAC();
}

void TemplatedPromptMetadata.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2193F0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  OUTLINED_FUNCTION_70(v2, v2[3]);
  sub_1C7224458();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    OUTLINED_FUNCTION_62_3();
    v11 = sub_1C7551B6C();
    v28 = v12;
    LOBYTE(v33[0]) = 1;
    OUTLINED_FUNCTION_62_3();
    v13 = sub_1C7551B6C();
    v27 = v14;
    v25 = v13;
    LOBYTE(v33[0]) = 2;
    OUTLINED_FUNCTION_62_3();
    v24 = sub_1C7551B6C();
    v26 = v15;
    v16 = sub_1C7551B6C();
    v18 = v17;
    (*(v7 + 8))(v10, v5);
    v19 = v28;
    *&v29 = v11;
    *(&v29 + 1) = v28;
    v21 = v25;
    v20 = v26;
    *&v30 = v25;
    *(&v30 + 1) = v27;
    *&v31 = v24;
    *(&v31 + 1) = v26;
    *&v32 = v16;
    *(&v32 + 1) = v18;
    v22 = v30;
    *v4 = v29;
    v4[1] = v22;
    v23 = v32;
    v4[2] = v31;
    v4[3] = v23;
    sub_1C72244AC(&v29, v33);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v33[0] = v11;
    v33[1] = v19;
    v33[2] = v21;
    v33[3] = v27;
    v33[4] = v24;
    v33[5] = v20;
    v33[6] = v16;
    v33[7] = v18;
    sub_1C72244E4(v33);
  }

  OUTLINED_FUNCTION_347();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C721C844()
{
  sub_1C7551F3C();
  TemplatedPromptMetadata.hash(into:)();
  return sub_1C7551FAC();
}

uint64_t sub_1C721C8B8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219390);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  return sub_1C754FEFC();
}

uint64_t static PromptSuggestion.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC213EE0 != -1)
  {
    OUTLINED_FUNCTION_19_39();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EC219390);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PromptSuggestion.EngagementState.prettyPrint.getter()
{
  result = 0x6C616974696E49;
  switch(*v0)
  {
    case 1:
      result = 0x65746E6573657250;
      break;
    case 2:
      result = 0x6C65532072657355;
      break;
    case 3:
      result = 0x432079726F6D654DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C721CA80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65746E6573657270 && a2 == 0xE900000000000064;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C655372657375 && a2 == 0xEC00000064657463;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x724379726F6D656DLL && a2 == 0xED00006465746165)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C721CBEC(char a1)
{
  result = 0x6C616974696E69;
  switch(a1)
  {
    case 1:
      result = 0x65746E6573657270;
      break;
    case 2:
      result = 0x656C655372657375;
      break;
    case 3:
      result = 0x724379726F6D656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C721CC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C721CA80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C721CCB8(uint64_t a1)
{
  v2 = sub_1C7224514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721CCF4(uint64_t a1)
{
  v2 = sub_1C7224514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721CD30(uint64_t a1)
{
  v2 = sub_1C7224664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721CD6C(uint64_t a1)
{
  v2 = sub_1C7224664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721CDA8(uint64_t a1)
{
  v2 = sub_1C7224568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721CDE4(uint64_t a1)
{
  v2 = sub_1C7224568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721CE20(uint64_t a1)
{
  v2 = sub_1C7224610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721CE5C(uint64_t a1)
{
  v2 = sub_1C7224610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C721CE98(uint64_t a1)
{
  v2 = sub_1C72245BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C721CED4(uint64_t a1)
{
  v2 = sub_1C72245BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PromptSuggestion.EngagementState.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2193F8);
  OUTLINED_FUNCTION_3_0();
  v37 = v6;
  v38 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v36 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219400);
  OUTLINED_FUNCTION_3_0();
  v34 = v10;
  v35 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36();
  v33 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219408);
  OUTLINED_FUNCTION_3_0();
  v31 = v14;
  v32 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_36();
  v30 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219410);
  OUTLINED_FUNCTION_3_0();
  v28 = v18;
  v29 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_6();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219418);
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_158();
  v24 = *v0;
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C7224514();
  sub_1C755200C();
  switch(v24)
  {
    case 1:
      sub_1C7224610();
      v25 = v30;
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      v27 = v31;
      v26 = v32;
      goto LABEL_6;
    case 2:
      sub_1C72245BC();
      v25 = v33;
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      v27 = v34;
      v26 = v35;
      goto LABEL_6;
    case 3:
      sub_1C7224568();
      v25 = v36;
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      v27 = v37;
      v26 = v38;
LABEL_6:
      (*(v27 + 8))(v25, v26);
      break;
    default:
      sub_1C7224664();
      OUTLINED_FUNCTION_28_22();
      sub_1C7551C6C();
      (*(v28 + 8))(v1, v29);
      break;
  }

  (*(v22 + 8))(v2, v20);
  OUTLINED_FUNCTION_125();
}

void PromptSuggestion.EngagementState.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v32 = v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219438);
  OUTLINED_FUNCTION_3_0();
  v31 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_36();
  v34 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219440);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219448);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_389();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219450);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_6();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219458);
  OUTLINED_FUNCTION_3_0();
  v33 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C7224514();
  OUTLINED_FUNCTION_245();
  sub_1C7551FFC();
  if (v0)
  {
    goto LABEL_8;
  }

  v36 = v3;
  v15 = v1;
  v16 = sub_1C7551C5C();
  sub_1C6FD80E0(v16, 0);
  if (v18 == v19 >> 1)
  {
LABEL_7:
    v28 = sub_1C75518EC();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v30 = &type metadata for PromptSuggestion.EngagementState;
    sub_1C7551B5C();
    OUTLINED_FUNCTION_588();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v33 + 8))(v15, v12);
    v3 = v36;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_9:
    OUTLINED_FUNCTION_125();
    return;
  }

  if (v18 < (v19 >> 1))
  {
    v20 = *(v17 + v18);
    sub_1C6FD80C8(v18 + 1);
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      switch(v20)
      {
        case 1:
          sub_1C7224610();
          OUTLINED_FUNCTION_53_0();
          swift_unknownObjectRelease();
          goto LABEL_13;
        case 2:
          sub_1C72245BC();
          OUTLINED_FUNCTION_53_0();
          swift_unknownObjectRelease();
LABEL_13:
          v25 = OUTLINED_FUNCTION_7_18();
          goto LABEL_14;
        case 3:
          sub_1C7224568();
          sub_1C7551B4C();
          swift_unknownObjectRelease();
          (*(v31 + 8))(v34, v35);
          goto LABEL_15;
        default:
          sub_1C7224664();
          OUTLINED_FUNCTION_53_0();
          swift_unknownObjectRelease();
          v25 = OUTLINED_FUNCTION_7_18();
          v27 = v10;
LABEL_14:
          v26(v25, v27);
LABEL_15:
          (*(v33 + 8))(v15, v12);
          *v32 = v20;
          __swift_destroy_boxed_opaque_existential_1(v36);
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void PromptSuggestion.Composition.sources.getter()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      sub_1C707F3EC();
      break;
    default:
      return;
  }
}

void static PromptSuggestion.Composition.compositionFromSources(sources:)(_BYTE *a1@<X8>)
{
  v1 = 0;
  while (v1 != 16)
  {
    v2 = byte_1F46A8E48[v1 + 32];
    switch(v2)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
        sub_1C707F3EC();
        break;
      default:
        break;
    }

    v3 = OUTLINED_FUNCTION_294();
    v5 = sub_1C7043F5C(v3, v4);

    ++v1;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v2 = 0;
LABEL_8:
  if (qword_1EC213EE0 != -1)
  {
    OUTLINED_FUNCTION_19_39();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EC219390);
  sub_1C75504FC();
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    sub_1C708039C();
    v10 = sub_1C7550F9C();
    v12 = sub_1C6F765A4(v10, v11, &v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_1C75506EC();
    v15 = sub_1C6F765A4(v13, v14, &v17);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "PromptSuggestion compositionFromSources %s -> %s", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  *a1 = v2;
}

PhotosIntelligence::PromptSuggestion::Composition_optional __swiftcall PromptSuggestion.Composition.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 16;
  if (rawValue < 0x10)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PromptSuggestion.FetchContext.composition.getter()
{
  v2 = OUTLINED_FUNCTION_422();
  result = type metadata accessor for PromptSuggestion.FetchContext(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t static PromptSuggestion.FetchContext.mockContext.getter()
{
  OUTLINED_FUNCTION_422();
  v1 = sub_1C754DF6C();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
  result = OUTLINED_FUNCTION_97_7();
  *(v0 + v3) = 0;
  *(v0 + *(result + 24)) = 0;
  v4 = v0 + *(result + 28);
  *v4 = 0;
  *(v4 + 8) = 1;
  return result;
}

uint64_t PromptSuggestion.FetchContext.init(updateDate:totalSuggestionCount:composition:processingCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  sub_1C6FF51C8(a1, a6);
  result = OUTLINED_FUNCTION_97_7();
  *(a6 + v12) = a2;
  *(a6 + *(result + 24)) = v10;
  v13 = a6 + *(result + 28);
  *v13 = a4;
  *(v13 + 8) = a5 & 1;
  return result;
}

void static PromptSuggestion.FetchContext.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  v33 = v32 - v31;
  v34 = OUTLINED_FUNCTION_98_1();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v34);
  OUTLINED_FUNCTION_76(v35);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14_6();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B98);
  OUTLINED_FUNCTION_76(v37);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &a9 - v39;
  v42 = *(v41 + 56);
  sub_1C712A774(v26, &a9 - v39, &unk_1EC219230);
  sub_1C712A774(v24, &v40[v42], &unk_1EC219230);
  OUTLINED_FUNCTION_601(v40);
  if (v43)
  {
    OUTLINED_FUNCTION_601(&v40[v42]);
    if (v43)
    {
      sub_1C6FD7FC8(v40, &unk_1EC219230);
LABEL_11:
      OUTLINED_FUNCTION_97_7();
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  sub_1C712A774(v40, v20, &unk_1EC219230);
  OUTLINED_FUNCTION_601(&v40[v42]);
  if (v43)
  {
    (*(v29 + 8))(v20, v27);
LABEL_9:
    sub_1C6FD7FC8(v40, &qword_1EC217B98);
    goto LABEL_12;
  }

  (*(v29 + 32))(v33, &v40[v42], v27);
  OUTLINED_FUNCTION_4_57();
  sub_1C7224414(v44);
  v45 = sub_1C755063C();
  v46 = *(v29 + 8);
  v47 = OUTLINED_FUNCTION_294();
  v46(v47);
  (v46)(v20, v27);
  sub_1C6FD7FC8(v40, &unk_1EC219230);
  if (v45)
  {
    goto LABEL_11;
  }

LABEL_12:
  OUTLINED_FUNCTION_25_0();
}

uint64_t PromptSuggestion.FetchContext.hash(into:)()
{
  v1 = v0;
  v2 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v9);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  OUTLINED_FUNCTION_84_8();
  sub_1C712A774(v13, v14, v15);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    sub_1C7551F5C();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    sub_1C7551F5C();
    OUTLINED_FUNCTION_4_57();
    sub_1C7224414(v16);
    sub_1C755059C();
    (*(v4 + 8))(v8, v2);
  }

  Context = type metadata accessor for PromptSuggestion.FetchContext(0);
  MEMORY[0x1CCA5E460](*(v1 + Context[5]));
  MEMORY[0x1CCA5E460](*(v1 + Context[6]));
  v18 = (v1 + Context[7]);
  if (*(v18 + 8) == 1)
  {
    return sub_1C7551F5C();
  }

  v20 = *v18;
  sub_1C7551F5C();
  return MEMORY[0x1CCA5E460](v20);
}

uint64_t PromptSuggestion.FetchContext.hashValue.getter()
{
  OUTLINED_FUNCTION_106();
  PromptSuggestion.FetchContext.hash(into:)();
  return sub_1C7551FAC();
}

uint64_t sub_1C721E418()
{
  sub_1C7551F3C();
  PromptSuggestion.FetchContext.hash(into:)();
  return sub_1C7551FAC();
}

uint64_t PromptSuggestion.Source.suggestionSubtype.getter()
{
  v1 = *v0;
  switch(v1)
  {
    case 1:
      v2 = 0;
      v3 = 1401;
      break;
    case 4:
      v2 = 0;
      v3 = 1403;
      break;
    case 3:
      v2 = 0;
      v3 = 1402;
      break;
    default:
      if (qword_1EC213EE0 != -1)
      {
        OUTLINED_FUNCTION_19_39();
      }

      v4 = sub_1C754FF1C();
      __swift_project_value_buffer(v4, qword_1EC219390);
      v5 = sub_1C754FEEC();
      v6 = sub_1C755119C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v13 = v8;
        *v7 = 136315138;
        if (v1)
        {
          v9 = 0x686372616553;
        }

        else
        {
          v9 = 1701736270;
        }

        if (v1)
        {
          v10 = 0xE600000000000000;
        }

        else
        {
          v10 = 0xE400000000000000;
        }

        v11 = sub_1C6F765A4(v9, v10, &v13);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_1C6F5C000, v5, v6, "Template source %s does not have a PHSuggestionSubtype", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      v3 = 0;
      v2 = 1;
      break;
  }

  return v3 | (v2 << 16);
}

uint64_t PromptSuggestion.Source.userFacingDescription.getter()
{
  result = 1701736270;
  switch(*v0)
  {
    case 1:
      result = 0x746E656D6F4DLL;
      break;
    case 2:
      result = OUTLINED_FUNCTION_48_18();
      break;
    case 3:
      result = OUTLINED_FUNCTION_32_22();
      break;
    case 4:
      result = OUTLINED_FUNCTION_47_2();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static PromptSuggestion.Source.fromDescription(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result == 1701736270 && a2 == 0xE400000000000000;
  if (v4 || (v6 = result, result = OUTLINED_FUNCTION_42_0(), (result & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    result = OUTLINED_FUNCTION_79_0();
    v8 = v6 == result && a2 == 0xE600000000000000;
    if (v8 || (result = OUTLINED_FUNCTION_42_0(), (result & 1) != 0))
    {
      v7 = 1;
    }

    else
    {
      result = OUTLINED_FUNCTION_81();
      v9 = v6 == result && a2 == 0xE600000000000000;
      if (v9 || (result = OUTLINED_FUNCTION_42_0(), (result & 1) != 0))
      {
        v7 = 2;
      }

      else
      {
        result = OUTLINED_FUNCTION_46();
        v11 = v6 == result && a2 == v10;
        if (v11 || (result = OUTLINED_FUNCTION_42_0(), (result & 1) != 0))
        {
          v7 = 3;
        }

        else
        {
          result = OUTLINED_FUNCTION_47_2();
          v7 = 4;
          if (v6 != result || a2 != v12)
          {
            result = OUTLINED_FUNCTION_42_0();
            if (result)
            {
              v7 = 4;
            }

            else
            {
              v7 = 0;
            }
          }
        }
      }
    }
  }

  *a3 = v7;
  return result;
}