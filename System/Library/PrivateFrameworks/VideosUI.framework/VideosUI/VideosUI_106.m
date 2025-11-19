uint64_t sub_1E3EF45AC()
{
  OUTLINED_FUNCTION_6_41();
  (*(v1 + 136))();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v3 = (*(v2 + 216))();

  return v3;
}

void sub_1E3EF466C(void **a1)
{
  v2 = *a1;
  v3 = [*(v1 + 16) vuiContentView];
  v5 = [v3 vuiLayer];

  if (v5)
  {
    v4 = [v2 CGColor];
    [v5 setShadowColor_];
  }
}

void sub_1E3EF4730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_8();
  v27 = (*(v26 + 2088))();
  if (v27 == 20 || (sub_1E3D23FE4(v27) & 1) == 0)
  {
    v28 = OUTLINED_FUNCTION_52_47();

    sub_1E3EF1438(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  else
  {
    OUTLINED_FUNCTION_52_47();

    sub_1E3EEFBB4();
  }
}

unint64_t sub_1E3EF47F8()
{
  result = qword_1EE23B448;
  if (!qword_1EE23B448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B448);
  }

  return result;
}

uint64_t sub_1E3EF4878(id *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  MEMORY[0x1E6910BF0]();
  sub_1E38C5A18(*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_1E4206324();
}

uint64_t OUTLINED_FUNCTION_48_46(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E393D92C(a1, v3, a3, v4);
}

uint64_t sub_1E3EF491C()
{
  type metadata accessor for EpisodeCollectionViewModel();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v15 = MEMORY[0x1E69E7CC0];
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE00);
    sub_1E42038E4();
    v1 = v10;
    v2 = v11;
    v10 = 0;
    v11 = 0;
    v12 = v0;
    v13 = v1;
    v14 = v2;
    v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE08));

    swift_unknownObjectRetain();

    v0 = sub_1E4201E44();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = sub_1E4201E54();
    v7 = *v6;
    v8 = v6[1];
    *v6 = sub_1E3EF4B30;
    v6[1] = v4;
    sub_1E37FAED8(v7, v8);
    v5(&v10, 0);

    swift_unknownObjectRelease();
  }

  return v0;
}

id sub_1E3EF4AFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeasonsDownloadViewControllerCreator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3EF4B30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong vui:1 dismissViewControllerAnimated:0 completion:?];
  }
}

uint64_t sub_1E3EF4B90@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE10);
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v3 = &v13 - v2;
  v5 = *(v1 + 32);
  v21[0] = *(v1 + 24);
  v4 = v21[0];
  v21[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE18);
  sub_1E4203914();
  v17 = v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE20);
  OUTLINED_FUNCTION_4_213(&qword_1ECF3BE28);
  OUTLINED_FUNCTION_4_213(&qword_1ECF3BE30);
  OUTLINED_FUNCTION_4_213(&qword_1ECF3BE38);
  sub_1E3EF523C();
  sub_1E3EF57AC(&qword_1ECF2D9D0, type metadata accessor for SeasonMetadata);
  sub_1E42013B4();
  v20[0] = v4;
  v20[1] = v5;
  sub_1E42038F4();
  v19 = v21[0];
  v20[0] = v5;
  v21[0] = v4;
  v6 = swift_allocObject();
  v7 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 32);
  v8 = OUTLINED_FUNCTION_32_0();
  sub_1E37FAED4(v8, v9);

  sub_1E379D7E4(v21, v18, &qword_1ECF3BE00);
  sub_1E379D7E4(v20, v18, &qword_1ECF3BE70);
  OUTLINED_FUNCTION_16_90();
  sub_1E32752B0(v10, &qword_1ECF3BE10);
  sub_1E3EF56F8();
  v11 = v14;
  sub_1E4203534();

  return (*(v16 + 8))(v3, v11);
}

uint64_t sub_1E3EF4EDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  type metadata accessor for SeasonDownloadEpisodeListView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BEE8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = a1[2];
  v10 = *(*v9 + 1168);
  v11 = swift_retain_n();
  v12 = v10(v11);
  v13 = sub_1E32AE9B0(v12);

  if (v13 >= 2)
  {
    v15 = *a1;
    sub_1E37FAED4(*a1, a1[1]);
    *v8 = sub_1E3905320(v9, v15);
    v8[8] = v16 & 1;
    *(v8 + 2) = v17;
    *(v8 + 3) = v18;
    swift_storeEnumTagMultiPayload();
    sub_1E3EF537C();
    OUTLINED_FUNCTION_0_280();
    sub_1E3EF57AC(v19, v20);
    v21 = v33;
    sub_1E4201F44();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE50);
    v23 = v21;
    return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
  }

  v24 = v33;
  v25 = v10(v14);
  v26 = sub_1E32AE9B0(v25);

  if (v26 == 1)
  {
    type metadata accessor for EpisodeListInteractor();
    sub_1E37956E0(v9, 0);

    sub_1E3EA9C58(v27, 0, 0, v5);
    sub_1E3EADD08(v5, v8);
    swift_storeEnumTagMultiPayload();
    sub_1E3EF537C();
    OUTLINED_FUNCTION_0_280();
    sub_1E3EF57AC(v28, v29);
    sub_1E4201F44();

    sub_1E3EF585C(v5);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE50);
    v23 = v24;
    return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE50);

  return __swift_storeEnumTagSinglePayload(v24, 1, 1, v31);
}

unint64_t sub_1E3EF523C()
{
  result = qword_1ECF3BE40;
  if (!qword_1ECF3BE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BE20);
    sub_1E3EF52C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BE40);
  }

  return result;
}

unint64_t sub_1E3EF52C0()
{
  result = qword_1ECF3BE48;
  if (!qword_1ECF3BE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BE50);
    sub_1E3EF537C();
    sub_1E3EF57AC(&unk_1ECF3BE60, type metadata accessor for SeasonDownloadEpisodeListView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BE48);
  }

  return result;
}

unint64_t sub_1E3EF537C()
{
  result = qword_1ECF3BE58;
  if (!qword_1ECF3BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BE58);
  }

  return result;
}

void sub_1E3EF53D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE18);
  sub_1E42038F4();
  v1 = sub_1E32AE9B0(v33);

  if (v1 == 1)
  {
    v32 = *(v0 + 40);
    sub_1E42038F4();
    if (!sub_1E32AE9B0(v33))
    {

      return;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1E6911E60](0);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v2 = *(v33 + 32);
    }

    (*(**(v0 + 32) + 1168))(v3);
    v4 = OUTLINED_FUNCTION_32_0();
    v6 = sub_1E3906618(v4, v5);
    v8 = v7;

    if (v8)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E429A200;
      *(inited + 32) = sub_1E4205F14();
      *(inited + 40) = v10;
      v11 = sub_1E4205F14();
      v12 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v11;
      *(inited + 56) = v13;
      *(inited + 80) = sub_1E4205F14();
      *(inited + 88) = v14;
      v15 = v2[2];
      v16 = v2[3];
      *(inited + 120) = v12;
      *(inited + 96) = v15;
      *(inited + 104) = v16;
      *(inited + 128) = sub_1E4205F14();
      *(inited + 136) = v17;
      v18 = sub_1E4205F14();
      *(inited + 168) = v12;
      *(inited + 144) = v18;
      *(inited + 152) = v19;
      v20 = sub_1E4205F14();
      v21 = MEMORY[0x1E69E6530];
      *(inited + 176) = v20;
      *(inited + 184) = v22;
      *(inited + 216) = v21;
      *(inited + 192) = v6;
      *(inited + 224) = sub_1E4205F14();
      *(inited + 232) = v23;
      v24 = v2[5];
      v25 = v2[6];
      *(inited + 264) = v12;
      *(inited + 240) = v24;
      *(inited + 248) = v25;
      *(inited + 272) = sub_1E4205F14();
      *(inited + 280) = v26;
      v27 = sub_1E4205F14();
      *(inited + 312) = v12;
      *(inited + 288) = v27;
      *(inited + 296) = v28;

      v29 = sub_1E4205CB4();
      v30 = [objc_opt_self() sharedInstance];
      sub_1E3744600(v29);

      v31 = sub_1E4205C44();

      [v30 recordClick_];
    }
  }
}

unint64_t sub_1E3EF56F8()
{
  result = qword_1ECF3BE80;
  if (!qword_1ECF3BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3BE00);
    sub_1E3EF57AC(&qword_1ECF2DAC0, type metadata accessor for SeasonMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3BE80);
  }

  return result;
}

uint64_t sub_1E3EF57AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3EF585C(uint64_t a1)
{
  v2 = type metadata accessor for SeasonDownloadEpisodeListView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3EF58B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI27PlaybackMetricsQueueManager_eventQueue;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1E3EF6080();
  v4 = *(*(v1 + v3) + 16);
  sub_1E3EF60CC(v4);
  v5 = *(v1 + v3);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = a1;
  *(v6 + 40) = 1;
  *(v1 + v3) = v5;
  swift_endAccess();
  return sub_1E3EF5964();
}

uint64_t sub_1E3EF5964()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI27PlaybackMetricsQueueManager_eventQueue;
  result = swift_beginAccess();
  v4 = *(v0 + v2);
  if (*(v4 + 2))
  {
    if (v4[40] == 1)
    {
      [*(v4 + 4) recordPageHandler];
      OUTLINED_FUNCTION_2_213();
      v4 = *(v1 + v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v2) = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_12;
      }

      while (*(v4 + 2))
      {
        v4[40] = 0;
        *(v1 + v2) = v4;
        result = swift_endAccess();
        if (*(v4 + 2))
        {
          goto LABEL_6;
        }

        __break(1u);
LABEL_12:
        v4 = sub_1E3EF6214(v4);
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      if (v4[41] != 1)
      {
        return result;
      }

      [*(v4 + 4) recordImpressionsHandler];
      OUTLINED_FUNCTION_2_213();
      v4 = *(v1 + v2);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v2) = v4;
      if (result)
      {
        goto LABEL_8;
      }
    }

    result = sub_1E3EF6214(v4);
    v4 = result;
LABEL_8:
    if (*(v4 + 2))
    {
      v4[41] = 0;
      *(v1 + v2) = v4;
      sub_1E3EF6008();
      swift_endAccess();
      v6 = swift_unknownObjectRelease();
      return sub_1E3EF5964(v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E3EF5ABC(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  v11 = OBJC_IVAR____TtC8VideosUI27PlaybackMetricsQueueManager_eventQueue;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = *(v12 + 16);
  if (!v13)
  {
    v14 = sub_1E324FBDC();
    (*(v5 + 16))(v10, v14, v4);
    swift_unknownObjectRetain();
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = v17;
      v36 = swift_slowAlloc();
      v37[0] = v36;
      *v17 = 136315138;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BEF8);
      v18 = sub_1E4205F84();
      v34 = v16;
      v20 = sub_1E3270FC8(v18, v19, v37);

      v21 = v35;
      *(v35 + 1) = v20;
      _os_log_impl(&dword_1E323F000, v15, v34, "PlaybackMetricsManager::recordImpressions - queue emptyImpression recorder: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v10, v4);
    [a1 recordImpressionsHandler];
    v12 = *(v2 + v11);
    v13 = *(v12 + 16);
    if (!v13)
    {
LABEL_8:
      v24 = sub_1E324FBDC();
      (*(v5 + 16))(v7, v24, v4);
      swift_unknownObjectRetain();
      v25 = sub_1E41FFC94();
      v26 = sub_1E42067F4();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v37[0] = v28;
        *v27 = 136315138;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BEF8);
        v29 = sub_1E4205F84();
        v31 = sub_1E3270FC8(v29, v30, v37);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_1E323F000, v25, v26, "PlaybackMetricsManager::recordImpressions Attempting to recordImpression\nwithout page event recorder: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v5 + 8))(v7, v4);
      return sub_1E3EF5964();
    }
  }

  v22 = 0;
  v23 = 0;
  while (*(v12 + v22 + 32) != a1)
  {
    ++v23;
    v22 += 16;
    if (v13 == v23)
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v11) = v12;
  if ((result & 1) == 0)
  {
    result = sub_1E3EF6214(v12);
    v12 = result;
  }

  if (v23 < *(v12 + 16))
  {
    *(v12 + v22 + 41) = 1;
    *(v2 + v11) = v12;
    swift_endAccess();
    return sub_1E3EF5964();
  }

  __break(1u);
  return result;
}

void sub_1E3EF5EF4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1E3EF5F6C()
{
  v1 = OBJC_IVAR____TtC8VideosUI27PlaybackMetricsQueueManager_eventQueue;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E3EF6008()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);
    swift_unknownObjectRetain();
    sub_1E3EF6238(0, 1);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1E3EF6080()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3EF610C(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1E3EF60CC(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E3EF610C((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1E3EF610C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BF68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

int64_t sub_1E3EF6238(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1E3EF632C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 16 * a2);
  if (16 * v5 != 16 * a2 || v12 + 16 * v11 <= v9 + 16 * v5)
  {
    result = memmove((v9 + 16 * v5), v12, 16 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_1E3EF632C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_1E3EF610C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_1E3EF6484()
{
  v1 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_customPreviewTarget;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EF64C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_customPreviewTarget;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1E3EF6564()
{
  v1 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EF65A0(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  OUTLINED_FUNCTION_7_19();
  v6 = *(v5 + 200);
  v7 = a1;
  v8 = v6();
  v9 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v8 vui:*(v1 + v9) addSubview:v4 oldView:?];

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    v12 = *(v1 + v9);
    OUTLINED_FUNCTION_7_19();
    v14 = *(v13 + 184);
    v15 = v12;
    v14(v12);
  }
}

void (*sub_1E3EF66DC())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3EF6758;
}

void *sub_1E3EF6770()
{
  v1 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1E3EF67B8())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3EF6834;
}

void sub_1E3EF684C(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E3EF68CC()
{
  v1 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_additionalInfoView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EF6914(void *a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_3_0();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  OUTLINED_FUNCTION_7_19();
  v8 = *(v7 + 200);
  v9 = a1;
  v10 = v8();
  OUTLINED_FUNCTION_7_19();
  v12 = (*(v11 + 208))();
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() currentDevice];
    v15 = [v14 userInterfaceIdiom];

    if (v15 == 1)
    {
      v16 = v10;
    }

    else
    {
      v16 = v13;
    }

    if (v15 == 1)
    {
      v10 = v13;
    }
  }

  v17 = *a2;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v10 vui:*(v2 + v17) addSubview:v6 oldView:?];
}

void (*sub_1E3EF6A54())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_additionalInfoView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3EF6AD0;
}

double sub_1E3EF6AE8(char a1, double a2, double a3)
{
  v4 = v3;
  v189.receiver = v3;
  v189.super_class = type metadata accessor for QueryDescriptionBannerViewCell();
  v8 = objc_msgSendSuper2(&v189, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x80);
  v10 = (v9)(v8);
  if (v10)
  {
    OUTLINED_FUNCTION_30();
    (*(v11 + 1736))();
    OUTLINED_FUNCTION_11_5();

    OUTLINED_FUNCTION_47_0();
    (*(v12 + 152))(v190);
    v186 = *v190;
    v13 = *&v190[3];
    v14 = v191;
  }

  else
  {
    v14 = 1;
    v186 = 0.0;
    v13 = 0.0;
  }

  if ((v9)(v10))
  {
    OUTLINED_FUNCTION_30();
    (*(v23 + 1856))(v192);
    v24 = *v192;
    v25 = *&v192[1];
    v26 = *&v192[2];
    v27 = *&v192[3];

    if ((v193 & 1) == 0)
    {
      v15 = sub_1E3952BE0(v24, v25, v26, v27);
    }
  }

  v28 = 0.0;
  if ((v14 & 1) == 0)
  {
    v29 = OUTLINED_FUNCTION_19_127(v15, v16, v17, v18, v19, v20, v21, v22, v172, v174, v176, v178, *&v180, v183, v185, v186);
    sub_1E3952BE0(v29, v30, v31, v13);
  }

  HIDWORD(v185) = v14;
  if (v9())
  {
    OUTLINED_FUNCTION_30();
    (*(v32 + 1856))(v194);

    if (v195)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = *&v194[1];
    }
  }

  v184 = v13;
  if (v9())
  {
    OUTLINED_FUNCTION_30();
    (*(v33 + 1736))();
    OUTLINED_FUNCTION_11_5();

    OUTLINED_FUNCTION_47_0();
    (*(v34 + 152))(v196);

    OUTLINED_FUNCTION_32_1();
    if (v37)
    {
      v38 = v35;
    }

    else
    {
      v38 = v36;
    }
  }

  else
  {
    v38 = 0.0;
  }

  v181 = objc_opt_self();
  v39 = [v181 currentDevice];
  v40 = [v39 userInterfaceIdiom];

  if (v40 == 1)
  {
    v41 = v9();
    if (v41)
    {
      OUTLINED_FUNCTION_30();
      (*(v42 + 1880))(a2);
    }

    if ((v9)(v41))
    {
      OUTLINED_FUNCTION_30();
      (*(v43 + 1856))(v197);
      v44 = v197[0];
      v45 = v197[1];
      v46 = v197[2];
      v47 = v197[3];

      if ((v198 & 1) == 0)
      {
        sub_1E3952BE0(v44, v45, v46, v47);
      }
    }

    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v49 = (*(v48 + 1736))();

      (*(*v49 + 152))(v199, v50);

      OUTLINED_FUNCTION_32_1();
      if (v37)
      {
        v53 = v51;
      }

      else
      {
        v53 = v52;
      }
    }

    else
    {
      v53 = 0.0;
    }
  }

  else
  {
    v53 = v28 + v38;
  }

  OUTLINED_FUNCTION_12_5();
  v54 += 32;
  v55 = *v54;
  v56 = (*v54)();
  v57 = 0.0;
  v58 = 0.0;
  if (v56)
  {
    v59 = v56;
    if (v9())
    {
      OUTLINED_FUNCTION_30();
      (*(v60 + 1760))();
    }

    OUTLINED_FUNCTION_23_90();
    v58 = v61;
  }

  v62 = v55();
  if (v62)
  {

    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v64 = (*(v63 + 1760))();

      (*(*v64 + 152))(v200, v65);

      if (v201)
      {
        v57 = 0.0;
      }

      else
      {
        v57 = v200[0];
      }
    }
  }

  v188 = v55;
  v66 = v55();
  v67 = 0.0;
  if (v66)
  {

    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v69 = (*(v68 + 1760))();

      (*(*v69 + 152))(v202, v70);

      if (v203)
      {
        v67 = 0.0;
      }

      else
      {
        v67 = v202[2];
      }
    }
  }

  OUTLINED_FUNCTION_12_5();
  v72 = *(v71 + 232);
  v73 = v72();
  if (v73)
  {
    v74 = v73;
    if (v9())
    {
      OUTLINED_FUNCTION_30();
      (*(v75 + 1736))();
    }

    OUTLINED_FUNCTION_23_90();
  }

  if (a1)
  {
    v182 = a2;
    v76 = v188();
    if (v76)
    {

      if (v9())
      {
        OUTLINED_FUNCTION_30();
        (*(v77 + 1856))(v207);

        if ((v208 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_198();
        }
      }

      if (v9())
      {
        OUTLINED_FUNCTION_30();
        (*(v85 + 152))(v209);

        if ((v210 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_198();
        }
      }

      if ((BYTE4(v185) & 1) == 0)
      {
        v86 = OUTLINED_FUNCTION_19_127(0.0, v78, v79, v80, v81, v82, v83, v84, v172, v174, v176, v67, a2, v184, v185, v186);
        sub_1E3952BD8(v86, v87, v88);
      }
    }

    else
    {
      if (v9())
      {
        OUTLINED_FUNCTION_30();
        (*(v94 + 1856))(v207);

        if ((v208 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_198();
        }
      }

      if (v9())
      {
        OUTLINED_FUNCTION_30();
        (*(v102 + 152))(v209);

        if ((v210 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_198();
        }
      }

      if ((BYTE4(v185) & 1) == 0)
      {
        v103 = OUTLINED_FUNCTION_19_127(0.0, v95, v96, v97, v98, v99, v100, v101, v172, v174, v176, v178, a2, v184, v185, v186);
        sub_1E3952BD8(v103, v104, v105);
      }
    }

    return v182;
  }

  else
  {
    v179 = v67;
    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v90 = (*(v89 + 1736))();

      (*(*v90 + 152))(v204, v91);

      OUTLINED_FUNCTION_32_1();
      if (!v37)
      {
        v92 = v93;
      }
    }

    else
    {
      v92 = 0.0;
    }

    v175 = a3;
    v177 = v92;
    v106 = a2;
    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v106 = (*(v107 + 1880))(a2);
    }

    OUTLINED_FUNCTION_13_154();
    Height = CGRectGetHeight(v211);
    v109 = v188();
    v173 = v53;
    if (v109)
    {

      v117 = 0.0;
      if ((BYTE4(v185) & 1) == 0)
      {
        v118 = OUTLINED_FUNCTION_19_127(0.0, v110, v111, v112, v113, v114, v115, v116, v53, v175, v177, v179, *&v181, v184, v185, v186);
        v117 = sub_1E3952BD8(v118, v119, v120);
      }

      v121 = v58 + v57 + v179 + v117;
    }

    else
    {
      v121 = 0.0;
      if (v9())
      {
        OUTLINED_FUNCTION_30();
        v130 = (*(v129 + 1736))();

        (*(*v130 + 152))(v205, v131);

        if ((v206 & 1) == 0)
        {
          v121 = v205[0] + v205[0];
        }
      }
    }

    OUTLINED_FUNCTION_12_5();
    v187 = *(v122 + 208);
    v123 = v187();
    if (v123)
    {
      v124 = v123;
      v125 = Height + v121;
      if (v9())
      {
        OUTLINED_FUNCTION_30();
        (*(v126 + 1856))(v207);

        OUTLINED_FUNCTION_32_1();
        if (v37)
        {
          v128 = v127;
        }
      }

      else
      {
        v128 = 0.0;
      }

      [v124 setFrame_];
    }

    v132 = [v181 currentDevice];
    v133 = [v132 userInterfaceIdiom];

    if (v133 == 1)
    {
      v134 = v72();
      if (v134)
      {
        v135 = v134;
        v136 = v187();
        if (v136)
        {
          v137 = v136;
          [v136 bounds];
        }

        [v4 vuiIsRTL];
        OUTLINED_FUNCTION_13_154();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v135 setFrame_];
      }
    }

    v138 = v187;
    v139 = v187();
    if (v139)
    {
      v140 = v139;
      [v139 frame];

      v141 = v188();
      if (v141)
      {

        if (v9())
        {
          OUTLINED_FUNCTION_30();
          v143 = (*(v142 + 1760))();

          v145 = (*(*v143 + 456))(v144);

          if (v145 != 7)
          {
            LOBYTE(v209[0]) = v145;
            sub_1E3793D00();
            if (sub_1E4205E84())
            {
              OUTLINED_FUNCTION_13_154();
              CGRect.center.getter(v146, v147, v148, v149);
            }
          }

          v138 = v187;
        }

        v150 = [v181 currentDevice];
        v151 = [v150 userInterfaceIdiom];

        if (v151 == 1)
        {
          v152 = v188();
          if (v152)
          {
            v153 = v152;
            v154 = v138();
            if (v154)
            {
              v155 = v154;
              [v154 bounds];
            }

            [v4 vuiIsRTL];
            VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
            [v153 setFrame_];
          }
        }

        if (UIAccessibilityIsReduceTransparencyEnabled())
        {
          v156 = v188();
          if (v156)
          {
            v157 = v156;
            [v156 setAlpha_];
          }
        }
      }
    }

    v158 = v138();
    if (v158)
    {
      v159 = v158;
      if (!v9() || (OUTLINED_FUNCTION_30(), (*(v160 + 552))(v209), v161 = v209[0], v162 = v209[1], v163 = v209[2], v164 = v209[3], , (v210 & 1) != 0))
      {
        v161 = *MEMORY[0x1E69DDCE0];
        v162 = *(MEMORY[0x1E69DDCE0] + 8);
        v163 = *(MEMORY[0x1E69DDCE0] + 16);
        v164 = *(MEMORY[0x1E69DDCE0] + 24);
      }

      type metadata accessor for GraphicsUtilities();
      [v159 frame];
      v167 = sub_1E418AA20(v161, v162, v163, v164, v165, v166);
      v168 = [v159 vuiLayer];
      [v168 setShadowPath_];

      OUTLINED_FUNCTION_12_5();
      v170 = (*(v169 + 200))();
      [v170 vui:v159 sendSubviewToBack:?];
    }
  }

  return a2;
}

