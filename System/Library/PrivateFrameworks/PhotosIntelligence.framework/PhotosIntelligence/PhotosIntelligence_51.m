uint64_t sub_1C732A52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_170_5();
  sub_1C7027A58(v14 + 256);
  v16 = OUTLINED_FUNCTION_23_14();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_24_2();
  sub_1C754F1AC();
  (*(v15 + 8))(v12, v13);
  v18 = OUTLINED_FUNCTION_117_0();
  v19(v18);
  OUTLINED_FUNCTION_219_3();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1C732A600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_170_5();
  sub_1C7027A58(v14 + 656);
  v16 = OUTLINED_FUNCTION_23_14();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_24_2();
  sub_1C754F1AC();
  (*(v15 + 8))(v12, v13);
  v18 = OUTLINED_FUNCTION_117_0();
  v19(v18);
  OUTLINED_FUNCTION_219_3();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1C732A6E8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0A620);
  __swift_project_value_buffer(v0, qword_1EDD0A620);
  return sub_1C754FEFC();
}

void sub_1C732A768(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
  a1[6] = v1;
  a1[7] = v1;
  a1[8] = v1;
  a1[9] = v1;
}

uint64_t (*FinalTokenGenerator.interestingTokenFilteringClosure.getter())(uint64_t a1, uint64_t a2)
{
  v1 = v0 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__interestingTokenFilteringClosure;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__interestingTokenFilteringClosure));
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v1);
  OUTLINED_FUNCTION_30();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  return sub_1C733721C;
}

double sub_1C732A828@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t (*FinalTokenGenerator.assetScopingTokenElectionClosure.getter())(uint64_t a1, uint64_t a2)
{
  v1 = v0 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__assetScopingTokenElectionClosure;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__assetScopingTokenElectionClosure));
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v1);
  OUTLINED_FUNCTION_30();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  return sub_1C733721C;
}

void sub_1C732A8D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = v5 + *a3;
  os_unfair_lock_lock(v9);

  OUTLINED_FUNCTION_30();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v9 + 8) = a5;
  *(v9 + 16) = v10;

  os_unfair_lock_unlock(v9);
}

uint64_t *FinalTokenGenerator.init(photoLibrary:storyAssetsFetcher:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
  if (qword_1EDD0A618 != -1)
  {
    swift_once();
  }

  v7 = sub_1C754FF1C();
  v8 = __swift_project_value_buffer(v7, qword_1EDD0A620);
  (*(*(v7 - 8) + 16))(v2 + v6, v8, v7);
  v9 = v2 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__interestingTokenFilteringClosure;
  *v9 = 0;
  *(v9 + 1) = sub_1C732A768;
  *(v9 + 2) = 0;
  v10 = v2 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__assetScopingTokenElectionClosure;
  *v10 = 0;
  *(v10 + 1) = sub_1C732A828;
  *(v10 + 2) = 0;
  v2[2] = a1;
  sub_1C6FB5E28(a2, (v2 + 3));
  v11 = (v2 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__interestingTokenFilteringClosure);
  v12 = a1;
  os_unfair_lock_lock(v11);
  sub_1C732AC30(&v11[2]._os_unfair_lock_opaque, v5, v13, &unk_1F46C29C0, &unk_1F46C29E8, sub_1C7337588, sub_1C73376A8);
  os_unfair_lock_unlock(v11);
  v14 = v2 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__assetScopingTokenElectionClosure;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__assetScopingTokenElectionClosure));
  sub_1C732AC30(v14 + 1, v5, v15, &unk_1F46C2970, &unk_1F46C2998, sub_1C73373E0, sub_1C73376A4);
  os_unfair_lock_unlock(v14);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v2;
}

void sub_1C732ABD0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C75504FC();
  OUTLINED_FUNCTION_35();
  sub_1C700D1A8(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9]);
}

uint64_t sub_1C732AC30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  OUTLINED_FUNCTION_30();
  result = swift_allocObject();
  *(result + 16) = a6;
  *(result + 24) = v11;
  *a1 = a7;
  a1[1] = result;
  return result;
}

void sub_1C732AD10(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = objc_opt_self();
  v6 = [v5 enableAssetScopingTokenPromotion];
  if (v6 && (sub_1C73374E4(v6, 0.0, 1.0), v8 = v7, [v5 assetScopingTokenPromotionLikeliness], v8 < v9))
  {
    v10 = *(a2 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    v12 = (a2 + 32);
    if (v10)
    {
      while (1)
      {
        v13 = *v12;
        v14 = *(*v12 + 16);
        v15 = *(v11 + 16);
        if (__OFADD__(v15, v14))
        {
          break;
        }

        sub_1C75504FC();
        if (!swift_isUniquelyReferenced_nonNull_native() || v15 + v14 > *(v11 + 24) >> 1)
        {
          sub_1C6FB1844();
          v11 = v16;
        }

        if (*(v13 + 16))
        {
          if ((*(v11 + 24) >> 1) - *(v11 + 16) < v14)
          {
            goto LABEL_19;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
          swift_arrayInitWithCopy();

          if (v14)
          {
            v17 = *(v11 + 16);
            v18 = __OFADD__(v17, v14);
            v19 = v17 + v14;
            if (v18)
            {
              goto LABEL_20;
            }

            *(v11 + 16) = v19;
          }
        }

        else
        {

          if (v14)
          {
            goto LABEL_18;
          }
        }

        ++v12;
        if (!--v10)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    else
    {
LABEL_15:
      memcpy(v35, __dst, sizeof(v35));
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D18);
      v20 = sub_1C7335B90();
      ExtendedTokenCollection.excluding(_:)(v32, v21, v22, v23, v24, v25, v26, v27, v30, a3, v11, v32[1], v32[2], v33, v20, __srca[0], __srca[1], __srca[2], __srca[3], __srca[4]);
      __swift_destroy_boxed_opaque_existential_1(v32);
      memcpy(v35, __srca, sizeof(v35));
      v28 = memcpy(__srca, v35, sizeof(__srca));
      v29 = ExtendedTokenCollection.allTokens.getter(v28);
      sub_1C7027A58(v35);
      sub_1C73373E8(v29, v31);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_1C732AF60(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 3112) = v4;
  *(v5 + 3104) = a4;
  *(v5 + 3096) = a3;
  *(v5 + 3088) = a1;
  v7 = type metadata accessor for PartOfWeekExtendedToken(0);
  *(v5 + 3120) = v7;
  *(v5 + 3128) = *(v7 - 8);
  *(v5 + 3136) = swift_task_alloc();
  *(v5 + 3144) = swift_task_alloc();
  *(v5 + 3152) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AB18);
  *(v5 + 3160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  *(v5 + 3168) = swift_task_alloc();
  v8 = sub_1C754DABC();
  *(v5 + 3176) = v8;
  *(v5 + 3184) = *(v8 - 8);
  *(v5 + 3192) = swift_task_alloc();
  v9 = type metadata accessor for TimeExtendedToken(0);
  *(v5 + 3200) = v9;
  *(v5 + 3208) = *(v9 - 8);
  *(v5 + 3216) = swift_task_alloc();
  *(v5 + 3224) = swift_task_alloc();
  *(v5 + 3232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AB20);
  *(v5 + 3240) = swift_task_alloc();
  v10 = a2[1];
  *(v5 + 3248) = *a2;
  *(v5 + 3264) = v10;
  v11 = a2[3];
  *(v5 + 3280) = a2[2];
  *(v5 + 3296) = v11;
  *(v5 + 3312) = a2[4];

  return MEMORY[0x1EEE6DFA0](sub_1C732B1D0, 0, 0);
}

void sub_1C732B1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168_6();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_160_5();
  sub_1C754F2CC();
  if (v14)
  {
    v18 = *(v15 + 3104);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v19 + 8))(v18);
  }

  else
  {
    *(v15 + 56) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
    *(v15 + 64) = &off_1F46ACFD0;
    v28 = [objc_opt_self() currentUnifiedEmbeddingVersion];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 integerValue];
    }

    else
    {
      v30 = 0;
    }

    *(v15 + 32) = 4;
    *(v15 + 40) = v30;
    *(v15 + 48) = v29 == 0;
    v291 = (v15 + 1536);
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    v292 = v15 + 2096;
    v293 = (v15 + 2152);
    *(v15 + 96) = 0;
    *(v15 + 104) = 0;
    v289 = v15 + 1216;
    v290 = v15 + 2264;
    v31 = (v15 + 2320);
    v32 = (v15 + 2376);
    *(v15 + 88) = 1;
    v296 = (v15 + 2600);
    *(v15 + 112) = vdupq_n_s64(1uLL);
    v294 = v15 + 2696;
    *(v15 + 128) = 0;
    v298 = (v15 + 394);
    *(v15 + 136) = 0;
    v300 = (v15 + 473);
    *(v15 + 144) = 1;
    *(v15 + 72) = 4000;
    *(v15 + 80) = 0;
    v33 = *(v15 + 3264);
    *__dst = *(v15 + 3248);
    v295 = *__dst;
    *&__dst[16] = v33;
    v34 = *(v15 + 3296);
    *&__dst[32] = *(v15 + 3280);
    *&__dst[48] = v34;
    *&__dst[64] = *(v15 + 3312);
    *(v15 + 3328) = *(ExtendedTokenCollection.allTokens.getter(v28) + 16);

    v35 = 0;
    *(v15 + 3080) = 0;
    v36 = *(v295 + 16);
    *(v15 + 3336) = v36;
    v37 = v15 + 408;
    v38 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v15 + 3360) = 0;
      *(v15 + 3352) = v38;
      *(v15 + 3344) = v35;
      if (v35 == v36)
      {
        break;
      }

      v39 = *(v15 + 3248);
      if (v35 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_91;
      }

      OUTLINED_FUNCTION_240_3(v39);
      memcpy(__dst, (v38 + 32), 0x41uLL);
      *(v15 + 400) = v35;
      memcpy((v15 + 408), __dst, 0x41uLL);
      sub_1C7025F3C(v15 + 1000, v15 + 1072);
      v40 = *(v15 + 464);
      OUTLINED_FUNCTION_135_7();
      if (!v40)
      {
        v67 = *(v15 + 440);
        sub_1C70555F8(v15 + 400, v15 + 480, &qword_1EC21AB28);
        sub_1C75504FC();
        OUTLINED_FUNCTION_145_2();
        if (sub_1C75507FC() <= 0)
        {
          sub_1C75504FC();
          v69 = OUTLINED_FUNCTION_165_3();
          MEMORY[0x1CCA5CC40](v69);
          OUTLINED_FUNCTION_162_6();
        }

        else
        {
          sub_1C75504FC();
        }

        v70 = *(v15 + 3112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        v71 = OUTLINED_FUNCTION_13_1();
        OUTLINED_FUNCTION_198_2(v71, xmmword_1C755BAB0);
        sub_1C6F65BE8(0, &qword_1EDD0CE30);
        OUTLINED_FUNCTION_24_2();
        sub_1C75504FC();
        OUTLINED_FUNCTION_145_2();
        v72 = sub_1C7073450();
        OUTLINED_FUNCTION_248_3(v72);
        sub_1C6F65BE8(0, &qword_1EC217FE0);
        OUTLINED_FUNCTION_51();
        sub_1C75504FC();
        v73 = sub_1C71C3DE4();
        v74 = objc_opt_self();
        *(v15 + 3368) = OUTLINED_FUNCTION_77_14(v74, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);

        OUTLINED_FUNCTION_15_63((v70 + 24));
        OUTLINED_FUNCTION_15_3();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v15 + 3376) = v75;
        *v75 = v76;
        OUTLINED_FUNCTION_124_8(v75);
LABEL_58:
        OUTLINED_FUNCTION_34_32();
LABEL_59:
        OUTLINED_FUNCTION_73_18();

        v137(v131, v132, v133, v134, v135, v136, v137, v138, a9, a10, a11, a12, a13, a14);
        return;
      }

      sub_1C70555F8(v15 + 400, v15 + 560, &qword_1EC21AB28);
      OUTLINED_FUNCTION_42_31();
      OUTLINED_FUNCTION_19_59(v41, v42, *(v15 + 3344));
      sub_1C754F2DC();
      v43 = *(v15 + 2336);
      *v32 = *v31;
      *(v15 + 2392) = v43;
      *(v15 + 2408) = *(v15 + 2352);
      *(v15 + 2422) = *(v15 + 2366);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v15 + 3352);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_92();
        sub_1C6FB3FA4();
        v38 = v53;
      }

      OUTLINED_FUNCTION_90_14();
      if (v46)
      {
        OUTLINED_FUNCTION_36_28(v45);
        sub_1C6FB3FA4();
        v38 = v54;
      }

      v17 = *(v15 + 554);
      v47 = *(v15 + 553);
      sub_1C6FB5FC8(v15 + 400, &qword_1EC21AB28);
      OUTLINED_FUNCTION_194_4();
      v49 = *(v15 + 2392);
      v48 = *(v15 + 2408);
      v50 = *v32;
      *(v51 + 78) = *(v15 + 2422);
      OUTLINED_FUNCTION_128_6(v51, v48, v49, v50);
      *(v52 + 86) = 1;
      *(v52 + 87) = v47;
      *(v52 + 88) = v40;
      *(v52 + 96) = v17;
      v35 = *(v15 + 3344) + 1;
      v36 = *(v15 + 3336);
    }

    OUTLINED_FUNCTION_180_3();
    v38 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      OUTLINED_FUNCTION_189_2();
      if (v35 == v55)
      {
        break;
      }

      OUTLINED_FUNCTION_190_0();
      if (v46)
      {
        __break(1u);
LABEL_97:
        v210 = OUTLINED_FUNCTION_27_41();
        v212 = v211(v210);
        OUTLINED_FUNCTION_244_3(v212, v213, &qword_1EC218C50);
        v214 = objc_allocWithZone(MEMORY[0x1E6978A98]);
        v215 = OUTLINED_FUNCTION_104_9();
        sub_1C6F65BE8(0, &qword_1EDD0CE30);
        OUTLINED_FUNCTION_51();
        sub_1C75504FC();
        OUTLINED_FUNCTION_49_3();
        [sub_1C7073450() length];
        v216 = objc_opt_self();
        v217 = OUTLINED_FUNCTION_63_19(v216, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
        OUTLINED_FUNCTION_221_2(v217);

        OUTLINED_FUNCTION_15_63((v16 + 24));
        OUTLINED_FUNCTION_15_3();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v15 + 3624) = v218;
        *v218 = v219;
        OUTLINED_FUNCTION_6_81(v218);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_172_3(v56);
      memcpy(__dst, (v38 + 32), 0x42uLL);
      *(v15 + 320) = v35;
      memcpy((v15 + 2320), __dst, 0x42uLL);
      sub_1C7025FF8(v15 + 856, v15 + 928);
      v57 = *(v15 + 384);
      OUTLINED_FUNCTION_130_5(*v31, *(v15 + 2336));
      if (!v57)
      {
        v101 = *(v15 + 360);
        sub_1C70555F8(v15 + 320, v15 + 160, &qword_1EC21AB30);
        sub_1C75504FC();
        OUTLINED_FUNCTION_145_2();
        if (sub_1C75507FC() <= 0)
        {
          sub_1C75504FC();
          v102 = OUTLINED_FUNCTION_165_3();
          MEMORY[0x1CCA5CC40](v102);
          OUTLINED_FUNCTION_162_6();
        }

        else
        {
          sub_1C75504FC();
        }

        v103 = *(v15 + 3112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        v104 = OUTLINED_FUNCTION_13_1();
        OUTLINED_FUNCTION_198_2(v104, xmmword_1C755BAB0);
        sub_1C6F65BE8(0, &qword_1EDD0CE30);
        OUTLINED_FUNCTION_24_2();
        sub_1C75504FC();
        OUTLINED_FUNCTION_145_2();
        v105 = sub_1C7073450();
        OUTLINED_FUNCTION_248_3(v105);
        sub_1C6F65BE8(0, &qword_1EC217FE0);
        OUTLINED_FUNCTION_51();
        sub_1C75504FC();
        v106 = sub_1C71C3DE4();
        v107 = objc_opt_self();
        *(v15 + 3424) = OUTLINED_FUNCTION_77_14(v107, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);

        OUTLINED_FUNCTION_15_63((v103 + 24));
        OUTLINED_FUNCTION_15_3();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v15 + 3432) = v108;
        *v108 = v109;
        OUTLINED_FUNCTION_49_22(v108);
        goto LABEL_58;
      }

      sub_1C70555F8(v15 + 320, v15 + 240, &qword_1EC21AB30);
      OUTLINED_FUNCTION_42_31();
      OUTLINED_FUNCTION_19_59(v58, v59, *(v15 + 3400));
      sub_1C754F2DC();
      v60 = OUTLINED_FUNCTION_161_6(v15 + 2488, *(v15 + 2488), *(v15 + 2504));
      v38 = *(v15 + 3408);
      if ((v60 & 1) == 0)
      {
        OUTLINED_FUNCTION_92();
        sub_1C6FB3F74();
        v38 = v65;
      }

      v62 = *(v38 + 16);
      v61 = *(v38 + 24);
      v35 = v62 + 1;
      if (v62 >= v61 >> 1)
      {
        OUTLINED_FUNCTION_36_28(v61);
        sub_1C6FB3F74();
        v38 = v66;
      }

      v17 = *(v15 + 478);
      sub_1C6FB5FC8(v15 + 320, &qword_1EC21AB30);
      OUTLINED_FUNCTION_233_3();
      OUTLINED_FUNCTION_60_20(v63, *(v15 + 2464), *(v15 + 2448), *(v15 + 2432));
      OUTLINED_FUNCTION_197_4(v64);
    }

    OUTLINED_FUNCTION_86_11();
    v78 = MEMORY[0x1E69E7CC0];
    v79 = 56;
    v80 = &qword_1EC21AB38;
    while (1)
    {
      OUTLINED_FUNCTION_140_6(v77);
      if (v81 == v82)
      {
        break;
      }

      OUTLINED_FUNCTION_217_1();
      if (v46)
      {
        __break(1u);
        goto LABEL_112;
      }

      v83 = OUTLINED_FUNCTION_61_19();
      v86 = OUTLINED_FUNCTION_22_54((v15 + 1984), v83, v84, v85);
      OUTLINED_FUNCTION_157_3(v87, v88, v86, v89, v90);
      v91 = *(v15 + 1336);
      v92 = *(v17 + 16);
      *v296 = *v17;
      *(v15 + 2616) = v92;
      *(v15 + 2625) = *(v17 + 25);
      *v298 = *v16;
      *(v15 + 398) = *(v16 + 4);
      if (!v91)
      {
        OUTLINED_FUNCTION_151_5();
        v123 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
        OUTLINED_FUNCTION_246_3(v123, v124, &qword_1EC21AB38);
        sub_1C75504FC();
        OUTLINED_FUNCTION_49_3();
        v125 = sub_1C7073450();
        [v125 length];
        v126 = objc_allocWithZone(MEMORY[0x1E6978A98]);
        OUTLINED_FUNCTION_51();
        sub_1C75504FC();
        OUTLINED_FUNCTION_75();
        sub_1C71C8E10();
        v127 = objc_opt_self();
        v128 = OUTLINED_FUNCTION_52_26(v127, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
        OUTLINED_FUNCTION_247_2(v128);

        OUTLINED_FUNCTION_15_63((v17 + 24));
        OUTLINED_FUNCTION_15_3();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v15 + 3488) = v129;
        *v129 = v130;
        OUTLINED_FUNCTION_24_35(v129);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_174_3();
      OUTLINED_FUNCTION_42_31();
      OUTLINED_FUNCTION_19_59(v93, v94, *(v15 + 3456));
      sub_1C754F2DC();
      v38 = *(v15 + 3464);
      v95 = *(v15 + 2616);
      *(v15 + 2648) = *v296;
      *(v15 + 2664) = v95;
      *(v15 + 2673) = *(v15 + 2625);
      *(v15 + 314) = *v298;
      *(v15 + 318) = *(v15 + 398);
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v15 + 3464);
      if ((v96 & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB2320();
        v78 = v99;
      }

      v35 = *(v78 + 16);
      OUTLINED_FUNCTION_134_0();
      if (v46)
      {
        OUTLINED_FUNCTION_15_2(v97);
        sub_1C6FB2320();
        v78 = v100;
      }

      OUTLINED_FUNCTION_220_2();
      *(v78 + 16) = v38;
      OUTLINED_FUNCTION_20_52(v78 + 56 * v35);
      OUTLINED_FUNCTION_69_20(v98);
    }

    OUTLINED_FUNCTION_153_5();
    v299 = v111;
    v113 = v112 + 64;
    v114 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v15 + 3504) = v114;
      if (v299 == v110)
      {
        break;
      }

      OUTLINED_FUNCTION_131_4();
      if (v46)
      {
        __break(1u);
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_45_29();
      v16 = *(v113 - 24);
      v300 = *(v113 - 32);
      OUTLINED_FUNCTION_98_13();
      if (v117)
      {
        v79 = v115 + 1;
      }

      else
      {
        v79 = v115;
      }

      v303 = v116;
      OUTLINED_FUNCTION_127_7();
      OUTLINED_FUNCTION_141_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_171_2();
      if (v35)
      {
        OUTLINED_FUNCTION_125_6();
        v160 = *(v15 + 3104);
        OUTLINED_FUNCTION_129_7();
        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRelease_n();

        sub_1C70DF138(v15 + 16);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v161 + 8))(v160);
        goto LABEL_3;
      }

      v118 = v114;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_92();
        sub_1C6FB3F44();
        v118 = v121;
      }

      v35 = v118[2];
      v114 = v118;
      OUTLINED_FUNCTION_134_0();
      if (v46)
      {
        OUTLINED_FUNCTION_15_2(v119);
        sub_1C6FB3F44();
        v114 = v122;
      }

      OUTLINED_FUNCTION_193_2();
      OUTLINED_FUNCTION_93_14(v120);
      v110 = v303 + 1;
    }

    OUTLINED_FUNCTION_65_22();
    v38 = MEMORY[0x1E69E7CC0];
    v141 = 56;
    v37 = &qword_1EC21AB38;
    v142 = &unk_1C7583F78;
    while (1)
    {
      OUTLINED_FUNCTION_96_12(v140);
      if (v117)
      {
        break;
      }

      OUTLINED_FUNCTION_217_1();
      if (v46)
      {
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        OUTLINED_FUNCTION_205_2();
        OUTLINED_FUNCTION_204_4();
        v288 = *(v15 + 3088);
        *v288 = v114;
        v288[1] = v300;
        v288[2] = v142;
        v288[3] = v79;
        v288[4] = v141;
        v288[5] = v78;
        v288[6] = v38;
        v288[7] = v16;
        OUTLINED_FUNCTION_225_1(v288);

        OUTLINED_FUNCTION_25();
        goto LABEL_4;
      }

      v143 = OUTLINED_FUNCTION_61_19();
      v146 = OUTLINED_FUNCTION_22_54(v293, v143, v144, v145);
      OUTLINED_FUNCTION_107_9(v147, v148, v146, v149, v150);
      v151 = OUTLINED_FUNCTION_232_2();
      OUTLINED_FUNCTION_50_25(v294, v151, v152);
      if (!v78)
      {
        OUTLINED_FUNCTION_116_11();
        v188 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
        OUTLINED_FUNCTION_223_2(v188, v189, &qword_1EC21AB38);
        sub_1C75504FC();
        OUTLINED_FUNCTION_49_3();
        v190 = sub_1C7073450();
        [v190 length];
        v191 = objc_allocWithZone(MEMORY[0x1E6978A98]);
        OUTLINED_FUNCTION_51();
        sub_1C75504FC();
        OUTLINED_FUNCTION_75();
        sub_1C71C8E10();
        v192 = objc_opt_self();
        v193 = OUTLINED_FUNCTION_52_26(v192, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
        OUTLINED_FUNCTION_226_2(v193);

        OUTLINED_FUNCTION_15_63(v114 + 3);
        OUTLINED_FUNCTION_15_3();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v15 + 3552) = v194;
        *v194 = v195;
        OUTLINED_FUNCTION_14_55(v194);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_173_4();
      OUTLINED_FUNCTION_42_31();
      OUTLINED_FUNCTION_19_59(v153, v154, *(v15 + 3520));
      v35 = 0;
      sub_1C754F2DC();
      v16 = *(v15 + 3528);
      OUTLINED_FUNCTION_43_32(v294);
      v155 = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v15 + 3528);
      if ((v155 & 1) == 0)
      {
        OUTLINED_FUNCTION_92();
        sub_1C6FB2320();
        v38 = v158;
      }

      OUTLINED_FUNCTION_90_14();
      if (v46)
      {
        OUTLINED_FUNCTION_36_28(v156);
        sub_1C6FB2320();
        v38 = v159;
      }

      OUTLINED_FUNCTION_216_3();
      *(v38 + 16) = 0;
      OUTLINED_FUNCTION_20_52(v38 + 56 * v16);
      OUTLINED_FUNCTION_44_28(v157);
    }

    OUTLINED_FUNCTION_195_3();
    v38 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_114_11();
    v114 = &qword_1EC21AB20;
    OUTLINED_FUNCTION_149_6();
    v142 = &unk_1C7583F58;
    OUTLINED_FUNCTION_148_7();
    while (1)
    {
      *(v15 + 3592) = 0;
      OUTLINED_FUNCTION_147_5(v162);
      if (v117)
      {
        break;
      }

      OUTLINED_FUNCTION_217_1();
      if (v46)
      {
        goto LABEL_137;
      }

      v164 = *(v15 + 3240);
      OUTLINED_FUNCTION_16_55(v163);
      v78 = *(v165 + 48);
      *v164 = v166;
      OUTLINED_FUNCTION_18_48();
      sub_1C7337590(v167, v164 + v78, v168);
      OUTLINED_FUNCTION_215_2();
      switch(*(v38 + 57))
      {
        case 1:
          OUTLINED_FUNCTION_33_33();
          goto LABEL_81;
        case 2:
          OUTLINED_FUNCTION_91_13();
          goto LABEL_81;
        case 3:
          OUTLINED_FUNCTION_32_32();
          goto LABEL_81;
        case 4:

          goto LABEL_82;
        case 5:
          OUTLINED_FUNCTION_41_36();
          goto LABEL_81;
        default:
LABEL_81:
          OUTLINED_FUNCTION_112_6();
          OUTLINED_FUNCTION_364();
          if (v37)
          {
LABEL_82:
            OUTLINED_FUNCTION_40_37();
            OUTLINED_FUNCTION_229_2(v169);
          }

          else
          {
            OUTLINED_FUNCTION_48_23();
            if (!v170)
            {
              goto LABEL_97;
            }
          }

          OUTLINED_FUNCTION_42_31();
          OUTLINED_FUNCTION_19_59(v171, v172, *(v15 + 3576));
          v35 = 0;
          sub_1C754F2DC();
          v37 = *(v15 + 3240);
          OUTLINED_FUNCTION_5_74(*(v15 + 3216), *(v15 + 3224));
          v173 = OUTLINED_FUNCTION_101_5();
          sub_1C6FB5FC8(v173, v174);
          v175 = swift_isUniquelyReferenced_nonNull_native();
          v38 = *(v15 + 3584);
          if ((v175 & 1) == 0)
          {
            v178 = OUTLINED_FUNCTION_92();
            sub_1C6FB3F04(v178, v179, v180, v181);
            v38 = v182;
          }

          OUTLINED_FUNCTION_117_7();
          if (v46)
          {
            OUTLINED_FUNCTION_90_9();
            sub_1C6FB3F04(v183, v184, v185, v186);
            v38 = v187;
          }

          OUTLINED_FUNCTION_51_21();
          OUTLINED_FUNCTION_200_2();
          OUTLINED_FUNCTION_5_74(v176, v177);
          OUTLINED_FUNCTION_144_7();
          break;
      }
    }

LABEL_91:
    OUTLINED_FUNCTION_110_8();
    OUTLINED_FUNCTION_228_3();
    if (v197)
    {
      if (*(v196 + 16))
      {
        OUTLINED_FUNCTION_13_65(v196);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        swift_task_alloc();
        OUTLINED_FUNCTION_48();
        *(v15 + 3656) = v198;
        *v198 = v199;
        OUTLINED_FUNCTION_1_107(v198);
        OUTLINED_FUNCTION_73_18();

        sub_1C7336744(v200, v201, v202, v203, v204, v205, v206, v207, v208);
      }

      else
      {
LABEL_142:
        __break(1u);
      }

      return;
    }

    OUTLINED_FUNCTION_62_21();
    *(v15 + 3680) = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
    v16 = MEMORY[0x1E69E7CC0];
    v221 = 1u;
    v222 = &selRef_clsSceneClassifications;
    while (1)
    {
      OUTLINED_FUNCTION_142_2(v220);
      if (v117)
      {
        break;
      }

      OUTLINED_FUNCTION_71_14();
      if (v46)
      {
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v223 = *(v15 + 3160);
      OUTLINED_FUNCTION_109_11();
      v224 = *(v15 + 3120);
      OUTLINED_FUNCTION_9_72(v225);
      v227 = *(v226 + 48);
      *v223 = v228;
      OUTLINED_FUNCTION_2_98();
      sub_1C7337590(v229, v223 + v227, v230);
      OUTLINED_FUNCTION_35();
      sub_1C7337590(v231, v232, v233);
      v234 = *(v224 + 32);
      *(v37 + v234) = v221;
      OUTLINED_FUNCTION_141_6();
      if (!v235)
      {
        OUTLINED_FUNCTION_238_2();
        v236 = OUTLINED_FUNCTION_155_2();
        sub_1C6F65BE8(v236, &qword_1EDD0CE30);
        OUTLINED_FUNCTION_97_11();
        sub_1C75504FC();
        v237 = OUTLINED_FUNCTION_183_2();
        [v237 v222[476]];
        v238 = OUTLINED_FUNCTION_230_3();
        v239 = sub_1C6F65BE8(v238, &qword_1EC217FE0);
        sub_1C754F06C();
        if (sub_1C71C3FF8())
        {
          OUTLINED_FUNCTION_235_3();
          v283 = objc_opt_self();
          v284 = OUTLINED_FUNCTION_88_12(v283, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_, v237, v239);
          OUTLINED_FUNCTION_210_3(v284);

          OUTLINED_FUNCTION_47_22((v234 + 24));
          OUTLINED_FUNCTION_15_3();
          v285 = swift_task_alloc();
          v286 = OUTLINED_FUNCTION_72_17(v285);
          *v286 = v287;
          OUTLINED_FUNCTION_0_141(v286);
          goto LABEL_59;
        }

        v240 = sub_1C754FEEC();
        v241 = sub_1C755119C();
        if (OUTLINED_FUNCTION_66(v241))
        {
          v242 = OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_115_13(v242);
          OUTLINED_FUNCTION_211_4(&dword_1C6F5C000, v240, v243, "Part Of Week retrieval not supported by Spotlight in this build.");
          OUTLINED_FUNCTION_37();
        }

        *(v37 + v234) = 2;
        v222 = &selRef_clsSceneClassifications;
        v221 = 1;
      }

      OUTLINED_FUNCTION_10_67();
      v35 = 0;
      sub_1C754F2DC();
      v38 = *(v15 + 3696);
      v37 = *(v15 + 3160);
      OUTLINED_FUNCTION_3_90(*(v15 + 3136), *(v15 + 3144));
      sub_1C6FB5FC8(v37, &unk_1EC21AB18);
      v244 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v15 + 3696);
      if ((v244 & 1) == 0)
      {
        v249 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB3E94(v249, v250, v251, v16);
        v16 = v252;
      }

      OUTLINED_FUNCTION_186_3();
      if (v46)
      {
        v253 = OUTLINED_FUNCTION_15_2(v245);
        sub_1C6FB3E94(v253, v254, v255, v16);
        v16 = v256;
      }

      OUTLINED_FUNCTION_35_24();
      OUTLINED_FUNCTION_196_1();
      OUTLINED_FUNCTION_3_90(v248, v247 + v246 * v37);
      OUTLINED_FUNCTION_87_17();
    }

LABEL_112:
    v257 = 0;
    OUTLINED_FUNCTION_227_2();
    v301 = v258;
    v304 = v259;
    v80 = (v258 + 32);
    v260 = MEMORY[0x1E69E7CC0];
    while (v304 != v257)
    {
      if (v257 >= *(v301 + 16))
      {
        goto LABEL_140;
      }

      v261 = OUTLINED_FUNCTION_66_21();
      OUTLINED_FUNCTION_95_16(v291, v261, v262, v263, v264);
      OUTLINED_FUNCTION_70_17();
      OUTLINED_FUNCTION_119_11();
      v265 = OUTLINED_FUNCTION_21_49(v257);
      sub_1C70555F8(v265, v266, &unk_1EC21AB48);
      OUTLINED_FUNCTION_171_2();
      if (v35)
      {
        OUTLINED_FUNCTION_167_5();
        OUTLINED_FUNCTION_64_16();
        v306 = v281;
        OUTLINED_FUNCTION_78_14(v289, v308, v309);

        sub_1C6FB5FC8(v15 + 712, &unk_1EC21AB48);
        sub_1C70DF138(v15 + 16);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v282 + 8))(v306);
        goto LABEL_3;
      }

      *__dst = v308;
      *&__dst[16] = v309;
      *&__dst[32] = v310;
      OUTLINED_FUNCTION_154_4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB3DA8();
        v260 = v269;
      }

      v35 = *(v260 + 16);
      OUTLINED_FUNCTION_134_0();
      if (v46)
      {
        OUTLINED_FUNCTION_15_2(v267);
        sub_1C6FB3DA8();
        v260 = v270;
      }

      sub_1C6FB5FC8(v15 + 712, &unk_1EC21AB48);
      *(v260 + 16) = v38;
      OUTLINED_FUNCTION_111_10((v260 + (v35 << 6)), *&__dst[32], *&__dst[16], *__dst);
      OUTLINED_FUNCTION_76_16(v268);
      v80 += 8;
      ++v257;
    }

LABEL_122:
    OUTLINED_FUNCTION_94_15();
    v297 = v272;
    v274 = v273 + 64;
    v305 = MEMORY[0x1E69E7CC0];
    while (v297 != v271)
    {
      OUTLINED_FUNCTION_131_4();
      if (v46)
      {
        goto LABEL_141;
      }

      OUTLINED_FUNCTION_45_29();
      v275 = *(v274 - 24);
      v302 = *(v274 - 32);
      OUTLINED_FUNCTION_100_13();
      OUTLINED_FUNCTION_46_28();
      OUTLINED_FUNCTION_141_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_171_2();
      if (v35)
      {
        OUTLINED_FUNCTION_67_19();
        OUTLINED_FUNCTION_53_29();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRelease_n();

        sub_1C70DF138(v15 + 16);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v68 + 8))(v80);
        goto LABEL_3;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_8_64();
        sub_1C6FB3D78();
        v305 = v279;
      }

      OUTLINED_FUNCTION_59_23();
      if (v46)
      {
        OUTLINED_FUNCTION_15_2(v276);
        sub_1C6FB3D78();
        v305 = v280;
      }

      OUTLINED_FUNCTION_75_13(v305);
      *(v277 + 32) = v302;
      *(v277 + 40) = v275;
      OUTLINED_FUNCTION_152_5(v277);
      OUTLINED_FUNCTION_68_20(v278);
    }

    OUTLINED_FUNCTION_160_5();
    sub_1C754F2EC();
    v38 = *(v15 + 3648);
    v78 = *(v15 + 3584);
    v141 = *(v15 + 3528);
    v79 = *(v15 + 3504);
    v142 = *(v15 + 3464);
    v300 = *(v15 + 3408);
    v114 = *(v15 + 3352);
    if (!v35)
    {
      goto LABEL_138;
    }

    sub_1C70DF138(v15 + 16);
  }

LABEL_3:
  OUTLINED_FUNCTION_25_39();

  OUTLINED_FUNCTION_6_0();
LABEL_4:
  OUTLINED_FUNCTION_73_18();

  v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C732CCF8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3384) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C732CDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168_6();
  OUTLINED_FUNCTION_31();
  v318 = (v14 + 1984);
  v304 = (v14 + 1536);
  v306 = v14 + 2096;
  v308 = (v14 + 2152);
  v310 = v14 + 1144;
  v300 = v14 + 1216;
  v302 = v14 + 2264;
  v16 = (v14 + 2320);
  v17 = (v14 + 2376);
  v323 = v14 + 2648;
  v314 = v14 + 2696;
  v316 = v14 + 2600;
  v18 = *(v14 + 3368);
  v19 = *(v14 + 2944);
  v20 = *(v14 + 2952);
  *(v14 + 2960) = *(v14 + 2936);
  v312 = v14 + 2744;
  v321 = v14 + 314;
  v326 = v14 + 394;
  v329 = v14 + 473;
  *(v14 + 2968) = v19;
  *(v14 + 2976) = v20;
  v21 = FreeformStoryFetching.Result.uuids.getter();

  swift_unknownObjectRelease();
  v22 = *(v14 + 3384);
  v23 = v14 + 408;
  while (1)
  {
    OUTLINED_FUNCTION_42_31();
    OUTLINED_FUNCTION_19_59(v24, v25, *(v14 + 3344));
    v26 = sub_1C754F2DC();
    if (v22)
    {
      OUTLINED_FUNCTION_122_8(v26, v27, v28, v29, v30, v31, v32, v33, v300, v302, v304, v306, v308, v310);
      *(v14 + 1200) = v21;
      *(v14 + 1208) = v49;
      sub_1C7025F74(v50);

      sub_1C6FB5FC8(v14 + 400, &qword_1EC21AB28);
LABEL_12:
      sub_1C70DF138(v14 + 16);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v51 + 8))(v23);
      goto LABEL_85;
    }

    v34 = *(v14 + 2336);
    *v17 = *v16;
    *(v14 + 2392) = v34;
    *(v14 + 2408) = *(v14 + 2352);
    *(v14 + 2422) = *(v14 + 2366);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v14 + 3352);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_92();
      sub_1C6FB3FA4();
      v36 = v47;
    }

    OUTLINED_FUNCTION_90_14();
    if (v37)
    {
      OUTLINED_FUNCTION_58_24();
      sub_1C6FB3FA4();
      v36 = v48;
    }

    v38 = *(v14 + 554);
    v39 = *(v14 + 553);
    sub_1C6FB5FC8(v14 + 400, &qword_1EC21AB28);
    OUTLINED_FUNCTION_194_4();
    v41 = *(v14 + 2392);
    v40 = *(v14 + 2408);
    v42 = *v17;
    *(v43 + 78) = *(v14 + 2422);
    OUTLINED_FUNCTION_128_6(v43, v40, v41, v42);
    *(v44 + 86) = 1;
    *(v44 + 87) = v39;
    *(v44 + 88) = v21;
    *(v44 + 96) = v38;
    v45 = *(v14 + 3344) + 1;
    *(v14 + 3360) = v15;
    *(v14 + 3352) = v36;
    *(v14 + 3344) = v45;
    if (v45 == *(v14 + 3336))
    {
      OUTLINED_FUNCTION_180_3();
      v36 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        OUTLINED_FUNCTION_189_2();
        if (v45 == v52)
        {
          break;
        }

        OUTLINED_FUNCTION_190_0();
        if (v37)
        {
          __break(1u);
LABEL_90:
          v221 = OUTLINED_FUNCTION_27_41();
          v223 = v222(v221);
          OUTLINED_FUNCTION_244_3(v223, v224, &qword_1EC218C50);
          v225 = objc_allocWithZone(MEMORY[0x1E6978A98]);
          v226 = OUTLINED_FUNCTION_104_9();
          sub_1C6F65BE8(0, &qword_1EDD0CE30);
          OUTLINED_FUNCTION_51();
          sub_1C75504FC();
          OUTLINED_FUNCTION_49_3();
          [sub_1C7073450() length];
          v227 = objc_opt_self();
          v228 = OUTLINED_FUNCTION_63_19(v227, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
          OUTLINED_FUNCTION_221_2(v228);

          OUTLINED_FUNCTION_15_63(v19 + 3);
          OUTLINED_FUNCTION_15_3();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          *(v14 + 3624) = v229;
          *v229 = v230;
          OUTLINED_FUNCTION_6_81(v229);
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_172_3(v53);
        memcpy(__dst, (v36 + 32), 0x42uLL);
        *(v14 + 320) = v45;
        memcpy((v14 + 2320), __dst, 0x42uLL);
        sub_1C7025FF8(v14 + 856, v14 + 928);
        v54 = *(v14 + 384);
        OUTLINED_FUNCTION_130_5(*v16, *(v14 + 2336));
        if (!v54)
        {
          v113 = *(v14 + 360);
          sub_1C70555F8(v14 + 320, v14 + 160, &qword_1EC21AB30);
          sub_1C75504FC();
          OUTLINED_FUNCTION_145_2();
          if (sub_1C75507FC() <= 0)
          {
            sub_1C75504FC();
            v114 = OUTLINED_FUNCTION_165_3();
            MEMORY[0x1CCA5CC40](v114);
            OUTLINED_FUNCTION_162_6();
          }

          else
          {
            sub_1C75504FC();
          }

          v115 = *(v14 + 3112);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
          v116 = OUTLINED_FUNCTION_13_1();
          OUTLINED_FUNCTION_198_2(v116, xmmword_1C755BAB0);
          sub_1C6F65BE8(0, &qword_1EDD0CE30);
          OUTLINED_FUNCTION_24_2();
          sub_1C75504FC();
          OUTLINED_FUNCTION_145_2();
          v117 = sub_1C7073450();
          OUTLINED_FUNCTION_248_3(v117);
          sub_1C6F65BE8(0, &qword_1EC217FE0);
          OUTLINED_FUNCTION_51();
          sub_1C75504FC();
          v118 = sub_1C71C3DE4();
          v119 = objc_opt_self();
          *(v14 + 3424) = OUTLINED_FUNCTION_77_14(v119, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);

          OUTLINED_FUNCTION_15_63((v115 + 24));
          OUTLINED_FUNCTION_15_3();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          *(v14 + 3432) = v120;
          *v120 = v121;
          OUTLINED_FUNCTION_49_22(v120);
          goto LABEL_47;
        }

        sub_1C70555F8(v14 + 320, v14 + 240, &qword_1EC21AB30);
        OUTLINED_FUNCTION_42_31();
        OUTLINED_FUNCTION_19_59(v55, v56, *(v14 + 3400));
        sub_1C754F2DC();
        v57 = OUTLINED_FUNCTION_161_6(v14 + 2488, *(v14 + 2488), *(v14 + 2504));
        v36 = *(v14 + 3408);
        if ((v57 & 1) == 0)
        {
          OUTLINED_FUNCTION_92();
          sub_1C6FB3F74();
          v36 = v62;
        }

        v59 = *(v36 + 16);
        v58 = *(v36 + 24);
        v45 = v59 + 1;
        if (v59 >= v58 >> 1)
        {
          OUTLINED_FUNCTION_36_28(v58);
          sub_1C6FB3F74();
          v36 = v63;
        }

        sub_1C6FB5FC8(v14 + 320, &qword_1EC21AB30);
        OUTLINED_FUNCTION_233_3();
        OUTLINED_FUNCTION_60_20(v60, *(v14 + 2464), *(v14 + 2448), *(v14 + 2432));
        OUTLINED_FUNCTION_197_4(v61);
      }

      OUTLINED_FUNCTION_86_11();
      v79 = MEMORY[0x1E69E7CC0];
      v23 = &qword_1EC21AB38;
      while (1)
      {
        OUTLINED_FUNCTION_140_6(v78);
        if (v80 == v81)
        {
          break;
        }

        OUTLINED_FUNCTION_217_1();
        if (v37)
        {
          __break(1u);
          goto LABEL_105;
        }

        v82 = OUTLINED_FUNCTION_61_19();
        v85 = OUTLINED_FUNCTION_22_54(v318, v82, v83, v84);
        v90 = OUTLINED_FUNCTION_157_3(v86, v87, v85, v88, v89);
        OUTLINED_FUNCTION_133_7(v90, v91, v92, v93, v94, v95, v96, v97, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v321, v323, v326);
        OUTLINED_FUNCTION_174_3();
        OUTLINED_FUNCTION_42_31();
        OUTLINED_FUNCTION_19_59(v98, v99, *(v14 + 3456));
        v100 = sub_1C754F2DC();
        v36 = *(v14 + 3464);
        v108 = OUTLINED_FUNCTION_145_5(v100, v101, v102, v103, v104, v105, v106, v107, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v322, v324, v327);
        v79 = *(v14 + 3464);
        if ((v108 & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB2320();
          v79 = v111;
        }

        v45 = *(v79 + 16);
        OUTLINED_FUNCTION_134_0();
        if (v37)
        {
          OUTLINED_FUNCTION_15_2(v109);
          sub_1C6FB2320();
          v79 = v112;
        }

        OUTLINED_FUNCTION_220_2();
        *(v79 + 16) = v36;
        OUTLINED_FUNCTION_20_52(v79 + 56 * v45);
        OUTLINED_FUNCTION_69_20(v110);
      }

      OUTLINED_FUNCTION_153_5();
      v328 = v123;
      v125 = v124 + 64;
      v126 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        *(v14 + 3504) = v126;
        if (v328 == v122)
        {
          break;
        }

        OUTLINED_FUNCTION_131_4();
        if (v37)
        {
          __break(1u);
          goto LABEL_115;
        }

        OUTLINED_FUNCTION_45_29();
        v19 = *(v125 - 24);
        v329 = *(v125 - 32);
        OUTLINED_FUNCTION_98_13();
        v332 = v127;
        OUTLINED_FUNCTION_127_7();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_171_2();
        if (v45)
        {
          OUTLINED_FUNCTION_125_6();
          v162 = *(v14 + 3104);
          OUTLINED_FUNCTION_129_7();
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_141_4();
          swift_bridgeObjectRelease_n();

          sub_1C70DF138(v14 + 16);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v163 + 8))(v162);
          goto LABEL_85;
        }

        v128 = v126;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_92();
          sub_1C6FB3F44();
          v128 = v131;
        }

        v45 = *(v128 + 16);
        v126 = v128;
        OUTLINED_FUNCTION_134_0();
        if (v37)
        {
          OUTLINED_FUNCTION_15_2(v129);
          sub_1C6FB3F44();
          v126 = v132;
        }

        OUTLINED_FUNCTION_193_2();
        OUTLINED_FUNCTION_93_14(v130);
        v122 = v332 + 1;
      }

      OUTLINED_FUNCTION_65_22();
      v23 = &qword_1EC21AB38;
      while (1)
      {
        OUTLINED_FUNCTION_96_12(v142);
        if (v143)
        {
          break;
        }

        OUTLINED_FUNCTION_217_1();
        if (v37)
        {
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          OUTLINED_FUNCTION_113_11();
          v297 = *(v14 + 3088);
          *v297 = v23;
          v297[1] = v329;
          OUTLINED_FUNCTION_146_6(v297);
          *(v298 + 64) = v126;
          *(v298 + 72) = v299;
          sub_1C70DF138(v14 + 16);

          OUTLINED_FUNCTION_25();
          goto LABEL_86;
        }

        v144 = OUTLINED_FUNCTION_61_19();
        v147 = OUTLINED_FUNCTION_22_54(v308, v144, v145, v146);
        OUTLINED_FUNCTION_107_9(v148, v149, v147, v150, v151);
        v152 = OUTLINED_FUNCTION_232_2();
        OUTLINED_FUNCTION_50_25(v314, v152, v153);
        if (!v79)
        {
          OUTLINED_FUNCTION_116_11();
          v191 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
          OUTLINED_FUNCTION_223_2(v191, v192, &qword_1EC21AB38);
          sub_1C75504FC();
          OUTLINED_FUNCTION_49_3();
          v193 = sub_1C7073450();
          [v193 length];
          v194 = objc_allocWithZone(MEMORY[0x1E6978A98]);
          OUTLINED_FUNCTION_51();
          sub_1C75504FC();
          OUTLINED_FUNCTION_75();
          sub_1C71C8E10();
          v195 = objc_opt_self();
          v196 = OUTLINED_FUNCTION_52_26(v195, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
          OUTLINED_FUNCTION_226_2(v196);

          OUTLINED_FUNCTION_15_63((v126 + 24));
          OUTLINED_FUNCTION_15_3();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          *(v14 + 3552) = v197;
          *v197 = v198;
          OUTLINED_FUNCTION_14_55(v197);
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_173_4();
        OUTLINED_FUNCTION_42_31();
        OUTLINED_FUNCTION_19_59(v154, v155, *(v14 + 3520));
        v45 = 0;
        sub_1C754F2DC();
        v19 = *(v14 + 3528);
        OUTLINED_FUNCTION_43_32(v314);
        v156 = swift_isUniquelyReferenced_nonNull_native();
        v157 = *(v14 + 3528);
        if ((v156 & 1) == 0)
        {
          OUTLINED_FUNCTION_92();
          sub_1C6FB2320();
          v157 = v160;
        }

        OUTLINED_FUNCTION_90_14();
        if (v37)
        {
          OUTLINED_FUNCTION_36_28(v158);
          sub_1C6FB2320();
          v157 = v161;
        }

        OUTLINED_FUNCTION_216_3();
        *(v157 + 16) = 0;
        OUTLINED_FUNCTION_20_52(v157 + 56 * v19);
        OUTLINED_FUNCTION_44_28(v159);
      }

      OUTLINED_FUNCTION_195_3();
      v36 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_114_11();
      OUTLINED_FUNCTION_149_6();
      v126 = 0x6D72657465646E75;
      while (1)
      {
        *(v14 + 3592) = v15;
        OUTLINED_FUNCTION_147_5(v164);
        if (v143)
        {
          break;
        }

        OUTLINED_FUNCTION_217_1();
        if (v37)
        {
          goto LABEL_130;
        }

        v166 = *(v14 + 3240);
        OUTLINED_FUNCTION_16_55(v165);
        v168 = *(v167 + 48);
        *v166 = v169;
        OUTLINED_FUNCTION_18_48();
        sub_1C7337590(v170, v166 + v168, v171);
        OUTLINED_FUNCTION_215_2();
        switch(*(v36 + 57))
        {
          case 1:
            OUTLINED_FUNCTION_33_33();
            goto LABEL_70;
          case 2:
            OUTLINED_FUNCTION_91_13();
            goto LABEL_70;
          case 3:
            OUTLINED_FUNCTION_32_32();
            goto LABEL_70;
          case 4:

            goto LABEL_71;
          case 5:
            OUTLINED_FUNCTION_41_36();
            goto LABEL_70;
          default:
LABEL_70:
            OUTLINED_FUNCTION_112_6();
            OUTLINED_FUNCTION_364();
            if (v23)
            {
LABEL_71:
              OUTLINED_FUNCTION_40_37();
              OUTLINED_FUNCTION_229_2(v172);
            }

            else
            {
              OUTLINED_FUNCTION_48_23();
              if (!v173)
              {
                goto LABEL_90;
              }
            }

            OUTLINED_FUNCTION_42_31();
            OUTLINED_FUNCTION_19_59(v174, v175, *(v14 + 3576));
            v45 = 0;
            sub_1C754F2DC();
            v23 = *(v14 + 3240);
            OUTLINED_FUNCTION_5_74(*(v14 + 3216), *(v14 + 3224));
            v176 = OUTLINED_FUNCTION_457();
            sub_1C6FB5FC8(v176, v177);
            v178 = swift_isUniquelyReferenced_nonNull_native();
            v36 = *(v14 + 3584);
            if ((v178 & 1) == 0)
            {
              v181 = OUTLINED_FUNCTION_92();
              sub_1C6FB3F04(v181, v182, v183, v184);
              v36 = v185;
            }

            OUTLINED_FUNCTION_117_7();
            if (v37)
            {
              OUTLINED_FUNCTION_90_9();
              sub_1C6FB3F04(v186, v187, v188, v189);
              v36 = v190;
            }

            OUTLINED_FUNCTION_51_21();
            OUTLINED_FUNCTION_200_2();
            OUTLINED_FUNCTION_5_74(v179, v180);
            OUTLINED_FUNCTION_144_7();
            break;
        }
      }

LABEL_80:
      OUTLINED_FUNCTION_110_8();
      OUTLINED_FUNCTION_228_3();
      if (v200)
      {
        if (*(v199 + 16))
        {
          OUTLINED_FUNCTION_13_65(v199);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          *(v14 + 3656) = v201;
          *v201 = v202;
          OUTLINED_FUNCTION_1_107(v201);
          OUTLINED_FUNCTION_73_18();

          sub_1C7336744(v203, v204, v205, v206, v207, v208, v209, v210, v211);
        }

        else
        {
LABEL_135:
          __break(1u);
        }

        return;
      }

      OUTLINED_FUNCTION_62_21();
      *(v14 + 3680) = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
      v232 = &selRef_clsSceneClassifications;
      while (1)
      {
        OUTLINED_FUNCTION_142_2(v231);
        if (v143)
        {
          break;
        }

        OUTLINED_FUNCTION_71_14();
        if (v37)
        {
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v233 = *(v14 + 3160);
        OUTLINED_FUNCTION_109_11();
        v234 = *(v14 + 3120);
        OUTLINED_FUNCTION_9_72(v235);
        v237 = *(v236 + 48);
        *v233 = v238;
        OUTLINED_FUNCTION_2_98();
        sub_1C7337590(v239, v233 + v237, v240);
        OUTLINED_FUNCTION_35();
        sub_1C7337590(v241, v242, v243);
        v244 = *(v234 + 32);
        *(v23 + v244) = 1;
        OUTLINED_FUNCTION_141_6();
        if (!v245)
        {
          v246 = *(*(v14 + 3120) + 24);
          sub_1C754F06C();
          v247 = OUTLINED_FUNCTION_155_2();
          sub_1C6F65BE8(v247, &qword_1EDD0CE30);
          OUTLINED_FUNCTION_97_11();
          sub_1C75504FC();
          v248 = OUTLINED_FUNCTION_183_2();
          [v248 v232[476]];
          v249 = OUTLINED_FUNCTION_230_3();
          v250 = sub_1C6F65BE8(v249, &qword_1EC217FE0);
          sub_1C754F06C();
          if (sub_1C71C3FF8())
          {
            OUTLINED_FUNCTION_235_3();
            v292 = objc_opt_self();
            v293 = OUTLINED_FUNCTION_88_12(v292, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_, v248, v250);
            OUTLINED_FUNCTION_210_3(v293);

            OUTLINED_FUNCTION_47_22((v246 + 24));
            OUTLINED_FUNCTION_15_3();
            v294 = swift_task_alloc();
            v295 = OUTLINED_FUNCTION_72_17(v294);
            *v295 = v296;
            OUTLINED_FUNCTION_0_141(v295);
            goto LABEL_48;
          }

          v251 = sub_1C754FEEC();
          v252 = sub_1C755119C();
          if (OUTLINED_FUNCTION_66(v252))
          {
            v253 = OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_115_13(v253);
            OUTLINED_FUNCTION_211_4(&dword_1C6F5C000, v251, v254, "Part Of Week retrieval not supported by Spotlight in this build.");
            OUTLINED_FUNCTION_37();
          }

          *(v23 + v244) = 2;
          v232 = &selRef_clsSceneClassifications;
        }

        OUTLINED_FUNCTION_10_67();
        v45 = 0;
        sub_1C754F2DC();
        v36 = *(v14 + 3696);
        v23 = *(v14 + 3160);
        OUTLINED_FUNCTION_3_90(*(v14 + 3136), *(v14 + 3144));
        sub_1C6FB5FC8(v23, &unk_1EC21AB18);
        v255 = swift_isUniquelyReferenced_nonNull_native();
        v256 = *(v14 + 3696);
        if ((v255 & 1) == 0)
        {
          v260 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB3E94(v260, v261, v262, v256);
          v256 = v263;
        }

        OUTLINED_FUNCTION_186_3();
        if (v37)
        {
          OUTLINED_FUNCTION_82_16();
          sub_1C6FB3E94(v264, v265, v266, v256);
        }

        OUTLINED_FUNCTION_35_24();
        OUTLINED_FUNCTION_196_1();
        OUTLINED_FUNCTION_3_90(v259, v258 + v257 * v23);
        OUTLINED_FUNCTION_87_17();
      }

LABEL_105:
      v267 = 0;
      OUTLINED_FUNCTION_227_2();
      v330 = v268;
      v333 = v269;
      v23 = v268 + 32;
      v126 = MEMORY[0x1E69E7CC0];
      while (v333 != v267)
      {
        if (v267 >= *(v330 + 16))
        {
          goto LABEL_133;
        }

        v270 = OUTLINED_FUNCTION_66_21();
        OUTLINED_FUNCTION_95_16(v304, v270, v271, v272, v273);
        OUTLINED_FUNCTION_70_17();
        OUTLINED_FUNCTION_119_11();
        v274 = OUTLINED_FUNCTION_21_49(v267);
        sub_1C70555F8(v274, v275, &unk_1EC21AB48);
        OUTLINED_FUNCTION_171_2();
        if (v45)
        {
          OUTLINED_FUNCTION_167_5();
          OUTLINED_FUNCTION_64_16();
          v335 = v290;
          OUTLINED_FUNCTION_78_14(v300, v337, v338);

          sub_1C6FB5FC8(v14 + 712, &unk_1EC21AB48);
          sub_1C70DF138(v14 + 16);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v291 + 8))(v335);
          goto LABEL_85;
        }

        __dst[0] = v337;
        __dst[1] = v338;
        __dst[2] = v339;
        OUTLINED_FUNCTION_154_4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB3DA8();
          v126 = v278;
        }

        v45 = *(v126 + 16);
        OUTLINED_FUNCTION_134_0();
        if (v37)
        {
          OUTLINED_FUNCTION_15_2(v276);
          sub_1C6FB3DA8();
          v126 = v279;
        }

        sub_1C6FB5FC8(v14 + 712, &unk_1EC21AB48);
        *(v126 + 16) = v36;
        OUTLINED_FUNCTION_111_10((v126 + (v45 << 6)), __dst[2], __dst[1], __dst[0]);
        OUTLINED_FUNCTION_76_16(v277);
        v23 += 64;
        ++v267;
      }