uint64_t sub_1E3EF7C44()
{
  OUTLINED_FUNCTION_156();
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0)
  {
    v26 = sub_1E324FBDC();
    (*(v3 + 16))(v5, v26, v2);

    v27 = sub_1E41FFC94();
    v28 = sub_1E4206814();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = *&v30;
      *v29 = 136315138;
      sub_1E384EE08(*(v1 + 98));
      v33 = sub_1E3270FC8(v31, v32, &aBlock);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1E323F000, v27, v28, "QueryDescriptionBannerViewCell: Failed to get correct cell for [%s]", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E69143B0](v30, -1, -1);
      MEMORY[0x1E69143B0](v29, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return v0;
  }

  OUTLINED_FUNCTION_47_0();
  v7 = *(v6 + 392);
  v8 = v0;
  if (v7())
  {
    type metadata accessor for QueryDescriptionBannerLayout();
    if (!swift_dynamicCastClass())
    {
    }
  }

  v9 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  (*(v10 + 136))();
  OUTLINED_FUNCTION_0_282();
  v12 = *(v11 + 160);
  v13 = (v11 + 160);

  v12(v14);
  type metadata accessor for ViewModel();
  j___s8VideosUI9ViewModelCMa();
  v15 = sub_1E39C1CF8(9);
  result = sub_1E32AE9B0(v15);
  if (!result)
  {

    goto LABEL_19;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1E6911E60](0, v15);
    goto LABEL_9;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);

LABEL_9:

    if (*v17 == _TtC8VideosUI13TextViewModel)
    {
      OUTLINED_FUNCTION_0_282();
      v19 = (*(v18 + 208))();
      if (v19)
      {
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
        OUTLINED_FUNCTION_0_282();
        (*(v36 + 216))();
        OUTLINED_FUNCTION_0_282();
        v38 = *(v37 + 208);
        v39 = v37 + 208;
        v40 = v38();
        if (v40)
        {
          v13 = v40;
          sub_1E3280A90(0, &qword_1EE23AE20);
          v41 = *sub_1E3E6011C();
          v91[1] = v39;
          v42 = v38;
          v43 = v41;
          v44 = *sub_1E3E6029C();
          v45 = sub_1E3E5F2F8(v43, v44);

          v38 = v42;
          [v13 setBackgroundColor_];
        }

        v46 = v38();
        if (v46)
        {
          v47 = v46;
          v13 = [v46 vuiLayer];

          if (v13)
          {
            OUTLINED_FUNCTION_0_282();
            v49 = 0.0;
            if ((*(v48 + 128))())
            {
              OUTLINED_FUNCTION_30();
              (*(v50 + 552))(&aBlock);
              v51 = aBlock;
              v52 = *&v93;
              v53 = *&v94;
              v54 = v95;

              if ((v96 & 1) == 0)
              {
                v49 = sub_1E3952BE8(v51, v52, v53, v54);
              }
            }

            [v13 setCornerRadius_];
          }
        }

        v55 = v38();
        if (v55)
        {
          v56 = OUTLINED_FUNCTION_24_95(v55);

          if (v56)
          {
            [v56 setShadowOffset_];
          }
        }

        v57 = v38();
        if (v57)
        {
          v58 = OUTLINED_FUNCTION_24_95(v57);

          if (v58)
          {
            [v58 setShadowRadius_];
          }
        }

        v59 = v38();
        if (v59)
        {
          v60 = OUTLINED_FUNCTION_24_95(v59);

          if (v60)
          {
            v13 = [objc_opt_self() blackColor];
            v61 = v38;
            v62 = [v13 CGColor];

            [v60 setShadowColor_];
            v38 = v61;
          }
        }

        v63 = v38();
        if (v63)
        {
          v64 = OUTLINED_FUNCTION_24_95(v63);

          if (v64)
          {
            LODWORD(v65) = 1039516303;
            [v64 setShadowOpacity_];
          }
        }

        v66 = v38();
        if (v66)
        {
          v67 = v66;
          v68 = [v66 vuiLayer];

          if (v68)
          {
            [v68 setMasksToBounds_];
          }
        }
      }

      OUTLINED_FUNCTION_0_282();
      v21 = *(v20 + 232);
      v22 = v21();
      OUTLINED_FUNCTION_0_282();
      v24 = (*(v23 + 128))();
      if (v24)
      {
        v25 = (*(*v24 + 1736))();
      }

      else
      {
        v25 = 0;
      }

      v69 = sub_1E3887F00(v17, v22, v25);

      OUTLINED_FUNCTION_0_282();
      (*(v70 + 240))(v69);
      type metadata accessor for QueryDescriptionBannerViewCell();
      OUTLINED_FUNCTION_0_282();
      v72 = (*(v71 + 152))();
      v73 = sub_1E3EF8A18(v72);

      v75 = (v21)(v74);
      if (v75)
      {
        v76 = v75;
        objc_opt_self();
        v77 = swift_dynamicCastObjCClass();
        if (!v77)
        {
        }
      }

      else
      {
        v77 = 0;
      }

      sub_1E3EF8B64(v73, v77);

      v78 = v21();
      if (v78)
      {
        v79 = v78;
        objc_opt_self();
        v80 = swift_dynamicCastObjCClass();
        if (v80)
        {
          v81 = v80;
          v82 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v83 = swift_allocObject();
          *(v83 + 16) = v82;
          *(v83 + 24) = v17;
          v96 = sub_1E3EF98C8;
          v97 = v83;
          aBlock = MEMORY[0x1E69E9820];
          v93 = 1107296256;
          *&v94 = COERCE_DOUBLE(sub_1E3889A38);
          v95 = COERCE_DOUBLE(&block_descriptor_23_2);
          v84 = _Block_copy(&aBlock);

          [v81 setSelectionHandler_];

          _Block_release(v84);

LABEL_53:
          v9 = MEMORY[0x1E69E7D40];
          goto LABEL_54;
        }
      }

      goto LABEL_53;
    }

LABEL_19:
    OUTLINED_FUNCTION_0_282();
    (*(v34 + 240))(0);
    OUTLINED_FUNCTION_0_282();
    (*(v35 + 216))(0);
LABEL_54:
    OUTLINED_FUNCTION_47_0();
    v86 = (*(v85 + 488))();
    if (v86 && (sub_1E373E010(90, v86), OUTLINED_FUNCTION_11_5(), , v1))
    {
      type metadata accessor for AttributionTextViewUIKit();
      OUTLINED_FUNCTION_0_282();
      v88 = (*(v87 + 256))();
      v89 = sub_1E4001030(v1, v88, 0);

      (*((*v9 & *v8) + 0x108))(v89);
    }

    else
    {
      OUTLINED_FUNCTION_0_282();
      (*(v90 + 264))(0);
    }

    return v0;
  }

  __break(1u);
  return result;
}

id sub_1E3EF8774()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_customPreviewTarget) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_additionalInfoView) = 0;
  DescriptionBannerViewCell = type metadata accessor for QueryDescriptionBannerViewCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, DescriptionBannerViewCell);
}

id sub_1E3EF882C(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_viewModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_customPreviewTarget] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textBackgroundView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_textView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30QueryDescriptionBannerViewCell_additionalInfoView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for QueryDescriptionBannerViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3EF8904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueryDescriptionBannerViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3EF8A18(uint64_t result)
{
  if (result)
  {
    v1 = *(*result + 672);

    v3 = v1(v2);
    sub_1E3277E60(0xD000000000000011, 0x80000001E426A490, v3, &v5);

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BFC0);
      if (swift_dynamicCast())
      {
        if (*(v4 + 16))
        {
          *&v5 = MEMORY[0x1E69E7CC0];
          sub_1E3EF9048(v4, &v5);

          return v5;
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1E329505C(&v5);
    }

    return 0;
  }

  return result;
}

void sub_1E3EF8B64(uint64_t a1, void *a2)
{
  if (a2 && a1)
  {
    v33 = a2;
    v3 = [v33 descriptionText];
    if (v3)
    {
      v4 = v3;
      v35 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
      v32 = v4;
      NSAttributedString.simpleFontSize()();
      v6 = v5;
      v7 = a1 + 72;
      v8 = *(a1 + 16);
      v34 = *MEMORY[0x1E69DB648];
      if (v8)
      {
        do
        {
          v39 = *(v7 - 16);
          v40 = *(v7 - 24);
          v41 = v8;

          v9 = objc_allocWithZone(MEMORY[0x1E69DB7F0]);

          v10 = [v9 init];
          v11 = *sub_1E3E60700();
          v12 = objc_opt_self();
          v13 = [v12 configurationWithHierarchicalColor_];
          v14 = [v12 configurationWithPointSize:5 weight:v6];
          v38 = [v13 configurationByApplyingConfiguration_];

          objc_opt_self();
          OUTLINED_FUNCTION_11_5();
          v15 = sub_1E4205ED4();
          v16 = [v13 vuiSystemImageNamed:v15 withConfiguration:v38 accessibilityDescription:0];

          v37 = v10;
          [v10 setImage_];

          v36 = [objc_opt_self() attributedStringWithAttachment_];
          OUTLINED_FUNCTION_21_99();
          v31 = sub_1E32822E0();
          v30 = MEMORY[0x1E69E6158];
          OUTLINED_FUNCTION_25();
          v17 = sub_1E42071F4();
          v19 = v18;

          v20 = [objc_opt_self() systemFontOfSize_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29390);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          *(inited + 32) = v34;
          *(inited + 40) = v20;
          type metadata accessor for Key(0);
          sub_1E3280A90(0, &qword_1ECF29388);
          sub_1E3B9794C(&qword_1EE23B100);
          v22 = v34;
          v23 = v20;
          v24 = sub_1E4205CB4();
          OUTLINED_FUNCTION_21_99();
          MEMORY[0x1E69109E0](v17, v19);

          MEMORY[0x1E69109E0](41154, 0xA200000000000000);

          v25 = sub_1E3763D14(v24);

          v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v27 = sub_1E376403C(v42, v43, v25);
          [v35 appendAttributedString_];
          [v35 appendAttributedString_];
          v28._countAndFlagsBits = v17;
          v28._object = v19;
          v29._countAndFlagsBits = v40;
          v29._object = v39;
          NSMutableAttributedString.setAsLink(textToFind:linkURL:)(v28, v29);

          v8 = v41 - 1;
          v7 += 48;
        }

        while (v41 != 1);
      }

      [v33 setDescriptionText_];
      [v33 setSelectable_];
    }

    else
    {
    }
  }
}

uint64_t sub_1E3EF9048(uint64_t result, char **a2)
{
  v2 = *(result + 16);
  for (i = result + 32; v2; --v2)
  {
    v4 = *i;
    if (*(*i + 16))
    {

      v5 = sub_1E327D33C(7107189, 0xE300000000000000);
      if ((v6 & 1) != 0 && *(v4 + 16))
      {
        v7 = (*(v4 + 56) + 16 * v5);
        v9 = *v7;
        v8 = v7[1];

        v10 = sub_1E327D33C(1954047348, 0xE400000000000000);
        if ((v11 & 1) != 0 && *(v4 + 16))
        {
          v12 = (*(v4 + 56) + 16 * v10);
          v13 = v12[1];
          v25 = *v12;

          sub_1E327D33C(0x6C6F626D7973, 0xE600000000000000);
          if (v14)
          {

            sub_1E3F52F38();
            sub_1E32822E0();
            v15 = sub_1E42071F4();
            v22 = v16;
            v23 = v15;

            v17 = *a2;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v17;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v17 = sub_1E3EF9558(0, *(v17 + 2) + 1, 1, v17);
              *a2 = v17;
            }

            v20 = *(v17 + 2);
            v19 = *(v17 + 3);
            if (v20 >= v19 >> 1)
            {
              v17 = sub_1E3EF9558((v19 > 1), v20 + 1, 1, v17);
              *a2 = v17;
            }

            *(v17 + 2) = v20 + 1;
            v21 = &v17[48 * v20];
            *(v21 + 4) = v25;
            *(v21 + 5) = v13;
            *(v21 + 6) = v9;
            *(v21 + 7) = v8;
            *(v21 + 8) = v23;
            *(v21 + 9) = v22;

            goto LABEL_18;
          }
        }
      }
    }

LABEL_18:
    i += 8;
  }

  return result;
}

uint64_t NSAttributedString.simpleFontSize()()
{
  v8 = 0x402E000000000000;
  result = [v0 length];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = &v8;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1E3EF9670;
    *(v4 + 24) = v3;
    aBlock[4] = sub_1E3C2A654;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E3C29F74;
    aBlock[3] = &block_descriptor_132;
    v5 = _Block_copy(aBlock);

    [v0 enumerateAttributesInRange:0 options:v2 usingBlock:{0, v5}];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.setAsLink(textToFind:linkURL:)(Swift::String textToFind, Swift::String linkURL)
{
  v3 = [v2 mutableString];
  v4 = sub_1E4205ED4();
  v5 = [v3 rangeOfString_];
  v7 = v6;

  if (v5 != sub_1E41FDD54())
  {
    v8 = *MEMORY[0x1E69DB670];
    v9 = sub_1E4205ED4();
    [v2 addAttribute:v8 value:v9 range:{v5, v7}];
  }
}

char *sub_1E3EF9558(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BFC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3EF9670(uint64_t a1)
{
  v23 = *(v1 + 16);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v9 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    sub_1E328438C(*(a1 + 56) + 32 * v11, v25);
    *&v26 = v12;
    sub_1E329504C(v25, (&v26 + 8));
    v13 = v12;
LABEL_11:
    v29[0] = v26;
    v29[1] = v27;
    v30 = v28;
    v14 = v26;
    if (!v26)
    {

      return;
    }

    sub_1E329504C((v29 + 8), &v26);
    v15 = sub_1E4205F14();
    v17 = v16;
    if (v15 == sub_1E4205F14() && v17 == v18)
    {

LABEL_19:
      sub_1E328438C(&v26, v25);
      sub_1E3280A90(0, &qword_1ECF29388);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_21;
      }

      [v24 pointSize];
      v22 = v21;

      __swift_destroy_boxed_opaque_existential_1(&v26);
      *v23 = v22;
    }

    else
    {
      v20 = sub_1E42079A4();

      if (v20)
      {
        goto LABEL_19;
      }

LABEL_21:
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v6 = 0;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      goto LABEL_11;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void *sub_1E3EF98C8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    OUTLINED_FUNCTION_25();
    return v1();
  }

  return result;
}

void *sub_1E3EF9950()
{
  v1 = OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteraction;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EF9998(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteraction;
  OUTLINED_FUNCTION_14_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*sub_1E3EF9AB4(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_15_138(v3, OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteractorDelegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3EFD570;
}

id sub_1E3EF9B28()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_queryDescriptionBannerViewModel) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor();
  *(v0 + v1) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  OUTLINED_FUNCTION_24_96(v0 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteractorDelegate);
  v9 = v0;
  v10 = type metadata accessor for BackgroundDescriptionView();
  v2 = OUTLINED_FUNCTION_2_0();
  v8[3] = v10;
  v8[0] = objc_msgSendSuper2(v3, v4, v2);
  objc_allocWithZone(MEMORY[0x1E69DD060]);
  v5 = v8[0];
  v6 = sub_1E3814AF0(v8, sel_handleSelected_);
  [v5 addGestureRecognizer_];

  return v5;
}

void sub_1E3EF9C7C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_queryDescriptionBannerViewModel) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor();
  *(v0 + v1) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  OUTLINED_FUNCTION_24_96(v0 + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteractorDelegate);
  OUTLINED_FUNCTION_12_145();
  __break(1u);
}

id sub_1E3EF9D2C(uint64_t a1)
{
  v3 = sub_1E41FE874();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_21();
  v8 = (*(v7 + 136))();
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  OUTLINED_FUNCTION_21();
  v11 = *(v10 + 168);
  v12 = swift_unknownObjectRetain();
  v11(v12, &off_1F5D8CB18);
  sub_1E41FE864();
  OUTLINED_FUNCTION_21();
  v14 = (*(v13 + 160))();
  v16 = sub_1E3C9C60C(v9, v6, a1, v1, &off_1F5D8CB08, v14, v15);

  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v3);
  return v16;
}

void sub_1E3EFA02C(uint64_t a1, void *a2, void *a3)
{
  sub_1E3C9EA54();
  if (a3)
  {
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v9[4] = sub_1E3EFD364;
    v9[5] = v6;
    OUTLINED_FUNCTION_3_4();
    v9[1] = 1107296256;
    v9[2] = sub_1E378AEA4;
    v9[3] = &block_descriptor_133;
    v7 = _Block_copy(v9);
    v8 = a2;

    [a3 addCompletion_];
    _Block_release(v7);
  }
}

uint64_t sub_1E3EFA2CC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_14_0();
  *(v2 + v4) = a1;
}

uint64_t sub_1E3EFA370()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E3EFA3C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E3EFA42C(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  OUTLINED_FUNCTION_15_138(v3, OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_delegate);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 8);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3EFA4A0;
}