LABEL_115:
      OUTLINED_FUNCTION_94_15();
      v325 = v281;
      v283 = v282 + 64;
      v334 = MEMORY[0x1E69E7CC0];
      v320 = v126;
      while (v325 != v280)
      {
        OUTLINED_FUNCTION_131_4();
        if (v37)
        {
          goto LABEL_134;
        }

        OUTLINED_FUNCTION_45_29();
        v284 = *(v283 - 24);
        v331 = *(v283 - 32);
        OUTLINED_FUNCTION_100_13();
        OUTLINED_FUNCTION_46_28();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_171_2();
        if (v45)
        {
          OUTLINED_FUNCTION_67_19();
          OUTLINED_FUNCTION_53_29();
          OUTLINED_FUNCTION_141_4();
          swift_bridgeObjectRelease_n();

          goto LABEL_12;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_64();
          sub_1C6FB3D78();
          v334 = v288;
        }

        OUTLINED_FUNCTION_59_23();
        if (v37)
        {
          OUTLINED_FUNCTION_15_2(v285);
          sub_1C6FB3D78();
          v334 = v289;
        }

        OUTLINED_FUNCTION_75_13(v334);
        *(v286 + 32) = v331;
        *(v286 + 40) = v284;
        OUTLINED_FUNCTION_152_5(v286);
        OUTLINED_FUNCTION_68_20(v287);
        v126 = v320;
      }

      OUTLINED_FUNCTION_160_5();
      sub_1C754F2EC();
      OUTLINED_FUNCTION_56_24();
      v329 = *(v14 + 3408);
      v23 = *(v14 + 3352);
      if (!v45)
      {
        goto LABEL_131;
      }

      sub_1C70DF138(v14 + 16);
LABEL_85:
      OUTLINED_FUNCTION_25_39();

      OUTLINED_FUNCTION_6_0();
LABEL_86:
      OUTLINED_FUNCTION_73_18();

      v214(v213, v214, v215, v216, v217, v218, v219, v220, a9, a10, a11, a12, a13, a14);
      return;
    }

    v46 = *(v14 + 3248);
    if (v45 >= *(v46 + 16))
    {
      __break(1u);
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_240_3(v46);
    memcpy(__dst, (v36 + 32), 0x41uLL);
    *(v14 + 400) = v45;
    memcpy((v14 + 408), __dst, 0x41uLL);
    sub_1C7025F3C(v14 + 1000, v14 + 1072);
    v21 = *(v14 + 464);
    OUTLINED_FUNCTION_135_7();
    if (!v21)
    {
      break;
    }

    sub_1C70555F8(v14 + 400, v14 + 560, &qword_1EC21AB28);
    v22 = 0;
  }

  v64 = *(v14 + 440);
  sub_1C70555F8(v14 + 400, v14 + 480, &qword_1EC21AB28);
  sub_1C75504FC();
  OUTLINED_FUNCTION_145_2();
  if (sub_1C75507FC() <= 0)
  {
    sub_1C75504FC();
    v65 = OUTLINED_FUNCTION_165_3();
    MEMORY[0x1CCA5CC40](v65);
    OUTLINED_FUNCTION_162_6();
  }

  else
  {
    sub_1C75504FC();
  }

  v66 = *(v14 + 3112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v67 = OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_198_2(v67, xmmword_1C755BAB0);
  sub_1C6F65BE8(0, &qword_1EDD0CE30);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  OUTLINED_FUNCTION_145_2();
  v68 = sub_1C7073450();
  OUTLINED_FUNCTION_248_3(v68);
  sub_1C6F65BE8(0, &qword_1EC217FE0);
  OUTLINED_FUNCTION_51();
  sub_1C75504FC();
  v69 = sub_1C71C3DE4();
  v70 = objc_opt_self();
  *(v14 + 3368) = OUTLINED_FUNCTION_77_14(v70, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);

  OUTLINED_FUNCTION_15_63((v66 + 24));
  OUTLINED_FUNCTION_15_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v14 + 3376) = v71;
  *v71 = v72;
  OUTLINED_FUNCTION_124_8(v71, v73, v74, v75, v76, v77);
LABEL_47:
  OUTLINED_FUNCTION_34_32();
LABEL_48:
  OUTLINED_FUNCTION_73_18();

  v139(v133, v134, v135, v136, v137, v138, v139, v140, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C732E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();

  v11 = *(v10 + 554);
  v12 = *(v10 + 553);
  v13 = *(v10 + 3104);
  v14 = *(v10 + 2336);
  *(v10 + 1144) = *(v10 + 2320);
  *(v10 + 1160) = v14;
  *(v10 + 1176) = *(v10 + 2352);
  *(v10 + 1190) = *(v10 + 2366);
  *(v10 + 1198) = 1;
  *(v10 + 1199) = v12;
  *(v10 + 1200) = 0;
  *(v10 + 1208) = v11;
  sub_1C7025F74(v10 + 1144);

  sub_1C6FB5FC8(v10 + 400, &qword_1EC21AB28);
  sub_1C70DF138(v10 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v13);
  OUTLINED_FUNCTION_37_30();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1C732E94C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3440) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C732EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168_6();
  OUTLINED_FUNCTION_31();
  v278 = (v14 + 1536);
  v280 = v14 + 2096;
  v274 = v14 + 1216;
  v276 = v14 + 2264;
  v16 = (v14 + 2432);
  v17 = (v14 + 2488);
  v288 = v14 + 2600;
  v291 = (v14 + 1984);
  v286 = v14 + 2696;
  v18 = *(v14 + 3424);
  v19 = *(v14 + 3064);
  v20 = *(v14 + 3072);
  *(v14 + 3032) = *(v14 + 3056);
  v282 = (v14 + 2152);
  v284 = v14 + 2744;
  v293 = v14 + 314;
  v296 = v14 + 2648;
  v299 = v14 + 394;
  v21 = (v14 + 473);
  *(v14 + 3040) = v19;
  *(v14 + 3048) = v20;
  v22 = FreeformStoryFetching.Result.uuids.getter();

  swift_unknownObjectRelease();
  for (i = *(v14 + 3440); ; i = 0)
  {
    OUTLINED_FUNCTION_42_31();
    OUTLINED_FUNCTION_19_59(v24, v25, *(v14 + 3400));
    sub_1C754F2DC();
    if (i)
    {
      break;
    }

    v26 = *(v14 + 2504);
    *v16 = *v17;
    *(v14 + 2448) = v26;
    *(v14 + 2464) = *(v14 + 2520);
    *(v14 + 2480) = *(v14 + 2536);
    *(v14 + 145) = *v21;
    *(v14 + 149) = *(v14 + 477);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v14 + 3408);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_92();
      sub_1C6FB3F74();
      v28 = v36;
    }

    OUTLINED_FUNCTION_90_14();
    if (v29)
    {
      OUTLINED_FUNCTION_58_24();
      sub_1C6FB3F74();
      v28 = v37;
    }

    v30 = *(v14 + 478);
    sub_1C6FB5FC8(v14 + 320, &qword_1EC21AB30);
    OUTLINED_FUNCTION_194_4();
    OUTLINED_FUNCTION_60_20(v31, *(v14 + 2464), *(v14 + 2448), *v16);
    *(v32 + 88) = v22;
    *(v32 + 96) = v30;
    v33 = *(v14 + 3400) + 1;
    OUTLINED_FUNCTION_189_2();
    if (v33 == *(v14 + 3392))
    {
      OUTLINED_FUNCTION_86_11();
      v43 = MEMORY[0x1E69E7CC0];
      v44 = &qword_1EC21AB38;
      while (1)
      {
        OUTLINED_FUNCTION_140_6(v42);
        if (v45 == v46)
        {
          break;
        }

        OUTLINED_FUNCTION_217_1();
        if (v29)
        {
          __break(1u);
          goto LABEL_92;
        }

        v47 = OUTLINED_FUNCTION_61_19();
        v50 = OUTLINED_FUNCTION_22_54(v291, v47, v48, v49);
        v55 = OUTLINED_FUNCTION_157_3(v51, v52, v50, v53, v54);
        OUTLINED_FUNCTION_133_7(v55, v56, v57, v58, v59, v60, v61, v62, v272, v274, v276, v278, v280, v282, v284, v286, v288, v291, v293, v296, v299);
        if (v14 == -2488)
        {
          OUTLINED_FUNCTION_151_5();
          v97 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
          OUTLINED_FUNCTION_246_3(v97, v98, &qword_1EC21AB38);
          sub_1C75504FC();
          OUTLINED_FUNCTION_49_3();
          v99 = sub_1C7073450();
          [v99 length];
          v100 = objc_allocWithZone(MEMORY[0x1E6978A98]);
          OUTLINED_FUNCTION_51();
          sub_1C75504FC();
          OUTLINED_FUNCTION_75();
          sub_1C71C8E10();
          v101 = objc_opt_self();
          v102 = OUTLINED_FUNCTION_52_26(v101, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
          OUTLINED_FUNCTION_247_2(v102);

          OUTLINED_FUNCTION_15_63(0xFFFFFFFFFFFFF839);
          OUTLINED_FUNCTION_15_3();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          MEMORY[0x3E8] = v103;
          *v103 = v104;
          OUTLINED_FUNCTION_24_35(v103);
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_174_3();
        OUTLINED_FUNCTION_42_31();
        OUTLINED_FUNCTION_19_59(v63, v64, *(v14 + 3456));
        v65 = sub_1C754F2DC();
        v28 = *(v14 + 3464);
        v73 = OUTLINED_FUNCTION_145_5(v65, v66, v67, v68, v69, v70, v71, v72, v273, v275, v277, v279, v281, v283, v285, v287, v289, v292, v294, v297, v300);
        v43 = *(v14 + 3464);
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB2320();
          v43 = v76;
        }

        v33 = *(v43 + 16);
        OUTLINED_FUNCTION_134_0();
        if (v29)
        {
          OUTLINED_FUNCTION_15_2(v74);
          sub_1C6FB2320();
          v43 = v77;
        }

        OUTLINED_FUNCTION_220_2();
        *(v43 + 16) = v28;
        OUTLINED_FUNCTION_20_52(v43 + 56 * v33);
        OUTLINED_FUNCTION_69_20(v75);
      }

      OUTLINED_FUNCTION_153_5();
      v295 = v87;
      v89 = v88 + 64;
      v90 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        *(v14 + 3504) = v90;
        if (v295 == v86)
        {
          break;
        }

        OUTLINED_FUNCTION_131_4();
        if (v29)
        {
          __break(1u);
          goto LABEL_102;
        }

        OUTLINED_FUNCTION_45_29();
        v18 = *(v89 - 24);
        OUTLINED_FUNCTION_98_13();
        v304 = v91;
        OUTLINED_FUNCTION_127_7();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_171_2();
        if (v33)
        {
          OUTLINED_FUNCTION_125_6();
          v144 = *(v14 + 3104);
          OUTLINED_FUNCTION_129_7();
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_141_4();
          swift_bridgeObjectRelease_n();

          sub_1C70DF138(v14 + 16);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v145 + 8))(v144);
          goto LABEL_39;
        }

        v92 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_92();
          sub_1C6FB3F44();
          v92 = v95;
        }

        v33 = v92[2];
        v90 = v92;
        OUTLINED_FUNCTION_134_0();
        if (v29)
        {
          OUTLINED_FUNCTION_15_2(v93);
          sub_1C6FB3F44();
          v90 = v96;
        }

        OUTLINED_FUNCTION_193_2();
        OUTLINED_FUNCTION_93_14(v94);
        v86 = v304 + 1;
      }

      OUTLINED_FUNCTION_65_22();
      v124 = &qword_1EC21AB38;
      while (1)
      {
        OUTLINED_FUNCTION_96_12(v123);
        if (v125)
        {
          break;
        }

        OUTLINED_FUNCTION_217_1();
        if (v29)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          OUTLINED_FUNCTION_113_11();
          OUTLINED_FUNCTION_205_2();
          OUTLINED_FUNCTION_204_4();
          v270 = *(v14 + 3088);
          *v270 = v124;
          v270[1] = v90;
          OUTLINED_FUNCTION_146_6(v270);
          OUTLINED_FUNCTION_225_1(v271);

          OUTLINED_FUNCTION_25();
          goto LABEL_40;
        }

        v126 = OUTLINED_FUNCTION_61_19();
        v129 = OUTLINED_FUNCTION_22_54(v282, v126, v127, v128);
        OUTLINED_FUNCTION_107_9(v130, v131, v129, v132, v133);
        v134 = OUTLINED_FUNCTION_232_2();
        OUTLINED_FUNCTION_50_25(v286, v134, v135);
        if (!v43)
        {
          OUTLINED_FUNCTION_116_11();
          v173 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
          OUTLINED_FUNCTION_223_2(v173, v174, &qword_1EC21AB38);
          sub_1C75504FC();
          OUTLINED_FUNCTION_49_3();
          v175 = sub_1C7073450();
          [v175 length];
          v176 = objc_allocWithZone(MEMORY[0x1E6978A98]);
          OUTLINED_FUNCTION_51();
          sub_1C75504FC();
          OUTLINED_FUNCTION_75();
          sub_1C71C8E10();
          v177 = objc_opt_self();
          v178 = OUTLINED_FUNCTION_52_26(v177, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
          OUTLINED_FUNCTION_226_2(v178);

          OUTLINED_FUNCTION_15_63(v90 + 3);
          OUTLINED_FUNCTION_15_3();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          *(v14 + 3552) = v179;
          *v179 = v180;
          OUTLINED_FUNCTION_14_55(v179);
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_173_4();
        OUTLINED_FUNCTION_42_31();
        OUTLINED_FUNCTION_19_59(v136, v137, *(v14 + 3520));
        v33 = 0;
        sub_1C754F2DC();
        v18 = *(v14 + 3528);
        OUTLINED_FUNCTION_43_32(v286);
        v138 = swift_isUniquelyReferenced_nonNull_native();
        v139 = *(v14 + 3528);
        if ((v138 & 1) == 0)
        {
          OUTLINED_FUNCTION_92();
          sub_1C6FB2320();
          v139 = v142;
        }

        OUTLINED_FUNCTION_90_14();
        if (v29)
        {
          OUTLINED_FUNCTION_36_28(v140);
          sub_1C6FB2320();
          v139 = v143;
        }

        OUTLINED_FUNCTION_216_3();
        *(v139 + 16) = 0;
        OUTLINED_FUNCTION_20_52(v139 + 56 * v18);
        OUTLINED_FUNCTION_44_28(v141);
      }

      OUTLINED_FUNCTION_195_3();
      v28 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_114_11();
      v90 = &qword_1EC21AB20;
      OUTLINED_FUNCTION_149_6();
      OUTLINED_FUNCTION_148_7();
      while (1)
      {
        *(v14 + 3592) = v15;
        OUTLINED_FUNCTION_147_5(v146);
        if (v125)
        {
          break;
        }

        OUTLINED_FUNCTION_217_1();
        if (v29)
        {
          goto LABEL_117;
        }

        v148 = *(v14 + 3240);
        OUTLINED_FUNCTION_16_55(v147);
        v150 = *(v149 + 48);
        *v148 = v151;
        OUTLINED_FUNCTION_18_48();
        sub_1C7337590(v152, v148 + v150, v153);
        OUTLINED_FUNCTION_215_2();
        switch(*(v28 + 57))
        {
          case 1:
            OUTLINED_FUNCTION_33_33();
            goto LABEL_62;
          case 2:
            OUTLINED_FUNCTION_91_13();
            goto LABEL_62;
          case 3:
            OUTLINED_FUNCTION_32_32();
            goto LABEL_62;
          case 4:

            goto LABEL_63;
          case 5:
            OUTLINED_FUNCTION_41_36();
            goto LABEL_62;
          default:
LABEL_62:
            OUTLINED_FUNCTION_112_6();
            OUTLINED_FUNCTION_364();
            if (v124)
            {
LABEL_63:
              OUTLINED_FUNCTION_40_37();
              OUTLINED_FUNCTION_229_2(v154);
            }

            else
            {
              OUTLINED_FUNCTION_48_23();
              if (!v155)
              {
                goto LABEL_77;
              }
            }

            OUTLINED_FUNCTION_42_31();
            OUTLINED_FUNCTION_19_59(v156, v157, *(v14 + 3576));
            v33 = 0;
            sub_1C754F2DC();
            v124 = *(v14 + 3240);
            OUTLINED_FUNCTION_5_74(*(v14 + 3216), *(v14 + 3224));
            v158 = OUTLINED_FUNCTION_101_5();
            sub_1C6FB5FC8(v158, v159);
            v160 = swift_isUniquelyReferenced_nonNull_native();
            v28 = *(v14 + 3584);
            if ((v160 & 1) == 0)
            {
              v163 = OUTLINED_FUNCTION_92();
              sub_1C6FB3F04(v163, v164, v165, v166);
              v28 = v167;
            }

            OUTLINED_FUNCTION_117_7();
            if (v29)
            {
              OUTLINED_FUNCTION_90_9();
              sub_1C6FB3F04(v168, v169, v170, v171);
              v28 = v172;
            }

            OUTLINED_FUNCTION_51_21();
            OUTLINED_FUNCTION_200_2();
            OUTLINED_FUNCTION_5_74(v161, v162);
            OUTLINED_FUNCTION_144_7();
            break;
        }
      }

      OUTLINED_FUNCTION_110_8();
      OUTLINED_FUNCTION_228_3();
      if (v182)
      {
        if (*(v181 + 16))
        {
          OUTLINED_FUNCTION_13_65(v181);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          swift_task_alloc();
          OUTLINED_FUNCTION_48();
          *(v14 + 3656) = v183;
          *v183 = v184;
          OUTLINED_FUNCTION_1_107(v183);
          OUTLINED_FUNCTION_73_18();

          sub_1C7336744(v185, v186, v187, v188, v189, v190, v191, v192, v193);
        }

        else
        {
LABEL_122:
          __break(1u);
        }

        return;
      }

      OUTLINED_FUNCTION_62_21();
      *(v14 + 3680) = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
      v206 = 1u;
      while (1)
      {
        OUTLINED_FUNCTION_142_2(v205);
        if (v125)
        {
          break;
        }

        OUTLINED_FUNCTION_71_14();
        if (v29)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        v207 = *(v14 + 3160);
        OUTLINED_FUNCTION_109_11();
        v208 = *(v14 + 3120);
        OUTLINED_FUNCTION_9_72(v209);
        v211 = *(v210 + 48);
        *v207 = v212;
        OUTLINED_FUNCTION_2_98();
        sub_1C7337590(v213, v207 + v211, v214);
        OUTLINED_FUNCTION_35();
        sub_1C7337590(v215, v216, v217);
        v218 = *(v208 + 32);
        *(v124 + v218) = v206;
        OUTLINED_FUNCTION_141_6();
        if (!v219)
        {
          OUTLINED_FUNCTION_238_2();
          v220 = OUTLINED_FUNCTION_155_2();
          sub_1C6F65BE8(v220, &qword_1EDD0CE30);
          OUTLINED_FUNCTION_97_11();
          sub_1C75504FC();
          v221 = OUTLINED_FUNCTION_183_2();
          [v221 length];
          v222 = OUTLINED_FUNCTION_230_3();
          v223 = sub_1C6F65BE8(v222, &qword_1EC217FE0);
          sub_1C754F06C();
          if (sub_1C71C3FF8())
          {
            OUTLINED_FUNCTION_235_3();
            v264 = objc_opt_self();
            v265 = OUTLINED_FUNCTION_88_12(v264, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_, v221, v223);
            OUTLINED_FUNCTION_210_3(v265);

            OUTLINED_FUNCTION_47_22((v218 + 24));
            OUTLINED_FUNCTION_15_3();
            v266 = swift_task_alloc();
            v267 = OUTLINED_FUNCTION_72_17(v266);
            *v267 = v268;
            OUTLINED_FUNCTION_0_141(v267);
            goto LABEL_36;
          }

          v224 = sub_1C754FEEC();
          v225 = sub_1C755119C();
          if (OUTLINED_FUNCTION_66(v225))
          {
            v226 = OUTLINED_FUNCTION_127();
            OUTLINED_FUNCTION_115_13(v226);
            OUTLINED_FUNCTION_211_4(&dword_1C6F5C000, v224, v227, "Part Of Week retrieval not supported by Spotlight in this build.");
            OUTLINED_FUNCTION_37();
          }

          *(v124 + v218) = 2;
          v206 = 1;
        }

        OUTLINED_FUNCTION_10_67();
        v33 = 0;
        sub_1C754F2DC();
        v28 = *(v14 + 3696);
        v124 = *(v14 + 3160);
        OUTLINED_FUNCTION_3_90(*(v14 + 3136), *(v14 + 3144));
        sub_1C6FB5FC8(v124, &unk_1EC21AB18);
        v228 = swift_isUniquelyReferenced_nonNull_native();
        v229 = *(v14 + 3696);
        if ((v228 & 1) == 0)
        {
          v233 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB3E94(v233, v234, v235, v229);
          v229 = v236;
        }

        OUTLINED_FUNCTION_186_3();
        if (v29)
        {
          OUTLINED_FUNCTION_82_16();
          sub_1C6FB3E94(v237, v238, v239, v229);
        }

        OUTLINED_FUNCTION_35_24();
        OUTLINED_FUNCTION_196_1();
        OUTLINED_FUNCTION_3_90(v232, v231 + v230 * v124);
        OUTLINED_FUNCTION_87_17();
      }

LABEL_92:
      v240 = 0;
      v241 = *(v14 + 3312);
      v301 = *(v241 + 16);
      v44 = (v241 + 32);
      v305 = MEMORY[0x1E69E7CC0];
      while (v301 != v240)
      {
        if (v240 >= *(v241 + 16))
        {
          goto LABEL_120;
        }

        v242 = OUTLINED_FUNCTION_66_21();
        OUTLINED_FUNCTION_95_16(v278, v242, v243, v244, v245);
        OUTLINED_FUNCTION_70_17();
        OUTLINED_FUNCTION_119_11();
        v246 = OUTLINED_FUNCTION_21_49(v240);
        sub_1C70555F8(v246, v247, &unk_1EC21AB48);
        OUTLINED_FUNCTION_171_2();
        if (v33)
        {
          OUTLINED_FUNCTION_167_5();
          OUTLINED_FUNCTION_177_2();
          OUTLINED_FUNCTION_64_16();
          v303 = v262;
          OUTLINED_FUNCTION_78_14(v274, v307, v308);

          sub_1C6FB5FC8(v14 + 712, &unk_1EC21AB48);
          sub_1C70DF138(v14 + 16);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v263 + 8))(v303);
          goto LABEL_39;
        }

        __dst[0] = v307;
        __dst[1] = v308;
        __dst[2] = v309;
        OUTLINED_FUNCTION_154_4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_64();
          sub_1C6FB3DA8();
          v305 = v250;
        }

        OUTLINED_FUNCTION_59_23();
        if (v29)
        {
          OUTLINED_FUNCTION_15_2(v248);
          sub_1C6FB3DA8();
          v305 = v251;
        }

        sub_1C6FB5FC8(v14 + 712, &unk_1EC21AB48);
        v305[1].n128_u64[0] = v28;
        OUTLINED_FUNCTION_111_10(v305, __dst[2], __dst[1], __dst[0]);
        OUTLINED_FUNCTION_76_16(v249);
        v44 += 8;
        ++v240;
      }

LABEL_102:
      OUTLINED_FUNCTION_94_15();
      v290 = v253;
      v255 = v254 + 64;
      v302 = MEMORY[0x1E69E7CC0];
      while (v290 != v252)
      {
        OUTLINED_FUNCTION_131_4();
        if (v29)
        {
          goto LABEL_121;
        }

        OUTLINED_FUNCTION_45_29();
        v256 = *(v255 - 24);
        v298 = *(v255 - 32);
        OUTLINED_FUNCTION_100_13();
        OUTLINED_FUNCTION_46_28();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_171_2();
        if (v33)
        {
          OUTLINED_FUNCTION_67_19();
          OUTLINED_FUNCTION_53_29();
          OUTLINED_FUNCTION_141_4();
          swift_bridgeObjectRelease_n();

          sub_1C70DF138(v14 + 16);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v269 + 8))(v44);
          goto LABEL_39;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_64();
          sub_1C6FB3D78();
          v302 = v260;
        }

        OUTLINED_FUNCTION_59_23();
        if (v29)
        {
          OUTLINED_FUNCTION_15_2(v257);
          sub_1C6FB3D78();
          v302 = v261;
        }

        OUTLINED_FUNCTION_75_13(v302);
        *(v258 + 32) = v298;
        *(v258 + 40) = v256;
        OUTLINED_FUNCTION_152_5(v258);
        OUTLINED_FUNCTION_68_20(v259);
      }

      OUTLINED_FUNCTION_160_5();
      sub_1C754F2EC();
      OUTLINED_FUNCTION_56_24();
      v90 = *(v14 + 3408);
      v124 = *(v14 + 3352);
      if (!v33)
      {
        goto LABEL_118;
      }

      sub_1C70DF138(v14 + 16);
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_190_0();
    if (v29)
    {
      __break(1u);
LABEL_77:
      v195 = OUTLINED_FUNCTION_27_41();
      v197 = v196(v195);
      OUTLINED_FUNCTION_244_3(v197, v198, &qword_1EC218C50);
      v199 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      v200 = OUTLINED_FUNCTION_104_9();
      sub_1C6F65BE8(0, &qword_1EDD0CE30);
      OUTLINED_FUNCTION_51();
      sub_1C75504FC();
      OUTLINED_FUNCTION_49_3();
      [sub_1C7073450() length];
      v201 = objc_opt_self();
      v202 = OUTLINED_FUNCTION_63_19(v201, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
      OUTLINED_FUNCTION_221_2(v202);

      OUTLINED_FUNCTION_15_63(v18 + 3);
      OUTLINED_FUNCTION_15_3();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v14 + 3624) = v203;
      *v203 = v204;
      OUTLINED_FUNCTION_6_81(v203);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_172_3(v34);
    memcpy(__dst, (v28 + 32), 0x42uLL);
    *(v14 + 320) = v33;
    memcpy((v14 + 328), __dst, 0x42uLL);
    sub_1C7025FF8(v14 + 856, v14 + 928);
    v22 = *(v14 + 384);
    v35 = *(v14 + 344);
    *v17 = *(v14 + 328);
    *(v14 + 2504) = v35;
    *(v14 + 2520) = *(v14 + 360);
    *(v14 + 2536) = *(v14 + 376);
    *v21 = *(v14 + 379);
    *(v14 + 477) = *(v14 + 383);
    *(v14 + 478) = *(v14 + 392);
    if (!v22)
    {
      sub_1C70555F8(v14 + 320, v14 + 160, &qword_1EC21AB30);
      sub_1C75504FC();
      OUTLINED_FUNCTION_145_2();
      if (sub_1C75507FC() <= 0)
      {
        sub_1C75504FC();
        v78 = OUTLINED_FUNCTION_165_3();
        MEMORY[0x1CCA5CC40](v78);
        OUTLINED_FUNCTION_162_6();
      }

      else
      {
        sub_1C75504FC();
      }

      v79 = *(v14 + 3112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v80 = OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_198_2(v80, xmmword_1C755BAB0);
      sub_1C6F65BE8(0, &qword_1EDD0CE30);
      OUTLINED_FUNCTION_24_2();
      sub_1C75504FC();
      OUTLINED_FUNCTION_145_2();
      v81 = sub_1C7073450();
      [v81 0x1FAD8E6F8];
      sub_1C6F65BE8(0, &qword_1EC217FE0);
      OUTLINED_FUNCTION_51();
      sub_1C75504FC();
      v82 = sub_1C71C3DE4();
      v83 = objc_opt_self();
      *(v14 + 3424) = OUTLINED_FUNCTION_77_14(v83, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);

      OUTLINED_FUNCTION_15_63((v79 + 24));
      OUTLINED_FUNCTION_15_3();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v14 + 3432) = v84;
      *v84 = v85;
      OUTLINED_FUNCTION_49_22();
LABEL_35:
      OUTLINED_FUNCTION_34_32();
LABEL_36:
      OUTLINED_FUNCTION_73_18();

      v111(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14);
      return;
    }

    sub_1C70555F8(v14 + 320, v14 + 240, &qword_1EC21AB30);
  }

  OUTLINED_FUNCTION_125_6();
  v38 = *(v14 + 3104);
  v39 = *(v14 + 2504);
  *(v14 + 784) = *v17;
  *(v14 + 800) = v39;
  *(v14 + 816) = *(v14 + 2520);
  OUTLINED_FUNCTION_99_13();
  *v40 = *v21;
  *(v14 + 839) = *(v14 + 477);
  *(v14 + 840) = v22;
  *(v14 + 848) = v41;
  sub_1C7026030(v14 + 784);

  sub_1C6FB5FC8(v14 + 320, &qword_1EC21AB30);
  sub_1C70DF138(v14 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v114 + 8))(v38);