id sub_1E3EFA4A4()
{
  v1 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture];
  }

  else
  {
    v4 = v0;
    v10[3] = type metadata accessor for QueryDescriptionBar();
    v10[0] = v0;
    objc_allocWithZone(MEMORY[0x1E69DD060]);
    v5 = v0;
    v6 = sub_1E3814AF0(v10, sel_singlePressWithGesture_);
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1E3EFA544(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture);
  *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture) = a1;
}

void (*sub_1E3EFA558(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E3EFA4A4();
  return sub_1E3EFA5A0;
}

void sub_1E3EFA5A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture);
  *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture) = v2;
}

uint64_t sub_1E3EFA5B8()
{
  OUTLINED_FUNCTION_21();
  result = (*(v1 + 168))();
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v0, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1E3EFA6C4()
{
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_layout] = 0;
  OUTLINED_FUNCTION_24_96(&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_delegate]);
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar__queryDescriptionBannerViewModel] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView] = 0;
  v11 = v0;
  DescriptionBar = type metadata accessor for QueryDescriptionBar();
  v1 = OUTLINED_FUNCTION_5_8();
  v4 = objc_msgSendSuper2(v2, v3, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E4299720;
  *(v5 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0);
  *(v5 + 40) = sub_1E3280A90(0, &qword_1EE23AF90);
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00);
  sub_1E42062A4();
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10[4] = sub_1E3EFD3FC;
  v10[5] = v7;
  OUTLINED_FUNCTION_3_4();
  v10[1] = 1107296256;
  v10[2] = sub_1E3790FBC;
  v10[3] = &block_descriptor_9_5;
  v8 = _Block_copy(v10);

  [v6 vui:v0 registerForTraitChanges:v8 withHandler:?];
  _Block_release(v8);

  return v6;
}

void sub_1E3EFA8D4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_layout) = 0;
  OUTLINED_FUNCTION_24_96(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_delegate);
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar____lazy_storage___singlePressGesture) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar__queryDescriptionBannerViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView) = 0;
  OUTLINED_FUNCTION_12_145();
  __break(1u);
}

uint64_t sub_1E3EFA99C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar__queryDescriptionBannerViewModel) = a1;

  sub_1E3EFC9EC();
}

uint64_t (*sub_1E3EFA9F8(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar__queryDescriptionBannerViewModel);
  a1[1] = v1;

  return sub_1E3EFAA4C;
}

uint64_t sub_1E3EFAA4C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E3EFA99C(*a1);
  }

  sub_1E3EFA99C(v2);
}

void *sub_1E3EFAAA4()
{
  v1 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EFAAEC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText;
  OUTLINED_FUNCTION_14_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x140);
  v7 = a1;
  v8 = v6();
  if (v8)
  {
    v9 = v8;
    v10 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    [v9 vui:*(v1 + v10) addSubview:v4 oldView:?];
  }

  v11 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12)
  {
    v13 = *((*v5 & *v1) + 0xC0);
    v14 = v12;
    v15 = v13();
    [v14 addGestureRecognizer_];
  }
}

void (*sub_1E3EFAC44())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBannerText;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3EFACC0;
}

void *sub_1E3EFACD8()
{
  v1 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EFAD20(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundView;
  v6 = a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
}

void (*sub_1E3EFADB8())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3EFAE34;
}

void *sub_1E3EFAE4C()
{
  v1 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EFAE94(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView;
  OUTLINED_FUNCTION_14_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x128);
  v6 = a1;
  v7 = v5();
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    [v8 vui:*(v1 + v9) addSubview:v4 oldView:?];
  }

  v10 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11)
  {
    v12 = objc_allocWithZone(MEMORY[0x1E69DC8E0]);
    v13 = v11;
    v14 = [v12 initWithDelegate_];
    [v1 addInteraction_];
  }
}

void (*sub_1E3EFAFDC())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_queryDescriptionBackgroundContentView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E3EFB058;
}

void sub_1E3EFB070(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void sub_1E3EFB0F0(uint64_t a1)
{
  v8 = *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView);
  *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView) = a1;
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 320);
  v5 = v4;
  v6 = v3();
  if (v6)
  {
    v7 = v6;
    [v6 vui:*(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView) addSubview:v8 oldView:?];
  }
}

double sub_1E3EFB1B4(double a1, double a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v7 = (*(v6 + 272))();
  if (!v7)
  {
    return 0.0;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    OUTLINED_FUNCTION_7_1();
    v12 = *(v11 + 144);
    v13 = v8;
    if (!v12() || (OUTLINED_FUNCTION_30(), v15 = (*(v14 + 1736))(), v16 = , v17 = (*(*v15 + 2048))(v16), v19 = v18, , (v19 & 1) != 0))
    {
      v17 = 3;
    }

    [v10 setMaximumNumberOfLines_];
  }

  OUTLINED_FUNCTION_7_1();
  if ((*(v20 + 144))())
  {
    OUTLINED_FUNCTION_30();
    (*(v21 + 1736))();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    v3 = 0;
  }

  v22 = sub_1E3C8B764(v3, a1, a2);

  return v22;
}

id sub_1E3EFB3C4()
{
  result = [objc_opt_self() isSearchEnabled];
  if (result)
  {
    result = [objc_opt_self() isPhone];
    if (result)
    {
      v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x180);

      return v2();
    }
  }

  return result;
}

id sub_1E3EFB460()
{
  result = [objc_opt_self() isSearchEnabled];
  if (result)
  {
    v2 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    (*(v3 + 280))(0);
    (*((*v2 & *v0) + 0x130))(0);
    sub_1E3EFB0F0(0);
    v4 = *((*v2 & *v0) + 0x148);

    return v4(0);
  }

  return result;
}

double sub_1E3EFB57C(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView))
  {
    if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x90))())
    {
      OUTLINED_FUNCTION_30();
      (*(v7 + 1760))();
      v8 = OUTLINED_FUNCTION_4_9();
      (*(*v3 + 152))(v44, v8);
    }

    if (*(v2 + v5))
    {
      OUTLINED_FUNCTION_10_145();
      if ((*(v9 + 144))())
      {
        OUTLINED_FUNCTION_30();
        (*(v10 + 1760))();
        v11 = OUTLINED_FUNCTION_4_9();
        (*(*v3 + 152))(&v45, v11);
      }

      v12 = *(v2 + v5);
      if (v12)
      {
        [v12 sizeThatFits_];
      }
    }
  }

  OUTLINED_FUNCTION_10_145();
  v14 = (*(v13 + 272))();
  v15 = 0.0;
  if (v14)
  {

    OUTLINED_FUNCTION_10_145();
    if ((*(v16 + 392))())
    {
      v43 = a1;
      OUTLINED_FUNCTION_10_145();
      v18 = *(v17 + 144);
      v19 = v18();
      v20 = 0.0;
      if (v19)
      {
        OUTLINED_FUNCTION_30();
        (*(v21 + 1736))();
        v22 = OUTLINED_FUNCTION_4_9();
        (*(*v3 + 152))(v46, v22);
        v15 = *v46;
        v23 = *&v46[1];
        v24 = *&v46[2];
        v25 = *&v46[3];
        v26 = v47;

        if (v47)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v23;
        }
      }

      else
      {
        v26 = 1;
        v27 = 0.0;
        v23 = 0.0;
        v24 = 0.0;
        v25 = 0.0;
      }

      if ((v18)(v19))
      {
        OUTLINED_FUNCTION_30();
        (*(v28 + 1856))(v48);

        if (v49)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = *&v48[1];
        }
      }

      v29 = v27 + v20;
      v30 = 0.0;
      if (v26)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v25;
      }

      if (v18())
      {
        OUTLINED_FUNCTION_30();
        (*(v32 + 1856))(v50);

        if (v51)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = *&v50[3];
        }
      }

      v33.n128_f64[0] = sub_1E3EFB1B4(v43 - v29 - (v31 + v30), 0.0);
      if (*(v2 + v5))
      {
        if ((v26 & 1) == 0)
        {
          v33.n128_f64[0] = sub_1E3952BD8(v15, v23, v24);
        }

        if ((v18)(v33))
        {
          OUTLINED_FUNCTION_30();
          (*(v34 + 1856))(v52);
          v35 = *v52;
          v36 = *&v52[1];
          v37 = *&v52[2];

          if ((v53 & 1) == 0)
          {
            sub_1E3952BD8(v35, v36, v37);
          }
        }
      }

      else if ((v18)(v33.n128_f64[0]))
      {
        OUTLINED_FUNCTION_30();
        (*(v38 + 1856))(v52);

        if ((v53 & 1) == 0)
        {
          v39 = OUTLINED_FUNCTION_6();
          sub_1E3952BD8(v39, v40, v41);
        }
      }

      return v43;
    }
  }

  return v15;
}

void sub_1E3EFBB44()
{
  v1 = v0;
  v96.receiver = v0;
  v96.super_class = type metadata accessor for QueryDescriptionBar();
  v2 = objc_msgSendSuper2(&v96, sel_layoutSubviews);
  v95 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x110))(v2);
  if (v95)
  {
    OUTLINED_FUNCTION_7_0();
    v4 = *(v3 + 144);
    v5 = v4();
    v6 = 0.0;
    if (v5)
    {
      OUTLINED_FUNCTION_30();
      v8 = (*(v7 + 1736))();

      (*(*v8 + 152))(v97, v9);
      v11 = *v97;
      v10 = *&v97[1];
      v12 = *&v97[3];
      v91 = *&v97[2];
      v13 = v98;

      v93 = v10;
      if (v98)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v10;
      }
    }

    else
    {
      v13 = 1;
      v14 = 0.0;
      v11 = 0.0;
      v93 = 0.0;
      v91 = 0.0;
      v12 = 0.0;
    }

    if ((v4)(v5))
    {
      OUTLINED_FUNCTION_30();
      (*(v15 + 1856))(v99);

      if (v100)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = *&v99[1];
      }
    }

    if (v13)
    {
      v12 = 0.0;
    }

    v16 = v4();
    v17 = 0.0;
    if (v16)
    {
      OUTLINED_FUNCTION_30();
      (*(v18 + 1856))(v101);

      v17 = *&v101[3];
      if (v102)
      {
        v17 = 0.0;
      }
    }

    v19 = v14 + v6;
    v20 = v12 + v17;
    v21 = OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView;
    if (*&v0[OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView])
    {
      if (v4())
      {
        OUTLINED_FUNCTION_30();
        v23 = (*(v22 + 1760))();

        (*(*v23 + 152))(v103, v24);
      }

      if (*&v0[v21])
      {
        if (v4())
        {
          OUTLINED_FUNCTION_30();
          v26 = (*(v25 + 1760))();

          (*(*v26 + 152))(&v104, v27);
        }

        v28 = *&v0[v21];
        if (v28)
        {
          v29 = v28;
          [v1 bounds];
          [v29 sizeThatFits_];
        }
      }
    }

    [v1 bounds];
    v32 = CGRectGetWidth(v111) - v19 - v20;
    v33 = sub_1E3EFB1B4(v32, 0.0);
    v92 = v34;
    if (v13)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v11;
    }

    v36 = v93;
    if (v13)
    {
      v36 = 0.0;
    }

    v94 = v36;
    if (v4())
    {
      OUTLINED_FUNCTION_30();
      (*(v37 + 1856))(v105);
    }

    if (!*&v1[v21] && v4())
    {
      OUTLINED_FUNCTION_30();
      (*(v38 + 1856))(v106);
    }

    if (v4())
    {
      OUTLINED_FUNCTION_30();
      (*(v39 + 1856))(&v107);
    }

    if (v4())
    {
      OUTLINED_FUNCTION_30();
      (*(v40 + 1856))(v108);
    }

    if (*&v1[v21] && (v13 & 1) == 0)
    {
      sub_1E3952BD8(v11, v93, v91);
    }

    if (v4())
    {
      OUTLINED_FUNCTION_30();
      (*(v41 + 1856))(&v109);
    }

    OUTLINED_FUNCTION_7_0();
    v42 += 37;
    v43 = *v42;
    v44 = (*v42)();
    if (v44)
    {
      v45 = v44;
      v46 = OUTLINED_FUNCTION_3_213();
      [v47 v48];
    }

    OUTLINED_FUNCTION_7_0();
    v50 = (*(v49 + 320))();
    if (v50)
    {
      v51 = v50;
      v112.origin.x = OUTLINED_FUNCTION_3_213();
      CGRectGetWidth(v112);
      v113.origin.x = OUTLINED_FUNCTION_3_213();
      CGRectGetHeight(v113);
      v52.n128_u64[0] = 0;
      v53.n128_u64[0] = 0;
      nullsub_1(v52, v53);
      [v51 setFrame_];
    }

    [v95 setFrame_];
    v54 = (v43)([v95 frame]);
    if (v54)
    {
      v55 = v54;
      [v54 bounds];
    }

    [v1 vuiIsRTL];
    OUTLINED_FUNCTION_3_213();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v95 setFrame_];
    [v95 frame];
    v56 = (v43)([v95 frame]);
    if (v56)
    {
      v57 = v56;
      [v56 bounds];
    }

    [v1 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v58 = [*&v1[v21] setFrame_];
    if (*&v1[v21])
    {
      v58 = [v1 bringSubviewToFront_];
    }

    v59 = (v43)(v58);
    if (v59)
    {
      v60 = v59;
      sub_1E3280A90(0, &qword_1EE23AE20);
      v61 = *sub_1E3E6011C();
      v62 = *sub_1E3E6029C();
      v63 = sub_1E3E5F2F8(v61, v62);

      [v60 setBackgroundColor_];
    }

    v64 = v43();
    if (v64)
    {
      v65 = v64;
      if (v4())
      {
        OUTLINED_FUNCTION_30();
        (*(v66 + 552))(&v110);
      }

      type metadata accessor for GraphicsUtilities();
      [v65 frame];
      v67 = OUTLINED_FUNCTION_6();
      v73 = sub_1E418AA20(v67, v68, v69, v70, v71, v72);
      v74 = v43();
      if (v74)
      {
        v75 = OUTLINED_FUNCTION_18_117(v74);

        [v75 setShadowPath_];
      }
    }

    v76 = v43();
    if (v76)
    {
      v77 = OUTLINED_FUNCTION_18_117(v76);

      [v77 setShadowOffset_];
    }

    v78 = v43();
    if (v78)
    {
      v79 = OUTLINED_FUNCTION_18_117(v78);

      [v79 setShadowRadius_];
    }

    v80 = v43();
    if (v80)
    {
      v81 = v80;
      v82 = [v80 layer];

      v83 = [objc_opt_self() blackColor];
      v84 = [v83 CGColor];

      [v82 setShadowColor_];
    }

    v85 = v43();
    if (v85)
    {
      v86 = OUTLINED_FUNCTION_18_117(v85);

      LODWORD(v87) = 1039516303;
      [v86 setShadowOpacity_];
    }

    v88 = v1;
    v89 = v43();
    if (v89)
    {
      v90 = OUTLINED_FUNCTION_18_117(v89);

      [v90 setMasksToBounds_];
    }
  }
}

BOOL sub_1E3EFC794()
{
  v0 = sub_1E3EFC7CC();
  if (v0)
  {
  }

  return v0 != 0;
}

__objc2_class **sub_1E3EFC7CC()
{
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 248);
  if (v3())
  {
    OUTLINED_FUNCTION_30();
    (*(v4 + 488))();
    OUTLINED_FUNCTION_4_9();
    if (v1)
    {
      sub_1E373E010(9, v1);
      OUTLINED_FUNCTION_38();

      if (v0)
      {
        goto LABEL_7;
      }
    }
  }

  v5 = v3();
  v0 = v5;
  if (v5)
  {
    v6 = (*(*v5 + 488))(v5);

    if (!v6)
    {
      return 0;
    }

    v0 = sub_1E373E010(23, v6);

    if (v0)
    {
LABEL_7:
      if (*v0 != _TtC8VideosUI13TextViewModel)
      {

        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1E3EFC92C()
{
  OUTLINED_FUNCTION_21();
  if (!(*(v0 + 248))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_30();
  v2 = (*(v1 + 488))();
  if (!v2)
  {

    return 0;
  }

  v3 = sub_1E373E010(90, v2);

  if (!v3)
  {
    return 0;
  }

  return v3;
}

void sub_1E3EFC9EC()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 248);
  if (!v4())
  {
LABEL_36:
    OUTLINED_FUNCTION_3_200();
    return;
  }

  v5 = sub_1E3EFC7CC();
  if (v5)
  {
    v6 = v5;
    type metadata accessor for QueryDescriptionBannerLayout();
    OUTLINED_FUNCTION_38();

    sub_1E3A6DD04(v7);
    OUTLINED_FUNCTION_10_53();
    (*(v8 + 152))();
    OUTLINED_FUNCTION_10_53();
    v82 = *(v9 + 144);
    v10 = v82();
    v83 = v6;
    if (v10)
    {
      v11 = v10;
      v12 = type metadata accessor for BackgroundDescriptionView();
      v13 = objc_allocWithZone(v12);
      v14 = OUTLINED_FUNCTION_5_8();
      (*((*v2 & *v0) + 0x130))([v15 v16]);
      v17 = objc_allocWithZone(v12);
      v18 = OUTLINED_FUNCTION_5_8();
      v21 = (*((*v2 & *v0) + 0x148))([v19 v20]);
      v81 = *((*v2 & *v0) + 0x140);
      v22 = (v81)(v21);
      if (v22)
      {
        v23 = v22;
        v24 = v4();
        (*((*v2 & *v23) + 0x90))(v24);
      }

      OUTLINED_FUNCTION_10_53();
      v25 += 37;
      v26 = *v25;
      v27 = (*v25)();
      if (v27)
      {
        v28 = v27;
        v29 = *(*v11 + 744);

        v31 = v29(v30);

        [v28 setBackgroundColor_];
      }

      v32 = v26();
      if (v32)
      {
        v33 = v32;
        v34 = [v32 layer];

        v35 = *(*v11 + 552);

        v35(&v85, v36);

        v37 = 0.0;
        if ((v86 & 1) == 0)
        {
          v38 = OUTLINED_FUNCTION_6();
          v37 = sub_1E3952BE8(v38, v39, v40, v41);
        }

        [v34 setCornerRadius_];

        v6 = v83;
      }

      v42 = v26();
      if (v42)
      {
        v43 = v42;
        v44 = [v42 layer];

        [v44 setMasksToBounds_];
      }

      v45 = v81();
      if (v45)
      {
        v46 = v45;
        v47 = [v45 layer];

        [v47 setMasksToBounds_];
      }

      v48 = v81();
      if (v48)
      {
        v49 = v48;
        v50 = [v48 layer];

        v51 = *(*v11 + 552);

        v51(&v87, v52);

        v53 = 0.0;
        if ((v88 & 1) == 0)
        {
          v54 = OUTLINED_FUNCTION_6();
          v53 = sub_1E3952BE8(v54, v55, v56, v57);
        }

        [v50 setCornerRadius_];
      }
    }

    sub_1E3EFB0F0(0);
    v58 = sub_1E3EFC92C();
    if (v58)
    {
      v59 = v58;
      type metadata accessor for AttributionTextViewUIKit();
      v60 = *(v1 + OBJC_IVAR____TtC8VideosUI19QueryDescriptionBar_additionalInformationView);
      v61 = v60;
      v62 = sub_1E4001030(v59, v60, 0);

      sub_1E3EFB0F0(v62);
    }

    OUTLINED_FUNCTION_10_53();
    v63 += 34;
    v64 = *v63;
    v65 = (*v63)();
    [v65 removeFromSuperview];

    v66 = v64();
    v67 = v82();
    if (v67)
    {
      v68 = (*(*v67 + 1736))();
    }

    else
    {
      v68 = 0;
    }

    v70 = sub_1E3887F00(v6, v66, v68);

    type metadata accessor for QueryDescriptionBannerViewCell();
    v71 = v4();
    v72 = sub_1E3EF8A18(v71);

    if (v70)
    {
      objc_opt_self();
      v73 = swift_dynamicCastObjCClass();
      if (v73)
      {
        v74 = v70;
      }

      sub_1E3EF8B64(v72, v73);

      objc_opt_self();
      v75 = swift_dynamicCastObjCClass();
      if (v75)
      {
        v76 = v75;
        OUTLINED_FUNCTION_4_0();
        v77 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_1E3EFD4D0;
        aBlock[5] = v77;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1E3889A38;
        aBlock[3] = &block_descriptor_23_3;
        v78 = _Block_copy(aBlock);
        v79 = v70;

        [v76 setSelectionHandler_];
        _Block_release(v78);
      }
    }

    else
    {
      sub_1E3EF8B64(v72, 0);
    }

    OUTLINED_FUNCTION_10_53();
    (*(v80 + 280))(v70);

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_3_200();
}

id sub_1E3EFD284(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E3EFD364()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8VideosUI25BackgroundDescriptionView_contextMenuInteractor);
    sub_1E3C9F738();
  }
}

void sub_1E3EFD3FC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3EFC9EC();
    v2 = [v1 setNeedsLayout];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v2))
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(v1, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3EFD4D0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (sub_1E3EFC7CC())
    {
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_25();
      v2();
    }
  }
}

void sub_1E3EFD580(__int16 *a1, void *a2, uint64_t a3)
{
  v6 = (*a1 + 488);
  v7 = *v6;
  if (!(*v6)())
  {
    OUTLINED_FUNCTION_30_1();
    if (!(*(v8 + 464))())
    {
      return;
    }
  }

  if (a1[49] - 154 > 0xB)
  {
    return;
  }

  if (((1 << (a1[49] + 102)) & 0xA07) != 0)
  {
    OUTLINED_FUNCTION_30_1();
    if (!(*(v15 + 392))())
    {
      return;
    }

    type metadata accessor for UnifiedOverlayLayout();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      goto LABEL_24;
    }

    v17 = v16;
    sub_1E39C4734(a3, __src);
    if (__src[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498);
      if (swift_dynamicCast())
      {
        v19 = *(&__dst[0] + 1);
        v18 = *&__dst[0];
        if (BYTE1(__dst[1]))
        {
          v20 = 256;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20 | LOBYTE(__dst[1]);
LABEL_28:
        type metadata accessor for UnifiedOverlayViewFactory();
        sub_1E3ACF408(a1, a2, v17, v18, v19, v21);
LABEL_103:

        return;
      }
    }

    else
    {
      sub_1E325F748(__src, &qword_1ECF296C0);
    }

    v18 = 0;
    v19 = 0;
    v21 = 512;
    goto LABEL_28;
  }

  if (((1 << (a1[49] + 102)) & 0x78) == 0)
  {
    if (((1 << (a1[49] + 102)) & 0x180) == 0)
    {
      return;
    }

    OUTLINED_FUNCTION_30_1();
    if (!(*(v22 + 392))())
    {
      return;
    }

    type metadata accessor for ChannelOfferOverlayLayout();
    if (swift_dynamicCastClass())
    {
      sub_1E3EFE634(a1, a2);

      return;
    }

LABEL_24:

    return;
  }

  OUTLINED_FUNCTION_30_1();
  if (!(*(v9 + 392))())
  {
    return;
  }

  OUTLINED_FUNCTION_118();
  v10 = type metadata accessor for OverlayLayout();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = v11;
  v238 = v7();
  if (!v238)
  {
    goto LABEL_24;
  }

  if (a2)
  {
    type metadata accessor for OverlayView();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = a2;
    }
  }

  else
  {
    v13 = 0;
  }

  *&__dst[0] = v13;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C020);
  sub_1E4148C68(sub_1E3EFF200, v23, __src);

  v24 = __src[0];
  OUTLINED_FUNCTION_14_151();
  v229 = (*(v25 + 168))();
  LOBYTE(__dst[0]) = 0;
  (*(*a1 + 776))(__src, __dst, &unk_1F5D5E068, &off_1F5D5CAD8);
  if (__src[3])
  {
    if ((swift_dynamicCast() & 1) != 0 && sub_1E3ACAAF4() != 4)
    {
      (*(*v12 + 1768))();
    }
  }

  else
  {
    sub_1E325F748(__src, &unk_1ECF296E0);
  }

  sub_1E3ACC790(a1[49]);
  OUTLINED_FUNCTION_14_151();
  v27 = (*(v26 + 200))();
  (*(*v12 + 176))(&v249, v27);
  v28 = *MEMORY[0x1E69DDCE0];
  v29 = *(MEMORY[0x1E69DDCE0] + 8);
  v30 = *(MEMORY[0x1E69DDCE0] + 16);
  v31 = *(MEMORY[0x1E69DDCE0] + 24);
  v196 = a3;
  v199 = v12;
  OUTLINED_FUNCTION_14_151();
  (*(v32 + 152))();
  v33 = v238 + 64;
  v34 = 1 << *(v238 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v238 + 64);
  v37 = (v34 + 63) >> 6;
  v193 = v229 + 32;

  v215 = 0;
  v218 = 0;
  v203 = 0;
  v38 = 0;
  v212 = 0;
  v222 = 0;
  v226 = 0;
  v232 = 0;
  v235 = v37;
  v39 = 0;
LABEL_38:
  v207 = v38;
  while (1)
  {
    v40 = v39;
    if (!v36)
    {
      break;
    }

LABEL_43:
    v41 = __clz(__rbit64(v36)) | (v39 << 6);
    v42 = *(*(v238 + 48) + 2 * v41);
    v43 = *(*(v238 + 56) + 8 * v41);
    v36 &= v36 - 1;
    v248 = v42;
    v247 = 23;
    sub_1E3742F1C();
    v44 = v43;

    OUTLINED_FUNCTION_18_95();
    v45 = OUTLINED_FUNCTION_6_189();
    OUTLINED_FUNCTION_12_146(v45, v46, v47, v48, v49, v50, v51, v52, v181, *&v184, v187, v190, v193, v196, v199, v203, v207, v212, v215, v218, v222, v226, v229, v232, v235, v238, v241[0], v241[1], v241[2], v241[3], v241[4], v241[5], v241[6], v241[7], v241[8], v241[9], v242, v243, v244, v245, *&__dst[0]);
    v53 = v53 && &v248 == v10;
    if (v53)
    {

LABEL_67:

      v222 = v43;
      v37 = v235;
    }

    else
    {
      v54 = OUTLINED_FUNCTION_18_118();

      if (v54)
      {
        goto LABEL_67;
      }

      v248 = v42;
      OUTLINED_FUNCTION_13_155();
      OUTLINED_FUNCTION_18_95();
      v55 = OUTLINED_FUNCTION_6_189();
      OUTLINED_FUNCTION_12_146(v55, v56, v57, v58, v59, v60, v61, v62, v181, *&v184, v187, v190, v193, v196, v199, v203, v207, v212, v215, v218, v223, v226, v229, v232, v235, v238, v241[0], v241[1], v241[2], v241[3], v241[4], v241[5], v241[6], v241[7], v241[8], v241[9], v242, v243, v244, v245, *&__dst[0]);
      if (v53 && &v248 == v10)
      {

LABEL_69:
        v77 = v219;
        if (!v219)
        {
          v77 = MEMORY[0x1E69E7CC0];
        }

        v218 = v77;
        v78 = *(v77 + 16);
        if (v78 >= *(v229 + 16))
        {
          v79 = 0;
        }

        else
        {
          v79 = *(v193 + 112 * v78);
          v80 = v79;
        }

        v10 = v43;

        v81 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
        memset(__dst, 0, 40);
        v82 = v81;
        v83 = sub_1E393D9C4(v44, v79, __dst, 0);

        sub_1E325F748(__dst, &qword_1ECF296C0);
        objc_opt_self();
        v84 = swift_dynamicCastObjCClass();
        if (v84)
        {
          v85 = v84;
          v190 = v79;

          (*(*v44 + 776))(__dst, v86, &unk_1F5D5D498, &off_1F5D5C838);
          if (*(&__dst[1] + 1))
          {
            v87 = swift_dynamicCast();
            if (v87)
            {
              v88 = v241[0];
            }

            else
            {
              v88 = 0;
            }

            if (v87)
            {
              v89 = v241[1];
            }

            else
            {
              v89 = 0;
            }

            v203 = v88;
            v208 = v89;
          }

          else
          {
            sub_1E325F748(__dst, &unk_1ECF296E0);
            v203 = 0;
            v208 = 0;
          }

          v90 = *(*v199 + 1856);
          v10 = (*v199 + 1856);
          v187 = v83;
          v91 = *v90();
          v92 = (*(v91 + 2288))();
          v181 = v93;
          v184 = v92;

          memset(v253, 0, sizeof(v253));
          v254 = 1;
          v94 = sub_1E397F03C();
          v96 = v95;
          v98 = v97;
          v100 = v99;

          v101 = sub_1E397D420(v85, v203, v208, v253, __src, v184, *&v181, v94, v96, v98, v100);
          v102 = (*(*v44 + 392))(v101);
          v38 = v208;
          if (!v102 || ((*(*v102 + 152))(v251), v103 = v251[0], v104 = v251[1], v105 = v251[2], v106 = v251[3], , (v252 & 1) != 0))
          {
            v103 = v28;
            v104 = v29;
            v105 = v30;
            v106 = v31;
          }

          memcpy(__dst, __src, 0x50uLL);
          *&__dst[5] = v103;
          *(&__dst[5] + 1) = v104;
          *&__dst[6] = v105;
          *(&__dst[6] + 1) = v106;
          sub_1E3EFF4C8(__dst, v241);
          v107 = v218;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v107 = sub_1E3EFF3B0(0, *(v218 + 2) + 1, 1, v218);
          }

          v109 = *(v107 + 2);
          v108 = *(v107 + 3);
          v218 = v107;
          if (v109 >= v108 >> 1)
          {
            v218 = sub_1E3EFF3B0((v108 > 1), v109 + 1, 1, v107);
          }

          memcpy(v241, __src, sizeof(v241));
          v242 = v103;
          v243 = v104;
          v244 = v105;
          v245 = v106;
          sub_1E3EFF524(v241);
          *(v218 + 2) = v109 + 1;
          memcpy(&v218[112 * v109 + 32], __dst, 0x70uLL);
          v37 = v235;
          goto LABEL_38;
        }

        v37 = v235;
      }

      else
      {
        v64 = OUTLINED_FUNCTION_18_118();

        if (v64)
        {
          goto LABEL_69;
        }

        v248 = v42;
        OUTLINED_FUNCTION_13_155();
        OUTLINED_FUNCTION_18_95();
        v65 = OUTLINED_FUNCTION_6_189();
        OUTLINED_FUNCTION_12_146(v65, v66, v67, v68, v69, v70, v71, v72, v181, *&v184, v187, v190, v193, v196, v199, v203, v207, v212, v215, v219, v222, v226, v229, v232, v235, v238, v241[0], v241[1], v241[2], v241[3], v241[4], v241[5], v241[6], v241[7], v241[8], v241[9], v242, v243, v244, v245, *&__dst[0]);
        if (v53 && &v248 == v10)
        {

LABEL_77:

          v232 = v43;
          v37 = v235;
        }

        else
        {
          v74 = OUTLINED_FUNCTION_18_118();

          if (v74)
          {
            goto LABEL_77;
          }

          v248 = v42;
          OUTLINED_FUNCTION_13_155();
          OUTLINED_FUNCTION_18_95();
          OUTLINED_FUNCTION_6_189();
          v75 = *&__dst[0] == v241[0] && *(&__dst[0] + 1) == v241[1];
          v10 = v43;
          if (v75)
          {

LABEL_79:

            v215 = v43;
            v37 = v235;
          }

          else
          {
            v76 = sub_1E42079A4();

            if (v76)
            {
              goto LABEL_79;
            }

            v37 = v235;
            if (sub_1E385050C())
            {

              v226 = v43;
            }

            else if (sub_1E38504FC())
            {

              v212 = v43;
            }

            else
            {
            }
          }
        }
      }
    }
  }

  while (1)
  {
    v39 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v39 >= v37)
    {

      type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_39();
      v110 = MEMORY[0x1E69E7D40];
      v112 = (*((*MEMORY[0x1E69E7D40] & v111) + 0x108))();
      sub_1E3280A90(0, &qword_1EE23AD40);
      OUTLINED_FUNCTION_5_199();
      OUTLINED_FUNCTION_20_109(v222, v113, v114, v115, v116);

      OUTLINED_FUNCTION_19_128(v117, v118, v119, v120, v121, v122, v123, v124, v181, *&v184, v187, v190, v193, v196, v199, v203, v207, v212, v215, v218, v222, v226, v229, v232, v235, v238, v241[0], v241[1], v241[2], v241[3], v241[4], v241[5], v241[6], v241[7], v241[8], v241[9], v242, v243, v244, v245, __dst[0]);
      OUTLINED_FUNCTION_39();
      v125 = OUTLINED_FUNCTION_15_18();
      v126(v125);
      OUTLINED_FUNCTION_39();
      v128 = (*((*v110 & v127) + 0x138))();
      type metadata accessor for StyledProgressBarView();
      OUTLINED_FUNCTION_5_199();
      OUTLINED_FUNCTION_20_109(v233, v129, v130, v131, v132);

      OUTLINED_FUNCTION_19_128(v133, v134, v135, v136, v137, v138, v139, v140, v182, v185, v188, v191, v194, v197, v200, v204, v209, v213, v216, v220, v224, v227, v230, v233, v236, v239, v241[0], v241[1], v241[2], v241[3], v241[4], v241[5], v241[6], v241[7], v241[8], v241[9], v242, v243, v244, v245, __dst[0]);
      OUTLINED_FUNCTION_39();
      v141 = OUTLINED_FUNCTION_15_18();
      v142(v141);
      OUTLINED_FUNCTION_39();
      v144 = (*((*v110 & v143) + 0x120))();
      sub_1E3280A90(0, &unk_1EE23B210);
      OUTLINED_FUNCTION_5_199();
      OUTLINED_FUNCTION_20_109(v228, v145, v146, v147, v148);

      OUTLINED_FUNCTION_19_128(v149, v150, v151, v152, v153, v154, v155, v156, v183, v186, v189, v192, v195, v198, v201, v205, v210, v214, v217, v221, v225, v228, v231, v234, v237, v240, v241[0], v241[1], v241[2], v241[3], v241[4], v241[5], v241[6], v241[7], v241[8], v241[9], v242, v243, v244, v245, __dst[0]);
      OUTLINED_FUNCTION_39();
      v157 = OUTLINED_FUNCTION_15_18();
      v158(v157);
      OUTLINED_FUNCTION_1_251();
      v160 = *(v159 + 240);
      v161 = v160();
      if (v161)
      {
        v162 = v161;
        v163 = v202;
        v164 = v206;
        goto LABEL_101;
      }

      [objc_allocWithZone(VUIBaseView) init];
      OUTLINED_FUNCTION_1_251();
      v173 = (*(v172 + 248))();
      v174 = (v160)(v173);
      v163 = v202;
      v164 = v206;
      if (v174)
      {
        v175 = v174;
        [v174 setVuiUserInteractionEnabled_];
      }

      v176 = v160();
      if (v176)
      {
        v177 = v176;
        v178 = [objc_opt_self() clearColor];
        [v177 setVuiBackgroundColor_];
      }

      v179 = v160();
      if (v179)
      {
        v180 = v179;
        v162 = [v179 vuiLayer];

        if (v162)
        {
          [v162 setMasksToBounds_];
LABEL_101:
        }
      }

      type metadata accessor for OverlayViewGradientFactory();
      OUTLINED_FUNCTION_1_251();
      v166 = (*(v165 + 216))();
      sub_1E38E1628(v163, v166, v164, v211);

      OUTLINED_FUNCTION_1_251();
      v167 = OUTLINED_FUNCTION_15_18();
      v168(v167);
      [v24 setVuiUserInteractionEnabled_];
      OUTLINED_FUNCTION_1_251();
      v170 = *(v169 + 176);

      v171 = OUTLINED_FUNCTION_15_18();
      v170(v171);

      goto LABEL_103;
    }

    v36 = *(v33 + 8 * v39);
    ++v40;
    if (v36)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
}

uint64_t sub_1E3EFE634(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_118();
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(*v2 + 464))(v8);
  if (!v11)
  {
    v15 = sub_1E324FBDC();
    v7[2](v10, v15, v6);

    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v88[0] = v19;
      *v18 = 136315138;
      sub_1E384EE08(v2[49]);
      v22 = sub_1E3270FC8(v20, v21, v88);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1E323F000, v16, v17, "FeaturedLockupOverlayView: Overlay does not have any children for %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E69143B0](v19, -1, -1);
      MEMORY[0x1E69143B0](v18, -1, -1);
    }

    (v7[1])(v10, v6);
    return 0;
  }

  v12 = v11;
  if (a2)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = a2;
    }
  }

  else
  {
    v13 = 0;
  }

  v90 = v13;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C030);
  sub_1E4148C68(sub_1E3EFF240, v24, v88);

  v23 = *&v88[0];
  [*&v88[0] setUsesDefaultOverlayType_];
  v93 = 0;
  v25 = sub_1E3EFF578(v23);
  v26 = sub_1E32AE9B0(v12);
  if (!v26)
  {

    v66 = 0;
    v12 = 0;
    v3 = 0;
    v4 = 0;
    v81 = 0;
    v65 = 0.0;
    goto LABEL_95;
  }

  if (v26 < 1)
  {
    __break(1u);
    goto LABEL_116;
  }

  v27 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v4 = 0;
  v28 = 0;
  v86 = v12 & 0xC000000000000001;
  v87 = v23;
  v29 = v25 & 0xFFFFFFFFFFFFFF8;
  v78 = v25 & 0xFFFFFFFFFFFFFF8;
  if (v25 < 0)
  {
    v29 = v25;
  }

  v75[1] = v29;
  v79 = v25;
  v76 = v25 + 32;
  v77 = v25 & 0xC000000000000001;
  v30 = 1;
  v85 = v26;
  do
  {
    if (v86)
    {
      v31 = MEMORY[0x1E6911E60](v28, v12);
    }

    else
    {
      v31 = *(v12 + 8 * v28 + 32);
    }

    OUTLINED_FUNCTION_9_157();
    v91 = 23;
    sub_1E3742F1C();
    sub_1E4206254();
    OUTLINED_FUNCTION_4_214();
    OUTLINED_FUNCTION_3_214();
    v32 = v32 && v2 == v92;
    if (v32)
    {

LABEL_49:

      v39 = [v87 titleLabel];
      OUTLINED_FUNCTION_118();
      type metadata accessor for UIFactory();
      v40 = sub_1E3280A90(0, &qword_1EE23AE80);
      v41 = OUTLINED_FUNCTION_0_283(v40);

      v42 = sub_1E325F748(v88, &qword_1ECF296C0);
      v43 = (*(*v31 + 392))(v42);
      if (v43)
      {
        v27 = (*(*v43 + 248))(v43);
        v30 = v44;
      }

      else
      {

        v27 = 0;
        v30 = 1;
      }

      v4 = v41;
      goto LABEL_53;
    }

    v84 = v30;
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_21_100();

    if (v27)
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_9_157();
    OUTLINED_FUNCTION_2_214(15);
    OUTLINED_FUNCTION_4_214();
    OUTLINED_FUNCTION_3_214();
    if (v32 && v2 == v92)
    {

LABEL_55:

      v46 = [v87 subtitleLabel];
      OUTLINED_FUNCTION_118();
      v47 = type metadata accessor for UIFactory();
      v48 = sub_1E3280A90(0, &qword_1EE23AE80);
      OUTLINED_FUNCTION_0_283(v48);
      OUTLINED_FUNCTION_17_129();

      sub_1E325F748(v88, &qword_1ECF296C0);
      v83 = v47;
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_21_100();

    if (v27)
    {
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_9_157();
    OUTLINED_FUNCTION_2_214(11);
    OUTLINED_FUNCTION_4_214();
    OUTLINED_FUNCTION_3_214();
    if (v32 && v2 == v92)
    {

LABEL_60:

      v49 = [v87 disclaimerLabel];
      OUTLINED_FUNCTION_118();
      v50 = type metadata accessor for UIFactory();
      v51 = sub_1E3280A90(0, &qword_1EE23AE80);
      OUTLINED_FUNCTION_0_283(v51);
      OUTLINED_FUNCTION_17_129();

      sub_1E325F748(v88, &qword_1ECF296C0);
      v82 = v50;
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_21_100();

    if (v27)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_9_157();
    OUTLINED_FUNCTION_2_214(99);
    OUTLINED_FUNCTION_4_214();
    OUTLINED_FUNCTION_3_214();
    if (v32 && v2 == v92)
    {

LABEL_62:
      v52 = type metadata accessor for UIFactory();

      v53 = [v87 appleTVChannelLogoView];
      v54 = OUTLINED_FUNCTION_118();
      v55 = sub_1E3280A90(v54, &qword_1EE23AE80);
      OUTLINED_FUNCTION_0_283(v55);
      OUTLINED_FUNCTION_17_129();

      sub_1E325F748(v88, &qword_1ECF296C0);
      v80 = v52;
      goto LABEL_56;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_21_100();

    if (v27)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_9_157();
    OUTLINED_FUNCTION_2_214(59);
    OUTLINED_FUNCTION_4_214();
    OUTLINED_FUNCTION_3_214();
    if (v32 && v2 == v92)
    {
      goto LABEL_63;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_21_100();

    if (v27)
    {
      goto LABEL_64;
    }

    OUTLINED_FUNCTION_9_157();
    OUTLINED_FUNCTION_2_214(60);
    OUTLINED_FUNCTION_4_214();
    OUTLINED_FUNCTION_3_214();
    if (v32 && v2 == v92)
    {
LABEL_63:

LABEL_64:
      if (v93)
      {
        v56 = v93;
      }

      else
      {
        v56 = MEMORY[0x1E69E7CC0];
      }

      v93 = v56;
      if (v79)
      {
        if (v56 >> 62)
        {
          v57 = sub_1E4207384();
        }

        else
        {
          v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v79 >> 62)
        {
          result = sub_1E4207384();
        }

        else
        {
          result = *(v78 + 16);
        }

        v30 = v84;
        if (v57 >= result)
        {

          v60 = 0;
        }

        else
        {
          if (v56 >> 62)
          {
            result = sub_1E4207384();
            v59 = result;
          }

          else
          {
            v59 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v77)
          {
            v64 = v79;

            v60 = MEMORY[0x1E6911E60](v59, v64);
          }

          else
          {
            if ((v59 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_118:
              __break(1u);
              return result;
            }

            if (v59 >= *(v78 + 16))
            {
              goto LABEL_118;
            }

            v60 = *(v76 + 8 * v59);
          }
        }
      }

      else
      {
        v60 = v81;
        v30 = v84;
      }

      type metadata accessor for UIFactory();
      v89 = 0;
      memset(v88, 0, sizeof(v88));
      v2 = sub_1E3280A90(0, &qword_1EE23AE80);

      v81 = v60;
      v62 = sub_1E393D92C(v61, v60, v88, 0, v2);

      v63 = sub_1E325F748(v88, &qword_1ECF296C0);
      if (v62)
      {
        MEMORY[0x1E6910BF0](v63);
        v2 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
      }

LABEL_53:
      v45 = v85;
      goto LABEL_57;
    }

    v38 = OUTLINED_FUNCTION_9_6();

    if (v38)
    {
      goto LABEL_64;
    }

LABEL_56:
    v45 = v85;
    v30 = v84;
LABEL_57:
    ++v28;
  }

  while (v45 != v28);

  v65 = *&v27;
  if (v30)
  {
    v65 = 0.0;
  }

  v12 = v82;
  v3 = v83;
  v66 = v80;
  v23 = v87;
LABEL_95:
  v67 = [v23 setMaxTitleWidth_];
  if (v4)
  {
    objc_opt_self();
    v67 = swift_dynamicCastObjCClass();
    v68 = v67;
    if (v67)
    {
      v67 = v4;
    }
  }

  else
  {
    v68 = 0;
  }

  OUTLINED_FUNCTION_2_34(v67, sel_setTitleLabel_);

  if (v3)
  {
    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    v70 = v69;
    if (v69)
    {
      v69 = v3;
    }
  }

  else
  {
    v70 = 0;
  }

  OUTLINED_FUNCTION_2_34(v69, sel_setSubtitleLabel_);

  if (v12)
  {
    objc_opt_self();
    v71 = swift_dynamicCastObjCClass();
    v72 = v71;
    if (v71)
    {
      v71 = v12;
    }
  }

  else
  {
    v72 = 0;
  }

  OUTLINED_FUNCTION_2_34(v71, sel_setDisclaimerLabel_);

  v73 = [v23 setAppleTVChannelLogoView_];
  if (v93 && (v73 = sub_1E3EFF27C(v93)) != 0)
  {
    v7 = v66;
    if (!(v73 >> 62))
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1EE23AE80);
      goto LABEL_111;
    }

LABEL_116:
    sub_1E3280A90(0, &qword_1EE23AE80);
    sub_1E42076C4();
LABEL_111:

    sub_1E3280A90(0, &qword_1EE23AE80);
    v74 = sub_1E42062A4();

    v66 = v7;
  }

  else
  {
    v74 = 0;
  }

  OUTLINED_FUNCTION_2_34(v73, sel_setButtons_);

  return v23;
}

id sub_1E3EFF200@<X0>(void *a1@<X8>)
{
  type metadata accessor for OverlayView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E3EFF240@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VUIFeaturedCellOverlayView) init];
  *a1 = result;
  return result;
}

id sub_1E3EFF27C(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v6;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

char *sub_1E3EFF3B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[112 * v8] <= v12)
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3EFF578(void *a1)
{
  v1 = [a1 buttons];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &qword_1EE23AE80);
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E3EFF5E8()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for TextLayout();
    v5 = sub_1E383BCC0();
    sub_1E41E1A64(&v5, sub_1E3EFF694, v3, &v6);

    v1 = v6;
    *(v2 + 104) = v6;
  }

  return v1;
}