LABEL_39:
  OUTLINED_FUNCTION_25_39();

  OUTLINED_FUNCTION_6_0();
LABEL_40:
  OUTLINED_FUNCTION_73_18();

  v116(v115, v116, v117, v118, v119, v120, v121, v122, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7330130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();

  v11 = *(v10 + 3104);
  v12 = *(v10 + 2504);
  *(v10 + 784) = *(v10 + 2488);
  *(v10 + 800) = v12;
  *(v10 + 816) = *(v10 + 2520);
  OUTLINED_FUNCTION_99_13();
  *v13 = *(v10 + 473);
  *(v10 + 839) = *(v10 + 477);
  *(v10 + 840) = 0;
  *(v10 + 848) = v14;
  sub_1C7026030(v10 + 784);

  sub_1C6FB5FC8(v10 + 320, &qword_1EC21AB30);
  sub_1C70DF138(v10 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v11);
  OUTLINED_FUNCTION_37_30();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1C733027C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3496) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C7330374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_168_6();
  OUTLINED_FUNCTION_31();
  v16 = v14 + 1984;
  v293 = (v14 + 1536);
  v294 = (v14 + 2152);
  v291 = (v14 + 1216);
  v292 = v14 + 2264;
  v17 = (v14 + 2600);
  v18 = v14 + 2648;
  v300 = (v14 + 2096);
  v301 = *(v14 + 3480);
  v19 = *(v14 + 2800);
  v20 = *(v14 + 2808);
  *(v14 + 2912) = *(v14 + 2792);
  v295 = v14 + 2744;
  v297 = v14 + 2696;
  v21 = v14 + 314;
  v305 = (v14 + 394);
  *(v14 + 2920) = v19;
  *(v14 + 2928) = v20;
  v22 = FreeformStoryFetching.Result.uuids.getter();

  swift_unknownObjectRelease();
  v23 = *(v14 + 3496);
  v302 = v14 + 1330;
  v24 = v14 + 1288;
  v306 = v14;
  while (1)
  {
    OUTLINED_FUNCTION_42_31();
    OUTLINED_FUNCTION_19_59(v25, v26, *(v14 + 3456));
    sub_1C754F2DC();
    v27 = *(v14 + 3464);
    if (v23)
    {
      v49 = *(v14 + 3104);
      v50 = *(v17 + 1);
      *v300 = *v17;
      v300[1] = v50;
      *(v300 + 25) = *(v17 + 25);
      *(v14 + 2137) = 1;
      OUTLINED_FUNCTION_101_13((v14 + 2138));
      *(v14 + 2144) = v22;
      sub_1C70260EC(v51);

      sub_1C6FB5FC8(v14 + 1280, &qword_1EC21AB38);
      sub_1C70DF138(v14 + 16);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v52 + 8))(v49);
      goto LABEL_64;
    }

    v28 = *(v17 + 1);
    *v18 = *v17;
    *(v18 + 16) = v28;
    *(v18 + 25) = *(v17 + 25);
    *v21 = v305->n128_u32[0];
    *(v21 + 4) = v305->n128_u16[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v14 + 3464);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB2320();
      v30 = v47;
    }

    v31 = *(v30 + 16);
    OUTLINED_FUNCTION_134_0();
    if (v32)
    {
      OUTLINED_FUNCTION_82_16();
      sub_1C6FB2320();
      v30 = v48;
    }

    v14 = v306;
    sub_1C6FB5FC8(v306 + 1280, &qword_1EC21AB38);
    *(v30 + 16) = v27;
    OUTLINED_FUNCTION_38_30(v30 + 56 * v31, *(v18 + 25), *(v18 + 16), *v18);
    v33 = *v21;
    *(v34 + 78) = *(v21 + 4);
    *(v34 + 74) = v33;
    *(v34 + 80) = v22;
    OUTLINED_FUNCTION_140_6(*(v306 + 3456) + 1);
    if (v35 == *(v306 + 3448))
    {
      break;
    }

    OUTLINED_FUNCTION_217_1();
    if (v32)
    {
      __break(1u);
      goto LABEL_83;
    }

    v36 = OUTLINED_FUNCTION_61_19();
    *(v16 + 48) = v37;
    *(v16 + 16) = v38;
    *(v16 + 32) = v39;
    *v16 = v36;
    v41 = *(v40 + 80);
    v43 = *(v40 + 48);
    v42 = *(v40 + 64);
    v44 = *(v40 + 32);
    *(v306 + 1280) = v45;
    *v24 = v44;
    *(v24 + 16) = v43;
    *(v24 + 32) = v42;
    *(v24 + 48) = v41;
    sub_1C70260B4(v16, v306 + 2040);
    v22 = *(v306 + 1336);
    v46 = *(v24 + 16);
    *v17 = *v24;
    *(v17 + 1) = v46;
    *(v17 + 25) = *(v24 + 25);
    v305->n128_u32[0] = *v302;
    v305->n128_u16[2] = *(v302 + 4);
    if (!v22)
    {
      OUTLINED_FUNCTION_151_5();
      v77 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
      OUTLINED_FUNCTION_246_3(v77, v78, &qword_1EC21AB38);
      sub_1C75504FC();
      OUTLINED_FUNCTION_49_3();
      v79 = sub_1C7073450();
      [v79 length];
      v80 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      OUTLINED_FUNCTION_51();
      sub_1C75504FC();
      OUTLINED_FUNCTION_75();
      sub_1C71C8E10();
      v81 = objc_opt_self();
      v82 = OUTLINED_FUNCTION_52_26(v81, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
      OUTLINED_FUNCTION_247_2(v82);

      OUTLINED_FUNCTION_15_63(v17 + 3);
      OUTLINED_FUNCTION_15_3();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v306 + 3488) = v83;
      *v83 = v84;
      OUTLINED_FUNCTION_24_35();
LABEL_25:
      OUTLINED_FUNCTION_34_32();
LABEL_26:
      OUTLINED_FUNCTION_73_18();

      v91(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, a14);
      return;
    }

    sub_1C70555F8(v306 + 1280, v306 + 1472, &qword_1EC21AB38);
    v23 = 0;
  }

  OUTLINED_FUNCTION_153_5();
  v299 = v54;
  v300 = v55;
  v56 = (v54 + 64);
  v57 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v306 + 3504) = v57;
    if (v300 == v53)
    {
      break;
    }

    OUTLINED_FUNCTION_131_4();
    if (v32)
    {
      __break(1u);
      goto LABEL_96;
    }

    OUTLINED_FUNCTION_231_2(v58, v59, v60, v61, v62, v63, v64, v65, v290, v291, v292, v293, v294, v295, v297, v299, v300, v302, v305, v306);
    v68 = *(v56 - 3);
    v302 = *(v56 - 2);
    v305 = *(v56 - 4);
    v69 = *v56;
    v70 = *(v56 - 8);
    if (*v56)
    {
      v71 = 1;
    }

    else
    {
      v71 = 2;
    }

    v17 = v67;
    v15 = v15 + v67;
    *(v66 + 3080) = v15;
    OUTLINED_FUNCTION_129_7();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_141_4();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_171_2();
    if (v31)
    {
      v117 = v306;
      v118 = *(v306 + 3104);
      OUTLINED_FUNCTION_129_7();
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_141_4();
      swift_bridgeObjectRelease_n();

LABEL_39:

      sub_1C70DF138(v117 + 16);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v119 + 8))(v118);
      goto LABEL_64;
    }

    v72 = v57;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_92();
      sub_1C6FB3F44();
      v72 = v75;
    }

    v31 = *(v72 + 16);
    v57 = v72;
    OUTLINED_FUNCTION_134_0();
    if (v32)
    {
      OUTLINED_FUNCTION_15_2(v73);
      sub_1C6FB3F44();
      v57 = v76;
    }

    *(v57 + 16) = v72;
    v74 = v57 + 40 * v31;
    *(v74 + 32) = v305;
    *(v74 + 40) = v68;
    *(v74 + 48) = v302;
    *(v74 + 56) = v70;
    *(v74 + 57) = v71;
    *(v74 + 64) = v69;
    v56 += 5;
    v53 = (v17 + 1);
  }

  v94 = v306;
  OUTLINED_FUNCTION_65_22();
  v96 = &unk_1C7583F78;
  while (1)
  {
    OUTLINED_FUNCTION_96_12(v95);
    if (v97)
    {
      break;
    }

    OUTLINED_FUNCTION_217_1();
    if (v32)
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      OUTLINED_FUNCTION_113_11();
      OUTLINED_FUNCTION_205_2();
      OUTLINED_FUNCTION_204_4();
      v288 = *(v94 + 3088);
      *v288 = v96;
      v288[1] = v17;
      OUTLINED_FUNCTION_146_6(v288);
      OUTLINED_FUNCTION_225_1(v289);

      OUTLINED_FUNCTION_25();
      goto LABEL_65;
    }

    v98 = OUTLINED_FUNCTION_61_19();
    v101 = OUTLINED_FUNCTION_22_54(v294, v98, v99, v100);
    OUTLINED_FUNCTION_107_9(v102, v103, v101, v104, v105);
    v106 = OUTLINED_FUNCTION_232_2();
    OUTLINED_FUNCTION_50_25(v297, v106, v107);
    if (!v30)
    {
      OUTLINED_FUNCTION_116_11();
      v154 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
      OUTLINED_FUNCTION_223_2(v154, v155, &qword_1EC21AB38);
      sub_1C75504FC();
      OUTLINED_FUNCTION_49_3();
      v156 = sub_1C7073450();
      [v156 length];
      v157 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      OUTLINED_FUNCTION_51();
      sub_1C75504FC();
      OUTLINED_FUNCTION_75();
      sub_1C71C8E10();
      v158 = objc_opt_self();
      v159 = OUTLINED_FUNCTION_52_26(v158, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
      OUTLINED_FUNCTION_226_2(v159);

      OUTLINED_FUNCTION_15_63(v17 + 3);
      OUTLINED_FUNCTION_15_3();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v94 + 3552) = v160;
      *v160 = v161;
      OUTLINED_FUNCTION_14_55(v160);
      goto LABEL_25;
    }

    sub_1C70555F8(v94 + 1344, v94 + 1600, &qword_1EC21AB38);
    OUTLINED_FUNCTION_42_31();
    OUTLINED_FUNCTION_19_59(v108, v109, *(v94 + 3520));
    sub_1C754F2DC();
    OUTLINED_FUNCTION_43_32(v297);
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v111 = *(v94 + 3528);
    if ((v110 & 1) == 0)
    {
      OUTLINED_FUNCTION_92();
      sub_1C6FB2320();
      v111 = v115;
    }

    v113 = *(v111 + 16);
    v112 = *(v111 + 24);
    if (v113 >= v112 >> 1)
    {
      OUTLINED_FUNCTION_36_28(v112);
      sub_1C6FB2320();
      v111 = v116;
    }

    v94 = v306;
    sub_1C6FB5FC8(v306 + 1344, &qword_1EC21AB38);
    *(v111 + 16) = v113 + 1;
    OUTLINED_FUNCTION_20_52(v111 + 56 * v113);
    OUTLINED_FUNCTION_44_28(v114);
  }

  OUTLINED_FUNCTION_195_3();
  v120 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_114_11();
  v17 = &qword_1EC21AB20;
  OUTLINED_FUNCTION_149_6();
  v31 = v94;
  OUTLINED_FUNCTION_148_7();
  while (1)
  {
    *(v31 + 3592) = v15;
    *(v31 + 3584) = v120;
    *(v31 + 3576) = v121;
    if (v121 == v122)
    {
      break;
    }

    OUTLINED_FUNCTION_217_1();
    if (v32)
    {
      goto LABEL_114;
    }

    v123 = *(v31 + 3240);
    v124 = *(v31 + 3216);
    *(v31 + 156) = *(*(v31 + 3208) + 80);
    OUTLINED_FUNCTION_23_40();
    *(v31 + 3608) = v125;
    v127 = *(v126 + 48);
    *v123 = v128;
    OUTLINED_FUNCTION_18_48();
    sub_1C7337590(v129, v123 + v127, v130);
    sub_1C7337590(v123 + v127, v124, v96);
    v131 = *(v124 + 57);
    v132 = 0xE300000000000000;
    switch(v131)
    {
      case 1:
        OUTLINED_FUNCTION_33_33();
        goto LABEL_50;
      case 2:
        OUTLINED_FUNCTION_91_13();
        goto LABEL_50;
      case 3:
        OUTLINED_FUNCTION_32_32();
        v132 = 0xEC00000000000000;
        goto LABEL_50;
      case 4:

        goto LABEL_51;
      case 5:
        OUTLINED_FUNCTION_41_36();
        goto LABEL_50;
      case 6:
        v132 = 0xEC00000064656E69;
        goto LABEL_50;
      default:
LABEL_50:
        OUTLINED_FUNCTION_112_6();
        OUTLINED_FUNCTION_364();
        if (v96)
        {
LABEL_51:
          v133 = v306;
          OUTLINED_FUNCTION_40_37();
          OUTLINED_FUNCTION_229_2(v134);
        }

        else
        {
          v133 = v306;
          OUTLINED_FUNCTION_48_23();
          if (!v135)
          {
            v190 = *(v306 + 3216);
            OUTLINED_FUNCTION_39_34();
            v191 = *(v306 + 3112);
            v193 = *(v192 + 40);
            (*(v194 + 16))(v132, v190 + *(v192 + 36));
            sub_1C70555F8(v190 + v193, v96, &qword_1EC218C50);
            v195 = objc_allocWithZone(MEMORY[0x1E6978A98]);
            v196 = OUTLINED_FUNCTION_104_9();
            sub_1C6F65BE8(0, &qword_1EDD0CE30);
            OUTLINED_FUNCTION_51();
            sub_1C75504FC();
            OUTLINED_FUNCTION_49_3();
            [sub_1C7073450() length];
            v197 = objc_opt_self();
            v198 = OUTLINED_FUNCTION_63_19(v197, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
            OUTLINED_FUNCTION_221_2(v198);

            OUTLINED_FUNCTION_15_63((v191 + 24));
            OUTLINED_FUNCTION_15_3();
            swift_task_alloc();
            OUTLINED_FUNCTION_48();
            *(v306 + 3624) = v199;
            *v199 = v200;
            OUTLINED_FUNCTION_6_81(v199);
            goto LABEL_25;
          }
        }

        OUTLINED_FUNCTION_42_31();
        OUTLINED_FUNCTION_19_59(v136, v137, *(v133 + 3576));
        sub_1C754F2DC();
        OUTLINED_FUNCTION_5_74(*(v133 + 3216), *(v133 + 3224));
        v138 = OUTLINED_FUNCTION_101_5();
        sub_1C6FB5FC8(v138, v139);
        v140 = swift_isUniquelyReferenced_nonNull_native();
        v120 = *(v133 + 3584);
        if ((v140 & 1) == 0)
        {
          v144 = OUTLINED_FUNCTION_92();
          sub_1C6FB3F04(v144, v145, v146, v147);
          v120 = v148;
        }

        v94 = *(v120 + 16);
        v96 = v94 + 1;
        if (v94 >= *(v120 + 24) >> 1)
        {
          OUTLINED_FUNCTION_90_9();
          sub_1C6FB3F04(v149, v150, v151, v152);
          v120 = v153;
        }

        v31 = v306;
        OUTLINED_FUNCTION_200_2();
        OUTLINED_FUNCTION_5_74(v143, v142 + v141 * v94);
        v121 = *(v306 + 3576) + 1;
        v122 = *(v306 + 3568);
        break;
    }
  }

  v162 = *(v31 + 3296);
  v163 = *(v162 + 16);
  *(v31 + 3600) = v163;
  *(v31 + 3648) = MEMORY[0x1E69E7CC0];
  *(v31 + 3640) = 0;
  v30 = v31;
  if (v163)
  {
    if (*(v162 + 16))
    {
      v164 = *(v162 + 80);
      v165 = *(v162 + 64);
      v166 = *(v162 + 72);
      v167 = *(v162 + 56);
      v168 = *(v162 + 40);
      v169 = *(v162 + 48);
      v170 = *(v162 + 32);
      *(v31 + 1920) = 0;
      *(v31 + 1928) = v170;
      *(v31 + 1936) = v168;
      *(v31 + 1944) = v169;
      *(v31 + 1952) = v167;
      *(v31 + 1960) = v165;
      *(v31 + 1968) = v166;
      *(v31 + 1976) = v164;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v171 = swift_task_alloc();
      *(v31 + 3656) = v171;
      *v171 = v31;
      v171[1] = sub_1C7333F04;
      OUTLINED_FUNCTION_73_18();

      sub_1C7336744(v172, v173, v174, v175, v176, v177, v178, v179, v180);
    }

    else
    {
LABEL_119:
      __break(1u);
    }

    return;
  }

  v201 = 0;
  v202 = *(*(v31 + 3304) + 16);
  *(v31 + 3672) = v202;
  *(v31 + 3680) = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
  v203 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v30 + 3696) = v203;
    *(v30 + 3688) = v201;
    if (v201 == v202)
    {
      break;
    }

    OUTLINED_FUNCTION_217_1();
    if (v32)
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v204 = *(v30 + 3160);
    v205 = *(v30 + 3136);
    v206 = *(v30 + 3120);
    *(v30 + 636) = *(*(v30 + 3128) + 80);
    OUTLINED_FUNCTION_23_40();
    *(v30 + 3704) = v207;
    v209 = *(v208 + 48);
    *v204 = v210;
    OUTLINED_FUNCTION_2_98();
    sub_1C7337590(v211, v204 + v209, v212);
    OUTLINED_FUNCTION_35();
    sub_1C7337590(v213, v214, v215);
    v216 = *(v206 + 32);
    *(v205 + v216) = 1;
    v217 = *(v206 + 28);
    *(v30 + 852) = v217;
    if (!*(v205 + v217))
    {
      sub_1C754F06C();
      v218 = OUTLINED_FUNCTION_155_2();
      sub_1C6F65BE8(v218, &qword_1EDD0CE30);
      OUTLINED_FUNCTION_97_11();
      sub_1C75504FC();
      v219 = OUTLINED_FUNCTION_183_2();
      [v219 length];
      v220 = OUTLINED_FUNCTION_230_3();
      sub_1C6F65BE8(v220, &qword_1EC217FE0);
      sub_1C754F06C();
      v221 = sub_1C71C3FF8();
      if (v221)
      {
        v284 = v221;
        v285 = *(v30 + 3112);
        v286 = objc_opt_self();
        *(v30 + 3712) = OUTLINED_FUNCTION_88_12(v286, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_, v219, v284);

        OUTLINED_FUNCTION_47_22((v285 + 24));
        OUTLINED_FUNCTION_15_3();
        v287 = swift_task_alloc();
        *(v30 + 3720) = v287;
        *v287 = v30;
        v287[1] = sub_1C7334C9C;
        goto LABEL_26;
      }

      v222 = sub_1C754FEEC();
      v223 = sub_1C755119C();
      if (OUTLINED_FUNCTION_66(v223))
      {
        v224 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_115_13(v224);
        OUTLINED_FUNCTION_211_4(&dword_1C6F5C000, v222, v225, "Part Of Week retrieval not supported by Spotlight in this build.");
        OUTLINED_FUNCTION_37();
      }

      *(v205 + v216) = 2;
    }

    *(v30 + 3080) = *(v30 + 3080) + *(v30 + 3688);
    v31 = 0;
    sub_1C754F2DC();
    v226 = *(v30 + 3160);
    OUTLINED_FUNCTION_3_90(*(v30 + 3136), *(v30 + 3144));
    sub_1C6FB5FC8(v226, &unk_1EC21AB18);
    v227 = swift_isUniquelyReferenced_nonNull_native();
    v203 = *(v30 + 3696);
    if ((v227 & 1) == 0)
    {
      v232 = OUTLINED_FUNCTION_24_0();
      sub_1C6FB3E94(v232, v233, v234, v203);
      v203 = v235;
    }

    v228 = *(v203 + 16);
    if (v228 >= *(v203 + 24) >> 1)
    {
      OUTLINED_FUNCTION_82_16();
      sub_1C6FB3E94(v236, v237, v238, v203);
      v203 = v239;
    }

    OUTLINED_FUNCTION_196_1();
    OUTLINED_FUNCTION_3_90(v231, v230 + v229 * v228);
    v201 = *(v30 + 3688) + 1;
    v202 = *(v30 + 3672);
  }

LABEL_83:
  v240 = 0;
  v241 = *(v30 + 3312);
  v242 = *(v241 + 16);
  v243 = v30;
  v244 = (v241 + 32);
  v305 = MEMORY[0x1E69E7CC0];
  v245 = (v243 + 769);
  while (v242 != v240)
  {
    if (v240 >= *(v241 + 16))
    {
      goto LABEL_117;
    }

    v31 = v306;
    v246 = *(v306 + 3104);
    v247 = v244[3];
    v249 = *v244;
    v248 = v244[1];
    v293[2] = v244[2];
    v293[3] = v247;
    *v293 = v249;
    v293[1] = v248;
    v251 = v244[2];
    v250 = v244[3];
    v253 = *v244;
    v252 = v244[1];
    *(v306 + 712) = v240;
    *(v306 + 720) = v253;
    *(v306 + 736) = v252;
    *(v306 + 752) = v251;
    *(v306 + 768) = v250;
    sub_1C7026698(v293, v306 + 1408);
    v307 = *(v306 + 720);
    v308 = *(v306 + 736);
    v309 = *(v306 + 752);
    v310 = *v245;
    OUTLINED_FUNCTION_119_11();
    if (v97)
    {
      v255 = v254 + 1;
    }

    else
    {
      v255 = v254;
    }

    *(v306 + 3080) = *(v306 + 3080) + v240;
    sub_1C70555F8(v306 + 712, v306 + 640, &unk_1EC21AB48);
    OUTLINED_FUNCTION_171_2();
    if (v306)
    {
      OUTLINED_FUNCTION_177_2();
      OUTLINED_FUNCTION_125_6();
      v304 = *(v306 + 3104);
      *v291 = v307;
      v291[1] = v308;
      v291[2] = v309;
      *(v306 + 1264) = v255;
      *(v306 + 1272) = *(v282 + 7);
      *(v306 + 1265) = v310;
      sub_1C70266D0(v291);

      sub_1C6FB5FC8(v306 + 712, &unk_1EC21AB48);
      sub_1C70DF138(v306 + 16);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v283 + 8))(v304);
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_202_2(v309);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_64();
      sub_1C6FB3DA8();
      v305 = v258;
    }

    OUTLINED_FUNCTION_59_23();
    if (v32)
    {
      OUTLINED_FUNCTION_15_2(v256);
      sub_1C6FB3DA8();
      v305 = v259;
    }

    sub_1C6FB5FC8(v306 + 712, &unk_1EC21AB48);
    v305[1].n128_u64[0] = v246;
    OUTLINED_FUNCTION_128_6(v305, v311, v308, v307);
    *(v257 + 80) = v255;
    OUTLINED_FUNCTION_76_16(v257);
    v244 += 4;
    ++v240;
  }

LABEL_96:
  v260 = 0;
  v261 = *(v306 + 3320);
  v296 = v261;
  v298 = *(v261 + 16);
  v262 = (v261 + 64);
  v303 = MEMORY[0x1E69E7CC0];
  while (v298 != v260)
  {
    OUTLINED_FUNCTION_131_4();
    if (v32)
    {
      goto LABEL_118;
    }

    OUTLINED_FUNCTION_231_2(v263, v264, v265, v266, v267, v268, v269, v270, v290, v291, v292, v293, v294, v296, v298, v299, v300, v303, v305, v306);
    v273 = *(v262 - 3);
    v300 = *(v262 - 4);
    v274 = *(v262 - 2);
    LODWORD(v299) = *(v262 - 7);
    v275 = *v262;
    v276 = *(v262 - 8);
    if (*v262)
    {
      v118 = 1;
    }

    else
    {
      v118 = 2;
    }

    v277 = v272;
    *(v271 + 3080) = *(v271 + 3080) + v272;
    OUTLINED_FUNCTION_290();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_141_4();
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_171_2();
    if (v31)
    {
      v117 = v306;
      OUTLINED_FUNCTION_67_19();
      OUTLINED_FUNCTION_53_29();
      OUTLINED_FUNCTION_141_4();
      swift_bridgeObjectRelease_n();

      goto LABEL_39;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_64();
      sub_1C6FB3D78();
      v303 = v280;
    }

    OUTLINED_FUNCTION_59_23();
    if (v32)
    {
      OUTLINED_FUNCTION_15_2(v278);
      sub_1C6FB3D78();
      v303 = v281;
    }

    OUTLINED_FUNCTION_75_13(v303);
    *(v279 + 32) = v300;
    *(v279 + 40) = v273;
    *(v279 + 48) = v274;
    *(v279 + 56) = v276;
    *(v279 + 57) = v299;
    *(v279 + 58) = v118;
    *(v279 + 64) = v275;
    v262 += 5;
    v260 = v277 + 1;
  }

  v94 = v306;
  OUTLINED_FUNCTION_160_5();
  sub_1C754F2EC();
  OUTLINED_FUNCTION_56_24();
  v17 = *(v306 + 3408);
  v96 = *(v306 + 3352);
  if (!v31)
  {
    goto LABEL_115;
  }

  sub_1C70DF138(v306 + 16);
LABEL_64:
  OUTLINED_FUNCTION_25_39();

  OUTLINED_FUNCTION_6_0();