uint64_t sub_1E3EFF694(uint64_t *a1)
{
  v1 = *a1;
  (*(**a1 + 2176))(0, 0);
  v2 = *(*v1 + 1608);
  OUTLINED_FUNCTION_0_284();
  v2(62);
  OUTLINED_FUNCTION_0_284();
  (v2)(12, 0);
  OUTLINED_FUNCTION_0_284();
  (v2)(48, 0);
  v3 = *sub_1E3E5FD88();
  v4 = *sub_1E3E5FDEC();
  sub_1E3755B54();
  v5 = v4;
  OUTLINED_FUNCTION_0_284();
  (v2)(21, 0);

  sub_1E3952C58();
  sub_1E3952C58();
  sub_1E3952C58();
  type metadata accessor for UIEdgeInsets();
  OUTLINED_FUNCTION_0_284();
  (v2)(0, 0);
  return (*(*v1 + 256))(0x7FF0000000000000, 0);
}

uint64_t sub_1E3EFF984()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3EFF9C0();

  return v1;
}

uint64_t sub_1E3EFF9C0()
{
  v1 = (*v0 + 1696);
  v2 = *v1;
  v3 = (*v1)();
  (*(*v3 + 152))(v7);

  v4 = (*(*v0 + 160))(v7);
  v5 = (v2)(v4);
  sub_1E3C37CBC(v5, 9);
}

void *sub_1E3EFFACC()
{
  v1 = OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_headerView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EFFB08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_headerView;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1E3EFFC24()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_headerView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_dataViews) = 0;
  v5 = type metadata accessor for CanonicalFooterSectionView.ItemViewModel();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3EFFCD0(void *a1)
{
  *&v1[OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_headerView] = 0;
  *&v1[OBJC_IVAR____TtCC8VideosUI26CanonicalFooterSectionView13ItemViewModel_dataViews] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CanonicalFooterSectionView.ItemViewModel();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1E3EFFE34(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_3_0();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void *sub_1E3EFFED8()
{
  v1 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3EFFF14(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView;
  OUTLINED_FUNCTION_3_0();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0();
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
}

uint64_t sub_1E3EFFFA0()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView;
  OUTLINED_FUNCTION_4_13();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3F00020()
{
  v1 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3F0005C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView;
  OUTLINED_FUNCTION_3_0();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;
  if (v5)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      OUTLINED_FUNCTION_11_3();
      v9 = v5;
      v10 = sub_1E3F02048(v8);
      swift_endAccess();
    }
  }

  v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x110))();
  v12 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView;
  OUTLINED_FUNCTION_5_0();
  [v11 vui:*(v2 + v12) addSubview:v5 oldView:?];

  v13 = *(v2 + v12);
  if (v13)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      OUTLINED_FUNCTION_11_3();
      v16 = v13;
      sub_1E3F021C8(&v18, v15);
      v17 = v18;
      swift_endAccess();
    }
  }
}

uint64_t sub_1E3F00208()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView;
  OUTLINED_FUNCTION_4_13();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3F00294(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_itemViews;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_itemViews;
  v6 = v1;
  OUTLINED_FUNCTION_5_0();
  v62 = v5;
  v7 = *(v1 + v5);
  v8 = MEMORY[0x1E69E7D40];
  v77 = v6;
  v63 = v4;
  if (!v4)
  {
LABEL_38:
    if (v7)
    {
      v79 = sub_1E32AE9B0(v7);
      v74 = v7 & 0xFFFFFFFFFFFFFF8;
      v76 = v7 & 0xC000000000000001;
      v70 = v7;
      v72 = v7 + 32;

      v36 = 0;
      while (v36 != v79)
      {
        if (v76)
        {
          v37 = MEMORY[0x1E6911E60](v36, v70);
        }

        else
        {
          if (v36 >= *(v74 + 16))
          {
            goto LABEL_74;
          }

          v37 = *(v72 + 8 * v36);
        }

        v38 = v37;
        v24 = __OFADD__(v36++, 1);
        if (v24)
        {
          goto LABEL_73;
        }

        OUTLINED_FUNCTION_11_45();
        v40 = (*(v39 + 96))();
        if (v40)
        {
          v41 = v40;
          OUTLINED_FUNCTION_6_190();
          v43 = (*(v42 + 272))();
          [v43 vui:v41 addSubview:0 oldView:?];
        }

        OUTLINED_FUNCTION_11_45();
        v45 = (*(v44 + 120))();
        if (v45)
        {
          v46 = v45;
          v82 = v36;
          v47 = sub_1E32AE9B0(v45);
          for (i = 0; v47 != i; ++i)
          {
            if ((v46 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x1E6911E60](i, v46);
            }

            else
            {
              if (i >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_70;
              }

              v49 = *(v46 + 8 * i + 32);
            }

            v50 = v49;
            if (__OFADD__(i, 1))
            {
              goto LABEL_69;
            }

            v51 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x110))();
            [v51 vui:v50 addSubview:0 oldView:?];

            objc_opt_self();
            v52 = swift_dynamicCastObjCClass();
            if (v52)
            {
              v53 = v52;
              OUTLINED_FUNCTION_11_3();
              v50 = v50;
              sub_1E3F021C8(&v83, v53);
              v54 = v83;
              swift_endAccess();

              v6 = v77;
            }
          }

          v8 = MEMORY[0x1E69E7D40];
          v36 = v82;
        }
      }
    }

    goto LABEL_62;
  }

  if (v7)
  {

    v9 = sub_1E3F01E94(v4, v7);

    if (v9)
    {
LABEL_62:
      OUTLINED_FUNCTION_6_190();
      v56 = (*(v55 + 224))();
      if (v56)
      {
      }

      else
      {
        OUTLINED_FUNCTION_6_190();
        if ((*(v57 + 128))())
        {
          sub_1E3D22B54();
          v58 = OUTLINED_FUNCTION_4_9();
          v59 = (*(*v8 + 1728))(v58);

          sub_1E3280A90(0, &qword_1EE23AD40);
          v60 = (*(*v59 + 2408))();
          v61 = sub_1E3810954(65, 0xE100000000000000, v60, 0);
          (*((*v8 & *v6) + 0xE8))(v61);
        }
      }

      [v6 vui_setNeedsLayout];

      return;
    }
  }

  v10 = sub_1E32AE9B0(v4);
  v11 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_focusableTextViews;
  v66 = v4 & 0xC000000000000001;
  v67 = v10;
  v64 = v4 + 32;
  v65 = v4 & 0xFFFFFFFFFFFFFF8;
  v69 = 0;
  v71 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_focusableTextViews;
  while (1)
  {
    if (v69 == v67)
    {
      v7 = *(v6 + v62);
      goto LABEL_38;
    }

    if (v66)
    {
      MEMORY[0x1E6911E60](v69, v63);
    }

    else
    {
      if (v69 >= *(v65 + 16))
      {
        goto LABEL_72;
      }

      v12 = *(v64 + 8 * v69);
    }

    if (__OFADD__(v69, 1))
    {
      break;
    }

    ++v69;
    OUTLINED_FUNCTION_11_45();
    v15 = v14;
    v16 = (*(v13 + 96))();
    [v16 removeFromSuperview];

    OUTLINED_FUNCTION_11_45();
    v68 = v15;
    v18 = (*(v17 + 120))();
    if (v18)
    {
      v19 = v18;
      v20 = sub_1E32AE9B0(v18);
      v21 = 0;
      v80 = v19 & 0xFFFFFFFFFFFFFF8;
      v81 = v19 & 0xC000000000000001;
      v78 = v19 + 32;
      v73 = v19;
      v75 = v20;
      while (1)
      {
        if (v21 == v20)
        {

          v8 = MEMORY[0x1E69E7D40];
          goto LABEL_35;
        }

        if (v81)
        {
          v22 = MEMORY[0x1E6911E60](v21, v19);
        }

        else
        {
          if (v21 >= *(v80 + 16))
          {
            goto LABEL_68;
          }

          v22 = *(v78 + 8 * v21);
        }

        v23 = v22;
        v24 = __OFADD__(v21++, 1);
        if (v24)
        {
          break;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          OUTLINED_FUNCTION_11_3();
          v25 = *(v6 + v11);
          if ((v25 & 0xC000000000000001) != 0)
          {
            v26 = v23;

            if (sub_1E42073D4())
            {
              v20 = v75;
              v27 = sub_1E3F02CB0();
            }

            else
            {

              v27 = 0;
            }
          }

          else
          {
            sub_1E3280A90(0, &qword_1EE23B1F8);
            v28 = v23;
            v29 = sub_1E4206F54();
            v30 = ~(-1 << *(v25 + 32));
            while (1)
            {
              v31 = v29 & v30;
              if (((*(v25 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
              {
                v27 = 0;
                v6 = v77;
                v11 = v71;
                v19 = v73;
                goto LABEL_30;
              }

              v32 = *(*(v25 + 48) + 8 * v31);
              v33 = sub_1E4206F64();

              if (v33)
              {
                break;
              }

              v29 = v31 + 1;
            }

            v6 = v77;
            v11 = v71;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v35 = *(v77 + v71);
            v83 = v35;
            v19 = v73;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E3F02950();
              v35 = v83;
            }

            v27 = *(v35[6] + 8 * v31);
            sub_1E3BE5134(v31);
            *(v77 + v71) = v83;
LABEL_30:
            v20 = v75;
          }

          swift_endAccess();
        }

        [v23 removeFromSuperview];
      }

      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      break;
    }

LABEL_35:
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
}

uint64_t sub_1E3F00A84()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_itemViews;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3F00AEC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E3F00294(v4);
  }

  else
  {
    sub_1E3F00294(v3);
  }

  free(v2);
}

void *sub_1E3F00B50()
{
  v1 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3F00B8C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel;
  OUTLINED_FUNCTION_3_0();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel;
  v7 = a1;
  OUTLINED_FUNCTION_5_0();
  [v2 vui:*&v2[v6] addSubview:v5 oldView:?];
  v8 = *&v2[v6];
  if (v8)
  {
    [v8 setHidden_];
  }
}

uint64_t sub_1E3F00C34()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel;
  OUTLINED_FUNCTION_4_13();
  v5 = *(v0 + v4);
  *(v1 + 24) = v5;
  v6 = v5;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3F00CB4(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

id sub_1E3F00D3C()
{
  *&v0[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_sectionLayout] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_itemViews] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel] = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1E3F02E0C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_focusableTextViews] = v1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CanonicalFooterSectionView();
  return objc_msgSendSuper2(&v3, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

void sub_1E3F00E14()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_sectionLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_headerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_footerView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_itemViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_prototypeItemHeaderLabel) = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1E3F02E0C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI26CanonicalFooterSectionView_focusableTextViews) = v1;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3F00EFC()
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);

  return v3(v1);
}

void sub_1E3F00F60(char a1, CGFloat a2)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x80))();
  if (!v4)
  {
    return;
  }

  v5 = v155;
  (*(*v4 + 176))(v155);
  v6 = MEMORY[0x1E69DDCE0];
  if (v156)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 8);
    v8 = *(MEMORY[0x1E69DDCE0] + 16);
    v5 = MEMORY[0x1E69DDCE0];
  }

  else
  {
    v7 = *&v155[1];
    v8 = *&v155[2];
  }

  MaxY = *v5;
  v141 = [v142 vuiIsRTL];
  v10 = sub_1E3952BD8(MaxY, v7, v8);
  OUTLINED_FUNCTION_1_13();
  v12 = (*(v11 + 152))();
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    [v14 sizeThatFits_];
    if (v16 <= 0.0)
    {

      v13 = 0;
    }

    else
    {
      v17 = v15;
      v18 = v16;
      sub_1E3D22AE8();
      OUTLINED_FUNCTION_30();
      (*(v19 + 1704))();
      v20 = OUTLINED_FUNCTION_4_9();
      (*(*v5 + 152))(v157, v20);

      v21 = v157[0];
      if (v158)
      {
        v21 = 0.0;
      }

      [v14 topMarginWithBaselineMargin_];
      v23 = v10 + v22;
      if ((a1 & 1) == 0)
      {
        v24 = MaxY + v22;
        sub_1E3D22AE8();
        OUTLINED_FUNCTION_30();
        (*(v25 + 1704))();
        v26 = OUTLINED_FUNCTION_4_9();
        v27 = (*(*v5 + 504))(v26);

        v28 = 0.0;
        if (v27 == 18)
        {
          v29 = a2;
        }

        else
        {
          v30 = sub_1E3A92050();
          v29 = a2;
          if (v30)
          {
            v28 = (a2 - v17) * 0.5;
            v29 = v17;
          }
        }

        v31 = v28;
        v32 = v24;
        v33 = v18;
        v168 = CGRectIntegral(*(&v29 - 2));
        [v14 setFrame_];
      }

      [v14 frame];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v169.origin.x = v35;
      v169.origin.y = v37;
      v169.size.width = v39;
      v169.size.height = v41;
      MaxY = CGRectGetMaxY(v169);
      v10 = v18 + v23;
    }
  }

  OUTLINED_FUNCTION_1_13();
  v43 = (*(v42 + 200))();
  if (!v43)
  {
LABEL_81:
    OUTLINED_FUNCTION_1_13();
    v120 = (*(v119 + 176))();
    if (!v120)
    {
LABEL_95:

      return;
    }

    v121 = v120;
    [v120 vui:a2 sizeThatFits:0.0];
    if (v122 <= 0.0)
    {
LABEL_94:

      goto LABEL_95;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v123 = v121;
      sub_1E3D22BC0();
      OUTLINED_FUNCTION_2_1();
      v125 = (*(v124 + 1736))();

      (*(*v125 + 152))(v167, v126);

      v127 = OUTLINED_FUNCTION_15_139();
      if (!v129)
      {
        v127 = v128;
      }

      sub_1E3C8B6B4(v13, v127);
    }

    else
    {
      objc_opt_self();
      v130 = swift_dynamicCastObjCClass();
      if (!v130)
      {
        goto LABEL_92;
      }

      v131 = v130;
      v132 = v121;
      sub_1E3D22BC0();
      OUTLINED_FUNCTION_2_1();
      v134 = (*(v133 + 1712))();

      (*(*v134 + 152))(v167, v135);

      v136 = OUTLINED_FUNCTION_15_139();
      if (!v129)
      {
        v136 = v137;
      }

      [v131 topMarginWithBaselineMargin_];
    }

LABEL_92:
    if ((a1 & 1) == 0)
    {
      [v121 setFrame_];
    }

    goto LABEL_94;
  }

  v44 = v43;
  v146 = sub_1E32AE9B0(v43);
  if (!v146)
  {
LABEL_80:

    goto LABEL_81;
  }

  v154 = sub_1E3D22B54();
  v45 = 0;
  v144 = v44 & 0xFFFFFFFFFFFFFF8;
  v145 = v44 & 0xC000000000000001;
  v138 = v44;
  v143 = v44 + 32;
  v46 = *v6;
  v47 = v6[2];
  v139 = v47;
  v140 = *v6;
  while (1)
  {
LABEL_21:
    if (v45 == v146)
    {

      goto LABEL_80;
    }

    if (v145)
    {
      v48 = MEMORY[0x1E6911E60](v45, v138);
    }

    else
    {
      if (v45 >= *(v144 + 16))
      {
        goto LABEL_99;
      }

      v48 = *(v143 + 8 * v45);
    }

    v49 = v48;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    v150 = v45 + 1;
    (*(*v154 + 1728))();
    OUTLINED_FUNCTION_30();
    (*(v50 + 152))(v159);

    v51 = 0.0;
    if (v160)
    {
      v52 = 0.0;
    }

    else
    {
      v52 = v159[0];
    }

    sub_1E3D22AE8();
    OUTLINED_FUNCTION_2_1();
    (*(v53 + 1704))();
    v54 = OUTLINED_FUNCTION_4_9();
    (*(*v44 + 152))(v161, v54);

    v55 = *&v161[2];
    if (v162)
    {
      v55 = 0.0;
    }

    if (v45)
    {
      v56 = v52;
    }

    else
    {
      v56 = v55;
    }

    OUTLINED_FUNCTION_18_119();
    v58 = *(v57 + 96);
    v59 = v58();
    v60 = 0.0;
    if (v59)
    {
      v61 = v59;
      [v59 vui:a2 sizeThatFits:0.0];
      v51 = v62;
      v60 = v63;
    }

    v64 = v58();
    if (v64 && (v65 = v64, objc_opt_self(), v44 = swift_dynamicCastObjCClass(), v65, v44) && (OUTLINED_FUNCTION_1_13(), (v67 = (*(v66 + 224))()) != 0))
    {
      v44 = v67;
      v68 = v67;
      [v68 vui:a2 sizeThatFits:0.0];
      v70 = v69;
      sub_1E3C8B6B4(v13, v56);
      v149 = v71;
      v170.origin.y = MaxY + v71;
      v170.origin.x = 0.0;
      v170.size.width = a2;
      v152 = v70;
      v170.size.height = v70;
      v171 = CGRectIntegral(v170);
      [v68 setFrame_];

      [v68 frame];
      v73 = v72;
      v75 = v74;
      v77 = v76;
      v79 = v78;

      v172.origin.x = v73;
      v172.origin.y = v75;
      v172.size.width = v77;
      v172.size.height = v79;
      MinY = CGRectGetMinY(v172);
      [v68 baselineHeight];
      v82 = v81;

      if (v141)
      {
        v83 = a2 - v51 + 0.0;
      }

      else
      {
        v83 = 0.0;
      }

      if ((a1 & 1) == 0)
      {
        v84 = v58();
        if (v84)
        {
          v85 = v84;
          v173.origin.y = MinY + v82 - v60;
          v173.origin.x = v83;
          v173.size.width = v51;
          v173.size.height = v60;
          v174 = CGRectIntegral(v173);
          [v85 setFrame_];
        }
      }

      v10 = v10 + v149 + v152;
      [v68 frame];
      MaxY = CGRectGetMaxY(v175);
      v47 = v139;
      v46 = v140;
      v86 = v44;
    }

    else
    {
      v87 = v58();
      if (v87)
      {
        v88 = v87;
        objc_opt_self();
        v89 = swift_dynamicCastObjCClass();
        if (v89)
        {
          v86 = v89;
          v44 = v88;
          sub_1E3C8B6B4(v13, v56);
          v91 = v90;
          if ((a1 & 1) == 0)
          {
            v176.origin.y = MaxY + v90;
            v176.origin.x = 0.0;
            v176.size.width = a2;
            v176.size.height = v60;
            v177 = CGRectIntegral(v176);
            [v86 setFrame_];
          }

          v10 = v60 + v10 + v91;
          [v86 frame];
          MaxY = CGRectGetMaxY(v178);
        }

        else
        {

          v86 = v13;
        }
      }

      else
      {
        v86 = v13;
      }
    }

    v153 = v86;
    OUTLINED_FUNCTION_18_119();
    v93 = (*(v92 + 120))();
    if (v93)
    {
      v94 = v93;
      v95 = sub_1E32AE9B0(v93);

      v96 = 0;
LABEL_55:
      for (i = v96; ; ++i)
      {
        if (v95 == i)
        {

          v45 = v150;
          v13 = v153;
          goto LABEL_21;
        }

        if ((v94 & 0xC000000000000001) != 0)
        {
          v98 = MEMORY[0x1E6911E60](i, v94);
        }

        else
        {
          if (i >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_97;
          }

          v98 = *(v94 + 8 * i + 32);
        }

        v44 = v98;
        v96 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        [v98 vui:a2 sizeThatFits:0.0];
        v100 = v99;
        v10 = v10 + v99;
        objc_opt_self();
        v101 = swift_dynamicCastObjCClass();
        if (v101)
        {
          v103 = v101;
          v147 = *(*v154 + 1776);
          v148 = v153;
          v44 = v44;
          v147();
          OUTLINED_FUNCTION_30();
          (*(v104 + 152))(v163);

          v105 = v163[0];
          if (v164)
          {
            v105 = 0.0;
          }

          sub_1E3C8B6B4(v153, v105);
          v107 = v106;

          v108 = MaxY + v107;
          if ((a1 & 1) == 0)
          {
            [v103 setFrame_];
          }

          v10 = v10 + v107;

          MaxY = v100 + v108;
          v153 = v103;
          goto LABEL_55;
        }

        objc_opt_self();
        v102 = swift_dynamicCastObjCClass();
        if (v102)
        {
          v109 = v102;
          v110 = *(*v154 + 1752);
          v44 = v44;
          v110();
          OUTLINED_FUNCTION_30();
          (*(v111 + 152))(v165);
          v112 = *v165;
          v113 = *&v165[2];

          if (v166)
          {
            v112 = v46;
            v113 = v47;
          }

          v114 = v44;
          [v109 topMarginWithBaselineMargin_];
          v116 = MaxY + v115;
          if ((a1 & 1) == 0)
          {
            [v109 setFrame_];
          }

          MaxY = v100 - v113 + v116;
          [v109 topMarginWithBaselineMargin_];
          v118 = v117;

          v10 = v10 + v118;
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_97:
      __break(1u);
      break;
    }

    v45 = v150;
    v13 = v86;
  }

  __break(1u);
LABEL_99:
  __break(1u);
}

id sub_1E3F01DD0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3F01E94(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v18 = 0;
      return v18 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v18 = 1;
      return v18 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for CanonicalFooterSectionView.ItemViewModel();
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v14 = *(a1 + 8 * v11);
      }

      v15 = v14;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v16 = *(a2 + 8 * v11);
      }

      v17 = v16;
      v18 = sub_1E4206F64();

      if (v18)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F02048(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_1E3280A90(0, &qword_1EE23B1F8);
    v8 = sub_1E4206F54();
    v9 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v10 = v8 & v9;
      if (((*(v4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
      {
        break;
      }

      v11 = *(*(v4 + 48) + 8 * v10);
      v12 = sub_1E4206F64();

      if (v12)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = *v2;
        v16 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E3F02950();
          v14 = v16;
        }

        v7 = *(*(v14 + 48) + 8 * v10);
        sub_1E3BE5134(v10);
        *v2 = v16;
        return v7;
      }

      v8 = v10 + 1;
    }

    return 0;
  }

  v5 = a1;
  v6 = sub_1E42073D4();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = sub_1E3F02CB0();

  return v7;
}