LABEL_65:
  OUTLINED_FUNCTION_73_18();

  v183(v182, v183, v184, v185, v186, v187, v188, v189, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7331AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();

  v11 = *(v10 + 2616);
  *(v10 + 2096) = *(v10 + 2600);
  v12 = *(v10 + 3104);
  *(v10 + 2112) = v11;
  *(v10 + 2121) = *(v10 + 2625);
  *(v10 + 2137) = 1;
  *(v10 + 2138) = *(v10 + 394);
  *(v10 + 2142) = *(v10 + 398);
  *(v10 + 2144) = 0;
  sub_1C70260EC(v10 + 2096);

  sub_1C6FB5FC8(v10 + 1280, &qword_1EC21AB38);
  sub_1C70DF138(v10 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(v12);
  OUTLINED_FUNCTION_37_30();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C7331C24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3560) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C7331D1C()
{
  v2 = (v0 + 2152);
  v181 = (v0 + 2264);
  v3 = (v0 + 2696);
  v4 = *(v0 + 3544);
  v5 = *(v0 + 2824);
  v6 = *(v0 + 2832);
  v7 = (v0 + 2744);
  *(v0 + 2840) = *(v0 + 2816);
  *(v0 + 2848) = v5;
  *(v0 + 2856) = v6;
  v8 = FreeformStoryFetching.Result.uuids.getter();

  swift_unknownObjectRelease();
  v9 = *(v0 + 3560);
  v10 = v0 + 1394;
  v11 = v0 + 1352;
  while (1)
  {
    OUTLINED_FUNCTION_42_31();
    OUTLINED_FUNCTION_191_2(v12, v13, *(v0 + 3520));
    sub_1C754F2DC();
    v14 = *(v0 + 3528);
    if (v9)
    {
      v36 = *(v0 + 3104);
      v37 = *(v0 + 2712);
      *v181 = *v3;
      *(v0 + 2280) = v37;
      v38 = OUTLINED_FUNCTION_26_41(v181, *(v0 + 2721));
      *(v0 + 2312) = v8;
      sub_1C70260EC(v38);

      sub_1C6FB5FC8(v0 + 1344, &qword_1EC21AB38);
      sub_1C70DF138(v0 + 16);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v39 + 8))(v36);
      OUTLINED_FUNCTION_25_39();

      OUTLINED_FUNCTION_6_0();
      goto LABEL_43;
    }

    v15 = *(v0 + 2712);
    *v7 = *v3;
    *(v0 + 2760) = v15;
    *(v0 + 2769) = *(v0 + 2721);
    *(v0 + 234) = *(v0 + 150);
    *(v0 + 238) = *(v0 + 154);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v0 + 3528);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_92();
      sub_1C6FB2320();
      v17 = v34;
    }

    OUTLINED_FUNCTION_117_7();
    if (v18)
    {
      OUTLINED_FUNCTION_90_9();
      sub_1C6FB2320();
      v17 = v35;
    }

    sub_1C6FB5FC8(v0 + 1344, &qword_1EC21AB38);
    *(v17 + 16) = v14;
    OUTLINED_FUNCTION_38_30(v17, *(v0 + 2769), *(v0 + 2760), *v7);
    v19 = *(v0 + 234);
    *(v20 + 78) = *(v0 + 238);
    *(v20 + 74) = v19;
    *(v20 + 80) = v8;
    v21 = *(v0 + 3520) + 1;
    *(v0 + 3536) = v1;
    *(v0 + 3528) = v17;
    *(v0 + 3520) = v21;
    v22 = 0x1FAD8E000uLL;
    if (v21 == *(v0 + 3512))
    {
      break;
    }

    OUTLINED_FUNCTION_217_1();
    if (v18)
    {
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v23 = OUTLINED_FUNCTION_61_19();
    *(v0 + 2200) = v24;
    *(v0 + 2168) = v25;
    *(v0 + 2184) = v26;
    *v2 = v23;
    v28 = *(v27 + 80);
    v30 = *(v27 + 48);
    v29 = *(v27 + 64);
    v31 = *(v27 + 32);
    *(v0 + 1344) = v32;
    *v11 = v31;
    *(v0 + 1368) = v30;
    *(v0 + 1384) = v29;
    *(v0 + 1400) = v28;
    sub_1C70260B4(v0 + 2152, v0 + 2208);
    v8 = *(v0 + 1400);
    v33 = *(v0 + 1368);
    *v3 = *v11;
    *(v0 + 2712) = v33;
    *(v0 + 2721) = *(v0 + 1377);
    *(v0 + 150) = *v10;
    *(v0 + 154) = *(v0 + 1398);
    if (!v8)
    {
      OUTLINED_FUNCTION_116_11();
      v73 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
      OUTLINED_FUNCTION_223_2(v73, v74, &qword_1EC21AB38);
      sub_1C75504FC();
      OUTLINED_FUNCTION_49_3();
      v75 = sub_1C7073450();
      [v75 0x1FAD8E6F8];
      v76 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      OUTLINED_FUNCTION_51();
      sub_1C75504FC();
      OUTLINED_FUNCTION_75();
      sub_1C71C8E10();
      v77 = objc_opt_self();
      v78 = OUTLINED_FUNCTION_52_26(v77, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
      OUTLINED_FUNCTION_226_2(v78);

      OUTLINED_FUNCTION_15_63((v0 + 2176));
      OUTLINED_FUNCTION_15_3();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 3552) = v79;
      *v79 = v80;
      OUTLINED_FUNCTION_14_55();
LABEL_34:
      OUTLINED_FUNCTION_34_32();
      goto LABEL_35;
    }

    sub_1C70555F8(v0 + 1344, v0 + 1600, &qword_1EC21AB38);
    v9 = 0;
  }

  OUTLINED_FUNCTION_195_3();
  v7 = MEMORY[0x1E69E7CC0];
  v10 = 0x6E6F73616573;
  v2 = &qword_1EC21AB20;
  v11 = 1;
  *(v0 + 3568) = *(v41 + 16);
  v8 = &unk_1C7583F58;
  v22 = v7;
  while (1)
  {
    *(v0 + 3592) = v1;
    OUTLINED_FUNCTION_147_5(v40);
    if (v42)
    {
      break;
    }

    OUTLINED_FUNCTION_217_1();
    if (v18)
    {
      goto LABEL_85;
    }

    v44 = *(v0 + 3240);
    OUTLINED_FUNCTION_16_55(v43);
    v3 = *(v45 + 48);
    *v44 = v46;
    OUTLINED_FUNCTION_18_48();
    sub_1C7337590(v47, v3 + v44, v48);
    sub_1C7337590(v3 + v44, v22, v14);
    switch(*(v22 + 57))
    {
      case 1:
        OUTLINED_FUNCTION_33_33();
        goto LABEL_22;
      case 2:
        OUTLINED_FUNCTION_91_13();
        goto LABEL_22;
      case 3:
        OUTLINED_FUNCTION_32_32();
        goto LABEL_22;
      case 4:

        goto LABEL_23;
      case 5:
        OUTLINED_FUNCTION_41_36();
        goto LABEL_22;
      case 6:
        OUTLINED_FUNCTION_178_2();
        goto LABEL_22;
      default:
LABEL_22:
        sub_1C7551DBC();
        OUTLINED_FUNCTION_364();
        if (v14)
        {
LABEL_23:
          OUTLINED_FUNCTION_40_37();
          if (v42)
          {
            v51 = 2;
          }

          else
          {
            v51 = 1;
          }

          *(v49 + v50) = v51;
        }

        else
        {
          v52 = *(v0 + 3216);
          v53 = *(v0 + 3200);
          *(v52 + *(v53 + 44)) = 1;
          v54 = *(v53 + 48);
          *(v0 + 556) = v54;
          if (!*(v52 + v54))
          {
            v99 = OUTLINED_FUNCTION_27_41();
            v101 = v100(v99);
            OUTLINED_FUNCTION_244_3(v101, v102, &qword_1EC218C50);
            v103 = objc_allocWithZone(MEMORY[0x1E6978A98]);
            v104 = OUTLINED_FUNCTION_104_9();
            sub_1C6F65BE8(0, &qword_1EDD0CE30);
            OUTLINED_FUNCTION_51();
            sub_1C75504FC();
            OUTLINED_FUNCTION_49_3();
            [sub_1C7073450() length];
            v105 = objc_opt_self();
            v106 = OUTLINED_FUNCTION_63_19(v105, sel_updateQueryString_withSelectedSuggestion_inRange_additionalAttributes_);
            OUTLINED_FUNCTION_221_2(v106);

            OUTLINED_FUNCTION_15_63(&v7[1].n128_u64[1]);
            OUTLINED_FUNCTION_15_3();
            swift_task_alloc();
            OUTLINED_FUNCTION_48();
            *(v0 + 3624) = v107;
            *v107 = v108;
            OUTLINED_FUNCTION_6_81(v107);
            goto LABEL_34;
          }
        }

        v55 = OUTLINED_FUNCTION_31_36();
        OUTLINED_FUNCTION_191_2(v55, v56, v57);
        sub_1C754F2DC();
        v14 = *(v0 + 3240);
        OUTLINED_FUNCTION_5_74(*(v0 + 3216), *(v0 + 3224));
        v58 = OUTLINED_FUNCTION_101_5();
        sub_1C6FB5FC8(v58, v59);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v0 + 3584);
        if ((v60 & 1) == 0)
        {
          v63 = OUTLINED_FUNCTION_92();
          sub_1C6FB3F04(v63, v64, v65, v66);
          v22 = v67;
        }

        OUTLINED_FUNCTION_117_7();
        if (v18)
        {
          OUTLINED_FUNCTION_90_9();
          sub_1C6FB3F04(v68, v69, v70, v71);
          v22 = v72;
        }

        OUTLINED_FUNCTION_51_21();
        OUTLINED_FUNCTION_200_2();
        OUTLINED_FUNCTION_5_74(v61, v62);
        OUTLINED_FUNCTION_144_7();
        break;
    }
  }

  OUTLINED_FUNCTION_110_8();
  *(v0 + 3648) = v7;
  *(v0 + 3640) = 0;
  if (v84)
  {
    if (!*(v83 + 16))
    {
      goto LABEL_90;
    }

    OUTLINED_FUNCTION_13_65(v83);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 3656) = v85;
    *v85 = v86;
    OUTLINED_FUNCTION_1_107(v85);
    OUTLINED_FUNCTION_209_4();

    sub_1C7336744(v87, v88, v89, v90, v91, v92, v93, v94, v95);
    return;
  }

  OUTLINED_FUNCTION_62_21();
  *(v0 + 3680) = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
  v11 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    *(v0 + 3696) = v11;
    *(v0 + 3688) = v109;
    if (v109 == v110)
    {
      v140 = 0;
      v141 = *(v0 + 3312);
      v178 = v141[1].n128_u64[0];
      v142 = v141 + 2;
      v182 = MEMORY[0x1E69E7CC0];
      while (v178 != v140)
      {
        if (v140 >= v141[1].n128_u64[0])
        {
          goto LABEL_88;
        }

        OUTLINED_FUNCTION_74_13();
        v143 = OUTLINED_FUNCTION_158_4((v0 + 1536), v142[2], v142[3], v142[1], *v142);
        *(v0 + 712) = v140;
        OUTLINED_FUNCTION_134_9(v144, v143, v145, v146, v147);
        v184 = *(v0 + 720);
        v185 = *(v0 + 736);
        v186 = *(v0 + 752);
        OUTLINED_FUNCTION_119_11();
        if (v42)
        {
          v149 = v148 + 1;
        }

        else
        {
          v149 = v148;
        }

        v150 = OUTLINED_FUNCTION_21_49(v140);
        sub_1C70555F8(v150, v151, &unk_1EC21AB48);
        OUTLINED_FUNCTION_171_2();
        OUTLINED_FUNCTION_202_2(v186);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_64();
          sub_1C6FB3DA8();
          v182 = v154;
        }

        OUTLINED_FUNCTION_59_23();
        if (v18)
        {
          OUTLINED_FUNCTION_15_2(v152);
          sub_1C6FB3DA8();
          v182 = v155;
        }

        sub_1C6FB5FC8(v0 + 712, &unk_1EC21AB48);
        v182[1].n128_u64[0] = v22;
        OUTLINED_FUNCTION_128_6(v182, v187, v185, v184);
        *(v153 + 80) = v149;
        OUTLINED_FUNCTION_76_16(v153);
        v142 += 4;
        ++v140;
      }

      OUTLINED_FUNCTION_94_15();
      v177 = v157;
      v159 = v158 + 64;
      v183 = MEMORY[0x1E69E7CC0];
      while (v177 != v156)
      {
        OUTLINED_FUNCTION_131_4();
        if (v18)
        {
          goto LABEL_89;
        }

        OUTLINED_FUNCTION_45_29();
        v160 = *(v159 - 24);
        v180 = *(v159 - 32);
        v179 = *(v159 - 7);
        OUTLINED_FUNCTION_98_13();
        if (v42)
        {
          v163 = v161 + 1;
        }

        else
        {
          v163 = v161;
        }

        v164 = v162;
        OUTLINED_FUNCTION_46_28();
        OUTLINED_FUNCTION_141_4();
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_171_2();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_64();
          sub_1C6FB3D78();
          v183 = v168;
        }

        OUTLINED_FUNCTION_59_23();
        if (v18)
        {
          OUTLINED_FUNCTION_15_2(v165);
          sub_1C6FB3D78();
          v183 = v169;
        }

        OUTLINED_FUNCTION_75_13(v183);
        *(v166 + 32) = v180;
        *(v166 + 40) = v160;
        OUTLINED_FUNCTION_152_5(v166);
        *(v167 + 57) = v179;
        *(v167 + 58) = v163;
        *(v167 + 64) = v141;
        v159 += 40;
        v156 = v164 + 1;
      }

      OUTLINED_FUNCTION_160_5();
      sub_1C754F2EC();
      v3 = *(v0 + 3648);
      v22 = *(v0 + 3584);
      v7 = *(v0 + 3528);
      v10 = *(v0 + 3504);
      v8 = *(v0 + 3464);
      v2 = *(v0 + 3408);
      v14 = *(v0 + 3352);
LABEL_86:
      OUTLINED_FUNCTION_113_11();
      OUTLINED_FUNCTION_205_2();
      OUTLINED_FUNCTION_204_4();
      v176 = *(v0 + 3088);
      *v176 = v14;
      v176[1] = v2;
      v176[2] = v8;
      v176[3] = v10;
      v176[4] = v7;
      v176[5] = v22;
      v176[6] = v3;
      v176[7] = v11;
      OUTLINED_FUNCTION_225_1(v176);

      OUTLINED_FUNCTION_25();
LABEL_43:
      OUTLINED_FUNCTION_209_4();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_71_14();
    if (!v18)
    {
      v112 = *(v0 + 3160);
      v113 = *(v0 + 3136);
      v114 = *(v0 + 3120);
      OUTLINED_FUNCTION_9_72(v111);
      v116 = *(v115 + 48);
      *v112 = v117;
      OUTLINED_FUNCTION_2_98();
      sub_1C7337590(v118, v112 + v116, v119);
      sub_1C7337590(v112 + v116, v113, v22);
      v120 = *(v114 + 32);
      *(v113 + v120) = 1;
      v121 = *(v114 + 28);
      *(v0 + 852) = v121;
      if (!*(v113 + v121))
      {
        sub_1C754F06C();
        sub_1C6F65BE8(0, &qword_1EDD0CE30);
        sub_1C75504FC();
        OUTLINED_FUNCTION_23_14();
        v122 = sub_1C7073450();
        [v122 length];
        sub_1C6F65BE8(0, &qword_1EC217FE0);
        sub_1C754F06C();
        if (sub_1C71C3FF8())
        {
          v170 = *(v0 + 3112);
          objc_opt_self();
          OUTLINED_FUNCTION_159_6();
          OUTLINED_FUNCTION_210_3([v171 v172]);

          OUTLINED_FUNCTION_47_22((v170 + 24));
          OUTLINED_FUNCTION_15_3();
          v173 = swift_task_alloc();
          v174 = OUTLINED_FUNCTION_72_17(v173);
          *v174 = v175;
          OUTLINED_FUNCTION_0_141(v174);
LABEL_35:
          OUTLINED_FUNCTION_209_4();

          __asm { BRAA            X6, X16 }
        }

        v123 = sub_1C754FEEC();
        v124 = sub_1C755119C();
        if (OUTLINED_FUNCTION_128(v124))
        {
          v125 = OUTLINED_FUNCTION_127();
          *v125 = 0;
          _os_log_impl(&dword_1C6F5C000, v123, v124, "Part Of Week retrieval not supported by Spotlight in this build.", v125, 2u);
          OUTLINED_FUNCTION_109();
        }

        *(v113 + v120) = 2;
      }

      OUTLINED_FUNCTION_10_67();
      sub_1C754F2DC();
      v126 = *(v0 + 3160);
      OUTLINED_FUNCTION_3_90(*(v0 + 3136), *(v0 + 3144));
      sub_1C6FB5FC8(v126, &unk_1EC21AB18);
      v127 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *(v0 + 3696);
      if ((v127 & 1) == 0)
      {
        v132 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB3E94(v132, v133, v134, v11);
        v11 = v135;
      }

      v128 = *(v11 + 16);
      v22 = v128 + 1;
      if (v128 >= *(v11 + 24) >> 1)
      {
        OUTLINED_FUNCTION_82_16();
        sub_1C6FB3E94(v136, v137, v138, v11);
        v11 = v139;
      }

      v129 = OUTLINED_FUNCTION_35_24();
      *(v11 + 16) = v22;
      OUTLINED_FUNCTION_3_90(v129, v11 + v130 + v131 * v128);
      OUTLINED_FUNCTION_87_17();
      continue;
    }

    break;
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}

uint64_t sub_1C7332E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();

  v13 = *(v12 + 3104);
  v14 = *(v12 + 2712);
  *(v12 + 2264) = *(v12 + 2696);
  *(v12 + 2280) = v14;
  *(v12 + 2289) = *(v12 + 2721);
  *(v12 + 2305) = 1;
  *(v12 + 2306) = *(v12 + 150);
  *(v12 + 2310) = *(v12 + 154);
  *(v12 + 2312) = 0;
  sub_1C70260EC(v12 + 2264);

  sub_1C6FB5FC8(v12 + 1344, &qword_1EC21AB38);
  sub_1C70DF138(v12 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v13);
  OUTLINED_FUNCTION_37_30();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1C7332F78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3632) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7333DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();

  OUTLINED_FUNCTION_4_80();
  sub_1C6FB5FC8(v13, &qword_1EC21AB20);

  sub_1C70DF138(v12 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v15 + 8))(v14);
  OUTLINED_FUNCTION_37_30();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1C7333F04()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 3664) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7334B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 3104);
  *(v10 + 1856) = *(v10 + 1920);
  *(v10 + 1872) = *(v10 + 1936);
  *(v10 + 1888) = *(v10 + 1952);
  *(v10 + 1897) = *(v10 + 1961);
  sub_1C6FB5FC8(v10 + 1856, &qword_1EC21AB40);
  sub_1C70DF138(v10 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v12 + 8))(v11);
  OUTLINED_FUNCTION_37_30();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_239_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C7334C9C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 3728) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C73356B4()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 3160);
  v5 = *(v0 + 3104);
  OUTLINED_FUNCTION_12_61(*(v0 + 3136));
  sub_1C6FB5FC8(v1, &unk_1EC21AB18);

  sub_1C70DF138(v0 + 16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v5);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C7335844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeExtendedToken(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = *(a1 + 40);
  v12 = *(a2 + 40);
  v13 = [objc_opt_self() enableAssetScopingTokenPromotion];
  result = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v26 = MEMORY[0x1E69E7CC0];
    if (!*(v12 + 16))
    {
      v24 = v7;
      v15 = 0;
      v16 = MEMORY[0x1E69E7CC0];
      v17 = *(v11 + 16);
      while (1)
      {
        if (v17 == v15)
        {
          sub_1C71BA224();

          sub_1C6FD2404();
          return v26;
        }

        if (v15 >= *(v11 + 16))
        {
          break;
        }

        v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v19 = *(v5 + 72);
        sub_1C7337590(v11 + v18 + v19 * v15, v10, type metadata accessor for TimeExtendedToken);
        switch(v10[57])
        {
          case 2:

            goto LABEL_10;
          default:
            v20 = sub_1C7551DBC();

            if (v20)
            {
LABEL_10:
              sub_1C73375F0(v10, v24, type metadata accessor for TimeExtendedToken);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v25 = v16;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1C716DCA8();
                v16 = v25;
              }

              v22 = *(v16 + 16);
              if (v22 >= *(v16 + 24) >> 1)
              {
                sub_1C716DCA8();
                v16 = v25;
              }

              ++v15;
              *(v16 + 16) = v22 + 1;
              result = sub_1C73375F0(v24, v16 + v18 + v22 * v19, type metadata accessor for TimeExtendedToken);
            }

            else
            {
              result = sub_1C7337650(v10, type metadata accessor for TimeExtendedToken);
              ++v15;
            }

            break;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1C7335B90()
{
  result = qword_1EDD06BD0;
  if (!qword_1EDD06BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC214D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06BD0);
  }

  return result;
}

void sub_1C7335BF4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v130 = a2;
  v121 = type metadata accessor for PartOfWeekExtendedToken(0);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v4 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for TimeExtendedToken(0);
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v125 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[3];
  v131 = a1[2];
  v134 = v8;
  v9 = a1[5];
  v122 = a1[4];
  v123 = v9;
  v10 = a1[7];
  v133 = a1[6];
  v127 = v10;
  v128 = a1[8];
  v11 = *(v6 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v132 = v4;
  if (v11)
  {
    v140 = MEMORY[0x1E69E7CC0];
    sub_1C716D97C();
    v12 = v140;
    v13 = v6 + 87;
    do
    {
      memcpy(__dst, (v13 - 55), 0x41uLL);
      v14 = *(v13 - 39);
      v138 = *(v13 - 55);
      *v139 = v14;
      *&v139[16] = *(v13 - 23);
      *&v139[30] = *(v13 - 9);
      *v137 = *v13;
      *&v137[8] = *(v13 + 8);
      sub_1C7025F3C(__dst, v135);
      v140 = v12;
      v15 = *(v12 + 16);
      if (v15 >= *(v12 + 24) >> 1)
      {
        sub_1C716D97C();
        v12 = v140;
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 72 * v15;
      v18 = *v139;
      v17 = *&v139[16];
      v19 = v138;
      *(v16 + 78) = *&v139[30];
      *(v16 + 48) = v18;
      *(v16 + 64) = v17;
      *(v16 + 32) = v19;
      *(v16 + 86) = 2;
      v20 = *v137;
      *(v16 + 95) = *&v137[8];
      *(v16 + 87) = v20;
      v13 += 72;
      --v11;
    }

    while (v11);
    v4 = v132;
  }

  v21 = *(v7 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v140 = MEMORY[0x1E69E7CC0];
    sub_1C716D940();
    v22 = v140;
    v23 = (v7 + 83);
    do
    {
      memcpy(__dst, v23 - 51, sizeof(__dst));
      v24 = *(v23 - 35);
      v138 = *(v23 - 51);
      *v139 = v24;
      *&v139[16] = *(v23 - 19);
      *&v139[32] = *(v23 - 3);
      *v137 = *v23;
      *&v137[7] = *(v23 + 7);
      sub_1C7025FF8(__dst, v135);
      v140 = v22;
      v25 = *(v22 + 16);
      if (v25 >= *(v22 + 24) >> 1)
      {
        sub_1C716D940();
        v22 = v140;
      }

      *(v22 + 16) = v25 + 1;
      v26 = v22 + 72 * v25;
      v28 = *v139;
      v27 = *&v139[16];
      v29 = v138;
      *(v26 + 80) = *&v139[32];
      *(v26 + 48) = v28;
      *(v26 + 64) = v27;
      *(v26 + 32) = v29;
      *(v26 + 82) = 2;
      v30 = *v137;
      *(v26 + 90) = *&v137[7];
      *(v26 + 83) = v30;
      v23 += 9;
      --v21;
    }

    while (v21);
    v4 = v132;
  }

  v31 = v131;
  v32 = *(v131 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v140 = MEMORY[0x1E69E7CC0];
    sub_1C716DD2C();
    v33 = v140;
    v34 = (v31 + 74);
    do
    {
      v35 = *(v34 - 42);
      v36 = *(v34 - 26);
      v37 = *(v34 - 10);
      *&__dst[48] = *(v34 + 6);
      *&__dst[16] = v36;
      *&__dst[32] = v37;
      *__dst = v35;
      v38 = *(v34 - 26);
      v138 = *(v34 - 42);
      *v139 = v38;
      *&v139[9] = *(v34 - 17);
      v39 = *v34;
      *&v137[6] = *(v34 + 6);
      *v137 = v39;
      sub_1C70260B4(__dst, v135);
      v140 = v33;
      v40 = *(v33 + 16);
      if (v40 >= *(v33 + 24) >> 1)
      {
        sub_1C716DD2C();
        v33 = v140;
      }

      *(v33 + 16) = v40 + 1;
      v41 = v33 + 56 * v40;
      v42 = v138;
      v43 = *v139;
      *(v41 + 57) = *&v139[9];
      *(v41 + 32) = v42;
      *(v41 + 48) = v43;
      *(v41 + 73) = 2;
      v44 = *v137;
      *(v41 + 80) = *&v137[6];
      *(v41 + 74) = v44;
      v34 += 7;
      --v32;
    }

    while (v32);
    v4 = v132;
  }

  v126 = v33;
  v45 = v134;
  v46 = *(v134 + 16);
  v47 = MEMORY[0x1E69E7CC0];
  v129 = v12;
  v131 = v22;
  if (v46)
  {
    *__dst = MEMORY[0x1E69E7CC0];
    sub_1C716DCF0();
    v47 = *__dst;
    v48 = (v45 + 64);
    do
    {
      v49 = *(v48 - 3);
      v134 = *(v48 - 4);
      v50 = *(v48 - 2);
      v51 = *(v48 - 8);
      v52 = *v48;
      *__dst = v47;
      v54 = *(v47 + 16);
      v53 = *(v47 + 24);
      v55 = v47;
      sub_1C75504FC();
      sub_1C75504FC();
      if (v54 >= v53 >> 1)
      {
        sub_1C716DCF0();
        v55 = *__dst;
      }

      v48 += 5;
      *(v55 + 16) = v54 + 1;
      v56 = v55 + 40 * v54;
      *(v56 + 32) = v134;
      *(v56 + 40) = v49;
      *(v56 + 48) = v50;
      *(v56 + 56) = v51;
      *(v56 + 57) = 2;
      *(v56 + 64) = v52;
      --v46;
      v47 = v55;
    }

    while (v46);
    v4 = v132;
    v22 = v131;
  }

  v124 = v47;
  v57 = v122;
  v58 = *(v122 + 16);
  v59 = MEMORY[0x1E69E7CC0];
  v60 = v125;
  if (v58)
  {
    v140 = MEMORY[0x1E69E7CC0];
    sub_1C716DD2C();
    v59 = v140;
    v61 = (v57 + 74);
    do
    {
      v62 = *(v61 - 42);
      v63 = *(v61 - 26);
      v64 = *(v61 - 10);
      *&__dst[48] = *(v61 + 6);
      *&__dst[16] = v63;
      *&__dst[32] = v64;
      *__dst = v62;
      v65 = *(v61 - 26);
      v138 = *(v61 - 42);
      *v139 = v65;
      *&v139[9] = *(v61 - 17);
      v66 = *v61;
      *&v137[6] = *(v61 + 6);
      *v137 = v66;
      sub_1C70260B4(__dst, v135);
      v140 = v59;
      v67 = *(v59 + 16);
      if (v67 >= *(v59 + 24) >> 1)
      {
        sub_1C716DD2C();
        v59 = v140;
      }

      *(v59 + 16) = v67 + 1;
      v68 = v59 + 56 * v67;
      v69 = v138;
      v70 = *v139;
      *(v68 + 57) = *&v139[9];
      *(v68 + 32) = v69;
      *(v68 + 48) = v70;
      *(v68 + 73) = 2;
      v71 = *v137;
      *(v68 + 80) = *&v137[6];
      *(v68 + 74) = v71;
      v61 += 7;
      --v58;
    }

    while (v58);
    v4 = v132;
  }

  v122 = v59;
  v72 = v123;
  v73 = *(v123 + 16);
  v74 = MEMORY[0x1E69E7CC0];
  if (v73)
  {
    *__dst = MEMORY[0x1E69E7CC0];
    sub_1C716DCA8();
    v74 = *__dst;
    v75 = (*(v118 + 80) + 32) & ~*(v118 + 80);
    v76 = v72 + v75;
    v77 = *(v118 + 72);
    v78 = v120;
    do
    {
      sub_1C7337590(v76, v60, type metadata accessor for TimeExtendedToken);
      *(v60 + *(v78 + 44)) = 2;
      *__dst = v74;
      v79 = *(v74 + 2);
      if (v79 >= *(v74 + 3) >> 1)
      {
        sub_1C716DCA8();
        v78 = v120;
        v74 = *__dst;
      }

      *(v74 + 2) = v79 + 1;
      sub_1C73375F0(v60, &v74[v75 + v79 * v77], type metadata accessor for TimeExtendedToken);
      v76 += v77;
      --v73;
    }

    while (v73);
    v4 = v132;
  }

  v125 = v74;
  v80 = v133;
  v81 = *(v133 + 16);
  v82 = MEMORY[0x1E69E7CC0];
  if (v81)
  {
    *__dst = MEMORY[0x1E69E7CC0];
    sub_1C716DC6C();
    v82 = *__dst;
    v83 = (v80 + 72);
    do
    {
      v84 = *(v83 - 4);
      v134 = *(v83 - 5);
      v85 = *(v83 - 3);
      LODWORD(v133) = *(v83 - 16);
      v86 = *(v83 - 1);
      v87 = *v83;
      *__dst = v82;
      v88 = *(v82 + 16);
      v89 = *(v82 + 24);
      v90 = v82;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      if (v88 >= v89 >> 1)
      {
        sub_1C716DC6C();
        v90 = *__dst;
      }

      v83 += 7;
      *(v90 + 16) = v88 + 1;
      v91 = v90 + 56 * v88;
      *(v91 + 32) = v134;
      *(v91 + 40) = v84;
      *(v91 + 48) = v85;
      *(v91 + 56) = v133;
      *(v91 + 64) = v86;
      *(v91 + 72) = v87;
      *(v91 + 80) = 2;
      --v81;
      v82 = v90;
    }

    while (v81);
    v4 = v132;
    v22 = v131;
  }

  v134 = v82;
  v92 = v127;
  v93 = *(v127 + 16);
  v94 = MEMORY[0x1E69E7CC0];
  if (v93)
  {
    *__dst = MEMORY[0x1E69E7CC0];
    sub_1C716DC24();
    v94 = *__dst;
    v95 = (*(v119 + 80) + 32) & ~*(v119 + 80);
    v96 = v92 + v95;
    v97 = *(v119 + 72);
    v98 = v121;
    do
    {
      sub_1C7337590(v96, v4, type metadata accessor for PartOfWeekExtendedToken);
      v4[*(v98 + 32)] = 2;
      *__dst = v94;
      v99 = *(v94 + 16);
      if (v99 >= *(v94 + 24) >> 1)
      {
        sub_1C716DC24();
        v98 = v121;
        v94 = *__dst;
      }

      *(v94 + 16) = v99 + 1;
      sub_1C73375F0(v4, v94 + v95 + v99 * v97, type metadata accessor for PartOfWeekExtendedToken);
      v96 += v97;
      --v93;
    }

    while (v93);
    v22 = v131;
  }

  v100 = v128;
  v101 = *(v128 + 16);
  v102 = MEMORY[0x1E69E7CC0];
  if (v101)
  {
    v140 = MEMORY[0x1E69E7CC0];
    sub_1C716DBE8();
    v103 = v140;
    v104 = (v100 + 81);
    do
    {
      v105 = *(v104 - 49);
      v106 = *(v104 - 33);
      v107 = *(v104 - 1);
      *&__dst[32] = *(v104 - 17);
      *&__dst[48] = v107;
      *__dst = v105;
      *&__dst[16] = v106;
      v108 = *(v104 - 33);
      v138 = *(v104 - 49);
      *v139 = v108;
      *&v139[16] = *(v104 - 17);
      v109 = *v104;
      *&v137[7] = *(v104 + 7);
      *v137 = v109;
      sub_1C7026698(__dst, v135);
      v140 = v103;
      v110 = *(v103 + 16);
      if (v110 >= *(v103 + 24) >> 1)
      {
        sub_1C716DBE8();
        v103 = v140;
      }

      *(v103 + 16) = v110 + 1;
      v111 = v103 + (v110 << 6);
      v112 = *&v139[16];
      v113 = v138;
      *(v111 + 48) = *v139;
      *(v111 + 64) = v112;
      *(v111 + 32) = v113;
      *(v111 + 80) = 2;
      v114 = *v137;
      *(v111 + 88) = *&v137[7];
      *(v111 + 81) = v114;
      v104 += 8;
      --v101;
    }

    while (v101);
    v22 = v131;
  }

  else
  {
    v103 = MEMORY[0x1E69E7CC0];
  }

  v115 = v130;
  *v130 = v129;
  v115[1] = v22;
  v116 = v124;
  v115[2] = v126;
  v115[3] = v116;
  v117 = v125;
  v115[4] = v122;
  v115[5] = v117;
  v115[6] = v134;
  v115[7] = v94;
  v115[8] = v103;
  v115[9] = v102;
}

uint64_t sub_1C7336744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 136) = a9;
  *(v9 + 120) = a7;
  *(v9 + 128) = a8;
  *(v9 + 104) = a5;
  *(v9 + 112) = a6;
  *(v9 + 88) = a2;
  *(v9 + 96) = a4;
  *(v9 + 80) = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178D8);
  *(v9 + 144) = v11;
  *(v9 + 152) = *(v11 - 8);
  *(v9 + 160) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3C0);
  *(v9 + 168) = v12;
  *(v9 + 176) = *(v12 - 8);
  *(v9 + 184) = swift_task_alloc();
  v13 = sub_1C754F65C();
  *(v9 + 192) = v13;
  *(v9 + 200) = *(v13 - 8);
  v14 = swift_task_alloc();
  v15 = *a3;
  *(v9 + 208) = v14;
  *(v9 + 216) = v15;
  *(v9 + 224) = *(a3 + 1);
  *(v9 + 41) = *(a3 + 24);
  v16 = a3[5];
  *(v9 + 240) = a3[4];
  *(v9 + 248) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1C7336904, 0, 0);
}

uint64_t sub_1C7336904()
{
  v2 = v1[30];
  if (v1[31])
  {
    v0 = v1[28];
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v3 = 1;
    goto LABEL_3;
  }

  v36 = MEMORY[0x1E69E7CC0];
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = v1[25];
    sub_1C6F65BE8(0, &qword_1EDD0CE30);
    sub_1C6F65BE8(0, &qword_1EC217FE0);
    v7 = *(v6 + 16);
    v6 += 16;
    v35 = v7;
    v8 = v2 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v34 = *(v6 + 56);
    v0 = (v6 - 8);
    sub_1C75504FC();
    sub_1C75504FC();
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v35(v1[26], v8, v1[24]);
      sub_1C754F62C();
      v10 = sub_1C7073450();
      v11 = [v10 length];
      sub_1C754F62C();
      v12 = sub_1C71C3FEC();
      if (v12)
      {
        v13 = v12;
        v14 = [objc_opt_self() updateQueryString:v10 withSelectedSuggestion:v12 inRange:0 additionalAttributes:{v11, 0}];

        v15 = OUTLINED_FUNCTION_61_0();
        v17 = v16(v15);
        MEMORY[0x1CCA5D040](v17);
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();
        v9 = v36;
      }

      else
      {
        v18 = OUTLINED_FUNCTION_61_0();
        v19(v18);
      }

      v8 += v34;
      --v5;
    }

    while (v5);
  }

  else
  {
    sub_1C75504FC();
    sub_1C75504FC();
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1C6FB6304() <= 0)
  {

    v30 = sub_1C754FEEC();
    v31 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v31))
    {
      v3 = 2;
      v0 = OUTLINED_FUNCTION_127();
      *v0 = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v32, v33, "Part Of Day retrieval not supported by Spotlight in this build.");
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v3 = 2;
    }

LABEL_3:
    OUTLINED_FUNCTION_164_4();
    if (v0)
    {

      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      OUTLINED_FUNCTION_132_7();
      *(v20 + 48) = v3;

      OUTLINED_FUNCTION_25();
    }

    return v4();
  }

  v23 = v1[13];
  v22 = v1[14];
  v24 = v1[12];
  v25 = v24[6];
  v26 = v24[7];
  __swift_project_boxed_opaque_existential_1(v24 + 3, v25);
  (*(v26 + 24))(v9, v23, v22, v25, v26);

  v1[9] = MEMORY[0x1E69E7CD0];
  sub_1C7550DBC();
  v1[32] = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v1[33] = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_123_8(v27);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6D9C8](v29);
}

uint64_t sub_1C7336D60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7336E48()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  if (v3 == 255)
  {
    v19 = *(v1 + 176);
    v18 = *(v1 + 184);
    v20 = *(v1 + 168);
    (*(*(v1 + 152) + 8))(*(v1 + 160), *(v1 + 144));
    sub_1C71CD85C(*(v1 + 72));
    (*(v19 + 8))(v18, v20);

    OUTLINED_FUNCTION_164_4();
    if (v20)
    {

      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      OUTLINED_FUNCTION_132_7();
      *(v28 + 48) = 1;

      OUTLINED_FUNCTION_25();
    }

    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  if ((v3 & 1) == 0)
  {
    *(v1 + 48) = v2;
    *(v1 + 56) = v4;
    *(v1 + 64) = v5;
    v21 = FreeformStoryFetching.Result.uuids.getter();
    sub_1C73978C4(v21);
    v15 = OUTLINED_FUNCTION_117_0();
    v17 = v5;
    goto LABEL_8;
  }

  v32 = *(v1 + 32);
  v6 = v2;
  v7 = OUTLINED_FUNCTION_51();
  v8 = v0;
  v9 = v4;
  v10 = sub_1C754FEEC();
  v11 = sub_1C755119C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138740227;
    *(v12 + 4) = v8;
    *v13 = v2;
    *(v12 + 12) = 2112;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v14;
    v13[1] = v14;
    _os_log_impl(&dword_1C6F5C000, v10, v11, "Part Of Day retrieval for query %{sensitive}@ failed with error: %@.", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();

    v15 = OUTLINED_FUNCTION_117_0();
    v17 = v32;
LABEL_8:
    sub_1C710A128(v15, v16, v17, v3);
    goto LABEL_10;
  }

  v22 = OUTLINED_FUNCTION_117_0();
  sub_1C710A128(v22, v23, v32, v3);

LABEL_10:
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 264) = v24;
  *v24 = v25;
  OUTLINED_FUNCTION_123_8();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6D9C8](v26);
}

uint64_t FinalTokenGenerator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t FinalTokenGenerator.__deallocating_deinit()
{
  FinalTokenGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C733721C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t type metadata accessor for FinalTokenGenerator()
{
  result = qword_1EDD0A600;
  if (!qword_1EDD0A600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7337300()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C73373E8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = sub_1C7337458(*(a1 + 16));
    if (v5 >= v3)
    {
      __break(1u);
    }

    else
    {
      sub_1C6FB5E28(a1 + 40 * v5 + 32, a2);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

unint64_t sub_1C7337458(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1CCA5F900](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1CCA5F900](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C73374E4(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1CCA5F900](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_1C73374E4(v6, a2, a3);
  }

  return result;
}

uint64_t sub_1C7337590(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C73375F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C7337650(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

__n128 OUTLINED_FUNCTION_43_32@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 25);
  *(v1 + 25) = result;
  *(v2 + 234) = *(v2 + 150);
  *(v2 + 238) = *(v2 + 154);
  return result;
}

__n128 OUTLINED_FUNCTION_50_25@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  result = *(v5 + 25);
  *(a1 + 25) = result;
  *(v3 + 150) = *v4;
  *(v3 + 154) = *(v4 + 4);
  return result;
}

uint64_t OUTLINED_FUNCTION_53_29()
{

  return swift_bridgeObjectRelease_n();
}

void OUTLINED_FUNCTION_60_20(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(a1 + 80) = v4;
  *(a1 + 48) = a3;
  *(a1 + 64) = a2;
  *(a1 + 32) = a4;
  *(a1 + 82) = 1;
  v6 = *(v5 + 149);
  *(a1 + 83) = *(v5 + 145);
  *(a1 + 87) = v6;
}

id OUTLINED_FUNCTION_63_19(id a1, SEL a2)
{

  return [a1 a2];
}

void OUTLINED_FUNCTION_68_20(uint64_t a1@<X8>)
{
  *(a1 + 57) = v1;
  *(a1 + 58) = v3;
  *(a1 + 64) = v2;
}

void OUTLINED_FUNCTION_69_20(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 78) = *(v1 + 2);
  *(a1 + 74) = v3;
  *(a1 + 80) = v2;
}

__n128 OUTLINED_FUNCTION_70_17()
{
  v3 = *(v0 + 736);
  *(v2 - 192) = *(v0 + 720);
  *(v2 - 176) = v3;
  result = *(v0 + 752);
  *(v2 - 160) = result;
  *(v2 - 136) = *v1;
  return result;
}

id OUTLINED_FUNCTION_77_14(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_78_14(uint64_t a1, __n128 a2, __n128 a3)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = *(v6 - 160);
  *(v3 + 1264) = v5;
  v8 = *(v6 - 136);
  *(v3 + 1272) = *(v4 + 7);
  *(v3 + 1265) = v8;

  return sub_1C70266D0(a1);
}

uint64_t OUTLINED_FUNCTION_79_14(uint64_t a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33, __int128 a34)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = a33;
  *(v34 + 1264) = v35;
  *(v34 + 1272) = *(&a34 + 7);
  *(v34 + 1265) = a34;

  return sub_1C70266D0(a1);
}

id OUTLINED_FUNCTION_88_12(id a1, SEL a2, uint64_t a3, uint64_t a4)
{

  return [a1 a2];
}

__n128 OUTLINED_FUNCTION_89_14(uint64_t a1, __n128 a2, __n128 a3)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  result = *(v4 + 25);
  *(a1 + 25) = result;
  *(v3 + 2137) = 1;
  return result;
}

void OUTLINED_FUNCTION_93_14(uint64_t a1@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = v5;
  *(a1 + 48) = v1;
  *(a1 + 56) = v3;
  *(a1 + 57) = v6;
  *(a1 + 64) = v4;
}

uint64_t OUTLINED_FUNCTION_95_16(__n128 *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a1[2] = a2;
  a1[3] = a3;
  *a1 = a5;
  a1[1] = a4;
  v10 = v5[2];
  v9 = v5[3];
  v12 = *v5;
  v11 = v5[1];
  *(v6 + 712) = v7;
  *(v6 + 720) = v12;
  *(v6 + 736) = v11;
  *(v6 + 752) = v10;
  *(v6 + 768) = v9;

  return sub_1C7026698(a1, v6 + 1408);
}

void OUTLINED_FUNCTION_96_12(uint64_t a1@<X8>)
{
  v2[442] = v3;
  v2[441] = v1;
  v2[440] = a1;
}

uint64_t OUTLINED_FUNCTION_107_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  *(v6 + 1344) = a2;
  *v7 = a5;
  v7[1] = a4;
  v7[2] = a3;
  v7[3].n128_u64[0] = v5;

  return sub_1C70260B4(a1, v6 + 2208);
}

void OUTLINED_FUNCTION_111_10(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[3] = a3;
  a1[4] = a2;
  a1[2] = a4;
  a1[5].n128_u8[0] = v4;
}

uint64_t OUTLINED_FUNCTION_112_6()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_127_7()
{
  *(v1 + 3080) = v3 + v0;

  return swift_bridgeObjectRetain_n();
}

void OUTLINED_FUNCTION_128_6(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[3] = a3;
  a1[4] = a2;
  a1[2] = a4;
}

__n128 OUTLINED_FUNCTION_130_5(__n128 a1, __n128 a2)
{
  *v3 = a1;
  v3[1] = a2;
  result = v6[2];
  v3[2] = result;
  v3[3].n128_u16[0] = v6[3].n128_u16[0];
  *v2 = *v5;
  *(v2 + 4) = *(v5 + 4);
  *(v4 + 478) = *(v4 + 392);
  return result;
}

uint64_t OUTLINED_FUNCTION_132_7()
{
  v2 = *(v1 + 41);
  v4 = *(v1 + 232);
  v3 = *(v1 + 240);
  result = *(v1 + 208);
  v6 = *(v1 + 80);
  *v6 = *(v1 + 216);
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  *(v6 + 32) = v3;
  *(v6 + 40) = v0;
  return result;
}

__n128 OUTLINED_FUNCTION_133_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v23 = *(v22 + 16);
  *a17 = *v22;
  *(a17 + 16) = v23;
  result = *(v22 + 25);
  *(a17 + 25) = result;
  *a21 = *v21;
  *(a21 + 4) = *(v21 + 4);
  return result;
}

uint64_t OUTLINED_FUNCTION_134_9(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v5[45] = a5;
  v5[46] = a4;
  v5[47] = a3;
  v5[48] = a2;

  return sub_1C7026698(a1, &v5[88]);
}

__n128 OUTLINED_FUNCTION_135_7()
{
  v3 = *(v0 + 16);
  *v2 = *v0;
  *(v2 + 16) = v3;
  result = *(v0 + 32);
  *(v2 + 32) = result;
  *(v2 + 46) = *(v0 + 46);
  v1[553] = v1[463];
  v1[554] = v1[472];
  return result;
}

void OUTLINED_FUNCTION_140_6(uint64_t a1@<X8>)
{
  v1[434] = v3;
  v1[433] = v2;
  v1[432] = a1;
}

uint64_t OUTLINED_FUNCTION_145_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _OWORD *a20, uint64_t a21)
{
  v23 = v21[1];
  *a20 = *v21;
  a20[1] = v23;
  *(a20 + 25) = *(v21 + 25);
  *a19 = *a21;
  *(a19 + 4) = *(a21 + 4);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_146_6(void *a1@<X8>)
{
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v1;
  a1[6] = v2;
  a1[7] = v3;
}

uint64_t OUTLINED_FUNCTION_157_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  *(v6 + 1280) = a2;
  *v7 = a5;
  v7[1] = a4;
  v7[2] = a3;
  v7[3].n128_u64[0] = v5;

  return sub_1C70260B4(a1, v6 + 2040);
}

__n128 OUTLINED_FUNCTION_158_4(__n128 *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a1[2] = a2;
  a1[3] = a3;
  *a1 = a5;
  a1[1] = a4;
  return v5[3];
}

uint64_t OUTLINED_FUNCTION_161_6@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *v4 = a2;
  *(v4 + 16) = a3;
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = *(a1 + 48);
  *(v5 + 145) = *v3;
  *(v5 + 149) = *(v3 + 4);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_162_6()
{
}

uint64_t OUTLINED_FUNCTION_164_4()
{
  **(v0 + 120) = **(v0 + 120) + *(v0 + 88);

  return sub_1C754F2DC();
}

uint64_t OUTLINED_FUNCTION_165_3()
{

  return sub_1C7033D84(8);
}

uint64_t OUTLINED_FUNCTION_170_5()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 2256);
}

uint64_t OUTLINED_FUNCTION_171_2()
{

  return sub_1C754F2DC();
}

void *OUTLINED_FUNCTION_172_3@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v3 + 856), (a1 + v2 * v1 + 32), 0x42uLL);
}

uint64_t OUTLINED_FUNCTION_173_4()
{

  return sub_1C70555F8(v1 + 1344, v1 + 1600, v0);
}

uint64_t OUTLINED_FUNCTION_174_3()
{

  return sub_1C70555F8(v1 + 1280, v1 + 1472, v0);
}

uint64_t OUTLINED_FUNCTION_181_1@<X0>(__int16 a1@<W8>)
{
  *v1 = *v2;
  *(v3 + 839) = *(v2 + 4);
  *(v3 + 840) = v4;
  *(v3 + 848) = a1;

  return sub_1C7026030(v3 + 784);
}

id OUTLINED_FUNCTION_183_2()
{

  return sub_1C7073450();
}

void OUTLINED_FUNCTION_189_2()
{
  v2[427] = v3;
  v2[426] = v0;
  v2[425] = v1;
}

__n128 *OUTLINED_FUNCTION_198_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  result[2].n128_u64[1] = v2;
  return result;
}

void OUTLINED_FUNCTION_202_2(__n128 a1)
{
  *(v2 - 144) = a1;
  *(v2 - 120) = *(v2 - 192);
  *(v1 + 79) = *(v1 + 7);
}

void OUTLINED_FUNCTION_210_3(uint64_t a1)
{
  *(v2 + 3712) = a1;
}

void OUTLINED_FUNCTION_211_4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void *OUTLINED_FUNCTION_213_3(void *a1)
{

  return memcpy(a1, (v1 - 176), 0x50uLL);
}

void *OUTLINED_FUNCTION_214_1()
{

  return memcpy((v1 - 176), (v0 + 976), 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_215_2()
{

  return sub_1C7337590(v2 + v3, v1, v0);
}

uint64_t OUTLINED_FUNCTION_216_3()
{

  return sub_1C6FB5FC8(v1 + 1344, v0);
}

uint64_t OUTLINED_FUNCTION_218_2()
{
}

uint64_t OUTLINED_FUNCTION_219_3()
{
}

uint64_t OUTLINED_FUNCTION_220_2()
{

  return sub_1C6FB5FC8(v1 + 1280, v0);
}

void OUTLINED_FUNCTION_221_2(uint64_t a1)
{
  *(v2 + 3616) = a1;
}

uint64_t OUTLINED_FUNCTION_223_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C70555F8(v3 + 1344, v3 + 1728, a3);
}

uint64_t OUTLINED_FUNCTION_225_1@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = v2;
  *(a1 + 72) = v1;

  return sub_1C70DF138(v3 + 16);
}

void OUTLINED_FUNCTION_226_2(uint64_t a1)
{
  *(v2 + 3544) = a1;
}

void OUTLINED_FUNCTION_229_2(uint64_t a1@<X8>)
{
  if (v1)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  *(a1 + v2) = v4;
}

void OUTLINED_FUNCTION_234_3(uint64_t a1@<X8>)
{
  *(a1 + 57) = v1;
  *(a1 + 58) = v3;
  *(a1 + 64) = v2;
}

uint64_t OUTLINED_FUNCTION_238_2()
{

  return sub_1C754F06C();
}

void *OUTLINED_FUNCTION_240_3@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v3 + 1000), (a1 + v2 * v1 + 32), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_244_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C70555F8(v4 + v5, v3, a3);
}

uint64_t OUTLINED_FUNCTION_246_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1C70555F8(v3 + 1280, v3 + 1664, a3);
}

void OUTLINED_FUNCTION_247_2(uint64_t a1)
{
  *(v2 + 3480) = a1;
}

id OUTLINED_FUNCTION_248_3(void *a1)
{

  return [a1 (v1 + 1784)];
}

uint64_t sub_1C7338498(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1C75516BC();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1C73384B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = MEMORY[0x1E69E7CD0];
  v14 = MEMORY[0x1E69E7CD0];
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = a2 + 32;
    sub_1C75504FC();
    do
    {
      sub_1C6FB5E28(v7, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v10 = (*(v9 + 32))(a1, v8, v9);
      sub_1C7397F6C(v10);
      __swift_destroy_boxed_opaque_existential_1(v11);
      v7 += 40;
      --v6;
    }

    while (v6);

    result = v14;
  }

  if (!*(result + 16))
  {

    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t MessagesBackdrop.SuggestionProcessor.PersistenceRecipe.conversationID.getter()
{
  v1 = *(v0 + 8);
  sub_1C75504FC();
  return v1;
}

uint64_t MessagesBackdrop.SuggestionProcessor.PersistenceRecipe.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0) + 28);
  sub_1C754DF6C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MessagesBackdrop.SuggestionProcessor.PersistenceRecipe.relevantUntilDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0) + 32);
  sub_1C754DF6C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MessagesBackdrop.SuggestionProcessor.eligibilityChecker.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  return sub_1C75504FC();
}

uint64_t MessagesBackdrop.SuggestionProcessor.__allocating_init(photoLibrary:curationContext:logger:)(void *a1, unsigned __int8 *a2, char *a3)
{
  v6 = swift_allocObject();
  MessagesBackdrop.SuggestionProcessor.init(photoLibrary:curationContext:logger:)(a1, a2, a3);
  return v6;
}

uint64_t MessagesBackdrop.SuggestionProcessor.init(photoLibrary:curationContext:logger:)(void *a1, unsigned __int8 *a2, char *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_14_2();
  v83 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v74 - v11;
  v12 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_2();
  v80 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedFailureReasons) = MEMORY[0x1E69E7CC8];
  v20 = (v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults);
  *v20 = 0u;
  v20[1] = 0u;
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_persistenceRecipes) = MEMORY[0x1E69E7CC0];
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_suggestionsToRetire) = MEMORY[0x1E69E7CD0];
  v21 = *a2;
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_photoLibrary) = a1;
  if (v21 == 2)
  {
    result = sub_1C7551AAC();
    __break(1u);
    return result;
  }

  LOBYTE(v87) = v21;
  v22 = a1;
  static AssetGating.EligibilityChecker<>.buildMessagesBackdropEligibilityChecker(for:)(&v87, &v88);
  v23 = v89;
  *(v4 + 16) = v88;
  *(v4 + 24) = v23;
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_curationContext) = v21;
  v24 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_logger;
  v86 = v14;
  v25 = *(v14 + 16);
  v82 = a3;
  v25(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_logger, a3, v12);
  v26 = objc_opt_self();
  v81 = v22;
  v27 = [v22 librarySpecificFetchOptions];
  v28 = [v26 fetchConversationsWithOptions_];

  v29 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_conversations;
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_conversations) = v28;
  v78 = v24;
  v79 = v25;
  v77 = v14 + 16;
  v25(v19, v4 + v24, v12);

  v30 = sub_1C754FEEC();
  v31 = sub_1C755117C();
  v32 = os_log_type_enabled(v30, v31);
  v85 = v12;
  if (v32)
  {
    OUTLINED_FUNCTION_13_3();
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = [*(v4 + v29) count];

    _os_log_impl(&dword_1C6F5C000, v30, v31, "Successfully fetched %ld conversations", v33, 0xCu);
    v12 = v85;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v34 = *(v86 + 8);
  v86 += 8;
  v34(v19, v12);
  v35 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  if (v21)
  {
    v36 = v81;
    v87 = v81;
    v88 = v21 | 0x8000000000000000;
    v89 = 0;
    v37 = MessagesBackdrop.Fetcher.fetchMessagesBackdropSuggestions(presentationTarget:)(&v88);

    v35 = v37;
  }

  else
  {
    v76 = v4;
    v38 = [*(v4 + v29) fetchedObjects];
    v39 = MEMORY[0x1E69E7CC0];
    v75 = v34;
    if (v38)
    {
      v40 = v38;
      sub_1C6F65BE8(0, &qword_1EC21ABA0);
      v41 = sub_1C7550B5C();
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v42 = sub_1C6FB6304();
    if (v42 < 1)
    {

      v4 = v76;
      v70 = v80;
      v79(v80, v76 + v78, v12);
      v71 = sub_1C754FEEC();
      v72 = sub_1C755117C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_1C6F5C000, v71, v72, "Found 0 conversations. Return", v73, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v34 = v75;
      v75(v70, v12);
      v56 = v83;
      v55 = v84;
      v36 = v81;
      v57 = v82;
      goto LABEL_20;
    }

    v43 = v42;
    v80 = v35;
    v88 = v39;
    sub_1C6F7ED9C();
    v44 = 0;
    v45 = v88;
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1CCA5DDD0](v44, v41);
      }

      else
      {
        v46 = *(v41 + 8 * v44 + 32);
      }

      v47 = v46;
      v48 = [v46 conversationID];
      v49 = sub_1C755068C();
      v51 = v50;

      v88 = v45;
      v53 = *(v45 + 16);
      v52 = *(v45 + 24);
      if (v53 >= v52 >> 1)
      {
        OUTLINED_FUNCTION_15(v52);
        sub_1C6F7ED9C();
        v45 = v88;
      }

      ++v44;
      *(v45 + 16) = v53 + 1;
      v54 = v45 + 16 * v53;
      *(v54 + 32) = v49;
      *(v54 + 40) = v51;
    }

    while (v43 != v44);

    v87 = v81;
    v88 = 0;
    v89 = v45;
    v36 = v81;
    v35 = MessagesBackdrop.Fetcher.fetchMessagesBackdropSuggestions(presentationTarget:)(&v88);

    sub_1C70E7F30(v88);
    v34 = v75;
    v4 = v76;
  }

  v56 = v83;
  v55 = v84;
  v57 = v82;
LABEL_20:
  v58 = v35;
  v59 = sub_1C754FEEC();
  v60 = sub_1C755117C();
  if (os_log_type_enabled(v59, v60))
  {
    OUTLINED_FUNCTION_13_3();
    v61 = v34;
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    *(v62 + 4) = [v58 count];

    _os_log_impl(&dword_1C6F5C000, v59, v60, "Found %ld existing suggestions.", v62, 0xCu);
    v34 = v61;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    v59 = v58;
  }

  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_existingSuggestionsByConversationID) = static MessagesBackdrop.Utilities.suggestionsByConversationID(for:)(v58);
  v88 = v36;
  *(v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_keyAssetBySuggestionUUID) = MessagesBackdrop.Fetcher.fetchKeyAssetBySuggestionUUID(for:)(v58);
  v63 = [v58 firstObject];
  if (v63)
  {
    v64 = v63;
    v65 = [v63 creationDate];

    if (v65)
    {
      sub_1C754DF2C();

      v34(v57, v85);
      v66 = 0;
    }

    else
    {
      v34(v57, v85);

      v66 = 1;
    }

    v68 = sub_1C754DF6C();
    __swift_storeEnumTagSinglePayload(v56, v66, 1, v68);
    sub_1C6FF51C8(v56, v55);
  }

  else
  {
    v34(v57, v85);

    v67 = sub_1C754DF6C();
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v67);
  }

  sub_1C6FF51C8(v55, v4 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_latestUpdatedDate);
  return v4;
}