uint64_t sub_1E3F021C8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1E4207394();

    if (v9)
    {

      sub_1E3280A90(0, &qword_1EE23B1F8);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = sub_1E4207384();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_1E3F023EC(v7, result + 1);
        if (*(v16 + 24) <= *(v16 + 16))
        {
          sub_1E3F025C8();
        }

        v17 = v8;
        sub_1E3B0CE7C(v17, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v17;
        return 1;
      }
    }
  }

  else
  {
    sub_1E3280A90(0, &qword_1EE23B1F8);
    v11 = sub_1E4206F54();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v3;
        v17 = a2;
        sub_1E3F027EC(v17, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v22;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_1E4206F64();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v19 = *(*(v6 + 48) + 8 * v13);
    *a1 = v19;
    v20 = v19;
    return 0;
  }

  return result;
}

uint64_t sub_1E3F023EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C078);
    v2 = sub_1E4207454();
    v14 = v2;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        return v2;
      }

      sub_1E3280A90(0, &qword_1EE23B1F8);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1E3F025C8();
      }

      v2 = v14;
      result = sub_1E4206F54();
      v4 = v14 + 56;
      v5 = -1 << *(v14 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) == 0)
      {
        break;
      }

      v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v14 + 48) + 8 * v8) = v13;
      ++*(v14 + 16);
    }

    v9 = 0;
    v10 = (63 - v5) >> 6;
    while (++v7 != v10 || (v9 & 1) == 0)
    {
      v11 = v7 == v10;
      if (v7 == v10)
      {
        v7 = 0;
      }

      v9 |= v11;
      v12 = *(v4 + 8 * v7);
      if (v12 != -1)
      {
        v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E3F025C8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C078);
  result = sub_1E4207444();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_1E373CBF0(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_1E4206F54();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E3F027EC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E3F025C8();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1E3F02AA0();
LABEL_8:
      v8 = *v3;
      result = sub_1E4206F54();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1E3280A90(0, &qword_1EE23B1F8);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_1E4206F64();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1E3F02950();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

id sub_1E3F02950()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C078);
  v2 = *v0;
  v3 = sub_1E4207434();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E3F02AA0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C078);
  result = sub_1E4207444();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_1E4206F54();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v23;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E3F02CB0()
{

  v0 = sub_1E4207384();
  v1 = swift_unknownObjectRetain();
  v2 = sub_1E3F023EC(v1, v0);
  v11 = v2;

  v3 = sub_1E4206F54();
  v4 = ~(-1 << *(v2 + 32));
  while (1)
  {
    v5 = v3 & v4;
    if (((*(v2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v3 & v4)) & 1) == 0)
    {
      break;
    }

    sub_1E3280A90(0, &qword_1EE23B1F8);
    v6 = *(*(v2 + 48) + 8 * v5);
    v7 = sub_1E4206F64();

    if (v7)
    {

      v8 = *(*(v2 + 48) + 8 * v5);
      sub_1E3BE5134(v5);
      if (sub_1E4206F64())
      {
        *v10 = v11;
        return v8;
      }

      __break(1u);
      break;
    }

    v3 = v5 + 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3F02E0C(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C078);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1E32AE9B0(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_1E34AF4E4(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x1E6911E60](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_1E4206F54();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1E3280A90(0, &qword_1EE23B1F8);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_1E4206F64();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_1E3F03014()
{
  type metadata accessor for SportsFavoritesPresenter();

  return sub_1E41E9990();
}

uint64_t sub_1E3F0304C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  sub_1E380E99C();
  type metadata accessor for SportsFavoritesPresenter();
  OUTLINED_FUNCTION_0_285();
  sub_1E3F0659C(v9, v10);
  sub_1E4200BC4();
  type metadata accessor for Router();
  OUTLINED_FUNCTION_1_252();
  sub_1E3F0659C(v11, v12);
  v13 = sub_1E4201754();
  v15 = v14;
  result = sub_1E42010C4();
  *a4 = sub_1E3F0336C;
  *(a4 + 8) = v8;
  *(a4 + 16) = v13;
  *(a4 + 24) = v15;
  *(a4 + 32) = result;
  *(a4 + 40) = v17;
  *(a4 + 48) = 0;
  return result;
}

void sub_1E3F03188()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C160);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - v14;
  sub_1E4200E64();
  if (v17 == 0.0 && v16 == 0.0)
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

  else
  {
    v23 = sub_1E4202704();
    v25[1] = v25;
    MEMORY[0x1EEE9AC00](v23);
    v25[-4] = v5;
    v25[-3] = v3;
    LOBYTE(v25[-2]) = v1 & 1;
    v25[-1] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C168);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v24, &qword_1ECF3C168);
    sub_1E4200AD4();
    (*(v12 + 32))(v9, v15, v10);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3F03378@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C180);
  OUTLINED_FUNCTION_0_10();
  v50 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v49 = v9;
  type metadata accessor for SportsFavoritesPresenter();
  OUTLINED_FUNCTION_0_285();
  sub_1E3F0659C(v10, v11);
  OUTLINED_FUNCTION_123_1();
  v12 = *sub_1E4200BC4();
  v13 = (*(v12 + 256))();

  v51 = a3;
  if (v13)
  {
    v14 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v15 = *(v13 + v14);
  }

  else
  {
    v15 = 0;
  }

  sub_1E4200E64();
  v17 = v16;
  sub_1E4200E44();
  v19 = v17 + v18;
  sub_1E4200E44();
  v21 = v19 + v20;
  if (!v15 || (v22 = *(*v15 + 392), v23 = , v24 = v22(v23), , !v24) || (OUTLINED_FUNCTION_8(), v26 = (*(v25 + 984))(), v28 = v27, , (v28 & 1) != 0) || v26 == 21)
  {
    type metadata accessor for LayoutGrid();
    sub_1E3A258E4(v21);
  }

  else
  {
    v29 = *MEMORY[0x1E69DDCE0];
    v30 = *(MEMORY[0x1E69DDCE0] + 8);
    v31 = *(MEMORY[0x1E69DDCE0] + 16);
    v32 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  *&v33 = v21 - sub_1E3952BE0(v29, v30, v31, v32);
  v34 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23_91();
  sub_1E3EB9C0C(v33, 0, 0, 0, 0, 1, v34 & 1, 2, v55, 0, 1, 0, 1, 0, 2, v46, SHIBYTE(v46));
  v35 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_23_91();
  sub_1E3EB9DAC(v55, 0, 0, 1, v33, 0, 0, 0, v56, 1, 0, 0, 256, 3, 0, v35 & 1, v47, v48);

  memcpy(v54, v56, 0xC3uLL);
  OUTLINED_FUNCTION_123_1();
  v36 = sub_1E4200BC4();
  v37 = (*(*v36 + 208))();

  if (*(v37 + 16))
  {
    v56[0] = v37;
    swift_getKeyPath();
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    *(v38 + 24) = a2;
    *(v38 + 32) = v51 & 1;
    memcpy((v38 + 40), v54, 0xC3uLL);
    OUTLINED_FUNCTION_123_1();
    sub_1E380E99C();
    v39 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameV2(v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C190);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v40, &qword_1ECF3C188);
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v41, &qword_1ECF3C190);
    sub_1E4203B34();
    v43 = v52;
    v42 = a4;
    (*(v50 + 32))(a4, v49, v52);
    v44 = 0;
  }

  else
  {
    sub_1E37E6F2C(v54);

    v44 = 1;
    v43 = v52;
    v42 = a4;
  }

  return __swift_storeEnumTagSinglePayload(v42, v44, 1, v43);
}

uint64_t sub_1E3F038A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a4;
  v56 = a3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1A8);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v61 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17_3(&v53 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CBA0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v60 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v53 - v20;
  v22 = *(a1 + 24);
  if (*(a5 + 136))
  {
    v23 = 0.0;
  }

  else
  {
    v23 = *(a5 + 120);
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v23);
  v28 = j_nullsub_1(v24, v25, v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  *a6 = sub_1E4201D44();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v35 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1B0) + 44);
  OUTLINED_FUNCTION_25();
  sub_1E39E19A0(v36, v37, v38);
  v39 = sub_1E4202734();
  v40 = &v21[*(v17 + 44)];
  v54 = v21;
  *v40 = v39;
  *(v40 + 1) = v28;
  *(v40 + 2) = v30;
  *(v40 + 3) = v32;
  *(v40 + 4) = v34;
  v40[40] = 0;
  v63 = v22;
  KeyPath = swift_getKeyPath();
  v41 = swift_allocObject();
  memcpy((v41 + 16), a5, 0xC3uLL);
  *(v41 + 216) = a2;
  *(v41 + 224) = v56;
  *(v41 + 232) = v57 & 1;
  OUTLINED_FUNCTION_2_4();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1E3F06D7C;
  *(v42 + 24) = v41;

  sub_1E375C1CC(a5, v62);
  sub_1E380E99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1C0);
  OUTLINED_FUNCTION_14_11();
  sub_1E32752B0(v43, &qword_1ECF3C1B8);
  sub_1E3F06DC0();
  v44 = v59;
  sub_1E4203B34();
  v45 = v60;
  sub_1E3743538(v21, v60, &qword_1ECF2CBA0);
  v46 = *(v11 + 16);
  v47 = v61;
  v48 = v58;
  v46(v61, v44, v58);
  sub_1E3743538(v45, v35, &qword_1ECF2CBA0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1E0);
  v46(v35 + *(v49 + 48), v47, v48);
  v50 = *(v11 + 8);
  v51 = OUTLINED_FUNCTION_123_1();
  v50(v51);
  sub_1E325F6F0(v54, &qword_1ECF2CBA0);
  (v50)(v47, v48);
  return sub_1E325F6F0(v45, &qword_1ECF2CBA0);
}

void sub_1E3F03D18()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  if (!(*(*v1 + 552))(v6))
  {
    v26 = 0u;
    v27 = 0u;
    goto LABEL_10;
  }

  v28[3] = &type metadata for ViewModelKeys.Sports;
  v28[4] = &off_1F5D7BC68;
  LOBYTE(v28[0]) = 3;
  sub_1E3F9F164(v28);

  __swift_destroy_boxed_opaque_existential_1(v28);
  if (!*(&v27 + 1))
  {
LABEL_10:
    sub_1E325F6F0(&v26, &unk_1ECF296E0);
    v8 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  v7 = swift_dynamicCast();
  if (v7)
  {
    v8 = v28[0];
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v28[1];
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  OUTLINED_FUNCTION_25();
  v15 = sub_1E40EA03C(v10, v11, v12, v13, v14);
  v16 = (*(*v1 + 392))(v15);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_138_0();
  v18 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_138_0();
  v19 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_138_0();
  v20 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v16, v18 & 1, v19 & 1, 1, v20 & 1, v4, OpaqueTypeConformance2);

  v21 = OUTLINED_FUNCTION_123_1();
  v22(v21);
  type metadata accessor for SportsFavoritesPresenter();
  OUTLINED_FUNCTION_0_285();
  sub_1E3F0659C(v23, v24);
  sub_1E4200BC4();
  sub_1E3F04018(v8, v9, v28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1C0);
  memcpy((v3 + *(v25 + 36)), v28, 0x60uLL);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3F04018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  LOBYTE(__src[0]) = 0;
  sub_1E42038E4();
  type metadata accessor for SportsFavoritesPresenter();
  OUTLINED_FUNCTION_0_285();
  sub_1E3F0659C(v6, v7);

  OUTLINED_FUNCTION_21_1();
  v30 = sub_1E42010C4();
  v9 = v8;
  v10 = objc_opt_self();
  result = [v10 sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  v25 = v33;
  v26 = v34;
  v27 = a1;
  v28 = a2;
  __dst = a3;
  v13 = sub_1E3741090(0xD000000000000015, 0x80000001E427DA90, result);
  v15 = v14;

  result = [v10 sharedInstance];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = result;
  v17 = sub_1E3741090(0x4C45434E4143, 0xE600000000000000, result);
  v19 = v18;

  result = [v10 sharedInstance];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = sub_1E38469F4(0xD00000000000001CLL, 0x80000001E427DAB0, result);

  if (v21)
  {
    v22 = sub_1E4205F14();
    v24 = v23;
  }

  else
  {

    v22 = 0;
    v24 = 0;
  }

  __src[0] = v30;
  __src[1] = v9;
  LOBYTE(__src[2]) = v33;
  *(&__src[2] + 1) = v46[0];
  HIDWORD(__src[2]) = *(v46 + 3);
  __src[3] = v34;
  __src[4] = v27;
  __src[5] = v28;
  __src[6] = v13;
  __src[7] = v15;
  __src[8] = v17;
  __src[9] = v19;
  __src[10] = v22;
  __src[11] = v24;
  v33 = v30;
  v34 = v9;
  v35 = v25;
  *&v36[3] = *(v46 + 3);
  *v36 = v46[0];
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v13;
  v41 = v15;
  v42 = v17;
  v43 = v19;
  v44 = v22;
  v45 = v24;
  sub_1E3F05DB4(__src, v31);
  sub_1E3F05DEC(&v33);
  return memcpy(__dst, __src, 0x60uLL);
}

uint64_t sub_1E3F04294(uint64_t a1)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 16);
    v5 = v3;
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = sub_1E4050F14(v6, v4, v5);
  v9 = v8;
  v11 = v10;
  sub_1E3CFEA54();
  v12 = swift_allocObject();
  memcpy((v12 + 16), v1, 0x60uLL);

  sub_1E3F05DB4(v1, &v14);
  sub_1E3D00E1C(v7, v9, v11, sub_1E3F05E1C, v12);
}