uint64_t sub_1C7338F8C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0);
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v19 = v18 - v17;
  sub_1C754F2CC();
  if (v4)
  {
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    return (*(v20 + 8))(a4);
  }

  v150 = v9;
  v153 = v19;
  v148 = v15;
  v147 = v13;
  v22 = sub_1C6FB6304();
  v23 = (v159 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults);
  v24 = *(v159 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults);
  v25 = __OFADD__(v24, v22);
  v26 = v24 + v22;
  if (v25)
  {
    goto LABEL_128;
  }

  *v23 = v26;
  v27 = a1;
  if (*(v159 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_curationContext))
  {
    v28 = a2;
    v15 = a3;
    if (*(v159 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_curationContext) != 1)
    {
      sub_1C733BA98();
      swift_allocError();
      swift_willThrow();
      sub_1C754F2FC();
      OUTLINED_FUNCTION_12();
      return (*(v52 + 8))(a4);
    }

    v146 = v7;
    v145 = 1502;
  }

  else
  {
    v146 = v7;
    v145 = 1501;
    v28 = a2;
    v15 = a3;
  }

  v144 = v23;
  v142 = objc_opt_self();
  v29 = [v142 sortDescriptorsForMessagesBackdropSuggestionDeduping];
  v30 = v29;
  v31 = v29;
  if (!v29)
  {
    sub_1C6F65BE8(0, &qword_1EDD108F0);
    sub_1C7550B5C();
    v31 = sub_1C7550B3C();

    v13 = sub_1C7550B5C();
    v30 = sub_1C7550B3C();
  }

  v149 = v31;
  v140 = v30;
  v32 = *(v159 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_existingSuggestionsByConversationID);
  sub_1C75504FC();
  v33 = v29;
  v34 = sub_1C6FE3768(v28, v15, v32);
  OUTLINED_FUNCTION_12_62();

  v35 = MEMORY[0x1E69E7CC0];
  if (!v34)
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  *&v162 = MEMORY[0x1E69E7CC0];
  v36 = 0;
  v157 = v34 & 0xC000000000000001;
  v158 = sub_1C6FB6304();
  v155 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_keyAssetBySuggestionUUID;
  v156 = v34 & 0xFFFFFFFFFFFFFF8;
  v154 = v34;
  v141 = v34 + 32;
  v139 = v35;
  while (v158 != v36)
  {
    if (v157)
    {
      v37 = MEMORY[0x1CCA5DDD0](v36, v154);
    }

    else
    {
      if (v36 >= *(v156 + 16))
      {
        goto LABEL_121;
      }

      v37 = *(v154 + 8 * v36 + 32);
    }

    v38 = v37;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2192B0);
      sub_1C7551ABC();

      goto LABEL_57;
    }

    v39 = sub_1C70CAC04(v37);
    if (!v40)
    {
      goto LABEL_136;
    }

    v13 = v40;
    v41 = *(v32 + v155);
    if (*(v41 + 16))
    {
      v42 = v39;
      sub_1C75504FC();
      v43 = sub_1C6F78124(v42, v13);
      v15 = v44;

      if ((v15 & 1) == 0)
      {
        v32 = v159;
        goto LABEL_22;
      }

      v13 = *(*(v41 + 56) + 8 * v43);

      MEMORY[0x1CCA5D040]();
      v45 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v45 >> 1)
      {
        OUTLINED_FUNCTION_15(v45);
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      ++v36;
      v32 = v159;
    }

    else
    {
LABEL_22:

      ++v36;
    }
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  OUTLINED_FUNCTION_582();
  v46 = sub_1C7550B3C();
  v47 = [v46 sortedArrayUsingDescriptors_];

  v48 = sub_1C7550B5C();
  v163 = MEMORY[0x1E69E7CC0];
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = v48 + 32;
    OUTLINED_FUNCTION_5_75(MEMORY[0x1E69E7CC0]);
    do
    {
      sub_1C6F774EC(v50, &v162);
      sub_1C6F9ED18(&v162, v160);
      if (swift_dynamicCast())
      {
        v13 = v161;
        if (v161)
        {
          v46 = &v163;
          MEMORY[0x1CCA5D040]();
          v47 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v51 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (v47 >= v51 >> 1)
          {
            OUTLINED_FUNCTION_15(v51);
            sub_1C7550B9C();
          }

          sub_1C7550BEC();
          OUTLINED_FUNCTION_5_75(v163);
        }
      }

      v50 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {

    OUTLINED_FUNCTION_5_75(MEMORY[0x1E69E7CC0]);
  }

  *&v162 = MEMORY[0x1E69E7CC0];
  v53 = sub_1C6FB6304();
  v54 = 0;
  v15 = v46 & 0xC000000000000001;
  v55 = v46 & 0xFFFFFFFFFFFFFF8;
  while (v53 != v54)
  {
    if (v15)
    {
      v56 = MEMORY[0x1CCA5DDD0](v54, v46);
    }

    else
    {
      if (v54 >= *(v55 + 16))
      {
        goto LABEL_123;
      }

      v56 = *(v46 + 8 * v54 + 32);
    }

    v13 = v56;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_122;
    }

    *&v160[0] = v56;
    if (sub_1C733A0C8(v160, v47))
    {
      sub_1C755192C();
      v47 = *(v162 + 16);
      sub_1C755196C();
      OUTLINED_FUNCTION_12_62();
      sub_1C755197C();
      sub_1C755193C();
      v46 = v27;
    }

    else
    {
    }

    ++v54;
  }

  v57 = v162;

  sub_1C75504FC();
  v58 = sub_1C754FEEC();
  v59 = sub_1C755117C();
  v15 = v142;
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134218240;
    *(v60 + 4) = sub_1C6FB6304();

    *(v60 + 12) = 2048;
    *(v60 + 14) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v58, v59, "\t%ld/%ld assets passed gating", v60, 0x16u);
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v13 = v150;
  v61 = sub_1C6FB6304();
  v62 = v144[1];
  v25 = __OFADD__(v62, v61);
  v63 = v62 + v61;
  if (v25)
  {
    goto LABEL_129;
  }

  v64 = v61;
  v144[1] = v63;
  OUTLINED_FUNCTION_76_0();
  sub_1C754F2DC();
  if (v64 < 1)
  {

    OUTLINED_FUNCTION_18_49();
    OUTLINED_FUNCTION_582();

    v82 = OUTLINED_FUNCTION_15_64();
    v83 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v85, v86, v87, v88, v84, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    OUTLINED_FUNCTION_76_0();
    return sub_1C754F2EC();
  }

  sub_1C75504FC();
  if (v57 < 0 || (v57 & 0x4000000000000000) != 0)
  {
    goto LABEL_130;
  }

  sub_1C7551DDC();
LABEL_57:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2192B0);
  v65 = sub_1C7550B3C();

  v66 = [v15 sortedDedupedCandidatesFromCandidates:v65 sortDescriptors:v140 timeIntervalForCandidateDeduping:60.0];

  v67 = sub_1C7550B5C();
  *&v162 = MEMORY[0x1E69E7CC0];
  v68 = sub_1C6FB6304();
  v69 = 0;
  v15 = v67 & 0xFFFFFFFFFFFFFF8;
  while (v68 != v69)
  {
    if ((v67 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCA5DDD0](v69, v67);
    }

    else
    {
      if (v69 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_125;
      }

      swift_unknownObjectRetain();
    }

    if (__OFADD__(v69, 1))
    {
      goto LABEL_124;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1CCA5D040]();
      v70 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v70 >> 1)
      {
        OUTLINED_FUNCTION_15(v70);
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v139 = v162;
      ++v69;
      v13 = v150;
    }

    else
    {
      swift_unknownObjectRelease();
      ++v69;
      v13 = v150;
    }
  }

  v71 = sub_1C6FB6304();
  v72 = v144[2];
  v25 = __OFADD__(v72, v71);
  v73 = v72 + v71;
  if (v25)
  {
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v144[2] = v73;

  sub_1C75504FC();
  v74 = v159;
  v75 = OUTLINED_FUNCTION_15_64();
  v76 = sub_1C75511BC();
  v77 = a3;
  if (OUTLINED_FUNCTION_7_0(v76))
  {
    v74 = swift_slowAlloc();
    *v74 = 134218240;
    *(v74 + 4) = sub_1C6FB6304();

    *(v74 + 12) = 2048;
    *(v74 + 14) = sub_1C6FB6304();

    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v78, v79, v80, v81, v74, 0x16u);
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v89 = MessagesBackdrop.SuggestionProcessor.rankAssets(candidateAssets:existingAssets:)(v139, v149);
  v91 = v90;
  v92 = sub_1C6FB6304();
  v93 = sub_1C6FB6304();
  v143 = v91;
  v94 = sub_1C7338498(v91);
  v95 = v93 - v94;
  if (__OFSUB__(v93, v94))
  {
    goto LABEL_132;
  }

  v25 = __OFADD__(v92, v95);
  v96 = v92 + v95;
  if (v25)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v97 = v144[3];
  v25 = __OFADD__(v97, v96);
  v98 = v97 + v96;
  if (v25)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v144[3] = v98;
  sub_1C75504FC();
  v99 = OUTLINED_FUNCTION_15_64();
  v100 = sub_1C755117C();
  if (OUTLINED_FUNCTION_7_0(v100))
  {
    OUTLINED_FUNCTION_13_3();
    v74 = swift_slowAlloc();
    *v74 = 134217984;
    *(v74 + 4) = sub_1C6FB6304();

    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v101, v102, v103, v104, v74, 0xCu);
    OUTLINED_FUNCTION_12_62();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v150 = v89;
  v105 = sub_1C6FB6304();
  if (!v105)
  {
    goto LABEL_93;
  }

  v106 = v105;
  if (v105 >= 1)
  {
    v107 = 0;
    v108 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_persistenceRecipes;
    v144 = (v150 & 0xC000000000000001);
    v109 = (v13 + 8);
    do
    {
      if (v144)
      {
        v110 = MEMORY[0x1CCA5DDD0](v107, v150);
      }

      else
      {
        v110 = *(v150 + 8 * v107 + 32);
      }

      v13 = v153;
      *v153 = v110;
      *(v153 + 8) = a2;
      *(v153 + 16) = v77;
      *(v153 + 24) = v145;
      sub_1C75504FC();
      sub_1C754DF5C();
      sub_1C754DF5C();
      sub_1C754DEEC();
      (*v109)(v147, v146);
      swift_beginAccess();
      v111 = *(v74 + v108);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v74 + v108) = v111;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6FB4774(0, *(v111 + 16) + 1, 1, v111);
        v111 = v117;
        *(v74 + v108) = v117;
      }

      v114 = *(v111 + 16);
      v113 = *(v111 + 24);
      v115 = v148;
      v116 = v153;
      if (v114 >= v113 >> 1)
      {
        v118 = OUTLINED_FUNCTION_15(v113);
        sub_1C6FB4774(v118, v114 + 1, 1, v111);
        v115 = v148;
        v111 = v119;
        v116 = v153;
      }

      ++v107;
      *(v111 + 16) = v114 + 1;
      sub_1C733BAEC(v116, v111 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v114);
      v74 = v159;
      *(v159 + v108) = v111;
      swift_endAccess();
      v77 = a3;
    }

    while (v106 != v107);
LABEL_93:
    OUTLINED_FUNCTION_76_0();
    sub_1C754F2DC();
    v15 = 0;
    a2 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_suggestionsToRetire;
    v120 = v143 & 0xFFFFFFFFFFFFFF8;
    if (v143 < 0)
    {
      v120 = v143;
    }

    a3 = v120;
    v153 = v143 & 0xC000000000000001;
    while (1)
    {
LABEL_96:
      if (v15 == v158)
      {

        OUTLINED_FUNCTION_194();

        OUTLINED_FUNCTION_18_49();
        OUTLINED_FUNCTION_582();

        return sub_1C754F2EC();
      }

      if (v157)
      {
        v121 = MEMORY[0x1CCA5DDD0](v15, v154);
      }

      else
      {
        if (v15 >= *(v156 + 16))
        {
          goto LABEL_127;
        }

        v121 = *(v141 + 8 * v15);
      }

      v25 = __OFADD__(v15++, 1);
      if (v25)
      {
        goto LABEL_126;
      }

      v122 = v121;
      v123 = sub_1C6FCA214(v122);
      if (!v124)
      {
        goto LABEL_137;
      }

      v125 = v124;
      v126 = *(v74 + v155);
      if (!*(v126 + 16))
      {
        break;
      }

      v127 = v123;
      sub_1C75504FC();
      v128 = sub_1C6F78124(v127, v125);
      v13 = v129;

      if (v13)
      {
        v130 = *(*(v126 + 56) + 8 * v128);

        if (v153)
        {
          v131 = v130;
          v132 = sub_1C755170C();

          if (v132)
          {
LABEL_113:
            swift_beginAccess();
            v137 = v122;
            sub_1C70F5FC8(v160, v137);
            v138 = *&v160[0];
            swift_endAccess();

            v74 = v159;
            goto LABEL_114;
          }
        }

        else
        {
          if (*(v143 + 16))
          {
            v133 = sub_1C75513DC();
            v134 = ~(-1 << *(v143 + 32));
            while (1)
            {
              v13 = v133 & v134;
              if (((*(v143 + 56 + (((v133 & v134) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v133 & v134)) & 1) == 0)
              {
                break;
              }

              v135 = *(*(v143 + 48) + 8 * v13);
              v136 = sub_1C75513EC();

              v133 = v13 + 1;
              if (v136)
              {
                goto LABEL_113;
              }
            }
          }
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_76_0();
      v74 = v159;
    }

LABEL_114:
    OUTLINED_FUNCTION_76_0();
    goto LABEL_96;
  }

LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C733A0C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_1C73384B8(*a1, *(a2 + 24), v48);
  v4 = v48[0];
  if (!v48[0])
  {
    return v4 == 0;
  }

  v43 = v3;
  v5 = v48[0] + 56;
  v6 = 1 << *(v48[0] + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v48[0] + 56);
  v47 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedFailureReasons;
  v9 = (v6 + 63) >> 6;
  sub_1C75504FC();
  v10 = 0;
  v44 = v9;
  v45 = v4 + 56;
  v46 = v4;
  if (!v8)
  {
    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    sub_1C75504FC();
    v28 = v43;
    v29 = sub_1C754FEEC();
    v30 = sub_1C755118C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48[0] = v32;
      *v31 = 136315394;
      v33 = [v28 localIdentifier];
      v34 = sub_1C755068C();
      v36 = v35;

      v37 = sub_1C6F765A4(v34, v36, v48);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A5F0);
      sub_1C733C030();
      v38 = sub_1C7550F9C();
      v40 = v39;

      v41 = sub_1C6F765A4(v38, v40, v48);

      *(v31 + 14) = v41;
      _os_log_impl(&dword_1C6F5C000, v29, v30, "\tAsset %s did not pass gating due to %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v32, -1, -1);
      MEMORY[0x1CCA5F8E0](v31, -1, -1);
    }

    else
    {
    }

    return v4 == 0;
  }

  while (1)
  {
    v11 = v10;
LABEL_9:
    v12 = *(*(v4 + 48) + 24 * (__clz(__rbit64(v8)) | (v11 << 6)));
    swift_beginAccess();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v49 = *(a2 + v47);
    v13 = v49;
    *(a2 + v47) = 0x8000000000000000;
    v14 = sub_1C6FC33C4(v12);
    if (__OFADD__(v13[2], (v15 & 1) == 0))
    {
      break;
    }

    v16 = v14;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ABE0);
    v18 = sub_1C7551A2C();
    v19 = v49;
    if (v18)
    {
      v20 = sub_1C6FC33C4(v12);
      if ((v17 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v16 = v20;
    }

    *(a2 + v47) = v19;
    if ((v17 & 1) == 0)
    {
      v19[(v16 >> 6) + 8] |= 1 << v16;
      *(v19[6] + v16) = v12;
      *(v19[7] + 8 * v16) = 0;
      v22 = v19[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_27;
      }

      v19[2] = v24;
    }

    v25 = v19[7];
    v26 = *(v25 + 8 * v16);
    v23 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v23)
    {
      goto LABEL_26;
    }

    v8 &= v8 - 1;
    *(v25 + 8 * v16) = v27;
    swift_endAccess();

    v10 = v11;
    v5 = v45;
    v4 = v46;
    v9 = v44;
    if (!v8)
    {
      goto LABEL_6;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t MessagesBackdrop.SuggestionProcessor.rankAssets(candidateAssets:existingAssets:)(unint64_t a1, unint64_t a2)
{
  sub_1C75504FC();
  v7 = sub_1C703437C(16, a1);
  v11 = (v10 >> 1) - v9;
  if (__OFSUB__(v10 >> 1, v9))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFSUB__(16, v11))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  a1 = v7;
  v3 = v8;
  v4 = v9;
  v2 = v10;
  sub_1C75504FC();
  sub_1C703437C(16 - v11, a2);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1C75504FC();
  v19 = sub_1C706D3D8(v18);
  v20 = swift_unknownObjectRetain();
  v21 = sub_1C706F5AC(v20, v13, v15, v17);
  sub_1C72387D0(v21, v19);

  if ((v2 & 1) == 0)
  {
LABEL_4:
    sub_1C739C610(a1, v3, v4, v2);
    v23 = v22;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);

  if (v25 != v11)
  {
LABEL_14:
    swift_unknownObjectRelease_n();
    goto LABEL_4;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v23)
  {
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

LABEL_11:
  swift_unknownObjectRelease();
  return v23;
}

id sub_1C733A684()
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
  if (*(v0 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_curationContext))
  {
    if (*(v0 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_curationContext) != 1)
    {
      sub_1C733BA98();
      swift_allocError();
      swift_willThrow();

      return v2;
    }

    OUTLINED_FUNCTION_3_91();
    v4 = 1502;
  }

  else
  {
    OUTLINED_FUNCTION_3_91();
    v4 = 1501;
  }

  v85 = v4;
  v89 = v0;
  v87 = *(v0 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_photoLibrary);
  v90 = [v87 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C756AD80;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C75604F0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1C6F6D524();
  *(v6 + 32) = 0x6574617473;
  *(v6 + 40) = 0xE500000000000000;
  v7 = MEMORY[0x1E69E75F8];
  v8 = MEMORY[0x1E69E7660];
  *(v6 + 96) = MEMORY[0x1E69E75F8];
  *(v6 + 104) = v8;
  *(v6 + 72) = 2;
  *(v5 + 32) = sub_1C755112C();
  v9 = OUTLINED_FUNCTION_14_56();
  OUTLINED_FUNCTION_6_82(v9);
  *(v10 + 32) = 1701869940;
  *(v10 + 40) = 0xE400000000000000;
  *(v10 + 96) = v7;
  *(v10 + 104) = v8;
  *(v10 + 72) = 14;
  *(v5 + 40) = sub_1C755112C();
  v11 = OUTLINED_FUNCTION_14_56();
  OUTLINED_FUNCTION_6_82(v11);
  *(v12 + 32) = 0x65707974627573;
  *(v12 + 40) = 0xE700000000000000;
  *(v12 + 96) = v7;
  *(v12 + 104) = v8;
  *(v12 + 72) = v85;
  *(v5 + 48) = sub_1C755112C();
  v13 = OUTLINED_FUNCTION_14_56();
  OUTLINED_FUNCTION_6_82(v13);
  strcpy((v14 + 32), "creationDate");
  *(v14 + 45) = 0;
  *(v14 + 46) = -5120;
  sub_1C754DF0C();
  v15 = sub_1C754DECC();
  (*(v86 + 8))();
  v13[6].n128_u64[0] = sub_1C6F65BE8(0, &unk_1EDD0CD28);
  v13[6].n128_u64[1] = sub_1C733BF2C(&qword_1EDD0CD20, &unk_1EDD0CD28);
  v13[4].n128_u64[1] = v15;
  *(v5 + 56) = sub_1C755112C();
  v16 = sub_1C6F65BE8(0, &qword_1EDD0FA80);
  v17 = sub_1C6F6E5C4();
  OUTLINED_FUNCTION_76_0();
  [v16 v18];

  v19 = [objc_opt_self() fetchSuggestionsWithOptions_];
  v20 = [v19 fetchedObjects];

  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    sub_1C6F65BE8(0, &qword_1EDD0CEB0);
    v22 = sub_1C7550B5C();
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = swift_allocObject();
  v24 = v89;
  v23[2] = v89;
  v23[3] = v22;
  v23[4] = v88;
  aBlock[4] = sub_1C733BB50;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_32;
  v25 = _Block_copy(aBlock);

  sub_1C75504FC();

  aBlock[0] = 0;
  v26 = [v87 performChangesAndWait:v25 error:aBlock];
  _Block_release(v25);
  v2 = aBlock[0];
  if (v26)
  {

    v27 = v2;
    v28 = sub_1C754FEEC();
    v29 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v29))
    {
      OUTLINED_FUNCTION_13_3();
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = *(v89 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults);

      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v31, v32, v33, v34, v30, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v36 = sub_1C754FEEC();
    v37 = sub_1C75511BC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 134218498;
      v40 = *(v89 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults);
      *(v38 + 4) = *(v89 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults + 8);
      *(v38 + 12) = 2048;
      *(v38 + 14) = v40;

      *(v38 + 22) = 2080;
      OUTLINED_FUNCTION_5();
      sub_1C72CE5A0();
      sub_1C75504FC();
      v41 = sub_1C75504BC();
      v43 = v42;

      v44 = v41;
      v24 = v89;
      v45 = sub_1C6F765A4(v44, v43, aBlock);

      *(v38 + 24) = v45;
      _os_log_impl(&dword_1C6F5C000, v36, v37, "%ld/%ld assets passed gating. Reject reasons: %s", v38, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v21 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v46 = sub_1C754FEEC();
    v47 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134218240;
      v49 = *(v24 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults + 8);
      *(v48 + 4) = *(v24 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults + 16);
      *(v48 + 12) = 2048;
      *(v48 + 14) = v49;

      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v50, v51, v52, v53, v48, 0x16u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v54 = sub_1C754FEEC();
    v55 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v55))
    {
      OUTLINED_FUNCTION_13_3();
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = *(v24 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_aggregatedProcessingResults + 24);

      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v57, v58, v59, v60, v56, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    sub_1C75504FC();

    v61 = sub_1C754FEEC();
    v62 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 134218496;
      OUTLINED_FUNCTION_194();
      OUTLINED_FUNCTION_5();
      *(v63 + 4) = *(*(v88 + 16) + 16);

      *(v63 + 12) = 2048;
      v64 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_suggestionsToRetire;
      OUTLINED_FUNCTION_5();
      v65 = *(v24 + v64);
      if ((v65 & 0xC000000000000001) != 0)
      {
        sub_1C75504FC();
        v66 = sub_1C75516BC();
      }

      else
      {
        v66 = *(v65 + 16);
      }

      *(v63 + 14) = v66;

      *(v63 + 22) = 2048;
      v67 = sub_1C6FB6304();

      *(v63 + 24) = v67;

      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v68, v69, v70, v71, v63, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v72 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_persistenceRecipes;
    swift_beginAccess();
    *(v24 + v72) = v21;

    if (sub_1C6FB6304())
    {
      sub_1C707F4FC(MEMORY[0x1E69E7CC0], v73, v74, v75, v76, v77, v78, v79, v84);
      v81 = v80;
    }

    else
    {
      v81 = MEMORY[0x1E69E7CD0];
    }

    v82 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_suggestionsToRetire;
    swift_beginAccess();
    *(v24 + v82) = v81;

    OUTLINED_FUNCTION_194();
    OUTLINED_FUNCTION_5();
    v2 = *(v88 + 16);
    sub_1C75504FC();
  }

  else
  {
    v35 = aBlock[0];

    sub_1C754DBEC();

    swift_willThrow();
  }

  return v2;
}

void sub_1C733B1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0);
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_suggestionsToRetire;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if ((v9 & 0xC000000000000001) != 0)
  {
    sub_1C75504FC();
    sub_1C755165C();
    sub_1C6F65BE8(0, &qword_1EDD0CEB0);
    sub_1C733BF2C(&qword_1EC21ABD8, &qword_1EDD0CEB0);
    sub_1C7550FEC();
    v9 = v67[6];
    v11 = v67[7];
    v12 = v67[8];
    v13 = v67[9];
    v14 = v67[10];
  }

  else
  {
    v15 = -1 << *(v9 + 32);
    v11 = v9 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v9 + 56);
    sub_1C75504FC();
    v13 = 0;
  }

  v61 = v12;
  v18 = (v12 + 64) >> 6;
  *&v10 = 136315138;
  v62 = v10;
  v63 = v9;
  while ((v9 & 0x8000000000000000) == 0)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v21 >= v18)
        {
          goto LABEL_23;
        }

        v20 = *(v11 + 8 * v21);
        ++v19;
        if (v20)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

LABEL_13:
    v64 = (v20 - 1) & v20;
    v22 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v22)
    {
      goto LABEL_23;
    }

LABEL_17:
    v24 = [objc_opt_self() changeRequestForSuggestion_];
    if (v24)
    {
      v25 = v24;
      [v24 markRetired];
      [v25 setFeaturedState_];

      v13 = v21;
      v14 = v64;
    }

    else
    {
      v26 = v22;
      v27 = sub_1C754FEEC();
      v28 = sub_1C755119C();
      if (os_log_type_enabled(v27, v28))
      {
        v60 = a2;
        v59 = a1;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v67[0] = v30;
        *v29 = v62;
        v31 = sub_1C70CAC04(v26);
        v32 = v26;
        v34 = v33;
        v58 = v32;

        if (!v34)
        {
          goto LABEL_35;
        }

        v35 = sub_1C6F765A4(v31, v34, v67);

        *(v29 + 4) = v35;
        _os_log_impl(&dword_1C6F5C000, v27, v28, "Failed to initialize PHSuggestionChangeRequest for suggestion: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x1CCA5F8E0](v30, -1, -1);
        MEMORY[0x1CCA5F8E0](v29, -1, -1);

        v13 = v21;
        v9 = v63;
        v14 = v64;
        a1 = v59;
        a2 = v60;
      }

      else
      {

        v13 = v21;
        v9 = v63;
        v14 = v64;
      }
    }
  }

  v23 = sub_1C75516FC();
  if (v23)
  {
    v66 = v23;
    sub_1C6F65BE8(0, &qword_1EDD0CEB0);
    swift_dynamicCast();
    v22 = v67[0];
    v21 = v13;
    v64 = v14;
    if (v67[0])
    {
      goto LABEL_17;
    }
  }

LABEL_23:
  sub_1C6F61E88();
  v36 = objc_opt_self();
  sub_1C6F65BE8(0, &qword_1EDD0CEB0);
  v37 = sub_1C7550B3C();
  [v36 deleteSuggestions_];

  v38 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_persistenceRecipes;
  swift_beginAccess();
  v64 = *(a1 + v38);
  v39 = *(v64 + 16);
  if (v39)
  {
    v40 = v64 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v41 = *(v57 + 72);
    sub_1C75504FC();
    do
    {
      sub_1C733BF70(v40, v7);
      v42 = MessagesBackdrop.SuggestionProcessor.suggestionCreationRequest(from:)(v7);
      sub_1C733BFD4(v7);
      v43 = [v42 placeholderForCreatedSuggestion];
      if (v43)
      {
        v44 = v43;
        v45 = [v43 localIdentifier];

        v46 = sub_1C755068C();
        v48 = v47;

        v49 = v65;
        swift_beginAccess();
        v50 = *(v49 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v49 + 16) = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C6FB1814();
          v50 = v54;
          *(v65 + 16) = v54;
        }

        v52 = *(v50 + 16);
        if (v52 >= *(v50 + 24) >> 1)
        {
          sub_1C6FB1814();
          v50 = v55;
        }

        *(v50 + 16) = v52 + 1;
        v53 = v50 + 16 * v52;
        *(v53 + 32) = v46;
        *(v53 + 40) = v48;
        *(v65 + 16) = v50;
        swift_endAccess();
      }

      v40 += v41;
      --v39;
    }

    while (v39);
  }
}

id MessagesBackdrop.SuggestionProcessor.suggestionCreationRequest(from:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C7565670;
  v5 = *a1;
  *(v4 + 32) = *a1;
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v6 = v5;
  v7 = sub_1C7550B3C();

  type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0);
  v8 = sub_1C754DECC();
  v9 = sub_1C754DECC();
  v10 = [v2 creationRequestForSuggestionWithType:14 subtype:v3 keyAssets:v7 representativeAssets:0 creationDate:v8 relevantUntilDate:v9 version:3];

  [v10 setFeaturedState_];
  [v10 setAvailableFeatures_];
  v11 = sub_1C755065C();
  [v10 setContext_];

  return v10;
}