void sub_1E3F0439C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v129 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C088);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v105 - v7;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C090);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v10);
  v118 = sub_1E4200AF4();
  OUTLINED_FUNCTION_0_10();
  v117 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17_3(v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8);
  OUTLINED_FUNCTION_0_10();
  v120 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C098);
  OUTLINED_FUNCTION_0_10();
  v122 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v138[0] = *v0;
  v25 = *(v0 + 32);
  v26 = *(v1 + 40);
  v27 = *(**(&v138[0] + 1) + 336);

  v28 = v27(v25, v26);
  if (v28)
  {
    v29 = v28;
    v115 = v22;
    v30 = v28;
    v31 = (*(*v28 + 552))();
    v114 = v5;
    v113 = v8;
    if (v31)
    {
      v30 = v31;
      v134 = &type metadata for ViewModelKeys.Sports;
      v135 = &off_1F5D7BC68;
      LOBYTE(v131) = 4;
      sub_1E3F9F164(&v131);

      __swift_destroy_boxed_opaque_existential_1(&v131);
      if (*(&v137 + 1))
      {
        v32 = MEMORY[0x1E69E6158];
        if (swift_dynamicCast())
        {
          v33 = v132;
          if (*(v1 + 56))
          {
            v34 = *(v1 + 72);
            if (v34)
            {
              v35 = *(v1 + 88);
              if (v35)
              {
                v107 = v3;
                v36 = v131;
                v111 = *(v1 + 48);
                v105[1] = v34;
                v110 = *(v1 + 64);
                v109 = *(v1 + 80);
                v108 = v35;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
                v37 = swift_allocObject();
                *(v37 + 16) = xmmword_1E4297BE0;
                *(v37 + 56) = v32;
                *(v37 + 64) = sub_1E3283528();
                *(v37 + 32) = v36;
                *(v37 + 40) = v33;
                v106 = sub_1E4205F44();
                v111 = v38;
                v39 = v116;
                sub_1E4200AE4();
                OUTLINED_FUNCTION_3_139();
                v40 = swift_allocObject();
                OUTLINED_FUNCTION_32_76(v40);
                *(v37 + 112) = v29;
                OUTLINED_FUNCTION_2_4();
                v41 = swift_allocObject();
                *(v41 + 16) = sub_1E3F062E8;
                *(v41 + 24) = v37;
                sub_1E3F05DB4(v1, &v131);

                v42 = v119;
                v43 = v118;
                sub_1E4203B64();

                OUTLINED_FUNCTION_15_5();
                v44(v39, v43);
                sub_1E4200BA4();
                v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0B8);
                OUTLINED_FUNCTION_1_11();
                v46 = sub_1E32752B0(v45, &qword_1ECF3C0B8);
                v47 = OUTLINED_FUNCTION_13_156(&qword_1EE289DB0, &qword_1ECF2D3E8);
                v48 = v121;
                v49 = v47;
                sub_1E4203204();
                OUTLINED_FUNCTION_15_5();
                v50(v42, v48);
                *&v136 = v106;
                *(&v136 + 1) = v111;
                v130 = *(v1 + 16);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
                v51 = sub_1E4203914();
                v120 = v105;
                v118 = v131;
                v117 = v132;
                LODWORD(v119) = v133;
                MEMORY[0x1EEE9AC00](v51);
                v52 = v108;
                v105[-6] = v109;
                v105[-5] = v52;
                v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32160);
                v131 = v116;
                v132 = v48;
                v133 = v46;
                v134 = v49;
                v54 = OUTLINED_FUNCTION_10_146();
                v121 = v54;
                v55 = sub_1E32822E0();
                v56 = sub_1E32752B0(&qword_1ECF32168, &qword_1ECF32160);
                v103 = v55;
                v104 = v56;
                v101 = v53;
                v102 = v54;
                v57 = v112;
                v58 = v124;
                v59 = v128;
                sub_1E4203454();

                OUTLINED_FUNCTION_15_5();
                v60(v59, v58);

                type metadata accessor for Router();
                OUTLINED_FUNCTION_1_252();
                sub_1E3F0659C(v61, v62);
                v63 = sub_1E4201754();
                v65 = v64;
                type metadata accessor for SportsFavoritesPresenter();
                OUTLINED_FUNCTION_0_285();
                sub_1E3F0659C(v66, v67);
                v68 = sub_1E42010C4();
                v69 = v57 + *(v123 + 36);
                *v69 = v63;
                *(v69 + 8) = v65;
                *(v69 + 16) = v68;
                *(v69 + 24) = v70;
                *(v69 + 32) = 1;
                sub_1E3743538(v57, v127, &qword_1ECF3C0A0);
                swift_storeEnumTagMultiPayload();
                sub_1E3F06090();
                v71 = v125;
                sub_1E4201F44();
                OUTLINED_FUNCTION_21_1();
                sub_1E325F6F0(v72, v73);
                v74 = v8;
LABEL_16:
                sub_1E3743538(v71, v74, &qword_1ECF3C0A8);
                swift_storeEnumTagMultiPayload();
                v97 = OUTLINED_FUNCTION_75();
                __swift_instantiateConcreteTypeFromMangledNameV2(v97);
                sub_1E3F05F34();
                OUTLINED_FUNCTION_1_11();
                sub_1E32752B0(v98, &qword_1ECF3C0B8);
                sub_1E4201F44();

                OUTLINED_FUNCTION_21_1();
                sub_1E325F6F0(v99, v100);
                goto LABEL_17;
              }
            }
          }

          sub_1E325F6F0(v138, &qword_1ECF3C0B0);

LABEL_15:
          v82 = v116;
          sub_1E4200AE4();
          OUTLINED_FUNCTION_3_139();
          v83 = swift_allocObject();
          OUTLINED_FUNCTION_32_76(v83);
          *(v30 + 112) = v29;
          OUTLINED_FUNCTION_2_4();
          v84 = swift_allocObject();
          *(v84 + 16) = sub_1E3F06EF4;
          *(v84 + 24) = v30;
          sub_1E3F05DB4(v1, &v131);

          v85 = v119;
          v86 = v118;
          sub_1E4203B64();

          OUTLINED_FUNCTION_15_5();
          v87(v82, v86);
          sub_1E4200BA4();
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0B8);
          OUTLINED_FUNCTION_1_11();
          v90 = sub_1E32752B0(v89, &qword_1ECF3C0B8);
          v91 = OUTLINED_FUNCTION_13_156(&qword_1EE289DB0, &qword_1ECF2D3E8);
          v92 = v128;
          v93 = v121;
          sub_1E4203204();
          OUTLINED_FUNCTION_15_5();
          v94(v85, v93);
          v95 = v122;
          v96 = v124;
          (*(v122 + 16))(v127, v92, v124);
          swift_storeEnumTagMultiPayload();
          sub_1E3F06090();
          v131 = v88;
          v132 = v93;
          v133 = v90;
          v134 = v91;
          OUTLINED_FUNCTION_10_146();
          v71 = v125;
          sub_1E4201F44();
          (*(v95 + 8))(v92, v96);
          v74 = v113;
          goto LABEL_16;
        }

        v80 = &qword_1ECF3C0B0;
        v81 = v138;
LABEL_14:
        sub_1E325F6F0(v81, v80);
        goto LABEL_15;
      }

      sub_1E325F6F0(v138, &qword_1ECF3C0B0);
    }

    else
    {
      sub_1E325F6F0(v138, &qword_1ECF3C0B0);
      v136 = 0u;
      v137 = 0u;
    }

    v80 = &unk_1ECF296E0;
    v81 = &v136;
    goto LABEL_14;
  }

  sub_1E325F6F0(v138, &qword_1ECF3C0B0);
  v75 = OUTLINED_FUNCTION_32_0();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(v75);
  OUTLINED_FUNCTION_2();
  (*(v77 + 16))(v8, v3, v76);
  swift_storeEnumTagMultiPayload();
  sub_1E3F05F34();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_21_1();
  sub_1E32752B0(v78, v79);
  sub_1E4201F44();
LABEL_17:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F05118()
{
  OUTLINED_FUNCTION_31_1();
  v37 = v0;
  v38 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v39 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  v36 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v36 - v26;
  v40[12] = v9;
  v40[13] = v7;
  OUTLINED_FUNCTION_3_139();
  v28 = swift_allocObject();
  memcpy((v28 + 16), v5, 0x60uLL);
  *(v28 + 112) = v3;

  sub_1E3F05DB4(v5, v40);
  sub_1E32822E0();

  sub_1E4203994();
  v40[0] = v37;
  v40[1] = v38;

  sub_1E4200A14();
  v29 = sub_1E4200A34();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v29);
  sub_1E4203974();
  v30 = *(v16 + 16);
  v30(v21, v27, v14);
  v31 = v36;
  v30(v36, v24, v14);
  v32 = v39;
  v30(v39, v21, v14);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32178);
  v30(&v32[*(v33 + 48)], v31, v14);
  v34 = *(v16 + 8);
  v34(v24, v14);
  v35 = OUTLINED_FUNCTION_138_0();
  (v34)(v35);
  v34(v31, v14);
  v34(v21, v14);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3F0548C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v31[1] = v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0E0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v31 - v15;
  if (v1[2])
  {
    v39 = v1[1];
    OUTLINED_FUNCTION_8();
    v37 = (*(v17 + 136))() & 1;
    v38 = *v1;
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_24_97(v18);
    sub_1E3743538(&v38, &v33, &qword_1ECF38700);
    sub_1E3743538(&v39, &v33, &qword_1ECF3C0B0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0F8);
    OUTLINED_FUNCTION_1_11();
    v21 = sub_1E32752B0(v20, &qword_1ECF3C0F8);
    v22 = MEMORY[0x1E69E6370];
    sub_1E4203524();

    v23 = v32;
    (*(v6 + 16))(v12, v9, v32);
    swift_storeEnumTagMultiPayload();
    sub_1E3F064B4();
    v33 = v19;
    v34 = v22;
    v35 = v21;
    v36 = MEMORY[0x1E69E6388];
    OUTLINED_FUNCTION_9_158();
    OUTLINED_FUNCTION_75();
    sub_1E4201F44();
    (*(v6 + 8))(v9, v23);
  }

  else
  {
    v24 = *v1;
    v38 = v1[1];
    v39 = v24;
    v25 = swift_allocObject();
    OUTLINED_FUNCTION_24_97(v25);
    v26 = &v16[*(v13 + 36)];
    sub_1E4200FC4();
    sub_1E3743538(&v39, &v33, &qword_1ECF38700);
    sub_1E3743538(&v38, &v33, &qword_1ECF3C0B0);
    sub_1E4206444();
    *v26 = &unk_1E42DCA10;
    *(v26 + 1) = v25;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C0F8);
    OUTLINED_FUNCTION_2();
    (*(v28 + 16))(v16, v3, v27);
    sub_1E3743538(v16, v12, &qword_1ECF3C0F0);
    swift_storeEnumTagMultiPayload();
    sub_1E3F064B4();
    OUTLINED_FUNCTION_1_11();
    v30 = sub_1E32752B0(v29, &qword_1ECF3C0F8);
    v33 = v27;
    v34 = MEMORY[0x1E69E6370];
    v35 = v30;
    v36 = MEMORY[0x1E69E6388];
    OUTLINED_FUNCTION_9_158();
    OUTLINED_FUNCTION_75();
    sub_1E4201F44();
    sub_1E325F6F0(v16, &qword_1ECF3C0F0);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F058E4()
{
  OUTLINED_FUNCTION_24();
  v0[8] = v1;
  sub_1E4206434();
  v0[9] = sub_1E4206424();
  v3 = sub_1E42063B4();
  v0[10] = v3;
  v0[11] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3F05978, v3, v2);
}

uint64_t sub_1E3F05978()
{
  v1 = sub_1E41E8DAC();
  v0[12] = v1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*v1)
  {

    OUTLINED_FUNCTION_54();

    return v2();
  }

  else
  {
    v0[13] = *(v0[8] + 24);
    OUTLINED_FUNCTION_8();
    v6 = (*(v4 + 392) + **(v4 + 392));
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_1E3F05AEC;

    return v6();
  }
}

uint64_t sub_1E3F05AEC(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 80);
    v6 = *(v4 + 88);
    v7 = sub_1E3F05D58;
  }

  else
  {
    *(v4 + 120) = a1 & 1;
    v5 = *(v4 + 80);
    v6 = *(v4 + 88);
    v7 = sub_1E3F05C1C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E3F05C1C()
{
  v1 = *(v0 + 120);

  if (v1)
  {
LABEL_4:
    OUTLINED_FUNCTION_54();

    return v8();
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  swift_beginAccess();
  *v2 = 1;
  if (*v3)
  {
    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 400);
    v7 = v6;
    v5();

    goto LABEL_4;
  }

  type metadata accessor for Router();
  OUTLINED_FUNCTION_1_252();
  sub_1E3F0659C(v10, v11);

  return sub_1E4201744();
}

uint64_t sub_1E3F05D58()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3F05E1C(void *a1)
{
  if (a1 && (v1 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480), (swift_dynamicCast() & 1) != 0) && sub_1E374E8E4(v7, 1))
  {
    OUTLINED_FUNCTION_8();
    return (*(v2 + 144))(1);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v4 + 344))();
    type metadata accessor for SportsFavoritesPresenter();
    OUTLINED_FUNCTION_0_285();
    sub_1E3F0659C(v5, v6);
    sub_1E4200514();
    sub_1E4200594();
  }
}

unint64_t sub_1E3F05F34()
{
  result = qword_1ECF3C0C0;
  if (!qword_1ECF3C0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C0A8);
    sub_1E3F06090();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C0B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D3E8);
    sub_1E32752B0(&qword_1ECF3C0D0, &qword_1ECF3C0B8);
    sub_1E32752B0(&qword_1EE289DB0, &qword_1ECF2D3E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C0C0);
  }

  return result;
}

unint64_t sub_1E3F06090()
{
  result = qword_1ECF3C0C8;
  if (!qword_1ECF3C0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C0A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C098);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C0B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D3E8);
    sub_1E32752B0(&qword_1ECF3C0D0, &qword_1ECF3C0B8);
    sub_1E32752B0(&qword_1EE289DB0, &qword_1ECF2D3E8);
    swift_getOpaqueTypeConformance2();
    sub_1E32822E0();
    sub_1E32752B0(&qword_1ECF32168, &qword_1ECF32160);
    swift_getOpaqueTypeConformance2();
    sub_1E3F06294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C0C8);
  }

  return result;
}

unint64_t sub_1E3F06294()
{
  result = qword_1ECF3C0D8;
  if (!qword_1ECF3C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C0D8);
  }

  return result;
}

uint64_t sub_1E3F062E8()
{
  v1 = *(v0 + 112);
  sub_1E3CFEA54();
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 376);

  v4 = OUTLINED_FUNCTION_75();
  v5 = v3(v4);

  if ((v5 & 1) == 0)
  {
    return sub_1E3F04294(v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  return sub_1E4203904();
}

void sub_1E3F063D0(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    if (*(v2 + 16))
    {
      OUTLINED_FUNCTION_8();
      v4 = *(v3 + 400);
      v8 = v5;
      v4();
    }

    else
    {
      type metadata accessor for Router();
      OUTLINED_FUNCTION_1_252();
      sub_1E3F0659C(v6, v7);
      OUTLINED_FUNCTION_21_1();
      sub_1E4201744();
      __break(1u);
    }
  }
}

unint64_t sub_1E3F064B4()
{
  result = qword_1ECF3C108;
  if (!qword_1ECF3C108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C0F0);
    sub_1E32752B0(&qword_1ECF3C100, &qword_1ECF3C0F8);
    sub_1E3F0659C(&qword_1ECF3C110, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C108);
  }

  return result;
}

uint64_t sub_1E3F0659C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_20Tm_1()
{

  return swift_deallocObject();
}

uint64_t sub_1E3F06624()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3F066B4;

  return sub_1E3F058E4();
}

uint64_t sub_1E3F066B4()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

unint64_t sub_1E3F067D4()
{
  result = qword_1ECF3C118;
  if (!qword_1ECF3C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C118);
  }

  return result;
}

uint64_t sub_1E3F06858(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3F068BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

_BYTE *sub_1E3F06908(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3F069E0()
{
  result = qword_1ECF3C120;
  if (!qword_1ECF3C120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C128);
    sub_1E32752B0(&qword_1ECF3C130, &qword_1ECF3C138);
    sub_1E3F06294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C120);
  }

  return result;
}

unint64_t sub_1E3F06A98()
{
  result = qword_1ECF3C140;
  if (!qword_1ECF3C140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C148);
    sub_1E3F05F34();
    sub_1E32752B0(&qword_1ECF3C0D0, &qword_1ECF3C0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C140);
  }

  return result;
}

unint64_t sub_1E3F06B50()
{
  result = qword_1ECF3C150;
  if (!qword_1ECF3C150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C158);
    sub_1E3F064B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C0F8);
    sub_1E32752B0(&qword_1ECF3C100, &qword_1ECF3C0F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C150);
  }

  return result;
}

uint64_t objectdestroy_7Tm_1()
{

  OUTLINED_FUNCTION_3_139();

  return swift_deallocObject();
}

uint64_t sub_1E3F06CF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = sub_1E4201D44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C178);
  return sub_1E3F03378(v3, v4, v5, a1 + *(v6 + 44));
}

unint64_t sub_1E3F06DC0()
{
  result = qword_1ECF3C1D0;
  if (!qword_1ECF3C1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C1C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29060);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3F06EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C1D0);
  }

  return result;
}

unint64_t sub_1E3F06EA0()
{
  result = qword_1ECF3C1D8;
  if (!qword_1ECF3C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C1D8);
  }

  return result;
}

void *OUTLINED_FUNCTION_32_76(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x60uLL);
}

uint64_t sub_1E3F06F2C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a5;
  v56 = a4;
  v52 = a1;
  v53 = sub_1E41FF5A4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1E8);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1F0);
  OUTLINED_FUNCTION_0_10();
  v49 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v44 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C1F8);
  OUTLINED_FUNCTION_0_10();
  v48 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C200);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v46 = &v44 - v27;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C208);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v44 - v29;
  v57 = a3;
  v54 = a2;
  if (a3)
  {
    v58 = a2;
    v59 = a3;
    sub_1E32822E0();

    sub_1E41FF584();
  }

  else
  {
    sub_1E41FF574();
  }

  v31 = v56;
  if (v56)
  {
  }

  sub_1E41FF564();

  (*(v14 + 8))(v17, v12);
  v32 = MEMORY[0x1E69E3AD8];
  v33 = v52 & 1;
  if ((v52 & 1) == 0)
  {
    v32 = MEMORY[0x1E69E3AD0];
  }

  v34 = v53;
  (*(v8 + 104))(v11, *v32, v53);
  v58 = MEMORY[0x1E6981148];
  v59 = MEMORY[0x1E6981138];
  swift_getOpaqueTypeConformance2();
  v35 = v51;
  sub_1E4202C64();
  (*(v8 + 8))(v11, v34);
  (*(v49 + 8))(v21, v35);
  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  v37 = v54;
  v38 = v57;
  *(v36 + 24) = v54;
  *(v36 + 32) = v38;
  *(v36 + 40) = v31;
  v39 = v46;
  (*(v48 + 32))(v46, v25, v50);
  v40 = (v39 + *(v45 + 36));
  *v40 = sub_1E3F0743C;
  v40[1] = v36;
  v40[2] = 0;
  v40[3] = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = v33;
  *(v41 + 24) = v37;
  *(v41 + 32) = v38;
  *(v41 + 40) = v31;
  sub_1E329E454(v39, v30, &qword_1ECF3C200);
  v42 = &v30[*(v47 + 36)];
  *v42 = 0;
  *(v42 + 1) = 0;
  *(v42 + 2) = sub_1E3F07484;
  *(v42 + 3) = v41;
  sub_1E329E454(v30, v55, &qword_1ECF3C208);
  swift_retain_n();
  return swift_bridgeObjectRetain_n();
}

uint64_t objectdestroyTm_49()
{

  return swift_deallocObject();
}

uint64_t sub_1E3F0748C(uint64_t result)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    return (*(*v2 + 208))(result, 0, 1);
  }

  return result;
}

void *sub_1E3F074EC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = sub_1E4201D44();
  LOBYTE(v66) = 1;
  v10 = sub_1E4201B84();
  v72[96] = 1;
  v72[112] = 1;
  v72[104] = 1;

  v72[88] = 1;
  __src[0] = v10;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  __src[3] = 0;
  LOBYTE(__src[4]) = 1;
  LOBYTE(__src[5]) = a1;
  __src[6] = a2;
  __src[7] = a3;
  __src[8] = a4;
  __src[9] = 0;
  LOBYTE(__src[10]) = 1;
  v11 = memcpy(&v72[7], __src, 0x51uLL);
  v71 = 1;
  v68 = v10;
  v69[0] = 0;
  LOBYTE(v69[1]) = 1;
  v69[2] = 0;
  LOBYTE(v69[3]) = 1;
  LOBYTE(v69[4]) = a1;
  v69[5] = a2;
  v69[6] = a3;
  v69[7] = a4;
  v69[8] = 0;
  LOBYTE(v69[9]) = 1;
  OUTLINED_FUNCTION_3_215(v11, v12, v13, v14, v15, v16, v17, v18, v30, v32, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65[0], v65[1], v65[2], v65[3], v65[4], v65[5], v65[6], v65[7], v65[8], v65[9], v65[10], v65[11], v65[12], v65[13], v65[14], v66, v10);
  sub_1E325F6F0(&v68, &qword_1ECF3C248);
  LOBYTE(__src[1]) = 1;
  memcpy(&__src[1] + 1, v72, 0x58uLL);
  __src[13] = 0;
  LOBYTE(__src[14]) = 1;
  v68 = 0;
  LOBYTE(v69[0]) = 1;
  v19 = memcpy(v69 + 1, v72, 0x58uLL);
  v69[12] = 0;
  v70 = 1;
  OUTLINED_FUNCTION_3_215(v19, v20, v21, v22, v23, v24, v25, v26, v31, v33, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v65[0], v65[1], v65[2], v65[3], v65[4], v65[5], v65[6], v65[7], v65[8], v65[9], v65[10], v65[11], v65[12], v65[13], v65[14], v66, 0);
  sub_1E325F6F0(&v68, &qword_1ECF3C210);
  memcpy(v65 + 7, __src, 0x71uLL);
  v27 = v66;
  v28 = sub_1E42013E4();
  LOBYTE(a3) = sub_1E4202734();
  *a5 = v34;
  *(a5 + 8) = 0;
  *(a5 + 16) = v27;
  result = memcpy((a5 + 17), v65, 0x78uLL);
  *(a5 + 144) = v28;
  *(a5 + 152) = a3;
  return result;
}

uint64_t sub_1E3F076D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3F07728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1E3F0778C()
{
  result = qword_1ECF3C218;
  if (!qword_1ECF3C218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C208);
    sub_1E3F07818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C218);
  }

  return result;
}

unint64_t sub_1E3F07818()
{
  result = qword_1ECF3C220;
  if (!qword_1ECF3C220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C1F0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C220);
  }

  return result;
}

unint64_t sub_1E3F07910()
{
  result = qword_1ECF3C228;
  if (!qword_1ECF3C228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C230);
    sub_1E3F0799C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C228);
  }

  return result;
}

unint64_t sub_1E3F0799C()
{
  result = qword_1ECF3C238;
  if (!qword_1ECF3C238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3C238);
  }

  return result;
}

uint64_t sub_1E3F07A38()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1E3F07A7C()
{
  OUTLINED_FUNCTION_53_0();
  v0 = swift_allocObject();
  sub_1E3F07AAC();
  return v0;
}

void *sub_1E3F07AAC()
{
  v1 = sub_1E4204874();
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  sub_1E4204964();
  v0[3] = sub_1E4204954();
  v0[4] = MEMORY[0x1E69AB380];
  sub_1E42048E4();
  sub_1E4204864();
  swift_beginAccess();
  swift_unknownObjectRetain();
  v0[2] = sub_1E4204884();
  return v0;
}

uint64_t sub_1E3F07B98()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_53_0();
  swift_allocObject();
  OUTLINED_FUNCTION_37_67();
  sub_1E3F07BD4();
  return v0;
}

void sub_1E3F07BD4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_24_4();
  v7(v8);
  v9 = sub_1E4204804();

  if (!v9)
  {
    v10 = OUTLINED_FUNCTION_24_4();
    v9 = (v7)(v10);
  }

  v1[2] = v9;
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v11 = OUTLINED_FUNCTION_24_4();
  v13 = v12(v11);
  v15 = v14;
  sub_1E42046B4();
  OUTLINED_FUNCTION_2();
  (*(v16 + 8))(v3);
  v1[3] = v13;
  v1[4] = v15;
  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F07CE8()
{
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_8();
  (*(v0 + 96))();
  OUTLINED_FUNCTION_2_0();
  sub_1E4204854();
}

void static BaseImpressionManager.getSnapshotImpressionsFromTracker(_:)()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v28 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_5();
  v7 = sub_1E4204984();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E4204564();
  OUTLINED_FUNCTION_0_10();
  v26 = v15;
  v27 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E42049E4();
  v16 = (v5 + 8);
  if (swift_dynamicCastClass())
  {
    (*(v9 + 104))(v13, *MEMORY[0x1E69AB3D8], v7);
    swift_unknownObjectRetain();
    sub_1E41FE5C4();
    sub_1E4204994();
    (*v16)(v1, v28);
    (*(v9 + 8))(v13, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4299720;
    *(inited + 32) = sub_1E3BA363C(2);
    *(inited + 40) = v19;
    v20 = sub_1E4204544();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8);
    *(inited + 72) = v21;
    *(inited + 48) = v20;
    *(inited + 80) = sub_1E3BA47C4(2);
    *(inited + 88) = v22;
    v23 = sub_1E4204554();
    *(inited + 120) = v21;
    *(inited + 96) = v23;
    *(v17 + 32) = sub_1E4205CB4();
    swift_unknownObjectRelease();
    (*(v26 + 8))(v0, v27);
  }

  else
  {
    swift_getObjectType();
    (*(v9 + 104))(v13, *MEMORY[0x1E69AB3D8], v7);
    sub_1E41FE5C4();
    v24 = v3;
    v25 = sub_1E4204774();
    (*v16)(v1, v28);
    (*(v9 + 8))(v13, v7);
    sub_1E3BA7DD8(v25);
    OUTLINED_FUNCTION_50();

    static BaseImpressionManager.processImpressionsForPrivacy(_:)(v24);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F08144(uint64_t (*a1)(void))
{
  type metadata accessor for BaseImpressionManager();
  OUTLINED_FUNCTION_8();
  (*(v2 + 120))();
  v3 = a1();
  swift_unknownObjectRelease();
  return v3;
}

void static BaseImpressionManager.getRecordedImpressionsFromTracker(_:)()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_12();
  v6 = sub_1E4204984();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  swift_getObjectType();
  (*(v8 + 104))(v1, *MEMORY[0x1E69AB3D8], v6);
  sub_1E41FE5C4();
  OUTLINED_FUNCTION_124();
  v10 = sub_1E4204784();
  (*(v4 + 8))(v0, v2);
  v11 = OUTLINED_FUNCTION_171_0();
  v12(v11);
  v13 = sub_1E3BA7DD8(v10);

  static BaseImpressionManager.processImpressionsForPrivacy(_:)(v13);
  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3F0834C()
{
  type metadata accessor for BaseImpressionManager();
  OUTLINED_FUNCTION_8();
  (*(v0 + 120))();
  static BaseImpressionManager.getRecordedImpressionsWithDynamicEventsFromTracker(_:)();

  return swift_unknownObjectRelease();
}

void static BaseImpressionManager.getRecordedImpressionsWithDynamicEventsFromTracker(_:)()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v8 = sub_1E4204984();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_33_5();
  sub_1E42049E4();
  if (swift_dynamicCastClass())
  {
    (*(v10 + 104))(v1, *MEMORY[0x1E69AB3D8], v8);
    swift_unknownObjectRetain();
    sub_1E41FE5C4();
    OUTLINED_FUNCTION_123_1();
    sub_1E42049A4();
    swift_unknownObjectRelease();
    (*(v6 + 8))(v0, v4);
    (*(v10 + 8))(v1, v8);
    v12 = sub_1E4204564();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v12);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E4204564();
    OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }
}

uint64_t sub_1E3F08590(void *a1, uint64_t a2)
{
  [a1 frame];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 96))();
  OUTLINED_FUNCTION_8();
  v5 = OUTLINED_FUNCTION_6();
  v6(a2, v4, v5);
}

void sub_1E3F0863C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v4 = sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v55 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v67 = v7 - v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v69 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v54 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v68 = v22 - v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  v76 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_36();
  if (!(*(v27 + 576))())
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_30();
  (*(v28 + 224))();

  OUTLINED_FUNCTION_52(v18, 1, v19);
  if (v29)
  {
LABEL_8:
    sub_1E325F6F0(v18, &qword_1ECF2B7B0);
    goto LABEL_11;
  }

  v64 = v2;
  v30 = v1;
  v31 = v54;
  v32 = *(v54 + 32);
  v66 = v19;
  v32(v30, v18, v19);
  v33 = static BaseImpressionManager.getImpressionableChildren(_:)();
  v53 = v30;
  sub_1E42046D4();
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = *(*v3 + 96);
    v61 = *v3 + 96;
    v62 = v35;
    v37 = *(v31 + 16);
    v36 = v31 + 16;
    v73 = v37;
    v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
    v52 = v33;
    v39 = v33 + v38;
    v60 = *(v36 + 56);
    v58 = (v55 + 16);
    v59 = (v55 + 8);
    v74 = v36;
    v57 = (v36 - 8);
    v55 = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v65 = v4;
    v56 = v11;
    v40 = v76;
    v63 = v3;
    v41 = v11;
    v42 = v59;
    do
    {
      v75 = v39;
      v72 = v34;
      v43 = v66;
      v44 = v73(v40, v39, v66);
      v71 = v62(v44);
      v70 = sub_1E4204694();
      sub_1E42046D4();
      sub_1E4204694();
      v45 = *v42;
      v46 = v65;
      (*v42)(v41, v65);
      sub_1E42046D4();
      sub_1E4204634();
      v47 = OUTLINED_FUNCTION_171_0();
      v45(v47);

      v48 = v64;
      sub_1E4204664();
      v49 = v68;
      v73(v68, v76, v43);
      (*v58)(v41, v48, v46);
      sub_1E42046E4();

      v50 = OUTLINED_FUNCTION_171_0();
      v45(v50);
      sub_1E4204894();
      v40 = v76;

      v51 = *v57;
      (*v57)(v49, v43);
      v51(v40, v43);
      v39 = v75 + v60;
      v34 = v72 - 1;
    }

    while (v72 != 1);

    v4 = v65;
  }

  else
  {

    v45 = *(v55 + 8);
  }

  (v45)(v69, v4);
  (*(v54 + 8))(v53, v66);
LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

uint64_t static BaseImpressionManager.getImpressionableChildren(_:)()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_8();
  if ((*(v1 + 488))())
  {

    sub_1E39E4ACC(v2);
    sub_1E3F0C504();

LABEL_5:

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8();
  if ((*(v3 + 464))())
  {
    sub_1E3F0C504();
    goto LABEL_5;
  }

LABEL_6:
  swift_beginAccess();
  v4 = *(v0 + 16);

  return v4;
}

void sub_1E3F08CC0()
{
  OUTLINED_FUNCTION_9_4();
  v83 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_0_8();
  v5 = sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v82 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v75 = v8 - v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  v74 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v73 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v86 = OUTLINED_FUNCTION_64_30();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_78();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B230);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v71 - v30;
  OUTLINED_FUNCTION_46_54();
  OUTLINED_FUNCTION_21_18();
  v36 = __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  if ((*(*v4 + 576))(v36))
  {
    OUTLINED_FUNCTION_30();
    (*(v37 + 224))();

    v38 = OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_52(v38, v39, v86);
    if (!v40)
    {
      OUTLINED_FUNCTION_202_1();
      v41 = OUTLINED_FUNCTION_11_6();
      v42(v41);
      sub_1E42046D4();
      v43 = OUTLINED_FUNCTION_11_6();
      v44(v43);
      OUTLINED_FUNCTION_21_18();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
      sub_1E3F0C9AC(v28, v31);
      goto LABEL_6;
    }
  }

  else
  {
    v49 = OUTLINED_FUNCTION_44_5();
    __swift_storeEnumTagSinglePayload(v49, v50, 1, v86);
  }

  sub_1E325F6F0(v0, &qword_1ECF2B7B0);
LABEL_6:
  v51 = static BaseImpressionManager.getImpressionableChildren(_:)();
  v52 = *(v51 + 16);
  if (v52)
  {
    v55 = *(v17 + 16);
    v54 = v17 + 16;
    v53 = v55;
    v56 = v51 + ((*(v54 + 64) + 32) & ~*(v54 + 64));
    v57 = *(v54 + 56);
    v72 = (v82 + 8);
    v71[0] = v51;
    v71[1] = v82 + 16;
    v58 = (v54 - 8);
    v81 = v57;
    v82 = v31;
    v84 = v1;
    v85 = v55;
    v79 = v21;
    v80 = v54;
    do
    {
      v53(v1, v56, v86);
      v59 = OUTLINED_FUNCTION_46_54();
      if (__swift_getEnumTagSinglePayload(v59, v60, v5))
      {
        v53(v21, v1, v86);
      }

      else
      {
        v78 = sub_1E4204694();
        v61 = v74;
        sub_1E42046D4();
        v62 = sub_1E4204694();
        v76 = v63;
        v77 = v62;
        v64 = *v72;
        (*v72)(v61, v5);
        sub_1E42046D4();
        sub_1E4204634();
        v65 = OUTLINED_FUNCTION_124();
        v64(v65);

        v66 = v73;
        sub_1E4204664();
        v85(v79, v84, v86);
        v67 = OUTLINED_FUNCTION_123_1();
        v68(v67);
        v21 = v79;
        sub_1E42046E4();

        (v64)(v66, v5);
        v1 = v84;
      }

      OUTLINED_FUNCTION_2_0();
      sub_1E4204824();
      v69 = *v58;
      v70 = v86;
      (*v58)(v21, v86);
      v69(v1, v70);
      v31 = v82;
      v56 += v81;
      --v52;
      v53 = v85;
    }

    while (v52);
  }

  sub_1E325F6F0(v31, &qword_1ECF3B230);
  OUTLINED_FUNCTION_10_3();
}

uint64_t BaseImpressionManager.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t BaseImpressionManager.__deallocating_deinit()
{
  BaseImpressionManager.deinit();
  v0 = OUTLINED_FUNCTION_53_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3F09234(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_12();
  v7 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_8();
  (*(v11 + 224))();
  OUTLINED_FUNCTION_52(v3, 1, v7);
  if (v12)
  {
    return sub_1E325F6F0(v3, &qword_1ECF2B7B0);
  }

  v13 = OUTLINED_FUNCTION_24_4();
  v15 = v14(v13);
  (*(*v1 + 96))(v15);
  [a1 frame];
  sub_1E4204824();

  return (*(v9 + 8))(v2, v7);
}

uint64_t sub_1E3F093E8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_71_0();
  v4 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_8();
  (*(v8 + 224))();
  OUTLINED_FUNCTION_52(v0, 1, v4);
  if (v9)
  {
    return sub_1E325F6F0(v0, &qword_1ECF2B7B0);
  }

  OUTLINED_FUNCTION_202_1();
  v10(v1, v0, v4);
  OUTLINED_FUNCTION_111();
  (*(v11 + 96))();
  sub_1E4204894();

  return (*(v6 + 8))(v1, v4);
}

uint64_t sub_1E3F09578()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_53_0();
  swift_allocObject();
  OUTLINED_FUNCTION_37_67();
  sub_1E3F095B4();
  return v0;
}

uint64_t sub_1E3F095B4()
{
  OUTLINED_FUNCTION_156();
  sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_12();
  sub_1E327F454(v1, v8);
  v3 = OUTLINED_FUNCTION_45_61();
  v4(v3);
  sub_1E3F07BD4();
  v5 = OUTLINED_FUNCTION_35_67();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v1);
  return v0;
}

uint64_t sub_1E3F0990C(double a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 40) = a1;
  return result;
}

void sub_1E3F09940(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v129 = *&a5;
  v130 = a3;
  v131 = a2;
  v125 = sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v124 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v123 = v14 - v13;
  v15 = sub_1E41FE7A4();
  OUTLINED_FUNCTION_0_10();
  v128 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_12();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_6();
  v126 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v119 - v23;
  v25 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v132 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  v127 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25_3();
  v35 = v34;
  OUTLINED_FUNCTION_36();
  if (!(*(v36 + 576))())
  {
    v69 = OUTLINED_FUNCTION_44_5();
    __swift_storeEnumTagSinglePayload(v69, v70, 1, v25);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_30();
  (*(v37 + 224))();

  v38 = OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_52(v38, v39, v25);
  if (v40)
  {
LABEL_10:
    v71 = v24;
LABEL_11:
    sub_1E325F6F0(v71, &qword_1ECF2B7B0);
    return;
  }

  v122 = a1;
  v121 = v5;
  v41 = v132;
  OUTLINED_FUNCTION_202_1();
  v119[2] = v42;
  v119[1] = v43;
  v43(v35, v24, v25);
  OUTLINED_FUNCTION_36();
  v45 = (*(v44 + 576))();
  if (!v45)
  {
    (*(v41 + 8))(v35, v25);
    return;
  }

  v46 = v45;
  v120 = v25;
  v47 = [v130 collectionViewLayout];
  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (!v48)
  {

    (*(v132 + 8))(v35, v120);
    return;
  }

  v49 = v48;
  v50 = [v122 vuiCellView];
  v51 = v35;
  if (!v50)
  {
    v72 = OUTLINED_FUNCTION_38_61();
    v73(v72, v120);

    return;
  }

  v52 = v50;
  v130 = v46;
  v53 = [v49 _orthogonalScrollingSections];
  sub_1E41FE754();

  sub_1E41FE854();
  LOBYTE(v53) = sub_1E41FE784();
  v128[1](v6, v15);
  if ((v53 & 1) == 0)
  {
    OUTLINED_FUNCTION_8();
    v75 = *(v74 + 96);
    v75();
    [v52 frame];
    sub_1E4204824();

    v76 = v122;
    v135 = v122;
    sub_1E3280A90(0, &qword_1EE23B120);
    v77 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C250);
    OUTLINED_FUNCTION_40_62();
    if (swift_dynamicCast())
    {
      sub_1E325F6F0(v133, &unk_1ECF429D0);
      OUTLINED_FUNCTION_44_51();
      v78 = v132;
    }

    else
    {
      v134 = 0;
      memset(v133, 0, sizeof(v133));
      sub_1E325F6F0(v133, &unk_1ECF429D0);
      v76 = v130;
      OUTLINED_FUNCTION_8();
      (*(v90 + 224))();
      OUTLINED_FUNCTION_55_43();
      OUTLINED_FUNCTION_44_51();
      OUTLINED_FUNCTION_52(v91, v92, v76);
      v78 = v132;
      if (v40)
      {
        sub_1E325F6F0(v7, &qword_1ECF2B7B0);
      }

      else
      {
        OUTLINED_FUNCTION_56_33();
        v103 = v102();
        v76 = (v75)(v103);
        [v52 frame];
        sub_1E4204824();
        OUTLINED_FUNCTION_44_51();

        (*(v78 + 8))(v30, v76);
      }
    }

    v135 = v77;
    v104 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C258);
    OUTLINED_FUNCTION_40_62();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v133);
      [v52 frame];
      OUTLINED_FUNCTION_3();
      v105 = (v75)();
      OUTLINED_FUNCTION_8();
      v106 = OUTLINED_FUNCTION_6();
      v107(v131, v105, v106);
      OUTLINED_FUNCTION_66_33();

      (*(v78 + 8))(v35, v76);
      return;
    }

    (*(v78 + 8))(v35, v76);
    goto LABEL_34;
  }

  v54 = sub_1E41FE854();
  v128 = v49;
  v55 = [v49 vui:v54 layoutFrameForSection:?];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v121;
  v65 = *(*v121 + 296);
  v66 = v65(v55);
  v67 = *v64;
  if (v66)
  {
    v68 = (*(v67 + 96))();
    goto LABEL_18;
  }

  v79 = (*(v67 + 248))();
  v136.origin.x = v57;
  v136.origin.y = v59;
  v136.size.width = v61;
  v136.size.height = v63;
  v137 = CGRectOffset(v136, 0.0, v79);
  width = v137.size.width;
  height = v137.size.height;
  v80 = *(*v64 + 96);
  v80();
  sub_1E4204824();

  (v80)(v81);
  v82 = v123;
  sub_1E42046D4();
  v68 = sub_1E4204804();

  (*(v124 + 8))(v82, v125);
  if (!v68)
  {
    v117 = OUTLINED_FUNCTION_38_61();
    v118(v117, v120);
LABEL_34:
    OUTLINED_FUNCTION_66_33();

    return;
  }

LABEL_18:

  OUTLINED_FUNCTION_8();
  v84 = v126;
  (*(v83 + 224))();
  v85 = OUTLINED_FUNCTION_55_43();
  v86 = v120;
  OUTLINED_FUNCTION_52(v85, v87, v120);
  if (v40)
  {
    v88 = OUTLINED_FUNCTION_38_61();
    v89(v88, v86);
    OUTLINED_FUNCTION_66_33();

    v71 = v84;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_56_33();
  v93();
  v94 = [v128 _offsetForOrthogonalScrollingSection_];
  v96 = v95;
  v97 = v65(v94);
  if (v97)
  {
    v98 = sub_1E4204834();
    *v99 = v96;
    v98(v133, 0);
    [v52 frame];
    OUTLINED_FUNCTION_54_43(v100);
    v101 = 0.0;
  }

  else
  {
    sub_1E4204854();
    [v52 frame];
    OUTLINED_FUNCTION_54_43(v108);
    v138.origin.x = OUTLINED_FUNCTION_24_0();
    v101 = -CGRectGetMinX(v138);
  }

  v139.origin.x = OUTLINED_FUNCTION_24_0();
  v109 = -CGRectGetMinY(v139);
  v140.origin.x = v129;
  v140.origin.y = width;
  v140.size.width = height;
  v140.size.height = v57;
  CGRectOffset(v140, v101, v109);
  sub_1E4204824();
  v110 = v122;
  v135 = v122;
  sub_1E3280A90(0, &qword_1EE23B120);
  v111 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C258);
  OUTLINED_FUNCTION_40_62();
  v112 = swift_dynamicCast();
  v113 = v132;
  if (v112)
  {
    __swift_destroy_boxed_opaque_existential_1(v133);
    v114 = OUTLINED_FUNCTION_2_0();
    v110 = v64;
    v115(v131, v68, v114);
  }

  OUTLINED_FUNCTION_66_33();

  v116 = *(v113 + 8);
  OUTLINED_FUNCTION_44_51();
  v116();
  (v116)(v51, v110);
}