uint64_t MessagesBackdrop.SuggestionProcessor.deinit()
{

  sub_1C70D7CB8(v0 + OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_latestUpdatedDate);

  v1 = OBJC_IVAR____TtCO18PhotosIntelligence16MessagesBackdrop19SuggestionProcessor_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t MessagesBackdrop.SuggestionProcessor.__deallocating_deinit()
{
  MessagesBackdrop.SuggestionProcessor.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C733BA98()
{
  result = qword_1EC21ABA8;
  if (!qword_1EC21ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21ABA8);
  }

  return result;
}

uint64_t sub_1C733BAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C733BB84()
{
  sub_1C6F5FB48();
  if (v0 <= 0x3F)
  {
    sub_1C754FF1C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C733BD74()
{
  sub_1C6F65BE8(319, &qword_1EDD0FA70);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PHSuggestionSubtype(319);
    if (v1 <= 0x3F)
    {
      sub_1C754DF6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *_s19SuggestionProcessorC5ErrorOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C733BED8()
{
  result = qword_1EC21ABD0;
  if (!qword_1EC21ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21ABD0);
  }

  return result;
}

uint64_t sub_1C733BF2C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C6F65BE8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C733BF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C733BFD4(uint64_t a1)
{
  v2 = type metadata accessor for MessagesBackdrop.SuggestionProcessor.PersistenceRecipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C733C030()
{
  result = qword_1EC21ABF0;
  if (!qword_1EC21ABF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21ABF0);
  }

  return result;
}

uint64_t Hastings.FeatureProvider.__allocating_init(storyElements:storySession:storyPhotoLibraryContext:configuration:)(const void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  Hastings.FeatureProvider.init(storyElements:storySession:storyPhotoLibraryContext:configuration:)(a1, a2, a3, a4);
  return v8;
}

uint64_t Hastings.FeatureProvider.init(storyElements:storySession:storyPhotoLibraryContext:configuration:)(const void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  v8 = *(a3 + 4);
  v9 = a3[2];
  v10 = *a4;
  sub_1C754FEFC();
  memcpy((v4 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements), a1, 0x130uLL);
  sub_1C733EB78(a2, v4 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storySession, type metadata accessor for StoryGenerationSession);
  *(v4 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_configuration) = v10;
  v11 = v4 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyPhotoLibraryContext;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9;
  return v4;
}

void sub_1C733C208()
{
  OUTLINED_FUNCTION_33();
  v75 = v2;
  v82 = 0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v71 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v71 - v8;
  v9 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_configuration);
  v76 = v0;
  v10 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements + 224);
  v11 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements + 232);
  v71 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements + 216);
  v72 = v11;
  v12 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements + 280);
  v73 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements + 288);
  v74 = v12;
  v13 = MEMORY[0x1E69E7CC8];
  v88 = MEMORY[0x1E69E7CC8];
  v14 = *(v9 + 16);
  v77 = v9;
  v15 = (v9 + 32);
  v16 = (v9 + 32);
  while (2)
  {
    if (v14)
    {
      switch(*v16)
      {
        case 1:
        case 2:
        case 4:
          goto LABEL_6;
        case 3:
          OUTLINED_FUNCTION_64_0();
          goto LABEL_6;
        case 5:
          OUTLINED_FUNCTION_5_76();
          OUTLINED_FUNCTION_24_36();
LABEL_6:
          v1 = sub_1C7551DBC();

          ++v16;
          --v14;
          if (v1)
          {
            goto LABEL_7;
          }

          continue;
        default:

LABEL_7:
          sub_1C733CAC4();
          OUTLINED_FUNCTION_32_33();
          v84 = v13;
          OUTLINED_FUNCTION_0_142();
          OUTLINED_FUNCTION_9_73(v17, v18, v19, v20);
          OUTLINED_FUNCTION_7_69();
          break;
      }
    }

    break;
  }

  OUTLINED_FUNCTION_21_50();
  while (v14)
  {
    switch(*v1)
    {
      case 1:

        goto LABEL_14;
      case 3:
        OUTLINED_FUNCTION_64_0();
        break;
      case 5:
        OUTLINED_FUNCTION_5_76();
        OUTLINED_FUNCTION_24_36();
        break;
      default:
        break;
    }

    sub_1C7551DBC();
    OUTLINED_FUNCTION_31_37();
    ++v1;
    --v14;
    if (v10)
    {
LABEL_14:
      sub_1C733D0D4();
      OUTLINED_FUNCTION_32_33();
      v84 = v13;
      OUTLINED_FUNCTION_0_142();
      OUTLINED_FUNCTION_9_73(v21, v22, v23, v24);
      OUTLINED_FUNCTION_7_69();
      break;
    }
  }

  OUTLINED_FUNCTION_21_50();
  while (v14)
  {
    switch(*v1)
    {
      case 2:

        goto LABEL_21;
      case 3:
        OUTLINED_FUNCTION_64_0();
        break;
      case 5:
        OUTLINED_FUNCTION_24_36();
        OUTLINED_FUNCTION_5_76();
        break;
      default:
        break;
    }

    sub_1C7551DBC();
    OUTLINED_FUNCTION_31_37();
    ++v1;
    --v14;
    if (v10)
    {
LABEL_21:
      sub_1C733D520();
      OUTLINED_FUNCTION_32_33();
      v84 = v13;
      OUTLINED_FUNCTION_0_142();
      OUTLINED_FUNCTION_9_73(v25, v26, v27, v28);
      OUTLINED_FUNCTION_7_69();
      break;
    }
  }

  OUTLINED_FUNCTION_21_50();
  while (v14)
  {
    switch(*v1)
    {
      case 3:

        goto LABEL_27;
      case 5:
        OUTLINED_FUNCTION_5_76();
        OUTLINED_FUNCTION_24_36();
        break;
      default:
        break;
    }

    sub_1C7551DBC();
    OUTLINED_FUNCTION_31_37();
    ++v1;
    --v14;
    if (v10)
    {
LABEL_27:
      v29 = v76;
      sub_1C733D80C();
      OUTLINED_FUNCTION_32_33();
      v84 = v13;
      OUTLINED_FUNCTION_0_142();
      OUTLINED_FUNCTION_9_73(v30, v31, v32, v33);
      v13 = v84;
      v88 = v84;
      goto LABEL_29;
    }
  }

  v29 = v76;
LABEL_29:
  v34 = *(v77 + 16);
  while (2)
  {
    if (v34)
    {
      switch(*v15)
      {
        case 3:
          OUTLINED_FUNCTION_64_0();
          goto LABEL_34;
        case 4:

          break;
        case 5:
          OUTLINED_FUNCTION_24_36();
          OUTLINED_FUNCTION_5_76();
          goto LABEL_34;
        default:
LABEL_34:
          sub_1C7551DBC();
          OUTLINED_FUNCTION_31_37();
          ++v15;
          --v34;
          if (v10)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v35 = sub_1C754FEEC();
  v36 = sub_1C755117C();
  if (!os_log_type_enabled(v35, v36))
  {

LABEL_48:
    v70 = v29 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storySession;
    if (*(v70 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      sub_1C7163AF0();
    }

    OUTLINED_FUNCTION_25_0();
    return;
  }

  v37 = OUTLINED_FUNCTION_41_0();
  v38 = swift_slowAlloc();
  v39 = v38;
  v87 = v38;
  *v37 = 136315138;
  v40 = *(v13 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (!v40)
  {
LABEL_47:
    v84 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    v66 = sub_1C75505FC();
    v68 = v67;

    v69 = sub_1C6F765A4(v66, v68, &v87);

    *(v37 + 4) = v69;
    _os_log_impl(&dword_1C6F5C000, v35, v36, "Hastings features revealed:\n%s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_0_60();

    v29 = v76;
    goto LABEL_48;
  }

  v72 = v38;
  LODWORD(v73) = v36;
  v74 = v37;
  v75 = v35;
  v86 = MEMORY[0x1E69E7CC0];
  sub_1C75504FC();
  sub_1C6F7ED9C();
  v41 = v86;
  v42 = sub_1C70D4544(v13);
  LODWORD(v44) = v43;
  v36 = v45;
  v77 = v13 + 64;
  while ((v42 & 0x8000000000000000) == 0 && v42 < 1 << *(v13 + 32))
  {
    if (((*(v77 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
    {
      goto LABEL_57;
    }

    if (*(v13 + 36) != v44)
    {
      goto LABEL_58;
    }

    LODWORD(v82) = v36;
    v46 = v41;
    v47 = *(v13 + 48);
    v48 = type metadata accessor for Hastings.Feature();
    v49 = v13;
    v50 = v78;
    sub_1C72373C4(v47 + *(*(v48 - 8) + 72) * v42, v78);
    v51 = *(*(v49 + 56) + 8 * v42);
    OUTLINED_FUNCTION_1_108();
    v52 = v50;
    v53 = v79;
    sub_1C733EB78(v52, v79, v54);
    v55 = v81;
    *(v53 + *(v81 + 48)) = v51;
    v84 = 9;
    v85 = 0xE100000000000000;
    sub_1C75504FC();
    v56 = Hastings.Feature.description.getter();
    MEMORY[0x1CCA5CD70](v56);

    MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
    v57 = v80;
    sub_1C733EBD8(v53, v80);
    v58 = *(*(v57 + *(v55 + 48)) + 16);

    v83 = v58;
    v59 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v59);

    sub_1C733ECB0(v57, type metadata accessor for Hastings.Feature);
    MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
    v41 = v46;
    v60 = v84;
    v61 = v85;
    sub_1C733EC48(v53);
    v86 = v41;
    v62 = *(v41 + 16);
    if (v62 >= *(v41 + 24) >> 1)
    {
      sub_1C6F7ED9C();
      v41 = v86;
    }

    *(v41 + 16) = v62 + 1;
    v63 = v41 + 16 * v62;
    *(v63 + 32) = v60;
    *(v63 + 40) = v61;
    v42 = sub_1C733E77C(v42, v44, v82 & 1, v49);
    v44 = v64;
    v36 = v65;
    --v40;
    v13 = v49;
    if (!v40)
    {

      sub_1C6F9ED50(v42, v44, v36 & 1);
      v37 = v74;
      v35 = v75;
      LOBYTE(v36) = v73;
      v39 = v72;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_1C733CAC4()
{
  OUTLINED_FUNCTION_33();
  v56 = v0;
  v54 = v1;
  v3 = v2;
  v5 = v4;
  v55 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v57 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v53 = v9 - v8;
  v10 = 0;
  v11 = *(v5 + 16);
  v12 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v13 = 72 * v10 + 32;
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    memcpy(v59, (v5 + v13), 0x41uLL);
    if (__OFADD__(v10, 1))
    {
      goto LABEL_38;
    }

    if ((v59[3] & 1) == 0)
    {
      sub_1C7025F3C(v59, v58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716D97C();
        v12 = v60;
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v15);
        sub_1C716D97C();
        v12 = v60;
      }

      *(v12 + 16) = v16 + 1;
      memcpy((v12 + 72 * v16 + 32), v59, 0x41uLL);
      ++v10;
      goto LABEL_2;
    }

    ++v10;
    v13 += 72;
  }

  v17 = sub_1C71B9E20(v12);

  v18 = 0;
  v19 = *(v3 + 16);
  v20 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v21 = 72 * v18 + 32;
  for (i = v18; v19 != i; ++i)
  {
    if (i >= v19)
    {
      goto LABEL_39;
    }

    memcpy(v59, (v3 + v21), 0x42uLL);
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_40;
    }

    if ((v59[3] & 1) == 0)
    {
      sub_1C7025FF8(v59, v58);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v20;
      if ((v23 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716D940();
        v20 = v60;
      }

      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v24);
        sub_1C716D940();
        v20 = v60;
      }

      *(v20 + 16) = v25 + 1;
      memcpy((v20 + 72 * v25 + 32), v59, 0x42uLL);
      goto LABEL_14;
    }

    v21 += 72;
  }

  sub_1C71B9F20(v20);

  v59[0] = v17;
  sub_1C6FD2404();
  v52 = *(v57 + 104);
  v52(v53, *MEMORY[0x1E69C1920], v55);
  OUTLINED_FUNCTION_22_55();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6_83();
  *(v27 - 32) = 0;
  *(v27 - 24) = v53;
  *(v27 - 16) = v56;
  *(v27 - 8) = v54;
  v28 = sub_1C6FD9E70();

  v29 = *(v57 + 8);
  v29(v53, v55);
  v30 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_logger;
  sub_1C75504FC();
  v31 = sub_1C754FEEC();
  v32 = sub_1C75511BC();
  v33 = v29;
  if (os_log_type_enabled(v31, v32))
  {
    v34 = OUTLINED_FUNCTION_41_0();
    *v34 = 134217984;
    *(v34 + 4) = *(v28 + 16);

    _os_log_impl(&dword_1C6F5C000, v31, v32, "Found %ld required character features", v34, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v35 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v59[0] = v35;
  OUTLINED_FUNCTION_0_142();
  sub_1C733E86C(v28, v36, 0, v37, v59);
  v38 = v59[0];
  if (*(v59[0] + 16))
  {
    sub_1C733DE1C(v5, v3, v54);
    v39 = (v52)(v53, *MEMORY[0x1E69C1918], v55);
    MEMORY[0x1EEE9AC00](v39);
    OUTLINED_FUNCTION_6_83();
    *(v40 - 32) = 0;
    *(v40 - 24) = v53;
    *(v40 - 16) = v56;
    *(v40 - 8) = v54;
    v41 = sub_1C6FD9E70();

    v33(v53, v55);
    sub_1C75504FC();
    v42 = sub_1C754FEEC();
    v43 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v43))
    {
      v44 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_68_1(v44, 3.852e-34);
      OUTLINED_FUNCTION_77_0(&dword_1C6F5C000, v45, v46, "Found %ld prioritized character features");
      OUTLINED_FUNCTION_0_60();
    }

    else
    {
    }

    swift_isUniquelyReferenced_nonNull_native();
    v59[0] = v38;
    OUTLINED_FUNCTION_0_142();
    sub_1C733E86C(v41, v50, 0, v51, v59);
  }

  else
  {
    v47 = sub_1C754FEEC();
    v48 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1C6F5C000, v47, (v56 + v30), "Did not create prioritized character features because no character query tokens were found", v49, 2u);
      OUTLINED_FUNCTION_109();
    }
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C733D0D4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v9 = *(v2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = 0;
LABEL_2:
  v12 = 56 * v11 + 32;
  while (v9 != v11)
  {
    if (v11 >= v9)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v13 = *(v2 + v12 + 16);
    v48 = *(v2 + v12);
    v49 = v13;
    v50 = *(v2 + v12 + 32);
    v51 = *(v2 + v12 + 48);
    v0 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_24;
    }

    if ((BYTE8(v50) & 1) == 0)
    {
      sub_1C70260B4(&v48, &v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716DD2C();
        v10 = v52;
      }

      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v15);
        sub_1C716DD2C();
        v10 = v52;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 56 * v16;
      v18 = v48;
      v19 = v49;
      v20 = v50;
      *(v17 + 80) = v51;
      *(v17 + 48) = v19;
      *(v17 + 64) = v20;
      *(v17 + 32) = v18;
      v11 = v0;
      goto LABEL_2;
    }

    ++v11;
    v12 += 56;
  }

  v21 = &unk_1C755C000;
  if (*(v10 + 16) <= 1uLL)
  {

    v30 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    sub_1C71BA020(v10);

    v22 = OUTLINED_FUNCTION_23_41();
    v23(v22);
    OUTLINED_FUNCTION_22_55();
    MEMORY[0x1EEE9AC00](v24);
    OUTLINED_FUNCTION_6_83();
    OUTLINED_FUNCTION_18_50(v25);
    v26 = sub_1C6FD9E70();

    (*(v4 + 8))(v8, v0);
    sub_1C75504FC();
    v27 = sub_1C754FEEC();
    v28 = sub_1C75511BC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_41_0();
      *v29 = 134217984;
      *(v29 + 4) = *(v26 + 16);

      _os_log_impl(&dword_1C6F5C000, v27, v28, "Found %ld required location features", v29, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v31 = MEMORY[0x1E69E7CC8];
    swift_isUniquelyReferenced_nonNull_native();
    *&v48 = v31;
    OUTLINED_FUNCTION_0_142();
    sub_1C733E86C(v26, v32, 0, v33, &v48);
    v30 = v48;
    v21 = &unk_1C755C000;
  }

  sub_1C733E088(v2);
  sub_1C71BA020(v34);

  v35 = OUTLINED_FUNCTION_23_41();
  v36(v35);
  OUTLINED_FUNCTION_22_55();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6_83();
  OUTLINED_FUNCTION_18_50(v38);
  v39 = sub_1C6FD9E70();

  (*(v4 + 8))(v8, v0);
  sub_1C75504FC();
  v40 = sub_1C754FEEC();
  v41 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_7_0(v41))
  {
    v42 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_68_1(v42, COERCE_FLOAT(v21[397]));
    OUTLINED_FUNCTION_77_0(&dword_1C6F5C000, v43, v44, "Found %ld prioritized location features");
    OUTLINED_FUNCTION_0_60();
  }

  else
  {
  }

  swift_isUniquelyReferenced_nonNull_native();
  *&v48 = v30;
  OUTLINED_FUNCTION_0_142();
  sub_1C733E86C(v39, v45, 0, v46, &v48);
  OUTLINED_FUNCTION_25_0();
}

void sub_1C733D520()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = 0;
  v13 = *(v4 + 16);
  v14 = v4 - 8;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v16 = (v14 + 40 * v12);
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_17;
    }

    v18 = *(v16 + 64);
    ++v12;
    v16 += 5;
    if ((v18 & 1) == 0)
    {
      v35 = v7;
      v19 = v16[1];
      v30 = v16[2];
      v31 = *v16;
      v32 = *(v16 + 26);
      v33 = *(v16 + 25);
      v20 = v16[4];
      sub_1C75504FC();
      sub_1C75504FC();
      v34 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C716DBAC();
      }

      v21 = *(v15 + 16);
      if (v21 >= *(v15 + 24) >> 1)
      {
        sub_1C716DBAC();
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 40 * v21;
      *(v22 + 32) = v31;
      *(v22 + 40) = v19;
      *(v22 + 48) = v30;
      *(v22 + 56) = 0;
      *(v22 + 57) = v33;
      *(v22 + 58) = v32;
      *(v22 + 64) = v20;
      v12 = v17;
      v7 = v35;
      v14 = v34;
      goto LABEL_2;
    }
  }

  sub_1C71BA730(v15);

  (*(v7 + 104))(v11, *MEMORY[0x1E69C1920], v5);
  OUTLINED_FUNCTION_22_55();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_83();
  *(v24 - 32) = 2;
  *(v24 - 24) = v11;
  *(v24 - 16) = v0;
  *(v24 - 8) = v2;
  sub_1C6FD9E70();

  (*(v7 + 8))(v11, v5);
  sub_1C75504FC();
  v25 = sub_1C754FEEC();
  v26 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_7_0(v26))
  {
    v27 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_29_34(v27, 3.852e-34);
    OUTLINED_FUNCTION_77_0(&dword_1C6F5C000, v28, v29, "Found %ld required event features");
    OUTLINED_FUNCTION_0_60();
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C733D80C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = 0;
  v13 = *(v4 + 16);
  v14 = v4 + 32;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v16 = (v14 + (v12 << 6));
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v17 = v16[1];
    v36 = *v16;
    v37 = v17;
    v18 = v16[3];
    v38 = v16[2];
    v39 = v18;
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_19;
    }

    if ((BYTE8(v37) & 1) == 0 && *(&v39 + 1))
    {
      sub_1C7026698(&v36, &v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      v34 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716DBE8();
        v15 = v40;
      }

      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v21);
        sub_1C716DBE8();
        v15 = v40;
      }

      *(v15 + 16) = v22 + 1;
      v23 = (v15 + (v22 << 6));
      v24 = v36;
      v25 = v37;
      v26 = v39;
      v23[4] = v38;
      v23[5] = v26;
      v23[2] = v24;
      v23[3] = v25;
      v12 = v19;
      v2 = v34;
      goto LABEL_2;
    }

    ++v12;
    v16 += 4;
  }

  sub_1C71BA624(v15);

  (*(v7 + 104))(v11, *MEMORY[0x1E69C1920], v5);
  OUTLINED_FUNCTION_22_55();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6_83();
  *(v28 - 32) = 3;
  *(v28 - 24) = v11;
  *(v28 - 16) = v0;
  *(v28 - 8) = v2;
  sub_1C6FD9E70();

  (*(v7 + 8))(v11, v5);
  sub_1C75504FC();
  v29 = sub_1C754FEEC();
  v30 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_7_0(v30))
  {
    v31 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_29_34(v31, 3.852e-34);
    OUTLINED_FUNCTION_77_0(&dword_1C6F5C000, v32, v33, "Found %ld required trip features");
    OUTLINED_FUNCTION_0_60();
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C733DAB0(uint64_t *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v35 = a1;
  v9 = type metadata accessor for Hastings.Feature();
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 64))(v13, v14);
  v17 = v16;
  v18 = *(v10 + 32);
  v19 = sub_1C754F58C();
  (*(*(v19 - 8) + 16))(&v12[v18], a4, v19);
  *v12 = v15;
  *(v12 + 1) = v17;
  v12[16] = a3;
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = *(v21 + 56);
  sub_1C75504FC();
  v23 = v22(v20, v21);
  if (!v23)
  {
    sub_1C75504FC();
    v26 = sub_1C754FEEC();
    v27 = sub_1C755119C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = sub_1C6F765A4(v15, v17, &v37);

      *(v28 + 4) = v30;
      v31 = "Extended token %s missing assetUUIDs!";
LABEL_8:
      _os_log_impl(&dword_1C6F5C000, v26, v27, v31, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1CCA5F8E0](v29, -1, -1);
      MEMORY[0x1CCA5F8E0](v28, -1, -1);

      return sub_1C733ECB0(v12, type metadata accessor for Hastings.Feature);
    }

LABEL_9:

    return sub_1C733ECB0(v12, type metadata accessor for Hastings.Feature);
  }

  sub_1C706D154(v23);
  sub_1C7069A44();
  if (!*(v24 + 16))
  {

    sub_1C75504FC();
    v26 = sub_1C754FEEC();
    v27 = sub_1C75511BC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v32 = sub_1C6F765A4(v15, v17, &v37);

      *(v28 + 4) = v32;
      v31 = "Extended token %s has no relevant asset left after scoping, not using as a required feature";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v25 = v35;
  swift_isUniquelyReferenced_nonNull_native();
  v37 = *v25;
  sub_1C6FC9488();
  *v25 = v37;
  return sub_1C733ECB0(v12, type metadata accessor for Hastings.Feature);
}

uint64_t sub_1C733DE1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(result + 16);
  v7 = result + 32;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = (v7 + 72 * v5);
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    result = memcpy(__dst, v9, 0x41uLL);
    if (__OFADD__(v5, 1))
    {
      goto LABEL_27;
    }

    if (__dst[3])
    {
      sub_1C7025F3C(__dst, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716D97C();
        v8 = v27;
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v11);
        sub_1C716D97C();
        v8 = v27;
      }

      *(v8 + 16) = v12 + 1;
      result = memcpy((v8 + 72 * v12 + 32), __dst, 0x41uLL);
      ++v5;
      goto LABEL_2;
    }

    ++v5;
    v9 += 72;
  }

  v13 = sub_1C733E1C0(v8, a3);

  v14 = 0;
  v15 = *(a2 + 16);
  v16 = a2 + 32;
  v17 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v18 = (v16 + 72 * v14);
  for (i = v14; v15 != i; ++i)
  {
    if (i >= v15)
    {
      goto LABEL_28;
    }

    result = memcpy(__dst, v18, 0x42uLL);
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    if (__dst[3])
    {
      sub_1C7025FF8(__dst, v25);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v27 = v17;
      if ((v20 & 1) == 0)
      {
        OUTLINED_FUNCTION_90_0();
        sub_1C716D940();
        v17 = v27;
      }

      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v21);
        sub_1C716D940();
        v17 = v27;
      }

      *(v17 + 16) = v22 + 1;
      result = memcpy((v17 + 72 * v22 + 32), __dst, 0x42uLL);
      goto LABEL_14;
    }

    v18 += 72;
  }

  v23 = sub_1C733E414(v17, a3);

  v24 = sub_1C71B9E20(v13);

  sub_1C71B9F20(v23);

  __dst[0] = v24;
  sub_1C6FD2404();
  return __dst[0];
}

void sub_1C733E088(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v3 + 56 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v6 = v5[1];
    v15 = *v5;
    v16 = v6;
    v17 = v5[2];
    v18 = *(v5 + 6);
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    if (BYTE8(v17))
    {
      sub_1C70260B4(&v15, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716DD2C();
        v4 = v19;
      }

      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        sub_1C716DD2C();
        v4 = v19;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 56 * v9;
      v11 = v15;
      v12 = v16;
      v13 = v17;
      *(v10 + 80) = v18;
      *(v10 + 48) = v12;
      *(v10 + 64) = v13;
      *(v10 + 32) = v11;
      v1 = v7;
      goto LABEL_2;
    }

    ++v1;
    v5 = (v5 + 56);
  }
}

uint64_t sub_1C733E1C0(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v44 = a2;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    OUTLINED_FUNCTION_17_66();
    sub_1C716D97C();
    v7 = *(v3 + 72);
    OUTLINED_FUNCTION_13_66();
    do
    {
      memcpy(__dst, v4, 0x41uLL);
      v8 = __dst[4];
      v9 = __dst[5];
      v10 = __dst[1];
      v55 = __dst[0];
      sub_1C7025F3C(__dst, &v58);
      sub_1C75504FC();
      sub_1C75504FC();
      v11 = objc_autoreleasePoolPush();
      OUTLINED_FUNCTION_19_60(v11, v12, v13, v14, v15, v16, v17, v18, v34, v36, v38, v40, v42, v44);
      objc_autoreleasePoolPop(v5);
      v19 = v58[2];
      v56 = v10;
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        OUTLINED_FUNCTION_15_65(v21);
        v23 = v22;
        sub_1C6F61E88();
        if (v23 != v19)
        {
          __break(1u);

          __break(1u);
          return result;
        }
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      v24 = v8;
      v58 = v20;

      sub_1C70401E8();

      LODWORD(v52) = LOWORD(__dst[6]);
      HIDWORD(v52) = LOBYTE(__dst[8]);
      LODWORD(v49) = BYTE3(__dst[6]);
      HIDWORD(v49) = BYTE2(__dst[6]);
      LODWORD(v46) = BYTE5(__dst[6]);
      HIDWORD(v46) = BYTE4(__dst[6]);
      v25 = __dst[2];
      v26 = __dst[3];
      sub_1C7025F74(__dst);
      v59 = v26;
      v61 = v7;
      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v5 = (v28 + 1);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v27);
        v37 = v32;
        sub_1C716D97C();
        v7 = v61;
      }

      *(v7 + 16) = v5;
      v29 = v7 + 72 * v28;
      *(v29 + 32) = v55;
      *(v29 + 40) = v56;
      *(v29 + 48) = v25;
      *(v29 + 56) = v26;
      OUTLINED_FUNCTION_28_30(v29, v35, v37, v39, v41, v43, v45, v46, v49, v52, v55, v56, v57);
      *(v30 + 64) = v24;
      *(v30 + 72) = v9;
      *(v30 + 80) = v53;
      *(v30 + 82) = v51;
      *(v30 + 83) = v50;
      *(v30 + 84) = v48;
      *(v30 + 85) = v47;
      *(v30 + 86) = 0;
      *(v30 + 88) = v31;
      *(v30 + 96) = v54;
      v4 += 72;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1C733E414(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v44 = a2;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    OUTLINED_FUNCTION_17_66();
    sub_1C716D940();
    v7 = *(v3 + 72);
    OUTLINED_FUNCTION_13_66();
    do
    {
      memcpy(__dst, v4, 0x42uLL);
      v8 = __dst[4];
      v9 = __dst[5];
      v10 = __dst[1];
      v50 = __dst[0];
      sub_1C7025FF8(__dst, &v55);
      sub_1C75504FC();
      sub_1C75504FC();
      v11 = objc_autoreleasePoolPush();
      OUTLINED_FUNCTION_19_60(v11, v12, v13, v14, v15, v16, v17, v18, v34, v36, v38, v40, v42, v44);
      objc_autoreleasePoolPop(v5);
      v19 = v55[2];
      v51 = v4;
      if (v19)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        OUTLINED_FUNCTION_15_65(v21);
        v23 = v22;
        sub_1C6F61E88();
        if (v23 != v19)
        {
          __break(1u);

          __break(1u);
          return result;
        }
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      v24 = v10;
      v55 = v20;

      sub_1C70401E8();

      LODWORD(v47) = LOBYTE(__dst[8]);
      HIDWORD(v47) = BYTE1(__dst[8]);
      HIDWORD(v46) = LOWORD(__dst[6]);
      v25 = __dst[2];
      v26 = __dst[3];
      sub_1C7026030(__dst);
      v56 = v26;
      v58 = v7;
      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v5 = (v28 + 1);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_3_92(v27);
        v37 = v32;
        sub_1C716D940();
        v7 = v58;
      }

      *(v7 + 16) = v5;
      v29 = v7 + 72 * v28;
      *(v29 + 32) = v50;
      *(v29 + 40) = v24;
      *(v29 + 48) = v25;
      *(v29 + 56) = v26;
      OUTLINED_FUNCTION_28_30(v29, v35, v37, v39, v41, v43, v45, v46, v47, v50, v51, v53, v54);
      *(v30 + 64) = v8;
      *(v30 + 72) = v9;
      *(v30 + 80) = WORD2(v46);
      *(v30 + 82) = 0;
      *(v30 + 87) = v54;
      *(v30 + 83) = HIDWORD(v53);
      *(v30 + 88) = v31;
      *(v30 + 96) = v48;
      *(v30 + 97) = v49;
      v4 = (v52 + 72);
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t Hastings.FeatureProvider.deinit()
{
  v1 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  memcpy(__dst, (v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyElements), 0x130uLL);
  sub_1C6FE0DC0(__dst);
  sub_1C733ECB0(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storySession, type metadata accessor for StoryGenerationSession);

  v3 = *(v0 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings15FeatureProvider_storyPhotoLibraryContext);

  return v0;
}

uint64_t Hastings.FeatureProvider.__deallocating_deinit()
{
  Hastings.FeatureProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C733E77C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_1C755162C();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C733E7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC20) + 48);
  result = sub_1C73DB440(a2, a1, *(a1 + v4));
  *(a2 + v5) = result;
  return result;
}

uint64_t sub_1C733E86C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v37[0] = type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v44 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC18);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v37 - v15;
  sub_1C6F78034(v42);
  v38 = v42[0];
  v39 = v42[1];
  v40 = v42[2];
  v41 = v43;
  v37[2] = a1;
  sub_1C75504FC();
  v37[1] = a3;

  while (1)
  {
    sub_1C73DAE4C();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC20);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      sub_1C6F61E88();
    }

    v18 = *(v17 + 48);
    OUTLINED_FUNCTION_1_108();
    sub_1C733EB78(v16, v13, v19);
    v20 = *&v16[v18];
    v21 = *a5;
    v23 = sub_1C6FC27A8();
    v24 = *(v21 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (*(v21 + 24) >= v26)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152A8);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C7354CE0(v26, a4 & 1);
      v28 = sub_1C6FC27A8();
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_16;
      }

      v23 = v28;
    }

    v30 = *a5;
    if (v27)
    {
      sub_1C733ECB0(v13, type metadata accessor for Hastings.Feature);
      *(*(v30 + 56) + 8 * v23) = v20;

      a4 = 1;
    }

    else
    {
      *(v30 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      OUTLINED_FUNCTION_1_108();
      sub_1C733EB78(v13, v31, v32);
      *(*(v30 + 56) + 8 * v23) = v20;
      v33 = *(v30 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_15;
      }

      *(v30 + 16) = v35;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C733EB78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C733EBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}