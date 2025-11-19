id FeedUpdaterObjcError.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedUpdaterObjcError.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedUpdaterObjcError();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FeedUpdaterObjcError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedUpdaterObjcError();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static FeedUpdaterObjcError.domainName.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7448, &qword_1D91976B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7450, &qword_1D91976B8);
  return sub_1D917826C();
}

uint64_t static FeedUpdaterObjcError.feedURLIsEmpty.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 7;
  return result;
}

uint64_t static FeedUpdaterObjcError.localShowMissing.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 10;
  return result;
}

uint64_t static FeedUpdaterObjcError.preProcessHookDeniedUpdate.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 11;
  return result;
}

uint64_t static FeedUpdaterObjcError.internetNotReachable.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 13;
  return result;
}

uint64_t static FeedUpdaterObjcError.feedUpdatesDisabled.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 14;
  return result;
}

uint64_t static FeedUpdaterObjcError.notYetUpdatable.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 15;
  return result;
}

uint64_t static FeedUpdaterObjcError.nonSubscribableShow.getter()
{
  sub_1D8D77098();
  result = swift_allocError();
  *v1 = 16;
  return result;
}

unint64_t sub_1D8F58F10()
{
  result = qword_1ECAB7458;
  if (!qword_1ECAB7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7458);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedUpdaterError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedUpdaterError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id RSSFeedUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RSSFeedUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RSSFeedUpdater();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RSSFeedUpdater.perform(onFeedProcessingQueue:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_workQueue);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1D8D244E0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_19_2;
  v15 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

uint64_t (*RSSFeedUpdater.sessionCompletionHandler.getter())()
{
  result = [*(v0 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_externalFeedDownloader) sessionCompletionHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_1D8D99DB8;
  }

  return result;
}

uint64_t RSSFeedUpdater.sessionCompletionHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_1D8F59D38(a1, a2);

  return sub_1D8D15664(a1);
}

void *sub_1D8F59844@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = [*a1 sessionCompletionHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_1D8D99DAC;
    result[3] = v5;
    v6 = sub_1D8D244E0;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

void sub_1D8F598EC(uint64_t a1, void **a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = *a2;
    v7[4] = sub_1D8F59FB8;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1D8CF5F60;
    v7[3] = &block_descriptor_66_1;
    v3 = _Block_copy(v7);
  }

  else
  {
    v6 = *a2;
  }

  [v6 setSessionCompletionHandler_];
  _Block_release(v3);
}

uint64_t sub_1D8F599E0()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v2 = *(v0 + 88);
  swift_unknownObjectRelease();

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);
  sub_1D8D15664(*(v0 + 120));
  return v0;
}

uint64_t sub_1D8F59A38()
{
  sub_1D8F599E0();

  return swift_deallocClassInstance();
}

void sub_1D8F59A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = objc_opt_self();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5C00, &qword_1D91913F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9197860;
  v11 = MEMORY[0x1E69E6158];
  sub_1D91793EC();
  v12 = MEMORY[0x1E69E6530];
  *(inited + 96) = MEMORY[0x1E69E6530];
  *(inited + 72) = a2;
  sub_1D91793EC();
  *(inited + 168) = v12;
  *(inited + 144) = a3;
  sub_1D91793EC();
  *(inited + 240) = v12;
  *(inited + 216) = a4;
  sub_1D91793EC();
  *(inited + 312) = v12;
  *(inited + 288) = a1;
  sub_1D91793EC();
  v13 = *(a5 + *(type metadata accessor for FeedUpdateRequest() + 48));
  type metadata accessor for MTFeedUpdateSource(0);
  *(inited + 384) = v14;
  *(inited + 360) = v13;
  sub_1D91793EC();
  *(inited + 456) = v11;
  *(inited + 432) = 7566194;
  *(inited + 440) = 0xE300000000000000;
  sub_1D8D653BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C80, &unk_1D91949C0);
  swift_arrayDestroy();
  v15 = sub_1D917802C();

  [v17 recordEvent:v9 dataSource:0 data:v15];
}

void sub_1D8F59D38(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_externalFeedDownloader);
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1D8CF5F60;
    v5[3] = &block_descriptor_76;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setSessionCompletionHandler_];
  _Block_release(v4);
}

uint64_t sub_1D8F59EA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8F59EC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1D8F59F0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8F59F54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8F59FB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D8F59FF8(uint64_t a1)
{
  v2 = sub_1D9177FDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8DA1F0C(&qword_1EDCD5C50, MEMORY[0x1E69666B0]);
  v7 = sub_1D917840C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v3 + 16))(v6, a1, v2);
  result = sub_1D91783FC();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_1D9189080;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x1E69E7508];
        *(v14 + 64) = MEMORY[0x1E69E7558];
        *(v14 + 32) = v13;
        result = sub_1D917823C();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_1D8D41BE0((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_1D9189080;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = MEMORY[0x1E69E7508];
        *(v23 + 64) = MEMORY[0x1E69E7558];
        *(v23 + 32) = v22;
        result = sub_1D917823C();
        v35 = v8;
        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          sub_1D8D41BE0((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

int8x16_t *sub_1D8F5A398(int8x16_t *result)
{
  v1 = vorrq_s8(result[1], result[2]);
  if (*&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) || (v2 = result, result[3].u8[0] != 160))
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    sub_1D8D76684(&v4, &v5);
    v3 = *(&v2->i64[1] + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_fullJobInterval);
    *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_fullJobInterval) = v5;

    v5 = 1uLL;
    v6 = 0;
    v7 = 0;
    v8 = -96;
    return sub_1D8DA168C(&v5);
  }

  return result;
}

void sub_1D8F5A440()
{
  v1 = [objc_allocWithZone(IMPodcastParser) init];
  v2 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v3 = [v1 parseWithData_];

  v4 = [v1 parseError];
  if (v4)
  {
    v24 = v4;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 96;
    v23 = v4;
    sub_1D8DA168C(&v24);

LABEL_14:
    v20 = v23;
    goto LABEL_15;
  }

  if (v3)
  {
    v23 = v3;
    v5 = [v23 items];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v5 count];

    if (v7)
    {
      if (qword_1EDCD1068 != -1)
      {
        swift_once();
      }

      v8 = sub_1D917744C();
      __swift_project_value_buffer(v8, qword_1EDCD1070);

      v9 = sub_1D917741C();
      v10 = sub_1D9178D1C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24 = v12;
        *v11 = 141558275;
        *(v11 + 4) = 1752392040;
        *(v11 + 12) = 2081;
        v13 = v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
        v14 = v13 + *(type metadata accessor for FeedUpdateRequest() + 20);
        v15 = sub_1D9176ACC();
        v17 = sub_1D8CFA924(v15, v16, &v24);

        *(v11 + 14) = v17;
        _os_log_impl(&dword_1D8CEC000, v9, v10, "Job %{private,mask.hash}s: Successfully parsed feed.", v11, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x1DA72CB90](v12, -1, -1);
        MEMORY[0x1DA72CB90](v11, -1, -1);
      }

      v24 = v3;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 32;
      v23 = v23;
      sub_1D8DA168C(&v24);
    }

    else
    {
      sub_1D8D77098();
      v21 = swift_allocError();
      *v22 = 8;
      v24 = v21;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 96;
      sub_1D8DA168C(&v24);
    }

    goto LABEL_14;
  }

  sub_1D8D77098();
  v18 = swift_allocError();
  *v19 = 6;
  v24 = v18;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 96;
  sub_1D8DA168C(&v24);

  v20 = v1;
LABEL_15:
}

void sub_1D8F5A7A8(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
  v5 = v4 + *(type metadata accessor for FeedUpdateRequest() + 60);
  v6 = *v5;
  if (!*v5)
  {
    goto LABEL_4;
  }

  v7 = *(v5 + 8);
  v8 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);

  v9 = v6(a1, 1, v8);
  if ([v9 shouldContinue])
  {

    sub_1D8D15664(v6);
LABEL_4:
    v10 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = a1;
    v20 = sub_1D8F5DD8C;
    v21 = v11;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_1D8CF5F60;
    v19 = &block_descriptor_23;
    v12 = _Block_copy(&v16);

    v13 = a1;

    [v10 performBlock_];
    _Block_release(v12);
    return;
  }

  sub_1D8D77098();
  v14 = swift_allocError();
  *v15 = 11;
  v16 = v14;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  LOBYTE(v20) = 96;
  sub_1D8DA168C(&v16);

  sub_1D8D15664(v6);
}

void sub_1D8F5A9A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v3 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
  v7 = v6 + *(type metadata accessor for FeedUpdateRequest() + 64);
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);
    v10 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);

    v8(a1, a2, v10);
    sub_1D8D15664(v8);
  }

  v11 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  v13[4] = sub_1D8F60924;
  v13[5] = v3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_26_2;
  v12 = _Block_copy(v13);

  [v11 performBlock_];
  _Block_release(v12);
}

uint64_t sub_1D8F5AAEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 33))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 32) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 32) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8F5AB40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1D8F5ABAC(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 32) = *(result + 32) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = -96;
  }

  return result;
}

void sub_1D8F5ABEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v43 = a1;
  v5 = sub_1D9177FCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D9177FDC();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8DA1F0C(&unk_1EDCD5C58, MEMORY[0x1E6966688]);
  sub_1D9177F9C();
  sub_1D8D752C4(a2, a3);
  sub_1D8D75318(a2, a3);
  *&v41 = a2;
  *(&v41 + 1) = a3;
  sub_1D8D7567C(a2, a3);
  sub_1D9177F8C();
  (*(v6 + 8))(v9, v5);
  v14 = v43;
  v15 = sub_1D8F59FF8(v13);
  (*(v10 + 8))(v13, v42);
  *&v44 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
  v16 = sub_1D917817C();
  v18 = v17;

  v19 = (v14 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_feedUniquenessHash);
  v20 = *(v14 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_feedUniquenessHash + 8);
  *v19 = v16;
  v19[1] = v18;

  v21 = *(v14 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  LODWORD(v13) = *(type metadata accessor for FeedUpdateRequest() + 20);
  sub_1D9176ACC();
  v22 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v23 = [v21 podcastForFeedUrl_];

  if (!v23)
  {
    goto LABEL_19;
  }

  v24 = [v23 feedUniquenessHash];
  if (!v24)
  {
    v29 = v19[1];
LABEL_9:
    if (!v29)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v25 = v24;
  v26 = sub_1D917820C();
  v28 = v27;

  v29 = v19[1];
  if (!v28)
  {
    goto LABEL_9;
  }

  if (!v29)
  {

LABEL_18:

LABEL_19:
    v44 = v41;
    v45 = 0uLL;
    v46 = 0;
    sub_1D8DA168C(&v44);
    return;
  }

  if (v26 != *v19 || v29 != v28)
  {
    v30 = sub_1D9179ACC();

    if (v30)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

LABEL_13:
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v31 = sub_1D917744C();
  __swift_project_value_buffer(v31, qword_1EDCD1070);

  v32 = sub_1D917741C();
  v33 = sub_1D9178D1C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v44 = v35;
    *v34 = 141558275;
    *(v34 + 4) = 1752392040;
    *(v34 + 12) = 2081;
    v36 = sub_1D9176ACC();
    v38 = sub_1D8CFA924(v36, v37, &v44);

    *(v34 + 14) = v38;
    _os_log_impl(&dword_1D8CEC000, v32, v33, "Job %{private,mask.hash}s: Feed has not changed since last feed update. Not doing feed update.", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1DA72CB90](v35, -1, -1);
    MEMORY[0x1DA72CB90](v34, -1, -1);
  }

  v39 = *(v14 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData + 16);
  v44 = *(v14 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData);
  v45 = v39;
  v46 = 0x80;
  sub_1D8DA168C(&v44);
}

id sub_1D8F5B104(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  v2 = a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
  v3 = v2 + *(type metadata accessor for FeedUpdateRequest() + 20);
  sub_1D9176ACC();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v5 = [v1 podcastForFeedUrl_];

  if (v5)
  {
    [objc_opt_self() timeIntervalSinceReferenceDate];
    [v5 setLastFetchedDate_];
  }

  return [v1 saveInCurrentBlock];
}

void sub_1D8F5B1D8(uint64_t a1, void *a2)
{
  v207 = sub_1D9176E3C();
  v4 = *(v207 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v206 = v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v202 = v191 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v201 = v191 - v10;
  v11 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  v12 = a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
  updated = type metadata accessor for FeedUpdateRequest();
  v217 = *(updated + 20);
  v218 = v12;
  sub_1D9176ACC();
  v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v203 = v11;
  v15 = [v11 podcastForFeedUrl_];

  if (!v15)
  {
    goto LABEL_110;
  }

  v16 = [v15 uuid];
  if (!v16)
  {

LABEL_110:
    sub_1D8D77098();
    v179 = swift_allocError();
    *v180 = 10;
    v225 = v179;
    v226 = 0;
    v227 = 0;
    v228 = 0;
    v229 = 96;
    sub_1D8DA168C(&v225);

    return;
  }

  v220 = v4;
  v17 = v16;
  v194 = sub_1D917820C();
  v195 = v18;

  v19 = a2;
  v20 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ingesterProvider + 24);
  v21 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ingesterProvider + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ingesterProvider), v20);
  v22 = *(v218 + *(updated + 48));
  v23 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_updaterJobUUID);
  v24 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_updaterJobUUID + 8);
  v216 = a1;
  v25 = *(v21 + 8);

  v192 = v15;
  v26 = v25(v15, v22, v23, v24, v20, v21);
  v27 = v216;
  v28 = v26;

  [v28 unsafeIngestShow_];
  [v203 saveInCurrentBlock];
  v29 = sub_1D8F5CA58(v19);
  if (!v29)
  {

    swift_unknownObjectRelease();
    return;
  }

  v205 = v29;
  v215 = sub_1D8F5CD68();
  v223 = 0;
  v224 = MEMORY[0x1E69E7CD0];
  v31 = v205 & 0xFFFFFFFFFFFFFF8;
  if (v205 >> 62)
  {
LABEL_129:
    v32 = sub_1D917935C();
  }

  else
  {
    v32 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v204 = v28;
  if (v32 <= 0)
  {
LABEL_104:

    [v203 saveInCurrentBlock];
    sub_1D8F5CEFC(&v223, v215);

    sub_1D8F5D45C(v224, v28);

    [v28 unsafeFinalizeIngestion];
    v164 = v192;
    [v192 setImporting_];
    [v164 setIsTransitioningFromImplicit_];
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v165 = sub_1D917744C();
    __swift_project_value_buffer(v165, qword_1EDCD1070);

    v166 = v164;
    v167 = sub_1D917741C();
    v168 = sub_1D9178D1C();

    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v222 = v170;
      *v169 = 141558531;
      *(v169 + 4) = 1752392040;
      *(v169 + 12) = 2081;
      v171 = sub_1D9176ACC();
      v173 = sub_1D8CFA924(v171, v172, &v222);

      *(v169 + 14) = v173;
      *(v169 + 22) = 2082;
      v174 = [v166 uuid];
      if (v174)
      {
        v175 = v174;
        v176 = sub_1D917820C();
        v178 = v177;
      }

      else
      {
        v176 = 0;
        v178 = 0;
      }

      v225 = v176;
      v226 = v178;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
      v181 = sub_1D917826C();
      v183 = sub_1D8CFA924(v181, v182, &v222);

      *(v169 + 24) = v183;
      _os_log_impl(&dword_1D8CEC000, v167, v168, "Job %{private,mask.hash}s: finalized ingestion for show: %{public}s", v169, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v170, -1, -1);
      MEMORY[0x1DA72CB90](v169, -1, -1);
    }

    else
    {
    }

    [v203 saveInCurrentBlock];

    v184 = sub_1D917741C();
    v185 = sub_1D9178D1C();

    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v225 = v187;
      *v186 = 141558275;
      *(v186 + 4) = 1752392040;
      *(v186 + 12) = 2081;
      v188 = sub_1D9176ACC();
      v190 = sub_1D8CFA924(v188, v189, &v225);

      *(v186 + 14) = v190;
      _os_log_impl(&dword_1D8CEC000, v184, v185, "Job %{private,mask.hash}s: Processing fully completed.", v186, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v187);
      MEMORY[0x1DA72CB90](v187, -1, -1);
      MEMORY[0x1DA72CB90](v186, -1, -1);
    }

    v225 = v194;
    v226 = v195;
    v227 = 0;
    v228 = 0;
    v229 = 64;
    sub_1D8DA168C(&v225);

    swift_unknownObjectRelease();

    return;
  }

  v221 = 0;
  v193 = v27 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData;
  v214 = v205 & 0xC000000000000001;
  v197 = v205 + 32;
  v33 = v215 & 0xFFFFFFFFFFFFFF8;
  v211 = v215 & 0xFFFFFFFFFFFFFF8;
  if (v215 < 0)
  {
    v33 = v215;
  }

  v191[1] = v33;
  v210 = v215 & 0xC000000000000001;
  v198 = (v220 + 32);
  v199 = (v220 + 8);
  *&v30 = 141558787;
  v200 = v30;
  *&v30 = 141558531;
  v208 = v30;
  v34 = &selRef_isBackCatalogItem;
  v212 = v32;
  v213 = v31;
  v35 = 0;
  while (1)
  {
    v220 = v35;
    if (v214)
    {
      v36 = MEMORY[0x1DA72AA90]();
    }

    else
    {
      if (v35 < 0)
      {
        goto LABEL_124;
      }

      if (v35 >= *(v31 + 16))
      {
        goto LABEL_125;
      }

      v36 = *(v197 + 8 * v35);
    }

    v37 = v36;
    v38 = [v36 enclosureURL];
    if (!v38)
    {
      goto LABEL_28;
    }

    v39 = [v37 enclosureURL];
    if (!v39)
    {
      goto LABEL_28;
    }

    v219 = v37;
    v40 = v39;
    v41 = sub_1D917820C();
    v43 = v42;

    v37 = v219;
    if (!v43)
    {
      goto LABEL_28;
    }

    v44 = v41 & 0xFFFFFFFFFFFFLL;
    if ((v43 & 0x2000000000000000) != 0)
    {
      v44 = HIBYTE(v43) & 0xF;
    }

    if (!v44)
    {
LABEL_28:
      if (qword_1EDCD1068 != -1)
      {
        swift_once();
      }

      v47 = sub_1D917744C();
      __swift_project_value_buffer(v47, qword_1EDCD1070);

      v48 = v37;
      v49 = sub_1D917741C();
      v50 = sub_1D9178D1C();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v225 = v52;
        *v51 = v200;
        *(v51 + 4) = 1752392040;
        *(v51 + 12) = 2081;
        v53 = sub_1D9176ACC();
        v55 = sub_1D8CFA924(v53, v54, &v225);

        *(v51 + 14) = v55;
        *(v51 + 22) = 2160;
        *(v51 + 24) = 1752392040;
        *(v51 + 32) = 2081;
        v56 = [v48 title];

        if (!v56)
        {
          goto LABEL_131;
        }

        v57 = sub_1D917820C();
        v59 = v58;

        v60 = sub_1D8CFA924(v57, v59, &v225);

        *(v51 + 34) = v60;
        _os_log_impl(&dword_1D8CEC000, v49, v50, "Job %{private,mask.hash}s: feed item without an enclosure: %{private,mask.hash}s", v51, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v52, -1, -1);
        MEMORY[0x1DA72CB90](v51, -1, -1);

        v28 = v204;
        v34 = &selRef_isBackCatalogItem;
      }

      else
      {
      }

      v35 = v220 + 1;
      goto LABEL_12;
    }

    v45 = v215 >> 62 ? sub_1D917935C() : *(v211 + 16);
    v31 = v221;
    if (v221 < v45)
    {
      break;
    }

    v28 = 0;
LABEL_79:
    v31 = v37;
    v124 = [v204 unsafeIngestNewEpisode_];

    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v137 = sub_1D917744C();
    __swift_project_value_buffer(v137, qword_1EDCD1070);

    v138 = v31;
    v139 = sub_1D917741C();
    v140 = sub_1D9178D1C();

    if (os_log_type_enabled(v139, v140))
    {
      v209 = v124;
      v31 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v225 = v141;
      *v31 = v200;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      v142 = sub_1D9176ACC();
      v144 = sub_1D8CFA924(v142, v143, &v225);

      *(v31 + 14) = v144;
      *(v31 + 22) = 2160;
      *(v31 + 24) = 1752392040;
      *(v31 + 32) = 2081;
      v145 = [v138 title];

      if (!v145)
      {
        goto LABEL_133;
      }

      v146 = sub_1D917820C();
      v148 = v147;

      v149 = sub_1D8CFA924(v146, v148, &v225);

      *(v31 + 34) = v149;
      _os_log_impl(&dword_1D8CEC000, v139, v140, "Job %{private,mask.hash}s: inserting new episode for server episode: %{private,mask.hash}s", v31, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v141, -1, -1);
      MEMORY[0x1DA72CB90](v31, -1, -1);

      v34 = &selRef_isBackCatalogItem;
      v124 = v209;
    }

    else
    {
    }

    v150 = *(v193 + 8);
    v151 = __OFADD__(v150, 1);
    v152 = v150 + 1;
    v28 = v204;
    v153 = v219;
    if (v151)
    {
      goto LABEL_126;
    }

    *(v193 + 8) = v152;
    if (v124)
    {
LABEL_92:
      v31 = v124;
      v159 = v206;
      sub_1D9176E2C();
      sub_1D9176CCC();
      v161 = v160;
      (*v199)(v159, v207);
      [v31 firstTimeAvailable];
      if (v161 < v162)
      {
        [v31 firstTimeAvailableAsFree];
        if (v163 == 0.0)
        {
          [v31 setFirstTimeAvailable_];
          [v31 setFirstTimeAvailableAsFree_];
        }
      }
    }

    else
    {
      v31 = 0;
    }

    if (__ROR8__(0x8F5C28F5C28F5C29 * v221 + 0x51EB851EB851EB8, 3) <= 0x147AE147AE147AEuLL)
    {
      [v203 saveInCurrentBlock];

      v35 = v220 + 1;
      if (__OFADD__(v220, 1))
      {
        goto LABEL_128;
      }
    }

    else
    {

      v35 = v220 + 1;
      if (__OFADD__(v220, 1))
      {
        goto LABEL_127;
      }
    }

LABEL_12:
    v31 = v213;
    if (v35 >= v212)
    {
      goto LABEL_104;
    }
  }

  v46 = 0;
  v209 = v45;
  do
  {
    v221 = v31;
    if (v210)
    {
      v61 = MEMORY[0x1DA72AA90](v31, v215);
    }

    else
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
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
        goto LABEL_129;
      }

      if (v31 >= *(v211 + 16))
      {
        goto LABEL_123;
      }

      v61 = *(v215 + 8 * v31 + 32);
    }

    v62 = v61;

    v28 = v62;
    v63 = v219;
    if (sub_1D8F601B8(v28, v219))
    {

      v121 = (v221 + 1);
      v223 = v221 + 1;
      v46 = v28;
      goto LABEL_71;
    }

    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v64 = sub_1D917744C();
    __swift_project_value_buffer(v64, qword_1EDCD1070);

    v65 = v63;
    v66 = sub_1D917741C();
    v67 = sub_1D9178D1C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v225 = v69;
      *v68 = v208;
      *(v68 + 4) = 1752392040;
      *(v68 + 12) = 2081;
      v70 = sub_1D9176ACC();
      v72 = sub_1D8CFA924(v70, v71, &v225);

      *(v68 + 14) = v72;
      *(v68 + 22) = 2080;
      v73 = [v65 title];

      if (!v73)
      {
        goto LABEL_132;
      }

      v74 = sub_1D917820C();
      v76 = v75;

      v77 = sub_1D8CFA924(v74, v76, &v225);

      *(v68 + 24) = v77;
      _os_log_impl(&dword_1D8CEC000, v66, v67, "Job %{private,mask.hash}s: did not find a local episode match for server episode: %s", v68, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v69, -1, -1);
      MEMORY[0x1DA72CB90](v68, -1, -1);

      v34 = &selRef_isBackCatalogItem;
    }

    else
    {
    }

    v78 = [v65 v34[486]];
    v27 = v216;
    if (v78)
    {
      v79 = v202;
      v80 = v78;
      sub_1D9176DFC();

      v81 = v201;
      v82 = v207;
      (*v198)(v201, v79, v207);
      [v28 v34[486]];
      v83 = v206;
      sub_1D9176CBC();
      LOBYTE(v80) = sub_1D9176DAC();
      v84 = *v199;
      (*v199)(v83, v82);
      v84(v81, v82);
      if (v80)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v85 = [v28 guid];
      if (!v85)
      {
LABEL_69:

        v34 = &selRef_isBackCatalogItem;
LABEL_78:
        v37 = v219;
        goto LABEL_79;
      }
    }

    v86 = [v28 uuid];
    if (v86)
    {
      v87 = v86;
      v88 = sub_1D917820C();
      v90 = v89;

      sub_1D8D19AFC(&v225, v88, v90);
    }

    else
    {

      v91 = v28;
      v92 = sub_1D917741C();
      v93 = sub_1D9178CFC();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        v222 = v196;
        *v94 = v200;
        *(v94 + 4) = 1752392040;
        *(v94 + 12) = 2081;
        v95 = sub_1D9176ACC();
        v97 = sub_1D8CFA924(v95, v96, &v222);

        *(v94 + 14) = v97;
        *(v94 + 22) = 2160;
        *(v94 + 24) = 1752392040;
        *(v94 + 32) = 2081;
        v98 = [v91 title];
        if (v98)
        {
          v99 = v98;
          v100 = sub_1D917820C();
          v102 = v101;
        }

        else
        {
          v100 = 0;
          v102 = 0;
        }

        v225 = v100;
        v226 = v102;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
        v103 = sub_1D917826C();
        v105 = sub_1D8CFA924(v103, v104, &v222);

        *(v94 + 34) = v105;
        _os_log_impl(&dword_1D8CEC000, v92, v93, "Job %{private,mask.hash}s: nil UUID for localEpisode no longer in server feed: %{private,mask.hash}s", v94, 0x2Au);
        v106 = v196;
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v106, -1, -1);
        MEMORY[0x1DA72CB90](v94, -1, -1);

        v27 = v216;
      }

      else
      {
      }
    }

    v31 = v221 + 1;
    v223 = v221 + 1;

    v46 = v28;
    v107 = sub_1D917741C();
    v108 = sub_1D9178D1C();

    if (os_log_type_enabled(v107, v108))
    {
      v221 = v31;
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v222 = v110;
      *v109 = v208;
      *(v109 + 4) = 1752392040;
      *(v109 + 12) = 2081;
      v111 = sub_1D9176ACC();
      v113 = sub_1D8CFA924(v111, v112, &v222);

      *(v109 + 14) = v113;
      *(v109 + 22) = 2082;
      v114 = [v46 uuid];

      if (v114)
      {
        v115 = sub_1D917820C();
        v117 = v116;
      }

      else
      {
        v115 = 0;
        v117 = 0;
      }

      v225 = v115;
      v226 = v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
      v118 = sub_1D917826C();
      v120 = sub_1D8CFA924(v118, v119, &v222);

      *(v109 + 24) = v120;
      _os_log_impl(&dword_1D8CEC000, v107, v108, "Job %{private,mask.hash}s: marking episode for deletion: %{public}s", v109, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v110, -1, -1);
      MEMORY[0x1DA72CB90](v109, -1, -1);

      v27 = v216;
      v31 = v221;
    }

    else
    {
    }

    v34 = &selRef_isBackCatalogItem;
    v121 = v209;
    if (__ROR8__(0x8F5C28F5C28F5C29 * v31 + 0x51EB851EB851EB8, 3) <= 0x147AE147AE147AEuLL)
    {
      [v203 saveInCurrentBlock];
    }
  }

  while (v121 != v31);
  if (!v46)
  {
    v28 = 0;
    v221 = v121;
    goto LABEL_78;
  }

LABEL_71:
  v122 = v46;

  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v123 = sub_1D917744C();
  __swift_project_value_buffer(v123, qword_1EDCD1070);

  v124 = v28;
  v125 = sub_1D917741C();
  v126 = sub_1D9178D1C();

  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v222 = v128;
    *v127 = v208;
    *(v127 + 4) = 1752392040;
    *(v127 + 12) = 2081;
    v129 = sub_1D9176ACC();
    v131 = sub_1D8CFA924(v129, v130, &v222);

    *(v127 + 14) = v131;
    *(v127 + 22) = 2082;
    v132 = [v124 uuid];
    if (v132)
    {
      v133 = v132;
      v134 = sub_1D917820C();
      v136 = v135;
    }

    else
    {
      v134 = 0;
      v136 = 0;
    }

    v225 = v134;
    v226 = v136;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
    v154 = sub_1D917826C();
    v156 = sub_1D8CFA924(v154, v155, &v222);

    *(v127 + 24) = v156;
    _os_log_impl(&dword_1D8CEC000, v125, v126, "Job %{private,mask.hash}s: updating episode: %{public}s", v127, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v128, -1, -1);
    MEMORY[0x1DA72CB90](v127, -1, -1);

    v34 = &selRef_isBackCatalogItem;
  }

  else
  {
  }

  v157 = *(v193 + 16);
  v151 = __OFADD__(v157, 1);
  v158 = v157 + 1;
  v28 = v204;
  v153 = v219;
  if (!v151)
  {
    v221 = v121;
    *(v193 + 16) = v158;
    goto LABEL_92;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_1D8F5CA58(void *a1)
{
  v1 = [a1 items];
  if (v1)
  {
    v2 = v1;
    v6 = 0;
    sub_1D8CF2154(0, &qword_1ECAAFDE0, off_1E8567518);
    sub_1D91785EC();
  }

  sub_1D8D77098();
  v3 = swift_allocError();
  *v4 = 5;
  v7[0] = v3;
  memset(&v7[1], 0, 24);
  v8 = 96;
  sub_1D8DA168C(v7);

  return 0;
}

uint64_t sub_1D8F5CD68()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v2 = objc_opt_self();
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = [v2 predicateForAllEpisodesIncludingHiddenOnPodcastUuid_];

  [v1 setPredicate_];
  sub_1D8F60098();
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v5 = sub_1D91785DC();

  [v1 setSortDescriptors_];

  [v1 setReturnsObjectsAsFaults_];
  [v1 setFetchBatchSize_];
  v6 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v7 = sub_1D917908C();

  return v7;
}

void sub_1D8F5CEFC(uint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v49 = a1;
  v5 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); v5 < i; i = sub_1D917935C())
  {
    v52 = v3 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
    v56 = v4 & 0xC000000000000001;
    v51 = v4 & 0xFFFFFFFFFFFFFF8;
    v54 = i;
    v55 = v4;
    v53 = v3;
    while (1)
    {
      if (v56)
      {
        v7 = MEMORY[0x1DA72AA90](v5, v4);
        goto LABEL_11;
      }

      if (v5 < 0)
      {
        break;
      }

      if (v5 >= *(v51 + 16))
      {
        goto LABEL_31;
      }

      v7 = *(v4 + 8 * v5 + 32);
LABEL_11:
      v8 = v7;
      v9 = [v7 uuid];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1D917820C();
        v13 = v12;

        sub_1D8D19AFC(&v57, v11, v13);
      }

      else
      {
        if (qword_1EDCD1068 != -1)
        {
          swift_once();
        }

        v14 = sub_1D917744C();
        __swift_project_value_buffer(v14, qword_1EDCD1070);

        v15 = v8;
        v16 = sub_1D917741C();
        v17 = sub_1D9178CFC();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v59 = v50;
          *v18 = 141558787;
          *(v18 + 4) = 1752392040;
          *(v18 + 12) = 2081;
          v19 = v52 + *(type metadata accessor for FeedUpdateRequest() + 20);
          v20 = sub_1D9176ACC();
          v22 = sub_1D8CFA924(v20, v21, &v59);

          *(v18 + 14) = v22;
          *(v18 + 22) = 2160;
          *(v18 + 24) = 1752392040;
          *(v18 + 32) = 2081;
          v23 = [v15 title];
          if (v23)
          {
            v24 = v23;
            v25 = sub_1D917820C();
            v27 = v26;
          }

          else
          {
            v25 = 0;
            v27 = 0;
          }

          v57 = v25;
          v58 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
          v28 = sub_1D917826C();
          v30 = sub_1D8CFA924(v28, v29, &v59);

          *(v18 + 34) = v30;
          _os_log_impl(&dword_1D8CEC000, v16, v17, "Job %{private,mask.hash}s: nil UUID for localEpisode no longer in server feed: %{private,mask.hash}s", v18, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1DA72CB90](v50, -1, -1);
          MEMORY[0x1DA72CB90](v18, -1, -1);

          i = v54;
          v4 = v55;
          v3 = v53;
        }

        else
        {
        }
      }

      if (qword_1EDCD1068 != -1)
      {
        swift_once();
      }

      v31 = sub_1D917744C();
      __swift_project_value_buffer(v31, qword_1EDCD1070);

      v32 = v8;
      v33 = sub_1D917741C();
      v34 = sub_1D9178D1C();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v59 = v36;
        *v35 = 141558787;
        *(v35 + 4) = 1752392040;
        *(v35 + 12) = 2081;
        v37 = v52 + *(type metadata accessor for FeedUpdateRequest() + 20);
        v38 = sub_1D9176ACC();
        v40 = sub_1D8CFA924(v38, v39, &v59);

        *(v35 + 14) = v40;
        *(v35 + 22) = 2160;
        *(v35 + 24) = 1752392040;
        *(v35 + 32) = 2081;
        v41 = [v32 uuid];
        if (v41)
        {
          v42 = v41;
          v43 = sub_1D917820C();
          v45 = v44;
        }

        else
        {
          v43 = 0;
          v45 = 0;
        }

        v57 = v43;
        v58 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
        v46 = sub_1D917826C();
        v48 = sub_1D8CFA924(v46, v47, &v59);

        *(v35 + 34) = v48;
        _os_log_impl(&dword_1D8CEC000, v33, v34, "Job %{private,mask.hash}s: marking episode for deletion from tail end: %{private,mask.hash}s", v35, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v36, -1, -1);
        MEMORY[0x1DA72CB90](v35, -1, -1);

        i = v54;
        v4 = v55;
        v3 = v53;
      }

      else
      {
      }

      if (i == ++v5)
      {
        *v49 = i;
        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }
}

void sub_1D8F5D45C(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v5 = objc_opt_self();
  v6 = sub_1D9178A8C();
  v7 = [v5 predicateForEpisodeUuids_];

  [v4 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189070;
  *(v8 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:@"pubDate" ascending:0];
  v9 = v2;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v10 = sub_1D91785DC();

  [v4 setSortDescriptors_];

  [v4 setReturnsObjectsAsFaults_];
  [v4 setFetchBatchSize_];
  v11 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v50 = v11;
  v51 = v4;
  v12 = sub_1D917908C();
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1EDCD1070);
  swift_bridgeObjectRetain_n();

  v14 = sub_1D917741C();
  LOBYTE(v15) = sub_1D9178D1C();

  v16 = &unk_1D918A000;
  v17 = v12 >> 62;
  v55 = v12;
  v56 = v9;
  if (!os_log_type_enabled(v14, v15))
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_8;
  }

  v12 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v58[0] = v8;
  *v12 = 141558531;
  *(v12 + 4) = 1752392040;
  *(v12 + 12) = 2081;
  v18 = v9 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
  v19 = v18 + *(type metadata accessor for FeedUpdateRequest() + 20);
  v20 = sub_1D9176ACC();
  v22 = sub_1D8CFA924(v20, v21, v58);

  *(v12 + 14) = v22;
  *(v12 + 22) = 2048;
  if (v17)
  {
    goto LABEL_27;
  }

  v23 = v55;
  for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
  {

    *(v12 + 24) = i;

    _os_log_impl(&dword_1D8CEC000, v14, v15, "Job %{private,mask.hash}s: deleting %ld feed deleted episodes", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);

    v9 = v56;
    v12 = v23;
    v16 = &unk_1D918A000;
LABEL_8:
    v25 = *(a1 + 16);
    v26 = *(v9 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData + 24);
    v27 = __OFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      __break(1u);
    }

    else
    {
      *(v9 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData + 24) = v28;
      if (!v17)
      {
        v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }
    }

    v15 = sub_1D917935C();
    if (!v15)
    {
      goto LABEL_25;
    }

LABEL_11:
    if (v15 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_27:
    v23 = v55;
  }

  v29 = 0;
  v54 = v9 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
  v30 = v12 & 0xC000000000000001;
  v52 = v16[50];
  v53 = v15;
  do
  {
    if (v30)
    {
      v31 = MEMORY[0x1DA72AA90](v29, v12);
    }

    else
    {
      v31 = *(v12 + 8 * v29 + 32);
    }

    v32 = v31;
    [a2 unsafeDeleteFeedDeletedEpisode_];

    v33 = v32;
    v34 = sub_1D917741C();
    v35 = sub_1D9178D1C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v59[0] = v37;
      *v36 = v52;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      v38 = v54 + *(type metadata accessor for FeedUpdateRequest() + 20);
      v39 = sub_1D9176ACC();
      v41 = sub_1D8CFA924(v39, v40, v59);

      *(v36 + 14) = v41;
      *(v36 + 22) = 2082;
      v42 = [v33 uuid];
      if (v42)
      {
        v43 = v42;
        v44 = sub_1D917820C();
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0;
      }

      v58[0] = v44;
      v58[1] = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
      v47 = sub_1D917826C();
      v49 = sub_1D8CFA924(v47, v48, v59);

      *(v36 + 24) = v49;
      _os_log_impl(&dword_1D8CEC000, v34, v35, "Job %{private,mask.hash}s: deleting episode %{public}s", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v37, -1, -1);
      MEMORY[0x1DA72CB90](v36, -1, -1);

      v12 = v55;
      v15 = v53;
    }

    else
    {
    }

    ++v29;
  }

  while (v15 != v29);
LABEL_25:

  [v50 saveInCurrentBlock];
}

uint64_t sub_1D8F5DAC0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  v3 = *(type metadata accessor for FeedUpdateRequest() + 20);
  sub_1D9176ACC();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v5 = [v2 podcastForFeedUrl_];

  if (v5)
  {
    if (*(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_feedUniquenessHash + 8))
    {
      v6 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_feedUniquenessHash);
      v7 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_feedUniquenessHash + 8);

      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    else
    {
      v8 = 0;
    }

    [v5 setFeedUniquenessHash_];

    [v2 saveInCurrentBlock];
  }

  else
  {
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1EDCD1070);

    v10 = sub_1D917741C();
    v11 = sub_1D9178CFC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v19[0] = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      v14 = sub_1D9176ACC();
      v16 = sub_1D8CFA924(v14, v15, v19);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "Job %{private,mask.hash}s: Unable to save data uniqueness hash.", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }
  }

  v17 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData + 16);
  v19[0] = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData);
  v19[1] = v17;
  v20 = 0x80;
  return sub_1D8DA168C(v19);
}

uint64_t sub_1D8F5DD30()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_1D8DA2014();
}

id sub_1D8F5DD6C(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return result;
  }

  return result;
}

void sub_1D8F5DD78(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }
}

uint64_t sub_1D8F5DD94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D8F5DE20(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D8F5DF10(void *a1, void *a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v19 = [a1 pubDate];
  if (v19)
  {
    v41 = a1;
    v20 = a2;
    v21 = v19;
    sub_1D9176DFC();

    v22 = v5[4];
    v22(v18, v14, v4);
    v23 = [v20 pubDate];
    if (v23)
    {
      v24 = v23;
      sub_1D9176DFC();

      v22(v11, v8, v4);
      sub_1D8DA1F0C(&qword_1EDCD5940, MEMORY[0x1E6969530]);
      LOBYTE(v24) = sub_1D917818C();
      v25 = v5[1];
      v25(v11, v4);
      v25(v18, v4);
      v26 = v24 ^ 1;
      return v26 & 1;
    }

    (v5[1])(v18, v4);
    a2 = v20;
    a1 = v41;
  }

  v27 = [a1 guid];
  if (!v27)
  {
    goto LABEL_11;
  }

  v28 = v27;
  v29 = sub_1D917820C();
  v31 = v30;

  v32 = [a2 guid];
  if (!v32)
  {

LABEL_11:
    v37 = [a2 guid];
    if (v37)
    {

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    return v26 & 1;
  }

  v33 = v32;
  v34 = sub_1D917820C();
  v36 = v35;

  if (v29 == v34 && v31 == v36)
  {

    v26 = 1;
  }

  else
  {
    v38 = sub_1D9179ACC();

    v26 = v38 ^ 1;
  }

  return v26 & 1;
}

uint64_t sub_1D8F5E254(void **a1, id *a2, void **a3, void **a4)
{
  v110 = sub_1D9176E3C();
  v8 = *(v110 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v102 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v98 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v98 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v98 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v98 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v99 = &v98 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v107 = (&v98 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v98 - v24;
  v25 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v25 = a2 - a1;
  }

  v26 = v25 >> 3;
  v114 = a3;
  v27 = a3 - a2;
  v28 = v27 / 8;
  v113 = a4;
  if (v25 >> 3 >= v27 / 8)
  {
    if (a4 != a2 || &a2[v28] <= a4)
    {
      memmove(a4, a2, 8 * v28);
    }

    v29 = &a4[v28];
    if (v27 < 8 || a2 <= a1)
    {
      goto LABEL_62;
    }

    v109 = (v8 + 32);
    v104 = (v8 + 8);
    v62 = &selRef_allPlayedEpsWeight;
    v106 = a1;
LABEL_37:
    v103 = a2;
    v63 = a2 - 1;
    --v114;
    v64 = v29;
    v65 = v108;
    v107 = v63;
    while (1)
    {
      v66 = *--v64;
      v67 = *v63;
      v68 = v66;
      v69 = v67;
      v70 = [v68 pubDate];
      if (v70)
      {
        v71 = v105;
        v72 = v69;
        v73 = v70;
        sub_1D9176DFC();

        v69 = v72;
        v74 = v110;
        v75 = *v109;
        (*v109)(v65, v71, v110);
        v76 = [v69 pubDate];
        if (v76)
        {
          v77 = v102;
          v111 = v69;
          v78 = v76;
          sub_1D9176DFC();

          v79 = v101;
          v80 = v77;
          v62 = &selRef_allPlayedEpsWeight;
          v75(v101, v80, v74);
          sub_1D8DA1F0C(&qword_1EDCD5940, MEMORY[0x1E6969530]);
          v81 = sub_1D917818C();
          v82 = *v104;
          v83 = v79;
          v65 = v108;
          (*v104)(v83, v74);
          v82(v65, v74);

          goto LABEL_48;
        }

        (*v104)(v65, v74);
        v63 = v107;
      }

      v84 = [v68 v62[381]];
      if (!v84)
      {
        goto LABEL_51;
      }

      v112 = v29;
      v85 = v84;
      v86 = sub_1D917820C();
      v88 = v87;

      v89 = v62[381];
      v111 = v69;
      v90 = [v69 v89];
      if (!v90)
      {

        v69 = v111;
        v29 = v112;
LABEL_51:
        v95 = v69;
        v96 = [v69 v62[381]];

        if (!v96)
        {
          goto LABEL_56;
        }

        goto LABEL_53;
      }

      v91 = v90;
      v92 = sub_1D917820C();
      v94 = v93;

      if (v86 == v92 && v88 == v94)
      {

        v29 = v112;
        v62 = &selRef_allPlayedEpsWeight;
        v63 = v107;
LABEL_56:
        if (v114 + 1 != v103)
        {
          *v114 = *v63;
        }

        if (v29 <= v113 || (a2 = v63, v63 <= v106))
        {
          a2 = v63;
          goto LABEL_62;
        }

        goto LABEL_37;
      }

      v81 = sub_1D9179ACC();

      v29 = v112;
      v62 = &selRef_allPlayedEpsWeight;
LABEL_48:
      v63 = v107;
      if ((v81 & 1) == 0)
      {
        goto LABEL_56;
      }

LABEL_53:
      if (v114 + 1 != v29)
      {
        *v114 = *v64;
      }

      --v114;
      v29 = v64;
      if (v64 <= v113)
      {
        v29 = v64;
        a2 = v103;
        goto LABEL_62;
      }
    }
  }

  if (a4 != a1 || &a1[v26] <= v113)
  {
    memmove(v113, a1, 8 * v26);
  }

  v29 = &v113[v26];
  if (a2 - a1 >= 8 && a2 < v114)
  {
    v109 = (v8 + 32);
    v105 = (v8 + 8);
    v30 = &selRef_isBackCatalogItem;
    v31 = &selRef_allPlayedEpsWeight;
    v112 = &v113[v26];
    while (1)
    {
      v32 = *v113;
      v33 = *a2;
      v34 = v32;
      v35 = [v33 v30[486]];
      if (v35)
      {
        v111 = v33;
        v36 = v107;
        v37 = v35;
        sub_1D9176DFC();

        v38 = v110;
        v39 = *v109;
        v40 = v104;
        (*v109)(v104, v36, v110);
        v41 = [v34 v30[486]];
        if (v41)
        {
          v42 = a2;
          v43 = v100;
          v44 = v41;
          sub_1D9176DFC();

          v108 = v34;
          v45 = v99;
          v46 = v43;
          a2 = v42;
          v39(v99, v46, v38);
          sub_1D8DA1F0C(&qword_1EDCD5940, MEMORY[0x1E6969530]);
          LOBYTE(v44) = sub_1D917818C();
          v47 = *v105;
          (*v105)(v45, v38);
          v30 = &selRef_isBackCatalogItem;
          v47(v40, v38);

          v31 = &selRef_allPlayedEpsWeight;
          if ((v44 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        (*v105)(v40, v38);
        v31 = &selRef_allPlayedEpsWeight;
        v33 = v111;
      }

      v48 = [v33 v31[381]];
      if (!v48)
      {
        goto LABEL_21;
      }

      v106 = a1;
      v49 = v48;
      v50 = sub_1D917820C();
      v52 = v51;

      v53 = [v34 v31[381]];
      if (!v53)
      {
        break;
      }

      v103 = a2;
      v54 = v53;
      v55 = sub_1D917820C();
      v57 = v56;

      if (v50 == v55 && v52 == v57)
      {

        a2 = v103;
        a1 = v106;
LABEL_26:
        v60 = a2;
        v61 = a1 == a2++;
        v29 = v112;
        if (v61)
        {
          goto LABEL_28;
        }

LABEL_27:
        *a1 = *v60;
        goto LABEL_28;
      }

      v59 = sub_1D9179ACC();

      a2 = v103;
      a1 = v106;
      if ((v59 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_24:
      v60 = v113++;
      v29 = v112;
      if (a1 != v60)
      {
        goto LABEL_27;
      }

LABEL_28:
      ++a1;
      if (v113 >= v29 || a2 >= v114)
      {
        goto LABEL_30;
      }
    }

    a1 = v106;
LABEL_21:
    v58 = [v34 v31[381]];

    if (!v58)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_30:
  a2 = a1;
LABEL_62:
  if (a2 != v113 || a2 >= (v113 + ((v29 - v113 + (v29 - v113 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v113, 8 * ((v29 - v113) / 8));
  }

  return 1;
}

uint64_t sub_1D8F5EB98(char **a1, void **a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *a1;

  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v22 = sub_1D8F5DE20(v22);
  }

  v19 = v5;
  *v5 = v22;
  v7 = (v22 + 16);
  v8 = *(v22 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v19 = v22;
    return 1;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = v4;
      v11 = &v22[16 * v8];
      v5 = *v11;
      v12 = &v7[2 * v8];
      v13 = v12[1];
      v23 = (v9 + 8 * *v11);
      v14 = (v9 + 8 * *v12);
      v15 = (v9 + 8 * v13);

      sub_1D8F5E254(v23, v14, v15, a2);
      v4 = v10;

      if (v10)
      {
        *v19 = v22;

        return 1;
      }

      if (v13 < v5)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v7;
      if (v8 - 2 >= *v7)
      {
        goto LABEL_13;
      }

      *v11 = v5;
      *(v11 + 1) = v13;
      v17 = v16 - v8;
      if (v16 < v8)
      {
        goto LABEL_14;
      }

      v8 = v16 - 1;
      memmove(v12, v12 + 2, 16 * v17);
      *v7 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v22;
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8F5ED3C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v170 = a1;
  v8 = sub_1D9176E3C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v186 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v185 = &v169 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v188 = &v169 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v187 = &v169 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v172 = &v169 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v171 = &v169 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v174 = &v169 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v173 = &v169 - v25;
  v194 = MEMORY[0x1E69E7CC0];
  v180 = a3;
  v26 = a3[1];
  if (v26 >= 1)
  {
    v189 = (v24 + 8);
    v190 = (v24 + 32);
    swift_retain_n();
    v27 = 0;
    v182 = MEMORY[0x1E69E7CC0];
    v28 = 0x1FAAD3000;
    v179 = a5;
    v169 = a4;
    v184 = v8;
    while (1)
    {
      v176 = v27;
      v29 = v27 + 1;
      if (v27 + 1 < v26)
      {
        v30 = *v180;
        v31 = *(*v180 + 8 * v176);
        v32 = *(*v180 + 8 * v29);
        v33 = v31;
        LODWORD(v193) = sub_1D8F5DF10(v32, v33);

        v34 = v176;
        v29 = v176 + 2;
        if (v176 + 2 < v26)
        {
          v183 = v176 + 2;
          v35 = &v30[v176 + 2];
          v191 = v26;
          while (1)
          {
            v44 = *(v35 - 1);
            v45 = *v35;
            v46 = v44;
            v47 = [v45 pubDate];
            if (v47)
            {
              v48 = v174;
              v49 = v47;
              sub_1D9176DFC();

              v50 = *v190;
              v51 = v173;
              (*v190)(v173, v48, v8);
              v52 = [v46 pubDate];
              if (v52)
              {
                v36 = v172;
                v37 = v8;
                v38 = v51;
                v39 = v52;
                sub_1D9176DFC();

                v192 = v46;
                v40 = v171;
                v50(v171, v36, v37);
                sub_1D8DA1F0C(&qword_1EDCD5940, MEMORY[0x1E6969530]);
                LODWORD(v39) = sub_1D917818C();
                v41 = *v189;
                (*v189)(v40, v37);
                v42 = v38;
                v8 = v37;
                v41(v42, v37);

                v43 = v39 ^ 1;
                v26 = v191;
                goto LABEL_8;
              }

              (*v189)(v51, v8);
              v26 = v191;
            }

            v53 = [v45 guid];
            if (!v53)
            {
              goto LABEL_19;
            }

            v54 = v53;
            v55 = sub_1D917820C();
            v57 = v56;

            v58 = [v46 guid];
            if (!v58)
            {

LABEL_19:
              v64 = [v46 guid];

              if (v64)
              {

                if (v193)
                {
                  a4 = v169;
                  v28 = 0x1FAAD3000;
                  v29 = v183;
                  v34 = v176;
                  if (v183 < v176)
                  {
                    goto LABEL_145;
                  }

                  goto LABEL_31;
                }
              }

              else if ((v193 & 1) == 0)
              {
                a4 = v169;
                v28 = 0x1FAAD3000uLL;
                v29 = v183;
                goto LABEL_39;
              }

              goto LABEL_9;
            }

            v59 = v46;
            v60 = v58;
            v61 = sub_1D917820C();
            v63 = v62;

            if (v55 == v61 && v57 == v63)
            {

              v43 = 1;
            }

            else
            {
              v65 = sub_1D9179ACC();

              v43 = v65 ^ 1;
            }

            v8 = v184;

LABEL_8:
            if ((v193 ^ v43))
            {
              a4 = v169;
              v29 = v183;
              goto LABEL_28;
            }

LABEL_9:
            ++v35;
            if (v26 == ++v183)
            {
              v29 = v26;
              a4 = v169;
LABEL_28:
              v34 = v176;
              break;
            }
          }
        }

        v28 = 0x1FAAD3000;
        if (v193)
        {
          if (v29 < v34)
          {
            goto LABEL_145;
          }

LABEL_31:
          if (v34 < v29)
          {
            v66 = 8 * v29 - 8;
            v67 = v34;
            v68 = v29;
            do
            {
              if (v34 != --v68)
              {
                v69 = *v180;
                if (!*v180)
                {
                  goto LABEL_150;
                }

                v70 = v69[v67];
                v69[v67] = *(v69 + v66);
                *(v69 + v66) = v70;
              }

              ++v34;
              v66 -= 8;
              ++v67;
            }

            while (v34 < v68);
          }
        }
      }

LABEL_39:
      v71 = v180[1];
      if (v29 >= v71)
      {
        goto LABEL_70;
      }

      if (__OFSUB__(v29, v176))
      {
        goto LABEL_144;
      }

      if (v29 - v176 >= a4)
      {
LABEL_70:
        v73 = v176;
      }

      else
      {
        if (__OFADD__(v176, a4))
        {
          goto LABEL_146;
        }

        if (v176 + a4 >= v71)
        {
          v72 = v180[1];
        }

        else
        {
          v72 = v176 + a4;
        }

        if (v72 < v176)
        {
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
          return result;
        }

        v73 = v176;
        if (v29 != v72)
        {
          v193 = *v180;
          v74 = &v193[v29 - 1];
          v75 = v176 - v29;
          v76 = v28;
          v175 = v72;
          while (1)
          {
            v183 = v29;
            v77 = v193[v29];
            v177 = v75;
            v178 = v74;
            v78 = v75;
            while (1)
            {
              v79 = *v74;
              v80 = v77;
              v81 = v79;
              v82 = [v80 pubDate];
              if (v82)
              {
                v83 = v188;
                v84 = v82;
                sub_1D9176DFC();

                v85 = *v190;
                v86 = v187;
                (*v190)(v187, v83, v8);
                v87 = [v81 pubDate];
                if (v87)
                {
                  v88 = v186;
                  v192 = v80;
                  v89 = v8;
                  v90 = v86;
                  v91 = v87;
                  sub_1D9176DFC();

                  v191 = v81;
                  v92 = v185;
                  v85(v185, v88, v89);
                  sub_1D8DA1F0C(&qword_1EDCD5940, MEMORY[0x1E6969530]);
                  LOBYTE(v91) = sub_1D917818C();
                  v93 = *v189;
                  (*v189)(v92, v89);
                  v94 = v90;
                  v8 = v89;
                  v93(v94, v89);

                  v76 = 0x1E856F000;
                  if (v91)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_65;
                }

                (*v189)(v86, v8);
                v76 = 0x1E856F000;
              }

              v95 = [v80 *(v76 + 3048)];
              if (v95)
              {
                v96 = v80;
                v97 = v95;
                v98 = sub_1D917820C();
                v100 = v99;

                v101 = *(v76 + 3048);
                v102 = v81;
                v103 = [v81 v101];
                if (v103)
                {
                  v104 = v103;
                  v105 = sub_1D917820C();
                  v107 = v106;

                  if (v98 == v105 && v100 == v107)
                  {

                    v8 = v184;
                    v76 = 0x1E856F000;
                  }

                  else
                  {
                    v109 = sub_1D9179ACC();

                    v8 = v184;
                    v76 = 0x1E856F000;
                    if (v109)
                    {
                      goto LABEL_49;
                    }
                  }

                  goto LABEL_65;
                }

                v80 = v96;
                v76 = 0x1E856F000;
              }

              v108 = [v81 *(v76 + 3048)];

              if (v108)
              {
                break;
              }

LABEL_65:
              if (!v193)
              {
                goto LABEL_148;
              }

              v110 = *v74;
              v77 = v74[1];
              *v74 = v77;
              v74[1] = v110;
              --v74;
              if (__CFADD__(v78++, 1))
              {
                goto LABEL_49;
              }
            }

LABEL_49:
            v29 = v183 + 1;
            v74 = v178 + 1;
            v75 = v177 - 1;
            if (v183 + 1 == v175)
            {
              v29 = v175;
              goto LABEL_70;
            }
          }
        }
      }

      v112 = v182;
      if (v29 < v73)
      {
        goto LABEL_143;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_1D8ECC734(0, *(v112 + 2) + 1, 1, v112);
      }

      v114 = *(v112 + 2);
      v113 = *(v112 + 3);
      v115 = v114 + 1;
      if (v114 >= v113 >> 1)
      {
        v112 = sub_1D8ECC734((v113 > 1), v114 + 1, 1, v112);
      }

      *(v112 + 2) = v115;
      v116 = v112 + 32;
      v117 = &v112[16 * v114 + 32];
      *v117 = v176;
      *(v117 + 1) = v29;
      v193 = *v170;
      if (!v193)
      {
        goto LABEL_151;
      }

      v182 = v112;
      v183 = v29;
      if (v114)
      {
        while (1)
        {
          v118 = v115 - 1;
          if (v115 >= 4)
          {
            break;
          }

          if (v115 == 3)
          {
            v119 = *(v112 + 4);
            v120 = *(v112 + 5);
            v129 = __OFSUB__(v120, v119);
            v121 = v120 - v119;
            v122 = v129;
LABEL_91:
            if (v122)
            {
              goto LABEL_133;
            }

            v135 = &v112[16 * v115];
            v137 = *v135;
            v136 = *(v135 + 1);
            v138 = __OFSUB__(v136, v137);
            v139 = v136 - v137;
            v140 = v138;
            if (v138)
            {
              goto LABEL_135;
            }

            v141 = &v116[16 * v118];
            v143 = *v141;
            v142 = *(v141 + 1);
            v129 = __OFSUB__(v142, v143);
            v144 = v142 - v143;
            if (v129)
            {
              goto LABEL_138;
            }

            if (__OFADD__(v139, v144))
            {
              goto LABEL_140;
            }

            if (v139 + v144 >= v121)
            {
              if (v121 < v144)
              {
                v118 = v115 - 2;
              }

              goto LABEL_113;
            }

            goto LABEL_106;
          }

          if (v115 < 2)
          {
            goto LABEL_141;
          }

          v145 = &v112[16 * v115];
          v147 = *v145;
          v146 = *(v145 + 1);
          v129 = __OFSUB__(v146, v147);
          v139 = v146 - v147;
          v140 = v129;
LABEL_106:
          if (v140)
          {
            goto LABEL_137;
          }

          v148 = &v116[16 * v118];
          v150 = *v148;
          v149 = *(v148 + 1);
          v129 = __OFSUB__(v149, v150);
          v151 = v149 - v150;
          if (v129)
          {
            goto LABEL_139;
          }

          if (v151 < v139)
          {
            goto LABEL_3;
          }

LABEL_113:
          if (v118 - 1 >= v115)
          {
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
            goto LABEL_147;
          }

          v156 = *v180;
          if (!*v180)
          {
            goto LABEL_149;
          }

          v157 = &v116[16 * v118 - 16];
          v158 = *v157;
          v159 = &v116[16 * v118];
          v160 = *(v159 + 1);
          v161 = &v156[*v157];
          v162 = &v156[*v159];
          v163 = &v156[v160];

          v164 = v161;
          v165 = v181;
          sub_1D8F5E254(v164, v162, v163, v193);
          v181 = v165;
          if (v165)
          {

            v194 = v182;
            goto LABEL_125;
          }

          if (v160 < v158)
          {
            goto LABEL_128;
          }

          v166 = *(v182 + 2);
          if (v118 > v166)
          {
            goto LABEL_129;
          }

          *v157 = v158;
          *(v157 + 1) = v160;
          if (v118 >= v166)
          {
            goto LABEL_130;
          }

          v115 = v166 - 1;
          memmove(&v116[16 * v118], v159 + 16, 16 * (v166 - 1 - v118));
          v112 = v182;
          *(v182 + 2) = v166 - 1;
          v8 = v184;
          if (v166 <= 2)
          {
            goto LABEL_3;
          }
        }

        v123 = &v116[16 * v115];
        v124 = *(v123 - 8);
        v125 = *(v123 - 7);
        v129 = __OFSUB__(v125, v124);
        v126 = v125 - v124;
        if (v129)
        {
          goto LABEL_131;
        }

        v128 = *(v123 - 6);
        v127 = *(v123 - 5);
        v129 = __OFSUB__(v127, v128);
        v121 = v127 - v128;
        v122 = v129;
        if (v129)
        {
          goto LABEL_132;
        }

        v130 = &v112[16 * v115];
        v132 = *v130;
        v131 = *(v130 + 1);
        v129 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v129)
        {
          goto LABEL_134;
        }

        v129 = __OFADD__(v121, v133);
        v134 = v121 + v133;
        if (v129)
        {
          goto LABEL_136;
        }

        if (v134 >= v126)
        {
          v152 = &v116[16 * v118];
          v154 = *v152;
          v153 = *(v152 + 1);
          v129 = __OFSUB__(v153, v154);
          v155 = v153 - v154;
          if (v129)
          {
            goto LABEL_142;
          }

          if (v121 < v155)
          {
            v118 = v115 - 2;
          }

          goto LABEL_113;
        }

        goto LABEL_91;
      }

LABEL_3:
      v26 = v180[1];
      v27 = v183;
      a4 = v169;
      v28 = 0x1FAAD3000;
      if (v183 >= v26)
      {
        v194 = v182;
        goto LABEL_123;
      }
    }
  }

  swift_retain_n();
LABEL_123:
  v167 = *v170;
  if (!*v170)
  {
    goto LABEL_152;
  }

  sub_1D8F5EB98(&v194, v167, v180);

LABEL_125:
}

void sub_1D8F5FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D9176E3C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v50 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  v51 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v62 = (v16 + 32);
    v58 = (v16 + 8);
    v60 = v19;
    v61 = &v50 - v17;
    v20 = v19 + 8 * a3 - 8;
    v21 = a1 - a3;
    v55 = v8;
LABEL_5:
    v53 = v20;
    v54 = a3;
    v22 = *(v60 + 8 * a3);
    v52 = v21;
    while (1)
    {
      v23 = *v20;
      v24 = v22;
      v25 = v23;
      v26 = [v24 pubDate];
      if (v26)
      {
        v27 = v59;
        v28 = v26;
        sub_1D9176DFC();

        v29 = *v62;
        (*v62)(v18, v27, v8);
        v30 = [v25 pubDate];
        if (v30)
        {
          v31 = v57;
          v32 = v30;
          sub_1D9176DFC();

          v33 = v56;
          v29(v56, v31, v8);
          sub_1D8DA1F0C(&qword_1EDCD5940, MEMORY[0x1E6969530]);
          LOBYTE(v32) = sub_1D917818C();
          v34 = *v58;
          v35 = v33;
          v18 = v61;
          (*v58)(v35, v8);
          v34(v18, v8);

          if (v32)
          {
            goto LABEL_4;
          }

          goto LABEL_20;
        }

        (*v58)(v18, v8);
      }

      v36 = [v24 guid];
      if (v36)
      {
        v37 = v36;
        v38 = sub_1D917820C();
        v40 = v39;

        v41 = [v25 &selRef_autoupdatingCurrentLocale];
        if (v41)
        {
          v42 = v41;
          v43 = sub_1D917820C();
          v45 = v44;

          if (v38 == v43 && v40 == v45)
          {

            v8 = v55;
            v18 = v61;
          }

          else
          {
            v47 = sub_1D9179ACC();

            v8 = v55;
            v18 = v61;
            if (v47)
            {
              goto LABEL_4;
            }
          }

          goto LABEL_20;
        }

        v18 = v61;
      }

      v46 = [v25 guid];

      if (v46)
      {

LABEL_4:
        a3 = v54 + 1;
        v20 = v53 + 8;
        v21 = v52 - 1;
        if (v54 + 1 == v51)
        {
          return;
        }

        goto LABEL_5;
      }

LABEL_20:
      if (!v60)
      {
        __break(1u);
        return;
      }

      v48 = *v20;
      v22 = *(v20 + 8);
      *v20 = v22;
      *(v20 + 8) = v48;
      v20 -= 8;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }
  }
}

uint64_t sub_1D8F5FE94(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1D9179A2C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D8CF2154(0, &qword_1ECAAFDE0, off_1E8567518);
        v8 = sub_1D917867C();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v9[1] = v7;

      sub_1D8F5ED3C(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1D8F5FA58(0, v4, 1, a1);
  }
}

uint64_t sub_1D8F5FFE8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_1D915C740(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v7[1] = v5;

  sub_1D8F5FE94(v7, a2);

  *a1 = v4;
}

uint64_t sub_1D8F60098()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918C190;
  sub_1D917820C();
  v1 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  sub_1D917820C();
  v4 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6 = [v4 initWithKey:v5 ascending:0];

  *(v0 + 40) = v6;
  return v0;
}

uint64_t sub_1D8F601B8(void *a1, void *a2)
{
  v73 = sub_1D9176E3C();
  v4 = *(v73 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75B8, &qword_1D9197C80);
  v7 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v9 = &v68 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v70 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v68 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v68 - v18;
  v20 = [a2 guid];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1D917820C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v72 = v4;
  v25 = [a1 guid];
  if (!v25)
  {
    if (!v24)
    {
      return 1;
    }

    goto LABEL_13;
  }

  v26 = v25;
  v27 = sub_1D917820C();
  v29 = v28;

  if (!v24)
  {
    if (!v29)
    {
      return 1;
    }

    goto LABEL_13;
  }

  if (!v29)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (v22 == v27 && v24 == v29)
  {
    goto LABEL_22;
  }

  v51 = sub_1D9179ACC();

  if (v51)
  {
    return 1;
  }

LABEL_14:
  v30 = [a2 resolvedEnclosureUrl];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1D917820C();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [a1 enclosureURL];
  if (!v35)
  {
    if (!v34)
    {
      return 1;
    }

    goto LABEL_26;
  }

  v36 = v35;
  v37 = sub_1D917820C();
  v39 = v38;

  if (!v34)
  {
    if (!v39)
    {
      return 1;
    }

    goto LABEL_26;
  }

  if (!v39)
  {
LABEL_26:

    goto LABEL_27;
  }

  if (v32 == v37 && v34 == v39)
  {
LABEL_22:

    return 1;
  }

  v52 = sub_1D9179ACC();

  if (v52)
  {
    return 1;
  }

LABEL_27:
  result = [a2 title];
  if (result)
  {
    v41 = result;
    v42 = [result stringByStrippingHTML];

    if (v42)
    {
      v43 = sub_1D917820C();
      v45 = v44;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = [a1 title];
    if (v46)
    {
      v47 = v46;
      v48 = sub_1D917820C();
      v50 = v49;

      if (v45)
      {
        if (v50)
        {
          if (v43 == v48 && v45 == v50)
          {

LABEL_46:
            v54 = [a2 pubDate];
            if (v54)
            {
              v55 = v54;
              sub_1D9176DFC();

              v56 = v72;
              v57 = *(v72 + 56);
              v58 = v19;
              v59 = 0;
            }

            else
            {
              v56 = v72;
              v57 = *(v72 + 56);
              v58 = v19;
              v59 = 1;
            }

            v60 = v73;
            v57(v58, v59, 1, v73);
            [a1 pubDate];
            sub_1D9176CBC();
            v57(v15, 0, 1, v60);
            v61 = *(v71 + 48);
            sub_1D8CF6B1C(v19, v9);
            sub_1D8CF6B1C(v15, &v9[v61]);
            v62 = *(v56 + 48);
            if (v62(v9, 1, v60) == 1)
            {
              sub_1D8D08A50(v15, &qword_1ECAB75C0, &unk_1D9188A50);
              sub_1D8D08A50(v19, &qword_1ECAB75C0, &unk_1D9188A50);
              if (v62(&v9[v61], 1, v60) == 1)
              {
                sub_1D8D08A50(v9, &qword_1ECAB75C0, &unk_1D9188A50);
                return 1;
              }

              goto LABEL_54;
            }

            v63 = v70;
            sub_1D8CF6B1C(v9, v70);
            if (v62(&v9[v61], 1, v60) == 1)
            {
              sub_1D8D08A50(v15, &qword_1ECAB75C0, &unk_1D9188A50);
              sub_1D8D08A50(v19, &qword_1ECAB75C0, &unk_1D9188A50);
              (*(v56 + 8))(v63, v60);
LABEL_54:
              sub_1D8D08A50(v9, &qword_1ECAB75B8, &qword_1D9197C80);
              return 0;
            }

            v64 = v69;
            (*(v56 + 32))(v69, &v9[v61], v60);
            sub_1D8DA1F0C(&qword_1ECAB75C8, MEMORY[0x1E6969530]);
            v65 = v63;
            v66 = sub_1D91781BC();
            v67 = *(v56 + 8);
            v67(v64, v60);
            sub_1D8D08A50(v15, &qword_1ECAB75C0, &unk_1D9188A50);
            sub_1D8D08A50(v19, &qword_1ECAB75C0, &unk_1D9188A50);
            v67(v65, v60);
            sub_1D8D08A50(v9, &qword_1ECAB75C0, &unk_1D9188A50);
            return (v66 & 1) != 0;
          }

          v53 = sub_1D9179ACC();

          if (v53)
          {
            goto LABEL_46;
          }

          return 0;
        }
      }

      else if (!v50)
      {
        goto LABEL_46;
      }
    }

    else if (!v45)
    {
      goto LABEL_46;
    }

    return 0;
  }

  __break(1u);
  return result;
}

double ServerArtwork.__allocating_init(from:)(void *a1)
{
  v2 = [a1 artworkWidth];
  if (v2)
  {
    v3 = v2;
    sub_1D9178B7C();
  }

  v4 = [a1 artworkHeight];
  if (v4)
  {
    v5 = v4;
    sub_1D9178B7C();
  }

  v6 = [a1 artworkTemplateURL];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D917820C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [a1 artworkPrimaryColor];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D917820C();
    v15 = v14;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v13 = 0;
    v15 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 1;
  *(v16 + 32) = 0;
  *(v16 + 40) = 1;
  *(v16 + 48) = v8;
  *(v16 + 56) = v10;
  *(v16 + 64) = v13;
  *(v16 + 72) = v15;
  result = 0.0;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 0u;
  return result;
}

uint64_t sub_1D8F60B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D8E3151C(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D8E3151C((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D8D65618(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D8F60C24(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D8E3157C(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_1D8F1249C(v13, v5);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D8E3157C(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_1D8F61F74(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

char *sub_1D8F60E3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D917935C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D8E31600(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1DA72AA90](v5, a1);
        type metadata accessor for ServerCategory();
        swift_dynamicCast();
        v7 = *(v17 + 16);
        v6 = *(v17 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1D8E31600((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        *(v17 + 16) = v7 + 1;
        v8 = v17 + 40 * v7;
        *(v8 + 64) = v16;
        *(v8 + 32) = v14;
        *(v8 + 48) = v15;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      type metadata accessor for ServerCategory();
      do
      {
        v13 = *v9;

        swift_dynamicCast();
        v11 = *(v17 + 16);
        v10 = *(v17 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D8E31600((v10 > 1), v11 + 1, 1);
        }

        *(v17 + 16) = v11 + 1;
        v12 = v17 + 40 * v11;
        *(v12 + 64) = v16;
        *(v12 + 32) = v14;
        *(v12 + 48) = v15;
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F6102C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D917935C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1D8E31680(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1DA72AA90](0, a1);
    result = sub_1D917803C();
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 32);
  result = sub_1D917803C();
LABEL_12:
  __break(1u);
  return result;
}

char *sub_1D8F61234(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1D917935C();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D8E3151C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x1DA72AA90](i, a1);
        sub_1D8CF2154(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D8E3151C((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_1D8D65618(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_1D8CF2154(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D8E3151C((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_1D8D65618(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F61420(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {

    v6 = sub_1D91796FC();

    return v6;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1D9179C4C();
    if (!swift_dynamicCastMetatype())
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        for (i = (v2 + 32); *i; ++i)
        {
          if (!--v4)
          {
            return v1;
          }
        }

        return v2 | 1;
      }
    }

    return v1;
  }
}

char *sub_1D8F61508(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_1D917935C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1D8E3151C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x1DA72AA90](i, a1);
        a2(0);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1D8E3151C((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_1D8D65618(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v13 = *v10;

        swift_dynamicCast();
        v15 = v5;
        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1D8E3151C((v11 > 1), v12 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v12 + 1;
        sub_1D8D65618(v14, (v5 + 32 * v12 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F616E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D8E316C0(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 40);
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
      swift_dynamicCast();
      v5 = v11;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D8E316C0((v6 > 1), v7 + 1, 1);
        v5 = v11;
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 16 * v7 + 32) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t ServerCategory.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ServerCategory.artworkPrimaryColor.getter()
{
  v1 = *(*(v0 + 48) + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return v3;
}

uint64_t ServerCategory.artworkTemplateURL.getter()
{
  v1 = *(*(v0 + 48) + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return v3;
}

uint64_t _s18PodcastsFoundation14ServerCategoryC13artworkHeightSo8NSNumberCSgvg_0()
{
  v1 = *(*(v0 + 48) + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2 || (*(v2 + 40) & 1) != 0)
  {
    return 0;
  }

  v4 = *(v2 + 32);
  return sub_1D9178B6C();
}

uint64_t _s18PodcastsFoundation14ServerCategoryC12artworkWidthSo8NSNumberCSgvg_0()
{
  v1 = *(*(v0 + 48) + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2 || (*(v2 + 24) & 1) != 0)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  return sub_1D9178B6C();
}

uint64_t ServerCategory.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t ServerCategory.url.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t ServerCategory.artwork.getter()
{
  v1 = *(*(v0 + 48) + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
}

uint64_t ServerCategory.color.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);

  return v2;
}

uint64_t ServerCategory.parent.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    result = sub_1D917935C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x1DA72AA90](0, v3);

    return v5;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t ServerCategory.children.getter()
{
  v1 = *(v0 + 56);
  if (v1 && (v2 = *(v1 + 24)) != 0)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1D8F60E3C(v3);

  v5 = sub_1D8FC12E8(v4);

  return v5;
}

uint64_t sub_1D8F61F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ServerChapter.title.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t ServerChapter.timeframesData.getter()
{
  v1 = *(*(*(v0 + 56) + 16) + 16);
  v2 = sub_1D91765CC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  sub_1D91765BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7648, &qword_1D9197C90);
  sub_1D8F621EC();
  v5 = sub_1D91765AC();

  return v5;
}

unint64_t sub_1D8F621EC()
{
  result = qword_1ECAB7650;
  if (!qword_1ECAB7650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB7648, &qword_1D9197C90);
    sub_1D8F62270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7650);
  }

  return result;
}

unint64_t sub_1D8F62270()
{
  result = qword_1ECAB7658;
  if (!qword_1ECAB7658)
  {
    type metadata accessor for ServerTimeframe();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7658);
  }

  return result;
}

id ServerChapter.artworkWidth.getter()
{
  v1 = *(*(v0 + 48) + 16);
  if (v1 && (*(v1 + 24) & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  else
  {
    return 0;
  }
}

id ServerChapter.artworkHeight.getter()
{
  v1 = *(*(v0 + 48) + 16);
  if (v1 && (*(v1 + 40) & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  else
  {
    return 0;
  }
}

uint64_t ServerChapter.artworkTemplateURL.getter()
{
  v1 = *(*(v0 + 48) + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 48);
  v3 = *(v1 + 56);

  return v2;
}

uint64_t ServerChapter.artworkBackgroundColor.getter()
{
  v1 = *(*(v0 + 48) + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 64);
  v3 = *(v1 + 72);

  return v2;
}

uint64_t sub_1D8F625F8(uint64_t a1, void *a2, char a3)
{
  v7 = sub_1D9177E0C();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v15 = *(v3 + 32);
  v27 = v3;
  v28 = &v30;
  v24 = sub_1D8F67530;
  v25 = &v26;
  os_unfair_lock_lock(v15 + 4);
  sub_1D8DA3D48(aBlock);
  os_unfair_lock_unlock(v15 + 4);
  v16 = aBlock[0];
  sub_1D8CFD888();
  v17 = sub_1D9178E1C();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = a2;
  v19 = a3 & 1;
  *(v18 + 32) = a3 & 1;
  aBlock[4] = sub_1D8F58A6C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_45;
  v20 = _Block_copy(aBlock);
  sub_1D8DA4A44(a2, v19);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFD6D8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v10, v20);
  _Block_release(v20);

  (*(v23 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v22);
}

uint64_t StoreFeedUpdater.__allocating_init(bagConfiguration:ctx:ingesterProvider:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  StoreFeedUpdater.init(bagConfiguration:ctx:ingesterProvider:)(a1, a2, a3);
  return v6;
}

void sub_1D8F62990(void *a1)
{
  v151 = sub_1D9177E0C();
  v150 = *(v151 - 8);
  v3 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v148 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1D9177E9C();
  v147 = *(v149 - 8);
  v5 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v146 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1D9177DEC();
  v144 = *(v145 - 8);
  v7 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v142 = (&v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v154 = sub_1D9177EDC();
  v160 = *(v154 - 8);
  v9 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v139 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v153 = &v134 - v12;
  v157 = type metadata accessor for StoreFeedUpdater.Update(0);
  v141 = *(v157 - 8);
  v13 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v15 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v152 = (&v134 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v163 = &v134 - v19;
  v143 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v136 = &v134 - v22;
  v162 = sub_1D9176EAC();
  v156 = *(v162 - 8);
  v23 = v156[8];
  MEMORY[0x1EEE9AC00](v162);
  v140 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v137 = &v134 - v26;
  v138 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v164 = &v134 - v29;
  v159 = type metadata accessor for StoreFeedUpdater.Retry(0);
  v30 = *(v159 - 1);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v155 = (&v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v134 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D8, &qword_1D9197EE8);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v158 = &v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v134 - v40;
  v42 = sub_1D9177F1C();
  v43 = *(v42 - 1);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = (&v134 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = v1;
  v48 = *(v1 + 16);
  *v47 = v48;
  (*(v43 + 104))(v47, *MEMORY[0x1E69E8020], v42, v45);
  v49 = v48;
  LOBYTE(v48) = sub_1D9177F4C();
  (*(v43 + 8))(v47, v42);
  if ((v48 & 1) == 0)
  {
    __break(1u);
LABEL_29:
    swift_once();
LABEL_4:
    v51 = sub_1D917744C();
    __swift_project_value_buffer(v51, qword_1EDCD1050);
    sub_1D8D5F1EC(v42, v15, type metadata accessor for StoreFeedUpdater.Update);
    v52 = sub_1D917741C();
    v53 = sub_1D9178D1C();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v163;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 141558275;
      *(v56 + 4) = 1752392040;
      *(v56 + 12) = 2081;
      sub_1D8D7C424(v15, v55, type metadata accessor for StoreFeedUpdater.Update);
      v58 = &v55[*(v157 + 32)];
      v59 = *v58;
      v60 = v58[1];

      sub_1D8D5FDB8(v55, type metadata accessor for StoreFeedUpdater.Update);
      v61 = sub_1D8CFA924(v59, v60, aBlock);

      *(v56 + 14) = v61;
      _os_log_impl(&dword_1D8CEC000, v52, v53, "Update %{private,mask.hash}s: Not retryable, dropping.", v56, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x1DA72CB90](v57, -1, -1);
      MEMORY[0x1DA72CB90](v56, -1, -1);
    }

    else
    {

      sub_1D8D5FDB8(v15, type metadata accessor for StoreFeedUpdater.Update);
    }

    return;
  }

  updated = type metadata accessor for FeedUpdateRequest();
  v42 = a1;
  if (*(a1 + *(updated + 52)))
  {
    if (qword_1EDCD1048 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  v134 = v49;
  v62 = *(a1 + *(updated + 28));
  v63 = v161;
  swift_beginAccess();
  v64 = *(v63 + 64);
  if (*(v64 + 16))
  {
    v65 = sub_1D8D490F4(v62);
    v66 = v159;
    if (v67)
    {
      sub_1D8D5F1EC(*(v64 + 56) + *(v30 + 72) * v65, v41, type metadata accessor for StoreFeedUpdater.Retry);
      v68 = 0;
    }

    else
    {
      v68 = 1;
    }
  }

  else
  {
    v68 = 1;
    v66 = v159;
  }

  v135 = *(v30 + 56);
  v135(v41, v68, 1, v66);
  if ((*(v30 + 48))(v41, 1, v66))
  {
    sub_1D8D08A50(v41, &qword_1ECAB76D8, &qword_1D9197EE8);
    v69 = 0;
  }

  else
  {
    sub_1D8D5F1EC(v41, v35, type metadata accessor for StoreFeedUpdater.Retry);
    sub_1D8D08A50(v41, &qword_1ECAB76D8, &qword_1D9197EE8);
    v69 = *v35;
    sub_1D8D5FDB8(v35, type metadata accessor for StoreFeedUpdater.Retry);
  }

  v70 = v162;
  v71 = *(v63 + 80);
  if (v69 < *(v71 + 16))
  {
    v72 = v155;
    *v155 = v69 + 1;
    v73 = *(v66 + 5);
    sub_1D9176E9C();
    v159 = v156[2];
    v152 = v156 + 2;
    (v159)(v164, v72 + v73, v70);
    v74 = v72;
    v75 = v158;
    sub_1D8D5F1EC(v74, v158, type metadata accessor for StoreFeedUpdater.Retry);
    v135(v75, 0, 1, v66);
    swift_beginAccess();
    sub_1D8F7D378(v75, v62);
    swift_endAccess();
    if ((v69 & 0x8000000000000000) == 0)
    {
      if (v69 >= *(v71 + 16))
      {
        __break(1u);
      }

      else
      {
        v158 = *(v71 + 8 * v69 + 32);
        if (qword_1EDCD1048 == -1)
        {
LABEL_19:
          v76 = sub_1D917744C();
          __swift_project_value_buffer(v76, qword_1EDCD1050);
          v135 = v42;
          v77 = v136;
          sub_1D8D5F1EC(v42, v136, type metadata accessor for StoreFeedUpdater.Update);
          v78 = v137;
          (v159)(v137, v164, v70);
          v79 = sub_1D917741C();
          v80 = sub_1D9178D1C();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            aBlock[0] = v82;
            *v81 = 141558787;
            *(v81 + 4) = 1752392040;
            *(v81 + 12) = 2081;
            v83 = v163;
            sub_1D8D7C424(v77, v163, type metadata accessor for StoreFeedUpdater.Update);
            v84 = &v83[*(v157 + 32)];
            v85 = *v84;
            v86 = v84[1];

            v87 = v83;
            sub_1D8D5FDB8(v83, type metadata accessor for StoreFeedUpdater.Update);
            v88 = sub_1D8CFA924(v85, v86, aBlock);

            *(v81 + 14) = v88;
            *(v81 + 22) = 2080;
            sub_1D8CFD6D8(&qword_1EDCD5918, MEMORY[0x1E69695A8]);
            v89 = sub_1D9179A4C();
            v91 = v90;
            v92 = v156;
            v93 = v156[1];
            v157 = (v156 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v93(v78, v162);
            v94 = sub_1D8CFA924(v89, v91, aBlock);

            *(v81 + 24) = v94;
            v95 = v92;
            *(v81 + 32) = 2048;
            v96 = v158;
            *(v81 + 34) = v158;
            _os_log_impl(&dword_1D8CEC000, v79, v80, "Update %{private,mask.hash}s Retry %s: will retry after %ld seconds", v81, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1DA72CB90](v82, -1, -1);
            v97 = v81;
            v70 = v162;
            MEMORY[0x1DA72CB90](v97, -1, -1);
          }

          else
          {

            v113 = v156[1];
            v157 = (v156 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v114 = v78;
            v95 = v156;
            v113(v114, v70);
            sub_1D8D5FDB8(v77, type metadata accessor for StoreFeedUpdater.Update);
            v87 = v163;
            v96 = v158;
          }

          v115 = v139;
          sub_1D9177ECC();
          v116 = v142;
          *v142 = v96;
          v117 = v144;
          v118 = v145;
          (*(v144 + 104))(v116, *MEMORY[0x1E69E7F48], v145);
          MEMORY[0x1DA7294F0](v115, v116);
          (*(v117 + 8))(v116, v118);
          v119 = *(v160 + 8);
          v160 += 8;
          v163 = v119;
          (v119)(v115, v154);
          v120 = swift_allocObject();
          swift_weakInit();
          v121 = v87;
          sub_1D8D5F1EC(v135, v87, type metadata accessor for StoreFeedUpdater.Update);
          v122 = v140;
          (v159)(v140, v164, v70);
          v123 = (*(v141 + 80) + 16) & ~*(v141 + 80);
          v124 = v70;
          v125 = (v143 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
          v126 = (*(v95 + 80) + v125 + 8) & ~*(v95 + 80);
          v127 = (v138 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
          v128 = swift_allocObject();
          sub_1D8D7C424(v121, v128 + v123, type metadata accessor for StoreFeedUpdater.Update);
          *(v128 + v125) = v120;
          (v95[4])(v128 + v126, v122, v124);
          *(v128 + v127) = v158;
          aBlock[4] = sub_1D8F6754C;
          aBlock[5] = v128;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D8CF5F60;
          aBlock[3] = &block_descriptor_70;
          v129 = _Block_copy(aBlock);

          v130 = v146;
          sub_1D9177E4C();
          v165 = MEMORY[0x1E69E7CC0];
          sub_1D8CFD6D8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
          sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
          v131 = v148;
          v132 = v151;
          sub_1D91792CC();
          v133 = v153;
          MEMORY[0x1DA72A360](v153, v130, v131, v129);
          _Block_release(v129);
          (*(v150 + 8))(v131, v132);
          (*(v147 + 8))(v130, v149);
          (v163)(v133, v154);
          (v95[1])(v164, v124);
          sub_1D8D5FDB8(v155, type metadata accessor for StoreFeedUpdater.Retry);

          return;
        }
      }

      swift_once();
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (qword_1EDCD1048 != -1)
  {
LABEL_31:
    swift_once();
  }

  v98 = sub_1D917744C();
  __swift_project_value_buffer(v98, qword_1EDCD1050);
  v99 = v152;
  sub_1D8D5F1EC(v42, v152, type metadata accessor for StoreFeedUpdater.Update);
  v100 = sub_1D917741C();
  v101 = sub_1D9178D1C();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    aBlock[0] = v103;
    *v102 = 141558531;
    *(v102 + 4) = 1752392040;
    *(v102 + 12) = 2081;
    v104 = v99;
    v105 = v163;
    sub_1D8D7C424(v104, v163, type metadata accessor for StoreFeedUpdater.Update);
    v106 = &v105[*(v157 + 32)];
    v107 = v62;
    v108 = *v106;
    v109 = v106[1];

    sub_1D8D5FDB8(v105, type metadata accessor for StoreFeedUpdater.Update);
    v110 = sub_1D8CFA924(v108, v109, aBlock);
    v62 = v107;

    *(v102 + 14) = v110;
    *(v102 + 22) = 2048;
    *(v102 + 24) = v69;
    _os_log_impl(&dword_1D8CEC000, v100, v101, "Update %{private,mask.hash}s: Failed to trigger another retry, used all backoffs. nextBackoffIndex=%ld.", v102, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v103);
    v111 = v103;
    v66 = v159;
    MEMORY[0x1DA72CB90](v111, -1, -1);
    MEMORY[0x1DA72CB90](v102, -1, -1);
  }

  else
  {

    sub_1D8D5FDB8(v99, type metadata accessor for StoreFeedUpdater.Update);
  }

  v112 = v158;
  v135(v158, 1, 1, v66);
  swift_beginAccess();
  sub_1D8F7D378(v112, v62);
  swift_endAccess();
}

uint64_t sub_1D8F63CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[0] = 25;
  sub_1D8D76684(v10, v12);
  v7 = v12[0];
  v8 = v12[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8F63D90(a1, a3, a4);
  }

  if (v8)
  {
    v10[0] = v7;
    v11 = v8;
    sub_1D8D7FAB4();
  }

  return result;
}

void sub_1D8F63D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v84 = a2;
  v83 = sub_1D9176EAC();
  v5 = *(v83 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v75 - v10;
  v81 = type metadata accessor for StoreFeedUpdater.Update(0);
  v11 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v82 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v19 = type metadata accessor for StoreFeedUpdater.Retry(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v80 = &v75 - v25;
  v26 = a1;
  v27 = *(a1 + *(type metadata accessor for FeedUpdateRequest() + 28));
  swift_beginAccess();
  v79 = v3;
  v28 = *(v3 + 64);
  if (*(v28 + 16))
  {
    v29 = sub_1D8D490F4(v27);
    if (v30)
    {
      v76 = v27;
      sub_1D8D5F1EC(*(v28 + 56) + *(v20 + 72) * v29, v23, type metadata accessor for StoreFeedUpdater.Retry);
      v31 = v80;
      sub_1D8D7C424(v23, v80, type metadata accessor for StoreFeedUpdater.Retry);
      v32 = *(v19 + 20);
      if (sub_1D9176E7C())
      {
        if (qword_1EDCD1048 != -1)
        {
          swift_once();
        }

        v33 = sub_1D917744C();
        __swift_project_value_buffer(v33, qword_1EDCD1050);
        v34 = v26;
        sub_1D8D5F1EC(v26, v18, type metadata accessor for StoreFeedUpdater.Update);
        v35 = v78;
        v36 = v83;
        (*(v5 + 16))(v78, v84, v83);
        v37 = sub_1D917741C();
        v38 = sub_1D9178D1C();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v86 = v84;
          *v39 = 141558787;
          *(v39 + 4) = 1752392040;
          *(v39 + 12) = 2081;
          v40 = v18;
          v41 = v35;
          v42 = v82;
          sub_1D8D7C424(v40, v82, type metadata accessor for StoreFeedUpdater.Update);
          v43 = (v42 + *(v81 + 32));
          v44 = *v43;
          v45 = v43[1];

          sub_1D8D5FDB8(v42, type metadata accessor for StoreFeedUpdater.Update);
          v46 = sub_1D8CFA924(v44, v45, &v86);

          *(v39 + 14) = v46;
          *(v39 + 22) = 2080;
          sub_1D8CFD6D8(&qword_1EDCD5918, MEMORY[0x1E69695A8]);
          v47 = sub_1D9179A4C();
          v49 = v48;
          (*(v5 + 8))(v41, v36);
          v50 = sub_1D8CFA924(v47, v49, &v86);

          *(v39 + 24) = v50;
          *(v39 + 32) = 2048;
          *(v39 + 34) = v77;
          _os_log_impl(&dword_1D8CEC000, v37, v38, "Update %{private,mask.hash}s Retry %s: Retrying after %ld seconds", v39, 0x2Au);
          v51 = v84;
          swift_arrayDestroy();
          MEMORY[0x1DA72CB90](v51, -1, -1);
          MEMORY[0x1DA72CB90](v39, -1, -1);
        }

        else
        {

          (*(v5 + 8))(v35, v36);
          v52 = sub_1D8D5FDB8(v18, type metadata accessor for StoreFeedUpdater.Update);
        }

        v70 = *(v79 + 32);
        v86 = v76;
        v71 = *(v70 + 32);
        MEMORY[0x1EEE9AC00](v52);
        *(&v75 - 4) = v72;
        *(&v75 - 3) = &v86;
        *(&v75 - 2) = v34;
        MEMORY[0x1EEE9AC00](v73);
        *(&v75 - 2) = sub_1D8D81A5C;
        *(&v75 - 1) = v74;
        os_unfair_lock_lock(v71 + 4);
        sub_1D8D7D230(&v85);
        os_unfair_lock_unlock(v71 + 4);
        sub_1D8D825A0(v34);
        v68 = type metadata accessor for StoreFeedUpdater.Retry;
        v69 = v80;
        goto LABEL_16;
      }

      sub_1D8D5FDB8(v31, type metadata accessor for StoreFeedUpdater.Retry);
    }
  }

  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v53 = sub_1D917744C();
  __swift_project_value_buffer(v53, qword_1EDCD1050);
  sub_1D8D5F1EC(v26, v13, type metadata accessor for StoreFeedUpdater.Update);
  v54 = v83;
  (*(v5 + 16))(v8, v84, v83);
  v55 = sub_1D917741C();
  v56 = sub_1D9178D1C();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v86 = v58;
    *v57 = 141558531;
    *(v57 + 4) = 1752392040;
    *(v57 + 12) = 2081;
    v59 = v82;
    sub_1D8D7C424(v13, v82, type metadata accessor for StoreFeedUpdater.Update);
    v60 = (v59 + *(v81 + 32));
    v61 = *v60;
    v62 = v60[1];

    sub_1D8D5FDB8(v59, type metadata accessor for StoreFeedUpdater.Update);
    v63 = sub_1D8CFA924(v61, v62, &v86);

    *(v57 + 14) = v63;
    *(v57 + 22) = 2080;
    sub_1D8CFD6D8(&qword_1EDCD5918, MEMORY[0x1E69695A8]);
    v64 = sub_1D9179A4C();
    v66 = v65;
    (*(v5 + 8))(v8, v54);
    v67 = sub_1D8CFA924(v64, v66, &v86);

    *(v57 + 24) = v67;
    _os_log_impl(&dword_1D8CEC000, v55, v56, "Update %{private,mask.hash}s Retry %s: Retry no longer found in retries, dropping.", v57, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v58, -1, -1);
    MEMORY[0x1DA72CB90](v57, -1, -1);

    return;
  }

  (*(v5 + 8))(v8, v54);
  v68 = type metadata accessor for StoreFeedUpdater.Update;
  v69 = v13;
LABEL_16:
  sub_1D8D5FDB8(v69, v68);
}

uint64_t sub_1D8F64664(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D0, &unk_1D9197ED8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v181 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v176 = &v174 - v9;
  updated = type metadata accessor for FeedUpdateRequest();
  v11 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v178 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v180 = &v174 - v14;
  v187 = type metadata accessor for StoreFeedUpdater.Update(0);
  v182 = *(v187 - 8);
  v15 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v183 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v177 = &v174 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v184 = &v174 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v174 = &v174 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v175 = &v174 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v185 = (&v174 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v174 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v174 - v31);
  v33 = sub_1D9177F1C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = (&v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v2[2];
  *v38 = v39;
  (*(v34 + 104))(v38, *MEMORY[0x1E69E8020], v33, v36);
  v40 = v39;
  v41 = sub_1D9177F4C();
  v43 = *(v34 + 8);
  v42 = v34 + 8;
  v43(v38, v33);
  if ((v41 & 1) == 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v179 = updated;
  v42 = *(a1 + *(updated + 28));
  sub_1D8D5F1EC(a1, v32, type metadata accessor for StoreFeedUpdater.Update);
  v33 = *a2;
  v44 = *(a2 + 8);
  v46 = *(a2 + 16);
  v45 = *(a2 + 32);
  v47 = *(a2 + 48);
  v48 = v32;
  v41 = a1;
  if (!*(a2 + 64))
  {
    v186 = v32;
    v189[0] = v33;
    v189[1] = v44;
    v190 = v46;
    v191 = v45;
    v192 = v47;
    v63 = v2;
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v64 = sub_1D917744C();
    __swift_project_value_buffer(v64, qword_1EDCD1050);
    v65 = a1;
    sub_1D8D5F1EC(a1, v29, type metadata accessor for StoreFeedUpdater.Update);
    v66 = sub_1D917741C();
    v67 = sub_1D9178D1C();
    v68 = os_log_type_enabled(v66, v67);
    v69 = v187;
    if (v68)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v188 = v71;
      *v70 = 141558275;
      *(v70 + 4) = 1752392040;
      *(v70 + 12) = 2081;
      v72 = v29;
      v73 = v185;
      sub_1D8D7C424(v72, v185, type metadata accessor for StoreFeedUpdater.Update);
      v74 = (v73 + *(v69 + 32));
      v75 = *v74;
      v76 = v74[1];

      sub_1D8D5FDB8(v73, type metadata accessor for StoreFeedUpdater.Update);
      v77 = sub_1D8CFA924(v75, v76, &v188);

      *(v70 + 14) = v77;
      _os_log_impl(&dword_1D8CEC000, v66, v67, "Update %{private,mask.hash}s completed", v70, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x1DA72CB90](v71, -1, -1);
      MEMORY[0x1DA72CB90](v70, -1, -1);
    }

    else
    {

      sub_1D8D5FDB8(v29, type metadata accessor for StoreFeedUpdater.Update);
    }

    sub_1D8F67008(v189, v65);
    v94 = 0;
    v95 = 0;
    v96 = v63;
    goto LABEL_20;
  }

  v49 = v2;
  if (*(a2 + 64) == 1)
  {
    v32 = v2;
    v186 = v48;
    if (qword_1EDCD1048 == -1)
    {
LABEL_5:
      v50 = sub_1D917744C();
      __swift_project_value_buffer(v50, qword_1EDCD1050);
      v51 = v183;
      sub_1D8D5F1EC(v41, v183, type metadata accessor for StoreFeedUpdater.Update);
      v52 = sub_1D917741C();
      v53 = sub_1D9178D1C();
      v54 = os_log_type_enabled(v52, v53);
      v55 = v187;
      if (v54)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v189[0] = v57;
        *v56 = 141558275;
        *(v56 + 4) = 1752392040;
        *(v56 + 12) = 2081;
        v58 = v185;
        sub_1D8D7C424(v51, v185, type metadata accessor for StoreFeedUpdater.Update);
        v59 = (v58 + *(v55 + 32));
        v60 = *v59;
        v61 = v59[1];

        sub_1D8D5FDB8(v58, type metadata accessor for StoreFeedUpdater.Update);
        v62 = sub_1D8CFA924(v60, v61, v189);

        *(v56 + 14) = v62;
        _os_log_impl(&dword_1D8CEC000, v52, v53, "Update %{private,mask.hash}s failed", v56, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        MEMORY[0x1DA72CB90](v57, -1, -1);
        MEMORY[0x1DA72CB90](v56, -1, -1);
      }

      else
      {

        sub_1D8D5FDB8(v51, type metadata accessor for StoreFeedUpdater.Update);
      }

      v94 = v33;
      v95 = 1;
      v96 = v32;
LABEL_20:
      v97 = v186;
      sub_1D8F658C8(v94, v95, v96, v42, v186);
      return sub_1D8D5FDB8(v97, type metadata accessor for StoreFeedUpdater.Update);
    }

LABEL_46:
    swift_once();
    goto LABEL_5;
  }

  v78 = vorrq_s8(v47, v45);
  v79 = v184;
  if (v33 | *&vorr_s8(*v78.i8, *&vextq_s8(v78, v78, 8uLL)) | v46 | v44 | *(&v46 + 1))
  {
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v80 = sub_1D917744C();
    __swift_project_value_buffer(v80, qword_1EDCD1050);
    sub_1D8D5F1EC(a1, v79, type metadata accessor for StoreFeedUpdater.Update);
    v81 = sub_1D917741C();
    v82 = sub_1D9178D1C();
    v83 = os_log_type_enabled(v81, v82);
    v186 = v32;
    if (v83)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v183 = v49;
      v86 = v85;
      v189[0] = v85;
      *v84 = 141558275;
      *(v84 + 4) = 1752392040;
      *(v84 + 12) = 2081;
      v87 = v185;
      sub_1D8D7C424(v79, v185, type metadata accessor for StoreFeedUpdater.Update);
      v88 = (v87 + *(v187 + 32));
      v89 = v41;
      v90 = *v88;
      v91 = v88[1];

      sub_1D8D5FDB8(v87, type metadata accessor for StoreFeedUpdater.Update);
      v92 = sub_1D8CFA924(v90, v91, v189);
      v41 = v89;

      *(v84 + 14) = v92;
      _os_log_impl(&dword_1D8CEC000, v81, v82, "Update %{private,mask.hash}s failed with retry.", v84, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      v93 = v86;
      v49 = v183;
      MEMORY[0x1DA72CB90](v93, -1, -1);
      MEMORY[0x1DA72CB90](v84, -1, -1);
    }

    else
    {

      sub_1D8D5FDB8(v79, type metadata accessor for StoreFeedUpdater.Update);
    }

    swift_beginAccess();
    v112 = *(v49 + 56);
    if (*(v112 + 16) && (v113 = sub_1D8D490F4(v42), (v114 & 1) != 0))
    {
      v115 = *(v112 + 56);
      v117 = v181;
      v116 = v182;
      sub_1D8D5F1EC(v115 + *(v182 + 72) * v113, v181, type metadata accessor for StoreFeedUpdater.Update);
      v118 = v187;
      (*(v116 + 56))(v117, 0, 1, v187);
      sub_1D8D08A50(v117, &qword_1ECAB76D0, &unk_1D9197ED8);
      v119 = v177;
      sub_1D8D5F1EC(v41, v177, type metadata accessor for StoreFeedUpdater.Update);
      v120 = sub_1D917741C();
      v121 = sub_1D9178D1C();
      v122 = os_log_type_enabled(v120, v121);
      v123 = v185;
      if (v122)
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v126 = v119;
        v127 = v125;
        v188 = v125;
        *v124 = 141558275;
        *(v124 + 4) = 1752392040;
        *(v124 + 12) = 2081;
        sub_1D8D7C424(v126, v123, type metadata accessor for StoreFeedUpdater.Update);
        v128 = (v123 + *(v118 + 32));
        v129 = *v128;
        v130 = v128[1];

        sub_1D8D5FDB8(v123, type metadata accessor for StoreFeedUpdater.Update);
        v131 = sub_1D8CFA924(v129, v130, &v188);

        *(v124 + 14) = v131;
        _os_log_impl(&dword_1D8CEC000, v120, v121, "Update %{private,mask.hash}s: There's a pending update, dropping retry.", v124, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v127);
        MEMORY[0x1DA72CB90](v127, -1, -1);
        MEMORY[0x1DA72CB90](v124, -1, -1);

LABEL_33:
        sub_1D8D77098();
        v147 = swift_allocError();
        v148 = v147;
        *v149 = 12;
        v150 = v49;
        v151 = v42;
        v97 = v186;
LABEL_41:
        sub_1D8F658C8(v147, 1, v150, v151, v97);

        return sub_1D8D5FDB8(v97, type metadata accessor for StoreFeedUpdater.Update);
      }

      v146 = type metadata accessor for StoreFeedUpdater.Update;
      v145 = v119;
    }

    else
    {
      v132 = v181;
      v133 = v187;
      (*(v182 + 56))(v181, 1, 1, v187);
      sub_1D8D08A50(v132, &qword_1ECAB76D0, &unk_1D9197ED8);
      v134 = v180;
      FeedUpdateRequest.copyWithoutCompletion()(v180);
      v135 = v178;
      sub_1D8D5F1EC(v134, v178, type metadata accessor for FeedUpdateRequest);
      v136 = *(v41 + v133[5]);
      v137 = v41;
      v138 = *(v41 + v133[6]);
      v139 = *(v137 + v133[7]);
      v140 = v185;
      sub_1D8D5F1EC(v135, v185, type metadata accessor for FeedUpdateRequest);
      *(v140 + v133[5]) = v136;
      *(v140 + v133[6]) = v138;
      *(v140 + v133[7]) = v139;
      v188 = *(v135 + *(v179 + 28));
      v141 = sub_1D9179A4C();
      v143 = v142;
      sub_1D8D5FDB8(v135, type metadata accessor for FeedUpdateRequest);
      v144 = (v140 + v133[8]);
      *v144 = v141;
      v144[1] = v143;
      sub_1D8F62990(v140);
      sub_1D8D5FDB8(v140, type metadata accessor for StoreFeedUpdater.Update);
      v145 = v134;
      v146 = type metadata accessor for FeedUpdateRequest;
    }

    sub_1D8D5FDB8(v145, v146);
    goto LABEL_33;
  }

  v98 = v187;
  if (*(v41 + *(v187 + 28)))
  {
    v97 = v32;
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v99 = sub_1D917744C();
    __swift_project_value_buffer(v99, qword_1EDCD1050);
    v100 = v174;
    sub_1D8D5F1EC(v41, v174, type metadata accessor for StoreFeedUpdater.Update);
    v101 = sub_1D917741C();
    v102 = sub_1D9178CFC();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105 = v100;
      v106 = v104;
      v189[0] = v104;
      *v103 = 141558275;
      *(v103 + 4) = 1752392040;
      *(v103 + 12) = 2081;
      v107 = v185;
      sub_1D8D7C424(v105, v185, type metadata accessor for StoreFeedUpdater.Update);
      v108 = (v107 + v98[8]);
      v109 = *v108;
      v110 = v108[1];

      sub_1D8D5FDB8(v107, type metadata accessor for StoreFeedUpdater.Update);
      v111 = sub_1D8CFA924(v109, v110, v189);

      *(v103 + 14) = v111;
      _os_log_impl(&dword_1D8CEC000, v101, v102, "Update %{private,mask.hash}s failed. Bootstrap needed another bootstrap. Failing request to prevent a loop.", v103, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      MEMORY[0x1DA72CB90](v106, -1, -1);
      MEMORY[0x1DA72CB90](v103, -1, -1);
    }

    else
    {

      sub_1D8D5FDB8(v100, type metadata accessor for StoreFeedUpdater.Update);
    }

    sub_1D8D77098();
    v147 = swift_allocError();
    v148 = v147;
    *v163 = 4;
    v150 = v49;
    v151 = v42;
    goto LABEL_41;
  }

  sub_1D8D5FDB8(v32, type metadata accessor for StoreFeedUpdater.Update);
  v97 = v185;
  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v152 = sub_1D917744C();
  __swift_project_value_buffer(v152, qword_1EDCD1050);
  v153 = v41;
  v154 = v175;
  sub_1D8D5F1EC(v41, v175, type metadata accessor for StoreFeedUpdater.Update);
  v155 = sub_1D917741C();
  v156 = sub_1D9178D1C();
  if (os_log_type_enabled(v155, v156))
  {
    v157 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v189[0] = v158;
    *v157 = 141558275;
    *(v157 + 4) = 1752392040;
    *(v157 + 12) = 2081;
    sub_1D8D7C424(v154, v97, type metadata accessor for StoreFeedUpdater.Update);
    v159 = (v97 + v98[8]);
    v160 = *v159;
    v161 = v159[1];

    sub_1D8D5FDB8(v97, type metadata accessor for StoreFeedUpdater.Update);
    v162 = sub_1D8CFA924(v160, v161, v189);
    v98 = v187;

    *(v157 + 14) = v162;
    _os_log_impl(&dword_1D8CEC000, v155, v156, "Bootstrap requested for %{private,mask.hash}s. Starting over.", v157, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v158);
    MEMORY[0x1DA72CB90](v158, -1, -1);
    MEMORY[0x1DA72CB90](v157, -1, -1);
  }

  else
  {

    sub_1D8D5FDB8(v154, type metadata accessor for StoreFeedUpdater.Update);
  }

  v166 = v179;
  v165 = v180;
  sub_1D8D5F1EC(v153, v180, type metadata accessor for FeedUpdateRequest);
  v167 = *(v153 + v98[5]);
  v168 = *(v153 + v98[6]);
  sub_1D8D5F1EC(v165, v97, type metadata accessor for FeedUpdateRequest);
  *(v97 + v98[5]) = v167;
  *(v97 + v98[6]) = v168;
  *(v97 + v98[7]) = 1;
  v189[0] = *(v165 + *(v166 + 28));
  v169 = sub_1D9179A4C();
  v171 = v170;
  sub_1D8D5FDB8(v165, type metadata accessor for FeedUpdateRequest);
  v172 = (v97 + v98[8]);
  *v172 = v169;
  v172[1] = v171;
  v173 = v176;
  (*(v182 + 56))(v176, 1, 1, v98);
  swift_beginAccess();
  sub_1D8F7D0D8(v173, v42);
  swift_endAccess();
  sub_1D8D825A0(v97);
  return sub_1D8D5FDB8(v97, type metadata accessor for StoreFeedUpdater.Update);
}

uint64_t sub_1D8F658C8(void (*a1)(char *, uint64_t, uint64_t, uint64_t), char a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v47 = a1;
  v48 = a5;
  v8 = type metadata accessor for StoreFeedUpdater.Update(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D0, &unk_1D9197ED8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v49 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46 - v25;
  swift_beginAccess();
  v27 = *(a3 + 56);
  v28 = *(v27 + 16);
  v51 = a4;
  if (v28 && (v29 = sub_1D8D490F4(a4), (v30 & 1) != 0))
  {
    sub_1D8D5F1EC(*(v27 + 56) + *(v9 + 72) * v29, v26, type metadata accessor for StoreFeedUpdater.Update);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = *(v9 + 56);
  v32(v26, v31, 1, v8);
  sub_1D8D83D98(v26, v23);
  if ((*(v9 + 48))(v23, 1, v8) == 1)
  {
    sub_1D8D08A50(v23, &qword_1ECAB76D0, &unk_1D9197ED8);
    v33 = *(a3 + 32);
    sub_1D8F625F8(v51, v47, a2 & 1);
  }

  else
  {
    v47 = v32;
    sub_1D8D7C424(v23, v50, type metadata accessor for StoreFeedUpdater.Update);
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v34 = sub_1D917744C();
    __swift_project_value_buffer(v34, qword_1EDCD1050);
    sub_1D8D5F1EC(v48, v15, type metadata accessor for StoreFeedUpdater.Update);
    v35 = sub_1D917741C();
    v36 = sub_1D9178D1C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52 = v48;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      sub_1D8D7C424(v15, v12, type metadata accessor for StoreFeedUpdater.Update);
      v38 = &v12[*(v8 + 32)];
      v40 = *v38;
      v39 = v38[1];

      sub_1D8D5FDB8(v12, type metadata accessor for StoreFeedUpdater.Update);
      v41 = sub_1D8CFA924(v40, v39, &v52);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_1D8CEC000, v35, v36, "Kicking off pending bootstrap update for %{private,mask.hash}s.", v37, 0x16u);
      v42 = v48;
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1DA72CB90](v42, -1, -1);
      MEMORY[0x1DA72CB90](v37, -1, -1);
    }

    else
    {

      sub_1D8D5FDB8(v15, type metadata accessor for StoreFeedUpdater.Update);
    }

    v43 = v49;
    v47(v49, 1, 1, v8);
    swift_beginAccess();
    sub_1D8F7D0D8(v43, v51);
    swift_endAccess();
    v44 = v50;
    sub_1D8D825A0(v50);
    sub_1D8D5FDB8(v44, type metadata accessor for StoreFeedUpdater.Update);
  }

  return sub_1D8D08A50(v26, &qword_1ECAB76D0, &unk_1D9197ED8);
}

uint64_t StoreFeedUpdater.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 80);

  return v0;
}

uint64_t StoreFeedUpdater.__deallocating_deinit()
{
  StoreFeedUpdater.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F65E48(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for FeedUpdateRequest();
  v5 = updated;
  v6 = *(updated + 52);
  if (*(a2 + v6) == 1 && *(a1 + v6) != 1)
  {
    return 1;
  }

  v7 = *(updated + 48);
  v8 = *(a2 + v7);
  if (v8 == 8)
  {
    if (*(a1 + v7) != 8)
    {
      return 1;
    }
  }

  else if (v8 == 23 && *(a1 + v7) != 23)
  {
    return 1;
  }

  v9 = *(type metadata accessor for StoreFeedUpdater.Update(0) + 24);
  if (*(a2 + v9) != 1 || *(a1 + v9) == 1)
  {
    v10 = *(v5 + 36);
    if (*(a2 + v10) != 1 || *(a1 + v10) == 1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D8F65F24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a1, a2);
  }

  return result;
}

int64_t sub_1D8F65FA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9177F1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v6, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1D9177F4C();
  result = (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = *(a1 + *(type metadata accessor for FeedUpdateRequest() + 28));
  swift_beginAccess();
  sub_1D8F7D008(0, v15);
  v16 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v16);
  *(&v22 - 2) = a1;
  v17 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_runningQueue;
  swift_beginAccess();
  result = sub_1D8F66C04(sub_1D8F66BB4, (&v22 - 4));
  v18 = *(*(v3 + v17) + 16);
  if (v18 < result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1D8D880FC(result, v18);
  v19 = swift_endAccess();
  v20 = *(v3 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  if (v20)
  {
    v21 = *(v3 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback + 8);

    v20(a1, a2);
    v19 = sub_1D8D15664(v20);
  }

  return sub_1D8D86EBC(v19);
}

uint64_t sub_1D8F661E0()
{
  v1 = *(v0 + 24);

  sub_1D8D5FDB8(v0 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_bagConfiguration, type metadata accessor for FeedManagerBagConfiguration);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ingesterProvider));
  v2 = *(v0 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_pendingQueue);

  v3 = *(v0 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_runningQueue);

  v4 = *(v0 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_jobs);

  v5 = *(v0 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback + 8);
  sub_1D8D15664(*(v0 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback));
  return v0;
}

uint64_t sub_1D8F662A8()
{
  sub_1D8F661E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F66300(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D8F66338(int8x16_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 64);
  if (!a1[4].i8[0])
  {
    return v2 == 0;
  }

  if (a1[4].i8[0] == 1)
  {
    return v2 == 1;
  }

  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v12 = vorrq_s8(a1[1], a1[2]);
  if (a1->i64[0] | *&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | a1[3].i64[0] | a1[3].i64[1] | a1->i64[1])
  {
    if (v2 != 2 || v5 != 1 || v7 | v4 | v6 | v9 | v8 | v11 | v10)
    {
      return 0;
    }
  }

  else if (v2 != 2 || v7 | v4 | v5 | v6 | v9 | v8 | v11 | v10)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D8F66438(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v27 = v8;
  v28 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v29 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 24 * (v10 | (v3 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = *(a2 + 40);
    sub_1D9179DBC();
    if (v16 == 1)
    {
      MEMORY[0x1DA72B390](1);

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1DA72B390](0);
      MEMORY[0x1DA72B3C0](v14);
    }

    v18 = sub_1D9179E1C();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_34:
      sub_1D8DB5FC8(v14, v15, v16);
      return 0;
    }

    v21 = ~v19;
    v22 = *(a2 + 48);
    while (1)
    {
      v24 = (v22 + 24 * v20);
      v25 = *v24;
      if (*(v24 + 16) == 1)
      {
        break;
      }

      if (v25 == v14)
      {
        v23 = v16;
      }

      else
      {
        v23 = 1;
      }

      if ((v23 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_22:
      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }

    v26 = v25 == v14 && v24[1] == v15;
    if (!v26 && (sub_1D9179ACC() & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_1D8DB5FC8(v14, v15, 1);
LABEL_31:
    v8 = v27;
    result = v28;
    v7 = v29;
  }

  while (v29);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F66674(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v44 = a2 + 56;
  v37 = result + 56;
  v38 = result;
  v36 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v39 = (v7 - 1) & v7;
LABEL_13:
    v12 = *(result + 48) + 24 * (v9 | (v3 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(a2 + 40);
    sub_1D9179DBC();
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v17 = 8;
      }

      else if (v14 > 1)
      {
        if (v14 ^ 2 | v13)
        {
          v17 = 6;
        }

        else
        {
          v17 = 4;
        }
      }

      else if (v14 | v13)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      goto LABEL_18;
    }

    if (!v15)
    {
      v17 = 3;
LABEL_18:
      MEMORY[0x1DA72B390](v17);
      goto LABEL_20;
    }

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_20:
    v18 = sub_1D9179E1C();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if (((*(v44 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_66:
      sub_1D8D02FCC(v14, v13, v15);
      return 0;
    }

    v21 = ~v19;
    v22 = v14 != 3;
    v23 = v14 != 2;
    v24 = v14 != 1;
    if (v13)
    {
      v22 = 1;
      v23 = 1;
      v24 = 1;
    }

    if (v15 != 3)
    {
      v22 = 1;
    }

    v43 = v22;
    v25 = v15 != 3 || v23;
    v42 = v25;
    v26 = v15 != 3 || v24;
    if (v13 | v14)
    {
      v27 = 0;
    }

    else
    {
      v27 = v15 == 3;
    }

    v40 = v27;
    v41 = v26;
    while (1)
    {
      v29 = *(a2 + 48) + 24 * v20;
      v31 = *v29;
      v30 = *(v29 + 8);
      v32 = *(v29 + 16);
      if (v32 <= 1)
      {
        if (*(v29 + 16))
        {
          v28 = *(v29 + 8);
        }

        else if (!v15)
        {
          sub_1D8D02FCC(*v29, *(v29 + 8), 0);
          v33 = v14;
          v34 = v13;
          v35 = 0;
          goto LABEL_63;
        }

        goto LABEL_36;
      }

      if (v32 == 2)
      {
        if (v15 == 2)
        {
          sub_1D8D02FCC(*v29, *(v29 + 8), 2);
          v33 = v14;
          v34 = v13;
          v35 = 2;
          goto LABEL_63;
        }

        goto LABEL_36;
      }

      if (v31 > 1)
      {
        break;
      }

      if (v31 | v30)
      {
        if ((v41 & 1) == 0)
        {
          sub_1D8D02FCC(v31, v30, 3);
          v33 = 1;
          goto LABEL_62;
        }
      }

      else if (v40)
      {
        sub_1D8D02FCC(v31, v30, 3);
        v33 = 0;
        goto LABEL_62;
      }

LABEL_36:
      sub_1D8D02FE4(v14, v13, v15);
      sub_1D8D02FCC(v31, v30, v32);
      sub_1D8D02FCC(v14, v13, v15);
      v20 = (v20 + 1) & v21;
      if (((*(v44 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    if (!(v31 ^ 2 | v30))
    {
      if ((v42 & 1) == 0)
      {
        sub_1D8D02FCC(v31, v30, 3);
        v33 = 2;
        goto LABEL_62;
      }

      goto LABEL_36;
    }

    if (v43)
    {
      goto LABEL_36;
    }

    sub_1D8D02FCC(v31, v30, 3);
    v33 = 3;
LABEL_62:
    v34 = 0;
    v35 = 3;
LABEL_63:
    sub_1D8D02FCC(v33, v34, v35);
    v4 = v37;
    result = v38;
    v8 = v36;
    v7 = v39;
  }

  while (v39);
LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v39 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F66AA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8F66AE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation16StoreFeedUpdaterC6ResultO(uint64_t a1)
{
  if ((*(a1 + 64) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

uint64_t sub_1D8F66B64(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

BOOL sub_1D8F66BB4(uint64_t a1)
{
  v3 = *(v1 + 16);
  updated = type metadata accessor for FeedUpdateRequest();
  return *(a1 + *(updated + 28)) == *(v3 + *(updated + 28));
}

uint64_t sub_1D8F66C04(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for StoreFeedUpdater.Update(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = *v2;
  result = sub_1D8D7CD24(a1, a2, *v2, type metadata accessor for StoreFeedUpdater.Update);
  if (!v3)
  {
    if (v19)
    {
      return *(v17 + 16);
    }

    v37 = v16;
    v38 = a1;
    v34 = v13;
    v35 = v10;
    v39 = a2;
    v33 = v2;
    v41 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v41;
      }

      v36 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v40;
        v25 = *(v7 + 72);
        v26 = v37;
        sub_1D8D5F1EC(v24 + v25 * v20, v37, type metadata accessor for StoreFeedUpdater.Update);
        v27 = v38(v26);
        result = sub_1D8D5FDB8(v26, type metadata accessor for StoreFeedUpdater.Update);
        if (v27)
        {
          v7 = v36;
          v17 = v23;
        }

        else
        {
          v28 = v41;
          if (v20 == v41)
          {
            v7 = v36;
            v17 = v23;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v29 = *v22;
            if (v41 >= *v22)
            {
              goto LABEL_25;
            }

            v30 = v25 * v41;
            result = sub_1D8D5F1EC(v24 + v25 * v41, v34, type metadata accessor for StoreFeedUpdater.Update);
            if (v20 >= v29)
            {
              goto LABEL_26;
            }

            v31 = v25 * v20;
            sub_1D8D5F1EC(v24 + v25 * v20, v35, type metadata accessor for StoreFeedUpdater.Update);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1D915C360(v23);
            }

            v7 = v36;
            v32 = v17 + v40;
            result = sub_1D8F67444(v35, v17 + v40 + v30);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_27;
            }

            result = sub_1D8F67444(v34, v32 + v31);
            *v33 = v17;
            v28 = v41;
          }

          v41 = v28 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v41;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8F66F40@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = sub_1D8F7ECEC(v3);
  swift_endAccess();
  result = sub_1D8D7D28C(sub_1D8D81F3C, &unk_1F54712A0, sub_1D8D85B6C, &block_descriptor_63);
  v6 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
  }

  *a2 = v6;
  return result;
}

void sub_1D8F67008(uint64_t a1, uint64_t a2)
{
  v19 = objc_opt_self();
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5C00, &qword_1D91913F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D9197CA0;
  v20[0] = 0x6F7369704577656ELL;
  v20[1] = 0xEF746E756F436564;
  v6 = MEMORY[0x1E69E6158];
  sub_1D91793EC();
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E6530];
  *(v5 + 96) = MEMORY[0x1E69E6530];
  *(v5 + 72) = v7;
  v20[0] = 0xD000000000000013;
  v20[1] = 0x80000001D91CEB10;
  sub_1D91793EC();
  v9 = *(a1 + 24);
  *(v5 + 168) = v8;
  *(v5 + 144) = v9;
  v20[0] = 0xD000000000000013;
  v20[1] = 0x80000001D91CEB30;
  sub_1D91793EC();
  v10 = *(a1 + 32);
  *(v5 + 240) = v8;
  *(v5 + 216) = v10;
  v20[0] = 0xD000000000000011;
  v20[1] = 0x80000001D91CEB50;
  sub_1D91793EC();
  v11 = *(a1 + 8);
  *(v5 + 312) = v8;
  *(v5 + 288) = v11;
  v20[0] = 0xD000000000000010;
  v20[1] = 0x80000001D91CEE10;
  sub_1D91793EC();
  v12 = *(a1 + 40);
  *(v5 + 384) = v8;
  *(v5 + 360) = v12;
  strcpy(v20, "pageCount");
  WORD1(v20[1]) = 0;
  HIDWORD(v20[1]) = -385875968;
  sub_1D91793EC();
  v13 = *a1;
  *(v5 + 456) = v8;
  *(v5 + 432) = v13;
  strcpy(v20, "podcastStoreId");
  HIBYTE(v20[1]) = -18;
  sub_1D91793EC();
  updated = type metadata accessor for FeedUpdateRequest();
  v15 = *(a2 + *(updated + 28));
  *(v5 + 528) = MEMORY[0x1E69E7360];
  *(v5 + 504) = v15;
  v20[0] = 0xD000000000000010;
  v20[1] = 0x80000001D91CEB70;
  sub_1D91793EC();
  v16 = *(a2 + *(updated + 48));
  *(v5 + 600) = v8;
  *(v5 + 576) = v16;
  strcpy(v20, "updaterType");
  sub_1D91793EC();
  *(v5 + 672) = v6;
  *(v5 + 648) = 1668184435;
  *(v5 + 656) = 0xE400000000000000;
  strcpy(v20, "needsBootstrap");
  HIBYTE(v20[1]) = -18;
  sub_1D91793EC();
  v17 = *(a2 + *(type metadata accessor for StoreFeedUpdater.Update(0) + 28));
  *(v5 + 744) = MEMORY[0x1E69E6370];
  *(v5 + 720) = v17;
  v20[0] = 0xD000000000000011;
  v20[1] = 0x80000001D91CEE30;
  sub_1D91793EC();
  *(v5 + 816) = v6;
  *(v5 + 792) = *(a1 + 48);
  sub_1D8F674F8(a1, v20);
  sub_1D8D653BC(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C80, &unk_1D91949C0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v18 = sub_1D917802C();

  [v19 recordEvent:v4 dataSource:0 data:v18];
}

uint64_t sub_1D8F67444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreFeedUpdater.Update(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8F6754C()
{
  v1 = *(type metadata accessor for StoreFeedUpdater.Update(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1D9176EAC() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8F63CD8(v0 + v2, v6, v0 + v5, v7);
}

uint64_t objectdestroy_56Tm()
{
  v1 = *(v0 + 16);

  sub_1D8F58A60(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D8F676A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a2 + 64);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = (Strong + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval);
    if (*(Strong + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8))
    {
      v17 = *v9;
      v18 = *(Strong + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);

      sub_1D8D7FAB4();

      v10 = v9[1];
    }

    *v9 = 0;
    v9[1] = 0;
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = (v11 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_fullJobInterval);
    if (*(v11 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_fullJobInterval + 8))
    {
      v15 = *v12;
      v16 = *(v11 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_fullJobInterval + 8);

      sub_1D8D92750(v7 == 0);

      v13 = v12[1];
    }

    *v12 = 0;
    v12[1] = 0;
  }

  return a4(a1, a2);
}

uint64_t sub_1D8F67818(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  if (*(v3 + *(type metadata accessor for StoreFeedUpdater.Update(0) + 28)) == 1)
  {
    *&v21 = 0;
    v19 = 0u;
    v20 = 0u;
    BYTE8(v21) = 0x80;
    *&v22 = a1;
    sub_1D8F6F12C(&v19);
    v17 = v27;
    v18[0] = v28[0];
    *(v18 + 10) = *(v28 + 10);
    v13 = v23;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v9 = v19;
    v10 = v20;
    v11 = v21;
    v12 = v22;
    v4 = a1;
    sub_1D8D8EBEC(&v9);
    v29[8] = v17;
    v30[0] = v18[0];
    *(v30 + 10) = *(v18 + 10);
    v29[4] = v13;
    v29[5] = v14;
    v29[6] = v15;
    v29[7] = v16;
    v29[0] = v9;
    v29[1] = v10;
    v29[2] = v11;
    v29[3] = v12;
    return sub_1D8D90C48(v29);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = a1;
    v8 = a1;

    NSManagedObjectContext.performWithTelemetry(for:_:)(v3, sub_1D8F6F124, v7);
  }
}

uint64_t sub_1D8F67994(void *a1, __int128 *a2)
{
  v5 = v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v6 = v5 + *(type metadata accessor for FeedUpdateRequest() + 60);
  v7 = *v6;
  if (!*v6)
  {
    goto LABEL_4;
  }

  v8 = *(v6 + 8);
  v9 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);

  v10 = v7(a1, 1, v9);
  if ([v10 shouldContinue])
  {

    sub_1D8D15664(v7);
LABEL_4:
    v11 = a2[9];
    v41 = a2[8];
    *v42 = v11;
    v42[16] = *(a2 + 160);
    v12 = a2[5];
    v37 = a2[4];
    v38 = v12;
    v13 = a2[7];
    v39 = a2[6];
    v40 = v13;
    v14 = a2[1];
    v33 = *a2;
    v34 = v14;
    v15 = a2[3];
    v35 = a2[2];
    v36 = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    v17 = a1;
    sub_1D8F69C58(&v33, sub_1D8F6F194, v16);
  }

  sub_1D8D77098();
  v19 = swift_allocError();
  *v20 = 11;
  *&v31[0] = v19;
  sub_1D8F6F10C(v31);
  v29 = v31[8];
  v30[0] = v32[0];
  *(v30 + 10) = *(v32 + 10);
  v25 = v31[4];
  v26 = v31[5];
  v27 = v31[6];
  v28 = v31[7];
  v21 = v31[0];
  v22 = v31[1];
  v23 = v31[2];
  v24 = v31[3];
  sub_1D8D8EBEC(&v21);

  sub_1D8D15664(v7);
  v41 = v29;
  *v42 = v30[0];
  *&v42[10] = *(v30 + 10);
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  return sub_1D8D90C48(&v33);
}

uint64_t sub_1D8F67B90(_OWORD *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for StoreFeedUpdater.Update(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[9];
  v53[8] = a1[8];
  v54[0] = v10;
  *(v54 + 10) = *(a1 + 154);
  v11 = a1[5];
  v53[4] = a1[4];
  v53[5] = v11;
  v12 = a1[7];
  v53[6] = a1[6];
  v53[7] = v12;
  v13 = a1[1];
  v53[0] = *a1;
  v14 = a1[2];
  v53[3] = a1[3];
  v53[1] = v13;
  v53[2] = v14;
  if (sub_1D8D8EB0C(v53) - 3 >= 3)
  {
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v31 = sub_1D917744C();
    __swift_project_value_buffer(v31, qword_1EDCD1050);

    v32 = a2;
    v33 = sub_1D917741C();
    v34 = sub_1D9178CFC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v51[0] = v37;
      *v35 = 141558531;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      sub_1D8D800E0(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v9, type metadata accessor for StoreFeedUpdater.Update);
      v38 = &v9[*(v6 + 32)];
      v39 = *v38;
      v40 = v38[1];

      sub_1D8D90C88(v9, type metadata accessor for StoreFeedUpdater.Update);
      v41 = sub_1D8CFA924(v39, v40, v51);

      *(v35 + 14) = v41;
      *(v35 + 22) = 2112;
      v42 = sub_1D9176A5C();
      *(v35 + 24) = v42;
      *v36 = v42;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Job %{private,mask.hash}s: Failed with error %@", v35, 0x20u);
      sub_1D8D08A50(v36, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1DA72CB90](v37, -1, -1);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    v43 = v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
    v44 = v43 + *(type metadata accessor for FeedUpdateRequest() + 56);
    if (*v44)
    {
      v45 = *(v44 + 8);
      (*v44)(a2, 0);
    }

    v46 = v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion;
    v47 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
    v48 = *(v46 + 8);
    v51[0] = a2;
    v52 = 1;

    v47(v43, v51);
  }

  else
  {
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1EDCD1050);

    v16 = a2;
    v17 = sub_1D917741C();
    v18 = sub_1D9178CFC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v51[0] = v21;
      *v19 = 141558531;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_1D8D800E0(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v9, type metadata accessor for StoreFeedUpdater.Update);
      v22 = &v9[*(v6 + 32)];
      v23 = *v22;
      v24 = v22[1];

      sub_1D8D90C88(v9, type metadata accessor for StoreFeedUpdater.Update);
      v25 = sub_1D8CFA924(v23, v24, v51);

      *(v19 + 14) = v25;
      *(v19 + 22) = 2112;
      v26 = sub_1D9176A5C();
      *(v19 + 24) = v26;
      *v20 = v26;
      _os_log_impl(&dword_1D8CEC000, v17, v18, "Job %{private,mask.hash}s: Partially Succeeded with error %@", v19, 0x20u);
      sub_1D8D08A50(v20, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1DA72CB90](v21, -1, -1);
      MEMORY[0x1DA72CB90](v19, -1, -1);
    }

    v27 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);
    v28 = OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    *(v29 + 24) = a2;

    v30 = a2;
    NSManagedObjectContext.performWithTelemetry(for:_:)(v3 + v28, sub_1D8F6F634, v29);
  }
}

_OWORD *sub_1D8F68128()
{
  v1 = v0[10];
  v12[8] = v0[9];
  v13[0] = v1;
  *(v13 + 10) = *(v0 + 170);
  v2 = v0[6];
  v12[4] = v0[5];
  v12[5] = v2;
  v3 = v0[8];
  v12[6] = v0[7];
  v12[7] = v3;
  v4 = v0[2];
  v12[0] = v0[1];
  v12[1] = v4;
  v5 = v0[4];
  v12[2] = v0[3];
  v12[3] = v5;
  sub_1D8D90C48(v12);
  sub_1D8D90C88(v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, type metadata accessor for StoreFeedUpdater.Update);

  v6 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion + 8);

  v7 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 56);

  v8 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_updaterJobUUID + 8);

  v9 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);

  v10 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_fullJobInterval + 8);

  sub_1D8D90C88(v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_bagConfiguration, type metadata accessor for FeedManagerBagConfiguration);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider));

  return v0;
}

uint64_t sub_1D8F6826C()
{
  sub_1D8F68128();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation19StoreFeedUpdaterJobC11SyncRequest33_FBF799961955A5A2E70C121347D0D776LLO(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation12MediaRequestC0D4TypeOSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy170_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D8F6833C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F8 && *(a1 + 170))
  {
    return (*a1 + 2040);
  }

  v3 = ((*(a1 + 168) >> 3) & 7 | (8 * *(a1 + 169))) ^ 0x7FF;
  if (v3 >= 0x7F7)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8F68390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7F7)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 - 2040;
    if (a3 >= 0x7F8)
    {
      *(result + 170) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F8)
    {
      *(result + 170) = 0;
    }

    if (a2)
    {
      *(result + 160) = 0;
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 168) = 8 * (-a2 & 7);
      *(result + 169) = -a2 >> 3;
    }
  }

  return result;
}

uint64_t sub_1D8F68428(uint64_t result, unsigned int a2)
{
  if (a2 < 8)
  {
    *(result + 168) = *(result + 168) & 0xC7 | (8 * a2);
  }

  else
  {
    *result = a2 - 8;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0;
  }

  *(result + 169) = a2 > 7;
  return result;
}

void sub_1D8F68498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  if (*(a3 + 8) == 1)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return;
    }

    *&v24 = v3;
    sub_1D8F6F10C(&v24);
    v22 = v32;
    v23[0] = v33[0];
    *(v23 + 10) = *(v33 + 10);
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v17 = v27;
    v4 = v3;
LABEL_23:
    sub_1D8D8EBEC(&v14);
    goto LABEL_24;
  }

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_21:
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return;
    }

    sub_1D8D77098();
    v12 = swift_allocError();
    *v13 = 1;
    *&v24 = v12;
    sub_1D8F6F10C(&v24);
    v22 = v32;
    v23[0] = v33[0];
    *(v23 + 10) = *(v33 + 10);
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v17 = v27;
    goto LABEL_23;
  }

  if (v3 < 0)
  {
    v11 = *a3;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_21;
  }

LABEL_6:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA72AA90](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;
  v7 = *&v5[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
  if (v7)
  {
    v8 = *(v7 + 48);
    if (v8 != 2 && (v8 & 1) == 0)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1D8D77098();
        v9 = swift_allocError();
        *v10 = 16;
        *&v24 = v9;
        sub_1D8F6F10C(&v24);
        v22 = v32;
        v23[0] = v33[0];
        *(v23 + 10) = *(v33 + 10);
        v18 = v28;
        v19 = v29;
        v20 = v30;
        v21 = v31;
        v14 = v24;
        v15 = v25;
        v16 = v26;
        v17 = v27;
        goto LABEL_14;
      }

LABEL_17:

      return;
    }
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_17;
  }

  *&v24 = v6;
  sub_1D8F6F0F8(&v24);
  v22 = v32;
  v23[0] = v33[0];
  *(v23 + 10) = *(v33 + 10);
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v17 = v27;
  v6 = v6;
LABEL_14:
  sub_1D8D8EBEC(&v14);

LABEL_24:

  v34[8] = v22;
  v35[0] = v23[0];
  *(v35 + 10) = *(v23 + 10);
  v34[4] = v18;
  v34[5] = v19;
  v34[6] = v20;
  v34[7] = v21;
  v34[0] = v14;
  v34[1] = v15;
  v34[2] = v16;
  v34[3] = v17;
  sub_1D8D90C48(v34);
}

uint64_t sub_1D8F687AC(uint64_t a1, void *a2)
{
  v3 = a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v4 = [*(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx) podcastForStoreId_];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 nextSyncToken];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D917820C();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        v12 = 0;
        v13 = 0;
        v14 = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v8 = 0;
  v10 = 0;
  v14 = 0;
  v13 = 0x80;
  v12 = 1;
LABEL_10:
  v15 = type metadata accessor for StoreFeedUpdater.Update(0);
  if (v14 & 1) != 0 || (*(v3 + *(v15 + 28)))
  {
    goto LABEL_16;
  }

  v16 = v12 ^ 1;
  if (v10 | v8)
  {
    v16 = 1;
  }

  if (v16)
  {
LABEL_16:
    *&v29 = v8;
    *(&v29 + 1) = v10;
    *&v31 = 0;
    v30 = 0uLL;
    BYTE8(v31) = v13;
    *&v32 = a2;
    sub_1D8F6F12C(&v29);
    v27 = v37;
    v28[0] = v38[0];
    *(v28 + 10) = *(v38 + 10);
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v26 = v36;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v18 = a2;
    sub_1D8D8EBEC(&v19);
    v47 = v27;
    v48[0] = v28[0];
    *(v48 + 10) = *(v28 + 10);
    v43 = v23;
    v44 = v24;
    v45 = v25;
    v46 = v26;
    v39 = v19;
    v40 = v20;
    v41 = v21;
    v42 = v22;
    return sub_1D8D90C48(&v39);
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    LOBYTE(v43) = 2;
    sub_1D8F6F0C8(&v39);
    v37 = v47;
    v38[0] = v48[0];
    *(v38 + 10) = *(v48 + 10);
    v33 = v43;
    v34 = v44;
    v35 = v45;
    v36 = v46;
    v29 = v39;
    v30 = v40;
    v31 = v41;
    v32 = v42;
    return sub_1D8D8EBEC(&v29);
  }
}

uint64_t sub_1D8F689D8(__int128 *a1, uint64_t a2, void *a3)
{
  v4 = a1[9];
  v32 = a1[8];
  v33 = v4;
  v34 = *(a1 + 160);
  v5 = a1[5];
  v28 = a1[4];
  v29 = v5;
  v6 = a1[7];
  v30 = a1[6];
  v31 = v6;
  v7 = a1[1];
  v24 = *a1;
  v25 = v7;
  v8 = a1[3];
  v26 = a1[2];
  v27 = v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *&v21[120] = v31;
    *&v21[136] = v32;
    *&v21[152] = v33;
    *&v21[56] = v27;
    *&v21[72] = v28;
    *&v21[88] = v29;
    *&v21[104] = v30;
    *&v21[8] = v24;
    *&v21[24] = v25;
    v21[168] = v34;
    *&v21[40] = v26;
    *v21 = a3;
    sub_1D8F6F144(v21);
    v19 = *&v21[128];
    v20[0] = *&v21[144];
    *(v20 + 10) = *&v21[154];
    v15 = *&v21[64];
    v16 = *&v21[80];
    v17 = *&v21[96];
    v18 = *&v21[112];
    v11 = *v21;
    v12 = *&v21[16];
    v13 = *&v21[32];
    v14 = *&v21[48];
    v10 = a3;
    sub_1D8F6F15C(&v24, v22);
    sub_1D8D8EBEC(&v11);

    v22[8] = v19;
    v23[0] = v20[0];
    *(v23 + 10) = *(v20 + 10);
    v22[4] = v15;
    v22[5] = v16;
    v22[6] = v17;
    v22[7] = v18;
    v22[0] = v11;
    v22[1] = v12;
    v22[2] = v13;
    v22[3] = v14;
    return sub_1D8D90C48(v22);
  }

  return result;
}

uint64_t sub_1D8F68B4C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  updated = type metadata accessor for FeedUpdateRequest();
  v9 = *(*(updated - 1) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v11 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v167 = &v140 - v14;
  v15 = type metadata accessor for MediaRequest.Params();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StoreFeedUpdater.Update(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v170 + 9) = *(a1 + 25);
  v23 = a1[1];
  v169 = *a1;
  v170[0] = v23;
  v24 = BYTE8(v170[1]) >> 6;
  v162 = a2;
  v163 = a3;
  v161 = v11;
  if (v24)
  {
    v149 = updated;
    if (v24 == 1)
    {
      if (qword_1EDCD1048 != -1)
      {
        swift_once();
      }

      v25 = sub_1D917744C();
      __swift_project_value_buffer(v25, qword_1EDCD1050);

      v26 = sub_1D917741C();
      v27 = sub_1D9178D1C();

      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_17;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v168[0] = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      sub_1D8D800E0(v4 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v22, type metadata accessor for StoreFeedUpdater.Update);
      v30 = &v22[*(v19 + 32)];
      v31 = *v30;
      v32 = v30[1];

      sub_1D8D90C88(v22, type metadata accessor for StoreFeedUpdater.Update);
      v33 = sub_1D8CFA924(v31, v32, v168);

      *(v28 + 14) = v33;
      v34 = "Job %{private,mask.hash}s: Requesting sync with next page";
    }

    else
    {
      if (qword_1EDCD1048 != -1)
      {
        swift_once();
      }

      v48 = sub_1D917744C();
      __swift_project_value_buffer(v48, qword_1EDCD1050);

      v26 = sub_1D917741C();
      v27 = sub_1D9178D1C();

      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_17;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v168[0] = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      sub_1D8D800E0(v4 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v22, type metadata accessor for StoreFeedUpdater.Update);
      v49 = &v22[*(v19 + 32)];
      v50 = *v49;
      v51 = v49[1];

      sub_1D8D90C88(v22, type metadata accessor for StoreFeedUpdater.Update);
      v52 = sub_1D8CFA924(v50, v51, v168);

      *(v28 + 14) = v52;
      v34 = "Job %{private,mask.hash}s: Requesting Bootstrap";
    }

    _os_log_impl(&dword_1D8CEC000, v26, v27, v34, v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1DA72CB90](v29, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);
LABEL_17:

    updated = v149;
    goto LABEL_18;
  }

  v165 = v169;
  v166 = v15;
  v164 = *(&v169 + 1);
  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v35 = sub_1D917744C();
  __swift_project_value_buffer(v35, qword_1EDCD1050);

  sub_1D8F6F1A4(&v169, v168);
  v36 = sub_1D917741C();
  v37 = sub_1D9178D1C();

  sub_1D8F6F268(&v169);
  if (os_log_type_enabled(v36, v37))
  {
    v38 = v4;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v149 = updated;
    v41 = v40;
    v168[0] = v40;
    *v39 = 141558787;
    *(v39 + 4) = 1752392040;
    *(v39 + 12) = 2081;
    sub_1D8D800E0(v38 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v22, type metadata accessor for StoreFeedUpdater.Update);
    v42 = &v22[*(v19 + 32)];
    v43 = *v42;
    v44 = v42[1];

    sub_1D8D90C88(v22, type metadata accessor for StoreFeedUpdater.Update);
    v45 = sub_1D8CFA924(v43, v44, v168);

    *(v39 + 14) = v45;
    *(v39 + 22) = 2160;
    *(v39 + 24) = 1752392040;
    *(v39 + 32) = 2081;
    *(v39 + 34) = sub_1D8CFA924(v165, v164, v168);
    _os_log_impl(&dword_1D8CEC000, v36, v37, "Job %{private,mask.hash}s: Requesting sync with nextSyncToken %{private,mask.hash}s", v39, 0x2Au);
    swift_arrayDestroy();
    v46 = v41;
    updated = v149;
    MEMORY[0x1DA72CB90](v46, -1, -1);
    v47 = v39;
    v4 = v38;
    MEMORY[0x1DA72CB90](v47, -1, -1);
  }

  v15 = v166;
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FD8, &qword_1D9191F60);
  v53 = swift_allocObject();
  v159 = xmmword_1D9189080;
  *(v53 + 16) = xmmword_1D9189080;
  *(v53 + 32) = 4;
  v54 = sub_1D8D946F4(&unk_1F545E1E0);
  sub_1D8D08A50(&unk_1F545E200, &unk_1ECAB9A50, &unk_1D9197130);
  v55 = MEMORY[0x1E69E7CC0];
  v166 = sub_1D8E26D04(MEMORY[0x1E69E7CC0]);
  v56 = sub_1D8E27040(v55);
  v58 = *(v53 + 16);
  v57 = *(v53 + 24);
  if (v58 >= v57 >> 1)
  {
    v53 = sub_1D8D883A0((v57 > 1), v58 + 1, 1, v53);
  }

  *(v53 + 16) = v58 + 1;
  *(v53 + v58 + 32) = 3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v168[0] = v54;
  sub_1D8F506E0(&unk_1F545E190, 4, isUniquelyReferenced_nonNull_native);
  v160 = v168[0];
  v60 = v56;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v168[0] = v56;
  v63 = sub_1D8F06C58(1u);
  v64 = v60[2];
  v65 = (v62 & 1) == 0;
  v66 = v64 + v65;
  if (!__OFADD__(v64, v65))
  {
    v67 = v62;
    if (v60[3] >= v66)
    {
      if (v61)
      {
        if (v62)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1D8F83E58();
        v60 = v168[0];
        if (v67)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_1D9006C9C(v66, v61);
      v68 = v168[0];
      v69 = sub_1D8F06C58(1u);
      if ((v67 & 1) != (v70 & 1))
      {
        goto LABEL_72;
      }

      v63 = v69;
      v60 = v68;
      if (v67)
      {
LABEL_28:
        v61 = v60[7];
        v54 = *(v61 + 8 * v63);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        *(v61 + 8 * v63) = v54;
        v164 = v60;
        v165 = v53;
        if (v71)
        {
          goto LABEL_29;
        }

        goto LABEL_65;
      }
    }

    sub_1D90BA624(v63, 1, MEMORY[0x1E69E7CC0], v60);
    goto LABEL_28;
  }

  __break(1u);
LABEL_65:
  v54 = sub_1D8ECCFF4(0, *(v54 + 16) + 1, 1, v54);
  *(v61 + 8 * v63) = v54;
LABEL_29:
  v73 = *(v54 + 16);
  v72 = *(v54 + 24);
  if (v73 >= v72 >> 1)
  {
    v54 = sub_1D8ECCFF4((v72 > 1), v73 + 1, 1, v54);
    *(v61 + 8 * v63) = v54;
  }

  *(v54 + 16) = v73 + 1;
  *(v54 + v73 + 32) = 19;
  v168[3] = &type metadata for Podcasts;
  v168[4] = sub_1D8CF0F2C();
  LOBYTE(v168[0]) = 40;
  v74 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(v168);
  if ((v74 & 1) == 0)
  {
    v90 = 0;
    goto LABEL_48;
  }

  v75 = v165;
  v77 = *(v165 + 2);
  v76 = *(v165 + 3);
  v78 = v77 + 1;
  if (v77 >= v76 >> 1)
  {
    v75 = sub_1D8D883A0((v76 > 1), v77 + 1, 1, v165);
  }

  *(v75 + 2) = v78;
  v75[v77 + 32] = 6;
  v79 = v164;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v168[0] = v79;
  v82 = sub_1D8F06C58(1u);
  v83 = v79[2];
  v84 = (v81 & 1) == 0;
  v85 = v83 + v84;
  if (__OFADD__(v83, v84))
  {
    __break(1u);
LABEL_69:
    swift_once();
    goto LABEL_56;
  }

  v86 = v81;
  if (v79[3] < v85)
  {
    sub_1D9006C9C(v85, v80);
    v87 = v168[0];
    v88 = sub_1D8F06C58(1u);
    if ((v86 & 1) == (v89 & 1))
    {
      v82 = v88;
      v79 = v87;
      if (v86)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

LABEL_72:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  if ((v80 & 1) == 0)
  {
    sub_1D8F83E58();
    v79 = v168[0];
    if (v86)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if ((v81 & 1) == 0)
  {
LABEL_42:
    sub_1D90BA624(v82, 1, MEMORY[0x1E69E7CC0], v79);
  }

LABEL_43:
  v91 = v79[7];
  v92 = *(v91 + 8 * v82);
  v93 = swift_isUniquelyReferenced_nonNull_native();
  *(v91 + 8 * v82) = v92;
  v164 = v79;
  v165 = v75;
  if ((v93 & 1) == 0)
  {
    v92 = sub_1D8ECCFF4(0, *(v92 + 2) + 1, 1, v92);
    *(v91 + 8 * v82) = v92;
  }

  v95 = *(v92 + 2);
  v94 = *(v92 + 3);
  if (v95 >= v94 >> 1)
  {
    v92 = sub_1D8ECCFF4((v94 > 1), v95 + 1, 1, v92);
    *(v91 + 8 * v82) = v92;
  }

  *(v92 + 2) = v95 + 1;
  v92[v95 + 32] = 24;
  v96 = v166;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v168[0] = v96;
  sub_1D8F505BC(&unk_1F545E1B8, 6144, v97);
  v166 = v168[0];
  v90 = sub_1D8CF7564;
LABEL_48:
  v98 = BYTE8(v170[1]) >> 6;
  v153 = v90;
  if (!v98)
  {
    v158 = v169;
    v156 = 0;
    v155 = 0u;
    v99 = 2;
    goto LABEL_52;
  }

  if (v98 == 1)
  {
    v158 = v169;
    v156 = *&v170[1];
    v155 = v170[0];
    v99 = BYTE8(v170[1]) & 0x3F;
LABEL_52:
    v157 = v99;
    goto LABEL_54;
  }

  v157 = BYTE8(v170[1]) >> 6;
  v156 = 0;
  v158 = 0u;
  v155 = 0u;
LABEL_54:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v100 = swift_allocObject();
  *(v100 + 16) = v159;
  v78 = v4 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v168[6] = *(v4 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update + updated[7]);
  sub_1D8F6F1A4(&v169, v168);
  *(v100 + 32) = sub_1D9179A4C();
  *(v100 + 40) = v101;
  *&v159 = v100;
  if (![objc_opt_self() isRunningOnHomepod])
  {
    if (qword_1EDCD23E8 != -1)
    {
      swift_once();
    }

    v102 = &qword_1EDCD23F0;
    goto LABEL_60;
  }

  if (qword_1ECAB34D0 != -1)
  {
    goto LABEL_69;
  }

LABEL_56:
  v102 = &qword_1ECAB73D0;
LABEL_60:
  v103 = *v102 + OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_deltaNumberOfEpisodesToRequestPerPage;
  v152 = *v103;
  v151 = *(v103 + 8);
  sub_1D8D088B4(v4 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_bagConfiguration, v167, &unk_1ECAB5910, &qword_1D9188C90);
  v104 = *(v78 + updated[9]);
  v154 = v4;
  if (v104)
  {
    v150 = 0;
  }

  else
  {
    v150 = *(v78 + updated[11]);
  }

  v105 = (v78 + updated[8]);
  v106 = v105[1];
  v149 = *v105;
  v148 = v106;

  v146 = sub_1D8D94DF8(v55);
  v145 = sub_1D8D951E0(v55);
  v144 = sub_1D8D9503C(v55);
  v142 = sub_1D8D9536C(v55);
  v141 = sub_1D8D952D8(v55);
  v143 = sub_1D8D95394(v55);
  v107 = sub_1D8D957C4(v55);
  *(v18 + 41) = 263;
  v18[43] = 5;
  v18[152] = 1;
  v18[201] = 1;
  v147 = v78;
  v108 = v15[28];
  v109 = sub_1D9176C2C();
  (*(*(v109 - 8) + 56))(&v18[v108], 1, 1, v109);
  v110 = &v18[v15[29]];
  v111 = &v18[v15[31]];
  v112 = v15[34];
  v113 = v55;
  v114 = &v18[v15[33]];
  v115 = &v18[v15[35]];
  v116 = v155;
  *v18 = v158;
  *(v18 + 1) = v116;
  *(v18 + 4) = v156;
  v18[40] = v157;
  *(v18 + 41) = 257;
  v18[43] = 0;
  v117 = v146;
  *(v18 + 6) = v164;
  *(v18 + 7) = v117;
  *(v18 + 8) = v145;
  *(v18 + 9) = v113;
  v118 = v142;
  *(v18 + 10) = v144;
  *(v18 + 11) = v118;
  v119 = v166;
  *(v18 + 12) = v160;
  *(v18 + 13) = v119;
  v120 = v141;
  *(v18 + 14) = v113;
  *(v18 + 15) = v120;
  *(v18 + 16) = v165;
  *(v18 + 17) = v113;
  *(v18 + 18) = v159;
  v18[152] = 1;
  *(v18 + 20) = v152;
  v18[168] = v151;
  *(v18 + 22) = v143;
  *(v18 + 23) = v107;
  *(v18 + 24) = 0;
  *(v18 + 100) = 257;
  v18[202] = 1;
  sub_1D8E26828(v167, &v18[v108]);
  *v110 = 0;
  *(v110 + 1) = 0;
  v18[v15[30]] = v150;
  *v111 = 0;
  *(v111 + 1) = 0;
  *&v18[v15[32]] = v113;
  v121 = v148;
  *v114 = v149;
  *(v114 + 1) = v121;
  v18[v112] = 2;
  *v115 = 0;
  *(v115 + 1) = 0;
  v122 = v161;
  sub_1D8D800E0(v147, v161, type metadata accessor for FeedUpdateRequest);
  v123 = _s21MediaRequestTelemetryCMa();
  v124 = *(v123 + 48);
  v125 = *(v123 + 52);
  v126 = swift_allocObject();
  v127 = (v126 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestBuildingState);
  *v127 = 0;
  v127[1] = 0;
  v128 = (v126 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingState);
  *v128 = 0;
  v128[1] = 0;
  v129 = (v126 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingDiagnosticState);
  *v129 = 0;
  v129[1] = 0;
  v130 = (v126 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_networkState);
  *v130 = 0;
  v130[1] = 0;
  v131 = (v126 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_parsingState);
  *v131 = 0;
  v131[1] = 0;
  sub_1D8D79960(v122, v126 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_request);
  *(v126 + 16) = 1;
  v132 = *(v154 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController + 24);
  v133 = *(v154 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController + 32);
  __swift_project_boxed_opaque_existential_1((v154 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController), v132);
  v134 = swift_allocObject();
  swift_weakInit();
  v135 = swift_allocObject();
  *(v135 + 16) = v134;
  v136 = v170[0];
  *(v135 + 24) = v169;
  *(v135 + 40) = v136;
  *(v135 + 49) = *(v170 + 9);
  v137 = v163;
  *(v135 + 72) = v162;
  *(v135 + 80) = v137;
  sub_1D8F6F1A4(&v169, v168);
  v138 = sub_1D8F6F214();

  MediaRequestControllerProtocol.perform<A>(params:account:telemetry:parsing:callback:)(v18, 0, v126, &type metadata for ServerSyncResponse, sub_1D8F6F200, v135, v132, &type metadata for ServerSyncResponse, v133, v138);

  sub_1D8D90C88(v18, type metadata accessor for MediaRequest.Params);
  return sub_1D8D15664(v153);
}

uint64_t sub_1D8F69C58(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(result + 144);
  v69 = *(result + 128);
  v70 = v4;
  v71 = *(result + 160);
  v5 = *(result + 80);
  v65 = *(result + 64);
  v66 = v5;
  v6 = *(result + 112);
  v67 = *(result + 96);
  v68 = v6;
  v7 = *(result + 16);
  v61 = *result;
  v62 = v7;
  v8 = *(result + 48);
  v63 = *(result + 32);
  v64 = v8;
  v9 = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v59[0] = MEMORY[0x1E69E7CC0];
  v11 = *(v8 + 16);
LABEL_2:
  v12 = v9 + 72 * v3;
  while (v11 != v3)
  {
    if (v3 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    ++v3;
    v13 = (v12 + 72);
    v14 = *(v12 + 80);
    v12 += 72;
    if (v14)
    {
      v15 = *(v13 - 4);
      v16 = *(v13 - 2);
      v52 = *(v13 - 5);
      v53 = *(v13 - 3);
      v17 = *v13;
      v54 = *(v13 - 1);
      v55 = v13[2];
      v18 = type metadata accessor for ServerPodcastEpisode();
      v19 = objc_allocWithZone(v18);
      v20 = OBJC_IVAR___MTServerPodcastEpisode_relationships;
      *&v19[OBJC_IVAR___MTServerPodcastEpisode_relationships] = 0;
      v21 = &v19[OBJC_IVAR___MTServerPodcastEpisode_id];
      *v21 = v52;
      *(v21 + 1) = v15;
      v22 = &v19[OBJC_IVAR___MTServerPodcastEpisode_type];
      *v22 = v53;
      *(v22 + 1) = v16;
      v23 = &v19[OBJC_IVAR___MTServerPodcastEpisode_href];
      *v23 = v54;
      *(v23 + 1) = v17;
      *&v19[OBJC_IVAR___MTServerPodcastEpisode_attributes] = v14;
      swift_beginAccess();
      *&v19[v20] = v55;
      v60.receiver = v19;
      v60.super_class = v18;

      v24 = v55;
      objc_msgSendSuper2(&v60, sel_init);
      MEMORY[0x1DA729B90]();
      if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D917863C();
      }

      result = sub_1D917869C();
      v10 = v59[0];
      goto LABEL_2;
    }
  }

  if (v11)
  {
    v26 = 0;
    v27 = -v11;
    v28 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v29 = *(v9 + 16);
    if (v26 > v29)
    {
      v29 = v26;
    }

    v30 = -v29;
    v31 = (v9 + 96 + 72 * v26++);
    while (v30 + v26 != 1)
    {
      if (*v31 & 0xFE) != 2 && (*v31)
      {
        v33 = *(v31 - 8);
        v32 = *(v31 - 7);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D8D4241C(0, *(v28 + 16) + 1, 1, v28);
          v28 = result;
        }

        v35 = *(v28 + 16);
        v34 = *(v28 + 24);
        if (v35 >= v34 >> 1)
        {
          result = sub_1D8D4241C((v34 > 1), v35 + 1, 1, v28);
          v28 = result;
        }

        *(v28 + 16) = v35 + 1;
        v36 = v28 + 16 * v35;
        *(v36 + 32) = v33;
        *(v36 + 40) = v32;
        if (v27 + v26)
        {
          goto LABEL_11;
        }

        goto LABEL_25;
      }

      ++v26;
      v31 += 72;
      if (v27 + v26 == 1)
      {
        goto LABEL_25;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v37 = (v58 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData);
  v38 = *(v58 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    goto LABEL_30;
  }

  *v37 = v40;
  v41 = *(v9 + 16);
  v42 = v37[1];
  v39 = __OFADD__(v42, v41);
  v43 = v42 + v41;
  if (!v39)
  {
    v37[1] = v43;
    v44 = *(v58 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);
    v45 = OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
    v46 = swift_allocObject();
    v47 = v67;
    *(v46 + 136) = v68;
    v48 = v70;
    *(v46 + 152) = v69;
    *(v46 + 168) = v48;
    v49 = v63;
    *(v46 + 72) = v64;
    v50 = v66;
    *(v46 + 88) = v65;
    *(v46 + 104) = v50;
    *(v46 + 120) = v47;
    v51 = v62;
    *(v46 + 24) = v61;
    *(v46 + 40) = v51;
    *(v46 + 16) = v58;
    *(v46 + 184) = v71;
    *(v46 + 56) = v49;
    *(v46 + 192) = a2;
    *(v46 + 200) = a3;
    *(v46 + 208) = v10;
    *(v46 + 216) = v28;

    sub_1D8F6F15C(&v61, v59);
    sub_1D8D1F93C(a2);
    NSManagedObjectContext.performWithTelemetry(for:_:)(v58 + v45, sub_1D8F6F304, v46);
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D8F6A070(__int128 *a1)
{
  v1 = a1[9];
  v37 = a1[8];
  v38 = v1;
  v39 = *(a1 + 160);
  v2 = a1[5];
  v33 = a1[4];
  v34 = v2;
  v3 = a1[7];
  v35 = a1[6];
  v36 = v3;
  v4 = a1[1];
  v29 = *a1;
  v30 = v4;
  v5 = a1[3];
  v31 = a1[2];
  v32 = v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = v37;
    *v26 = v38;
    v26[16] = v39;
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    sub_1D8F6F2EC(&v17);
    v15 = v25;
    v16[0] = *v26;
    *(v16 + 10) = *&v26[10];
    v11 = v21;
    v12 = v22;
    v13 = v23;
    v14 = v24;
    v7 = v17;
    v8 = v18;
    v9 = v19;
    v10 = v20;
    sub_1D8F6F15C(&v29, v27);
    sub_1D8D8EBEC(&v7);

    v27[8] = v15;
    v28[0] = v16[0];
    *(v28 + 10) = *(v16 + 10);
    v27[4] = v11;
    v27[5] = v12;
    v27[6] = v13;
    v27[7] = v14;
    v27[0] = v7;
    v27[1] = v8;
    v27[2] = v9;
    v27[3] = v10;
    return sub_1D8D90C48(v27);
  }

  return result;
}

uint64_t sub_1D8F6A1BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, __int128 *a5, void (*a6)(__int128 *), uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = (Strong + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval);
    v15 = *(Strong + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
    if (v15)
    {
      LOBYTE(v21[0]) = *v14;
      *(&v21[0] + 1) = v15;

      sub_1D8D7FAB4();

      v16 = v14[1];
    }

    *v14 = 0;
    v14[1] = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = a5[1];
    v23 = *a5;
    v24[0] = v18;
    *(v24 + 9) = *(a5 + 25);
    v19 = *(a3 + 48);
    v21[2] = *(a3 + 32);
    v21[3] = v19;
    v22 = *(a3 + 64);
    v20 = *(a3 + 16);
    v21[0] = *a3;
    v21[1] = v20;
    sub_1D8F6A308(&v23, a1, a2 & 1, v21, a6, a7);
  }

  return result;
}

void sub_1D8F6A308(uint64_t a1, uint64_t a2, int a3, __int128 *a4, void (*a5)(__int128 *), uint64_t a6)
{
  v7 = v6;
  v100 = a6;
  v101 = a5;
  LODWORD(v106) = a3;
  v108 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v90 - v12;
  v14 = sub_1D91767FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for StoreFeedUpdater.Update(0);
  v19 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v98 = *(a1 + 8);
  v99 = v21;
  v22 = *(a1 + 16);
  v96 = *(a1 + 24);
  v97 = v22;
  v95 = *(a1 + 32);
  v94 = *(a1 + 40);
  v23 = a4[3];
  v139 = a4[2];
  v140 = v23;
  v141 = *(a4 + 64);
  v24 = a4[1];
  v137 = *a4;
  v138 = v24;
  LOBYTE(v119) = 18;
  v25 = v7;
  v103 = OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  sub_1D8D76684(&v119, v129);
  v26 = *(&v129[0] + 1);
  v107 = *&v129[0];
  if (v141)
  {
    v27 = v137;
    v136 = v137;
    v28 = v137;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_willThrowTypedImpl();
    v29 = v108;
    if (v106)
    {
      goto LABEL_39;
    }

    goto LABEL_3;
  }

  v102 = *(&v129[0] + 1);
  v40 = *(&v137 + 1);
  v41 = *(&v138 + 1);
  v42 = v138;
  if (BYTE1(v139) == 2 || (BYTE1(v139) & 1) == 0)
  {
    if (v139 == 2 || (v139 & 1) == 0)
    {
      if (!*(&v138 + 1))
      {
        if (qword_1EDCD1048 != -1)
        {
          swift_once();
        }

        v69 = sub_1D917744C();
        __swift_project_value_buffer(v69, qword_1EDCD1050);
        v7 = v25;

        v70 = sub_1D917741C();
        v71 = sub_1D9178D1C();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *&v129[0] = v73;
          *v72 = 141558275;
          *(v72 + 4) = 1752392040;
          *(v72 + 12) = 2081;
          v74 = v25 + v103;
          v75 = v105;
          sub_1D8D800E0(v74, v105, type metadata accessor for StoreFeedUpdater.Update);
          v76 = (v75 + *(v104 + 32));
          v77 = *v76;
          v78 = v76[1];

          sub_1D8D90C88(v75, type metadata accessor for StoreFeedUpdater.Update);
          v79 = sub_1D8CFA924(v77, v78, v129);

          *(v72 + 14) = v79;
          _os_log_impl(&dword_1D8CEC000, v70, v71, "Job %{private,mask.hash}s: Response is missing nextSyncToken", v72, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v73);
          MEMORY[0x1DA72CB90](v73, -1, -1);
          MEMORY[0x1DA72CB90](v72, -1, -1);
        }

        v26 = v102;
        v29 = v108;
        sub_1D8D77098();
        v27 = swift_allocError();
        *v80 = 2;
        swift_willThrow();
        if (v106)
        {
          goto LABEL_39;
        }

LABEL_3:
        if (v29 == 400)
        {
          if (qword_1EDCD1048 != -1)
          {
            swift_once();
          }

          v30 = sub_1D917744C();
          __swift_project_value_buffer(v30, qword_1EDCD1050);

          v31 = sub_1D917741C();
          v32 = sub_1D9178D1C();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            *&v129[0] = v34;
            *v33 = 141558275;
            *(v33 + 4) = 1752392040;
            *(v33 + 12) = 2081;
            v35 = v105;
            sub_1D8D800E0(v7 + v103, v105, type metadata accessor for StoreFeedUpdater.Update);
            v36 = (v35 + *(v104 + 32));
            v102 = v26;
            v37 = *v36;
            v38 = v36[1];

            sub_1D8D90C88(v35, type metadata accessor for StoreFeedUpdater.Update);
            v39 = sub_1D8CFA924(v37, v38, v129);

            *(v33 + 14) = v39;
            v26 = v102;
            _os_log_impl(&dword_1D8CEC000, v31, v32, "Job %{private,mask.hash}s: Server returned 400, needs bootstrap", v33, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v34);
            MEMORY[0x1DA72CB90](v34, -1, -1);
            MEMORY[0x1DA72CB90](v33, -1, -1);
          }

          memset(v129, 0, sizeof(v129));
          goto LABEL_32;
        }

        if ((v29 - 500) <= 0x63)
        {
          if (qword_1EDCD1048 != -1)
          {
            swift_once();
          }

          v59 = sub_1D917744C();
          __swift_project_value_buffer(v59, qword_1EDCD1050);

          v60 = sub_1D917741C();
          v61 = sub_1D9178D1C();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            *&v129[0] = v63;
            *v62 = 141558531;
            *(v62 + 4) = 1752392040;
            *(v62 + 12) = 2081;
            v64 = v105;
            sub_1D8D800E0(v7 + v103, v105, type metadata accessor for StoreFeedUpdater.Update);
            v65 = (v64 + *(v104 + 32));
            v102 = v26;
            v66 = *v65;
            v67 = v65[1];

            sub_1D8D90C88(v64, type metadata accessor for StoreFeedUpdater.Update);
            v68 = sub_1D8CFA924(v66, v67, v129);

            *(v62 + 14) = v68;
            v26 = v102;
            *(v62 + 22) = 2048;
            *(v62 + 24) = v108;
            _os_log_impl(&dword_1D8CEC000, v60, v61, "Job %{private,mask.hash}s: Server return %ld, needs retry", v62, 0x20u);
            __swift_destroy_boxed_opaque_existential_1Tm(v63);
            MEMORY[0x1DA72CB90](v63, -1, -1);
            MEMORY[0x1DA72CB90](v62, -1, -1);
          }

          *(v129 + 8) = 0u;
          *(&v129[1] + 8) = 0u;
          *(&v129[2] + 8) = 0u;
          *&v129[0] = 1;
          *(&v129[3] + 1) = 0;
LABEL_32:
          LOBYTE(v130) = 2;
          sub_1D8F6F0C8(v129);
          v127 = v134;
          v128[0] = v135[0];
          *(v128 + 10) = *(v135 + 10);
          v123 = v130;
          v124 = v131;
          v125 = v132;
          v126 = v133;
          v119 = v129[0];
          v120 = v129[1];
          v121 = v129[2];
          v122 = v129[3];
          sub_1D8D8EBEC(&v119);

          if (!v26)
          {
            return;
          }

          goto LABEL_43;
        }

LABEL_39:
        *&v119 = v27;
        sub_1D8F6F10C(&v119);
        v117 = v127;
        v118[0] = v128[0];
        *(v118 + 10) = *(v128 + 10);
        v113 = v123;
        v114 = v124;
        v115 = v125;
        v116 = v126;
        v109 = v119;
        v110 = v120;
        v111 = v121;
        v112 = v122;
        v81 = v27;
        sub_1D8D8EBEC(&v109);

        v134 = v117;
        v135[0] = v118[0];
        *(v135 + 10) = *(v118 + 10);
        v130 = v113;
        v131 = v114;
        v132 = v115;
        v133 = v116;
        v129[0] = v109;
        v129[1] = v110;
        v129[2] = v111;
        v129[3] = v112;
        sub_1D8D90C48(v129);
        if (!v26)
        {
          return;
        }

        LOBYTE(v109) = v107;
        *(&v109 + 1) = v26;
        goto LABEL_44;
      }

      v106 = *(&v140 + 1);

      v108 = v41;
      if (!v40)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v106 = *(&v140 + 1);
      v42 = 0;
      v108 = 0;
      if (!*(&v137 + 1))
      {
LABEL_20:
        v105 = v42;

        v55 = v106;

        v103 = 0;
        v104 = 0;
        v93 = 0;
        v56 = 0;
        v91 = 0;
        v92 = 255;
        v26 = v102;
LABEL_42:
        v85 = v98;
        v84 = v99;
        v86 = v96;
        v87 = v97;
        v88 = v95;
        v89 = v94;
        sub_1D8F6F298(v99, v98, v97, v96, v95, v94);
        sub_1D8F6F298(v84, v85, v87, v86, v88, v89);

        sub_1D8D08A50(&v137, &qword_1ECAB76F8, qword_1D9198858);
        *&v119 = v84;
        *(&v119 + 1) = v85;
        *&v120 = v87;
        *(&v120 + 1) = v86;
        *&v121 = v88;
        BYTE8(v121) = v89;
        *&v122 = v55;
        *(&v122 + 1) = v105;
        *&v123 = v108;
        *(&v123 + 1) = v104;
        *&v124 = v103;
        *(&v124 + 1) = v93;
        *&v125 = v56;
        *(&v125 + 1) = v91;
        LOBYTE(v126) = v92;
        *(&v126 + 1) = v84;
        *&v127 = v85;
        *(&v127 + 1) = v87;
        *&v128[0] = v86;
        *(&v128[0] + 1) = v88;
        LOBYTE(v128[1]) = v89;
        v101(&v119);
        v134 = v127;
        v135[0] = v128[0];
        LOBYTE(v135[1]) = v128[1];
        v130 = v123;
        v131 = v124;
        v132 = v125;
        v133 = v126;
        v129[0] = v119;
        v129[1] = v120;
        v129[2] = v121;
        v129[3] = v122;
        sub_1D8F6F2BC(v129);
        if (!v26)
        {
          return;
        }

LABEL_43:
        LOBYTE(v119) = v107;
        *(&v119 + 1) = v26;
        goto LABEL_44;
      }
    }

    sub_1D8D088B4(&v137, v129, &qword_1ECAB76F8, qword_1D9198858);

    sub_1D91767BC();

    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1D8D08A50(v13, &qword_1ECAB76F0, &qword_1D91B6700);

      sub_1D8D08A50(&v137, &qword_1ECAB76F8, qword_1D9198858);
      sub_1D8D77098();
      v57 = swift_allocError();
      *v58 = 3;
      *&v119 = v57;
      sub_1D8F6F10C(&v119);
      v117 = v127;
      v118[0] = v128[0];
      *(v118 + 10) = *(v128 + 10);
      v113 = v123;
      v114 = v124;
      v115 = v125;
      v116 = v126;
      v109 = v119;
      v110 = v120;
      v111 = v121;
      v112 = v122;
      sub_1D8D8EBEC(&v109);
      v133 = v116;
      v134 = v117;
      v135[0] = v118[0];
      *(v135 + 10) = *(v118 + 10);
      v130 = v113;
      v131 = v114;
      v132 = v115;
      v129[0] = v109;
      v129[1] = v110;
      v129[2] = v111;
      v129[3] = v112;
      sub_1D8D90C48(v129);
      if (!v102)
      {
        return;
      }

      LOBYTE(v109) = v107;
      *(&v109 + 1) = v102;
      goto LABEL_44;
    }

    v105 = v42;
    (*(v15 + 32))(v18, v13, v14);
    v82 = sub_1D917677C();
    v103 = v83;
    v104 = v82;
    v93 = sub_1D917670C();
    (*(v15 + 8))(v18, v14);
    v92 = 3;
    v91 = 0xE300000000000000;
    v56 = 7628135;
    v26 = v102;
    v55 = v106;
    goto LABEL_42;
  }

  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v43 = sub_1D917744C();
  __swift_project_value_buffer(v43, qword_1EDCD1050);

  v44 = sub_1D917741C();
  v45 = sub_1D9178D1C();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v129[0] = v47;
    *v46 = 141558275;
    *(v46 + 4) = 1752392040;
    *(v46 + 12) = 2081;
    v48 = v25 + v103;
    v49 = v105;
    sub_1D8D800E0(v48, v105, type metadata accessor for StoreFeedUpdater.Update);
    v50 = (v49 + *(v104 + 32));
    v51 = *v50;
    v52 = v50[1];

    sub_1D8D90C88(v49, type metadata accessor for StoreFeedUpdater.Update);
    v53 = sub_1D8CFA924(v51, v52, v129);

    *(v46 + 14) = v53;
    _os_log_impl(&dword_1D8CEC000, v44, v45, "Job %{private,mask.hash}s: Server Meta is asking for reset, needs bootstrap", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1DA72CB90](v47, -1, -1);
    MEMORY[0x1DA72CB90](v46, -1, -1);
  }

  v54 = v102;
  memset(v129, 0, sizeof(v129));
  LOBYTE(v130) = 2;
  sub_1D8F6F0C8(v129);
  v127 = v134;
  v128[0] = v135[0];
  *(v128 + 10) = *(v135 + 10);
  v123 = v130;
  v124 = v131;
  v125 = v132;
  v126 = v133;
  v119 = v129[0];
  v120 = v129[1];
  v121 = v129[2];
  v122 = v129[3];
  sub_1D8D8EBEC(&v119);
  if (v54)
  {
    LOBYTE(v119) = v107;
    *(&v119 + 1) = v54;
LABEL_44:
    sub_1D8D7FAB4();
  }
}

void sub_1D8F6B138(uint64_t a1, uint64_t a2, void (*a3)(void *, void *), uint64_t a4, unint64_t a5, uint64_t a6)
{
  v224 = a5;
  v225 = a6;
  v221 = a4;
  v223 = a3;
  v234 = a2;
  v235 = sub_1D9176EAC();
  v230 = *(v235 - 8);
  v7 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v235);
  v220 = &v214 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v214 - v10;
  v227 = type metadata accessor for StoreFeedUpdater.Update(0);
  v12 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v228 = &v214 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v219 = &v214 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v226 = &v214 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v214 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v214 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v214 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v214 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v232 = &v214 - v32;
  v33 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);
  v236 = a1;
  v34 = a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  updated = type metadata accessor for FeedUpdateRequest();
  v36 = [v33 podcastForStoreId_];
  v229 = updated;
  v237 = v36;
  v231 = v34;
  v222 = v33;
  if (!v36)
  {
    v37 = v34 + *(updated + 20);
    sub_1D9176ACC();
    v38 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v39 = [v33 podcastForFeedUrl_];

    v237 = v39;
    if (!v39)
    {
      goto LABEL_19;
    }
  }

  v40 = [v237 uuid];
  if (!v40)
  {

LABEL_19:
    sub_1D8D77098();
    v87 = swift_allocError();
    *v88 = 10;
    *&v248 = v87;
    sub_1D8F6F10C(&v248);
    v246 = v256;
    v247[0] = v257[0];
    *(v247 + 10) = *(v257 + 10);
    v242 = v252;
    v243 = v253;
    v244 = v254;
    v245 = v255;
    v238 = v248;
    v239 = v249;
    v240 = v250;
    v241 = v251;
    sub_1D8D8EBEC(&v238);
    v266 = v246;
    v267[0] = v247[0];
    *(v267 + 10) = *(v247 + 10);
    v262 = v242;
    v263 = v243;
    v264 = v244;
    v265 = v245;
    v258 = v238;
    v259 = v239;
    v260 = v240;
    v261 = v241;
    sub_1D8D90C48(&v258);
    return;
  }

  v217 = v40;
  v216 = sub_1D917820C();
  v41 = *(v234 + 40);
  v218 = v42;
  if ((v41 & 0xC0) != 0x80 || v41 != 128 || (v43 = vorrq_s8(*(v234 + 8), *(v234 + 24)), *&vorr_s8(*v43.i8, *&vextq_s8(v43, v43, 8uLL)) | *v234))
  {
    v61 = [v237 bootstrapGeneration];
    v62 = v236;
    if (!v61)
    {
      (*(v230 + 56))(v232, 1, 1, v235);
      if (qword_1EDCD1048 != -1)
      {
        swift_once();
      }

      v89 = sub_1D917744C();
      __swift_project_value_buffer(v89, qword_1EDCD1050);

      v90 = sub_1D917741C();
      v91 = sub_1D9178D1C();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *&v258 = v93;
        *v92 = 141558275;
        *(v92 + 4) = 1752392040;
        *(v92 + 12) = 2081;
        v94 = v228;
        sub_1D8D800E0(v231, v228, type metadata accessor for StoreFeedUpdater.Update);
        v95 = (v94 + *(v227 + 32));
        v96 = *v95;
        v97 = v95[1];

        sub_1D8D90C88(v94, type metadata accessor for StoreFeedUpdater.Update);
        v98 = sub_1D8CFA924(v96, v97, &v258);

        *(v92 + 14) = v98;
        _os_log_impl(&dword_1D8CEC000, v90, v91, "Job %{private,mask.hash}s: Processing new delta update", v92, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        MEMORY[0x1DA72CB90](v93, -1, -1);
        MEMORY[0x1DA72CB90](v92, -1, -1);
      }

LABEL_28:
      v99 = v229;
      v100 = *(v62 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider + 24);
      v101 = *(v62 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider + 32);
      __swift_project_boxed_opaque_existential_1((v62 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider), v100);
      v102 = *(v231 + *(v99 + 48));
      v103 = *(v62 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_updaterJobUUID);
      v104 = *(v62 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_updaterJobUUID + 8);
      v105 = *(v101 + 8);

      v233 = v105(v237, v102, v103, v104, v100, v101);

      if (v223)
      {
        v223(v233, v237);
      }

      v106 = v224;
      v107 = v225;
      v108 = v232;
      if (v224 >> 62)
      {
        v213 = v224;
        v109 = sub_1D917935C();
        v106 = v213;
      }

      else
      {
        v109 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v110 = v235;
      v111 = v236;
      if (v109 || *(v107 + 16))
      {
        v112 = v233;
        sub_1D8F6CC54(v237, v108, v106, v233);
        v113 = sub_1D8F6DFBC(v107);
        sub_1D8F6E4B0(v113, v112);
      }

      else
      {
        if (qword_1EDCD1048 != -1)
        {
          swift_once();
        }

        v201 = sub_1D917744C();
        __swift_project_value_buffer(v201, qword_1EDCD1050);

        v202 = sub_1D917741C();
        v203 = sub_1D9178D1C();

        if (os_log_type_enabled(v202, v203))
        {
          v204 = swift_slowAlloc();
          v205 = swift_slowAlloc();
          *&v258 = v205;
          *v204 = 141558275;
          *(v204 + 4) = 1752392040;
          *(v204 + 12) = 2081;
          v206 = v228;
          sub_1D8D800E0(v231, v228, type metadata accessor for StoreFeedUpdater.Update);
          v207 = (v206 + *(v227 + 32));
          v208 = *v207;
          v209 = v207[1];

          v210 = v206;
          v110 = v235;
          sub_1D8D90C88(v210, type metadata accessor for StoreFeedUpdater.Update);
          v211 = sub_1D8CFA924(v208, v209, &v258);
          v111 = v236;

          *(v204 + 14) = v211;
          _os_log_impl(&dword_1D8CEC000, v202, v203, "Job %{private,mask.hash}s: Sync response contained no updates", v204, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v205);
          MEMORY[0x1DA72CB90](v205, -1, -1);
          v212 = v204;
          v108 = v232;
          MEMORY[0x1DA72CB90](v212, -1, -1);
        }
      }

      if (*(v234 + 64))
      {
        v114 = *(v234 + 56);
        v115 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      }

      else
      {
        v115 = 0;
      }

      [v237 setNextSyncToken_];

      v116 = v226;
      sub_1D8D088B4(v108, v226, &qword_1ECAB71E0, &unk_1D9197360);
      v117 = v230;
      v118 = *(v230 + 48);
      if (v118(v116, 1, v110) == 1)
      {
        v119 = 0;
      }

      else
      {
        v120 = v116;
        v119 = sub_1D9176E6C();
        (*(v117 + 8))(v120, v110);
      }

      [v237 setBootstrapGeneration_];

      v121 = *(v234 + 88);
      v268 = *(v234 + 72);
      *v269 = v121;
      *&v269[9] = *(v234 + 97);
      v122 = v269[24];
      if (v269[24] == 255)
      {
        goto LABEL_42;
      }

      v125 = *(&v268 + 1);
      v126 = v268;
      v127 = *v269;
      v225 = *&v269[16];
      v226 = *&v269[8];
      v128 = v111 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_bagConfiguration;
      if (*(v128 + *(type metadata accessor for FeedManagerBagConfiguration() + 24)) == 1 && (v129 = *(v234 + 160), (v129 & 0xC0) == 0x40))
      {
        v130 = *(v234 + 152);
        v258 = __PAIR128__(v125, v126);
        *&v259 = v127;
        *(&v259 + 1) = v226;
        *&v260 = v225;
        BYTE8(v260) = v122;
        v131 = *(v234 + 136);
        v248 = *(v234 + 120);
        v249 = v131;
        *&v250 = v130;
        BYTE8(v250) = v129 & 0x3F;
        sub_1D8D088B4(&v268, &v238, &qword_1ECAB7760, &unk_1D9198870);
        if (_s18PodcastsFoundation12MediaRequestC0D4TypeO2eeoiySbAE_AEtFZ_0(&v258, &v248))
        {
          sub_1D8D08A50(&v268, &qword_1ECAB7760, &unk_1D9198870);
          if (qword_1EDCD1048 != -1)
          {
            swift_once();
          }

          v132 = sub_1D917744C();
          __swift_project_value_buffer(v132, qword_1EDCD1050);

          v133 = sub_1D917741C();
          v134 = sub_1D9178D0C();

          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            *&v258 = v136;
            *v135 = 141558275;
            *(v135 + 4) = 1752392040;
            *(v135 + 12) = 2081;
            v137 = v228;
            sub_1D8D800E0(v231, v228, type metadata accessor for StoreFeedUpdater.Update);
            v138 = (v137 + *(v227 + 32));
            v139 = *v138;
            v140 = v138[1];

            sub_1D8D90C88(v137, type metadata accessor for StoreFeedUpdater.Update);
            v141 = sub_1D8CFA924(v139, v140, &v258);
            v111 = v236;

            *(v135 + 14) = v141;
            _os_log_impl(&dword_1D8CEC000, v133, v134, "Job %{private,mask.hash}s: Next link is the same page we just loaded, we're stuck in a loop, ending update.", v135, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v136);
            MEMORY[0x1DA72CB90](v136, -1, -1);
            v142 = v135;
            v108 = v232;
            MEMORY[0x1DA72CB90](v142, -1, -1);
          }

          v143 = *(v111 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 40);
          v144 = __OFADD__(v143, 1);
          v145 = v143 + 1;
          if (!v144)
          {
            *(v111 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 40) = v145;
LABEL_42:
            [v237 setFeedUpdateNeedsRetry_];
            v123 = v219;
            sub_1D8D088B4(v108, v219, &qword_1ECAB71E0, &unk_1D9197360);
            v124 = v235;
            if (v118(v123, 1, v235) == 1)
            {

              sub_1D8D08A50(v123, &qword_1ECAB71E0, &unk_1D9197360);
            }

            else
            {
              (*(v230 + 32))(v220, v123, v124);
              v164 = v231;
              if (qword_1EDCD1048 != -1)
              {
                swift_once();
              }

              v165 = sub_1D917744C();
              __swift_project_value_buffer(v165, qword_1EDCD1050);

              v166 = sub_1D917741C();
              v167 = sub_1D9178D1C();

              if (os_log_type_enabled(v166, v167))
              {
                v168 = swift_slowAlloc();
                v169 = swift_slowAlloc();
                *&v258 = v169;
                *v168 = 141558275;
                *(v168 + 4) = 1752392040;
                *(v168 + 12) = 2081;
                v170 = v228;
                sub_1D8D800E0(v164, v228, type metadata accessor for StoreFeedUpdater.Update);
                v171 = (v170 + *(v227 + 32));
                v172 = *v171;
                v173 = v171[1];

                sub_1D8D90C88(v170, type metadata accessor for StoreFeedUpdater.Update);
                v174 = sub_1D8CFA924(v172, v173, &v258);

                *(v168 + 14) = v174;
                v124 = v235;
                _os_log_impl(&dword_1D8CEC000, v166, v167, "Job %{private,mask.hash}s: Bootstrap completed, feed deleting all episodes that are not in this bootstrap.", v168, 0x16u);
                __swift_destroy_boxed_opaque_existential_1Tm(v169);
                MEMORY[0x1DA72CB90](v169, -1, -1);
                MEMORY[0x1DA72CB90](v168, -1, -1);
              }

              v175 = objc_opt_self();
              v176 = v217;
              v177 = [v175 predicateForAllEpisodesOnPodcastUuid_];

              v178 = v220;
              v179 = _sSo9MTEpisodeC18PodcastsFoundationE31predicateForEpisodesNotMatching19bootstrapGenerationSo11NSPredicateC0C04UUIDV_tFZ_0();
              v180 = [v177 AND_];

              v181 = [v175 predicateForFeedDeleted_];
              v182 = [v180 AND_];

              sub_1D8F6E4B0(v182, v233);
              [v237 setBootstrapGeneration_];

              (*(v230 + 8))(v178, v124);
              v108 = v232;
            }

            v183 = v222;
            v184 = v229;
            v185 = v231;
            [v233 unsafeFinalizeIngestion];
            v186 = v237;
            [v237 setImporting_];
            [v186 setIsTransitioningFromImplicit_];
            [v183 saveInCurrentBlock];
            v187 = *(v185 + *(v184 + 76));
            os_unfair_lock_lock((v187 + 32));
            v188 = *(v187 + 24);
            if (v188)
            {
              LOBYTE(v258) = *(v187 + 16);
              *(&v258 + 1) = v188;

              sub_1D8D7FAB4();

              v189 = *(v187 + 24);
            }

            *(v187 + 16) = 0;
            *(v187 + 24) = 0;
            os_unfair_lock_unlock((v187 + 32));
            if (qword_1EDCD1048 != -1)
            {
              swift_once();
            }

            v190 = sub_1D917744C();
            __swift_project_value_buffer(v190, qword_1EDCD1050);

            v191 = sub_1D917741C();
            v192 = sub_1D9178D1C();

            if (os_log_type_enabled(v191, v192))
            {
              v193 = swift_slowAlloc();
              v194 = swift_slowAlloc();
              *&v258 = v194;
              *v193 = 141558275;
              *(v193 + 4) = 1752392040;
              *(v193 + 12) = 2081;
              v195 = v228;
              sub_1D8D800E0(v185, v228, type metadata accessor for StoreFeedUpdater.Update);
              v196 = (v195 + *(v227 + 32));
              v197 = *v196;
              v198 = v196[1];

              sub_1D8D90C88(v195, type metadata accessor for StoreFeedUpdater.Update);
              v199 = sub_1D8CFA924(v197, v198, &v258);

              *(v193 + 14) = v199;
              _os_log_impl(&dword_1D8CEC000, v191, v192, "Job %{private,mask.hash}s: Episode Processing fully completed", v193, 0x16u);
              __swift_destroy_boxed_opaque_existential_1Tm(v194);
              MEMORY[0x1DA72CB90](v194, -1, -1);
              v200 = v193;
              v108 = v232;
              MEMORY[0x1DA72CB90](v200, -1, -1);
            }

            *&v248 = v216;
            *(&v248 + 1) = v218;
            sub_1D8F6F318(&v248);
LABEL_73:
            v246 = v256;
            v247[0] = v257[0];
            *(v247 + 10) = *(v257 + 10);
            v242 = v252;
            v243 = v253;
            v244 = v254;
            v245 = v255;
            v238 = v248;
            v239 = v249;
            v240 = v250;
            v241 = v251;
            sub_1D8D8EBEC(&v238);
            swift_unknownObjectRelease();

            v266 = v246;
            v267[0] = v247[0];
            *(v267 + 10) = *(v247 + 10);
            v262 = v242;
            v263 = v243;
            v264 = v244;
            v265 = v245;
            v258 = v238;
            v259 = v239;
            v260 = v240;
            v261 = v241;
            sub_1D8D90C48(&v258);
            sub_1D8D08A50(v108, &qword_1ECAB71E0, &unk_1D9197360);
            return;
          }

          __break(1u);
          goto LABEL_81;
        }
      }

      else
      {
        sub_1D8D088B4(&v268, &v258, &qword_1ECAB7760, &unk_1D9198870);
      }

      v235 = v127;

      [v237 setFeedUpdateNeedsRetry_];
      [v233 unsafeIngestPage];
      [v222 saveInCurrentBlock];
      v146 = v231;
      v147 = *(v231 + *(v229 + 76));
      os_unfair_lock_lock((v147 + 32));
      v148 = *(v147 + 24);
      if (v148)
      {
        LOBYTE(v258) = *(v147 + 16);
        *(&v258 + 1) = v148;

        sub_1D8D7FAB4();

        v149 = *(v147 + 24);
      }

      *(v147 + 16) = 0;
      *(v147 + 24) = 0;
      os_unfair_lock_unlock((v147 + 32));

      if (qword_1EDCD1048 != -1)
      {
        swift_once();
      }

      v150 = sub_1D917744C();
      __swift_project_value_buffer(v150, qword_1EDCD1050);

      v151 = sub_1D917741C();
      v152 = sub_1D9178D1C();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v234 = v125;
        v155 = v126;
        v156 = v154;
        *&v258 = v154;
        *v153 = 141558275;
        *(v153 + 4) = 1752392040;
        *(v153 + 12) = 2081;
        v157 = v228;
        sub_1D8D800E0(v146, v228, type metadata accessor for StoreFeedUpdater.Update);
        v158 = (v157 + *(v227 + 32));
        v159 = *v158;
        v160 = v158[1];

        sub_1D8D90C88(v157, type metadata accessor for StoreFeedUpdater.Update);
        v161 = sub_1D8CFA924(v159, v160, &v258);

        *(v153 + 14) = v161;
        _os_log_impl(&dword_1D8CEC000, v151, v152, "Job %{private,mask.hash}s: Episode Processing complete, moving to next page", v153, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v156);
        v162 = v156;
        v126 = v155;
        v125 = v234;
        MEMORY[0x1DA72CB90](v162, -1, -1);
        v163 = v153;
        v108 = v232;
        MEMORY[0x1DA72CB90](v163, -1, -1);
      }

      *&v248 = v126;
      *(&v248 + 1) = v125;
      *&v249 = v235;
      *(&v249 + 1) = v226;
      *&v250 = v225;
      BYTE8(v250) = v122 | 0x40;
      sub_1D8F6F5D4(&v248);
      goto LABEL_73;
    }

    v63 = v61;
    sub_1D9176E8C();

    v64 = v230;
    v65 = v232;
    v66 = v235;
    (*(v230 + 16))(v232, v11, v235);
    (*(v64 + 56))(v65, 0, 1, v66);
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v67 = sub_1D917744C();
    __swift_project_value_buffer(v67, qword_1EDCD1050);
    sub_1D8D088B4(v65, v24, &qword_1ECAB71E0, &unk_1D9197360);

    v68 = sub_1D917741C();
    v69 = sub_1D9178D1C();

    if (!os_log_type_enabled(v68, v69))
    {

      sub_1D8D08A50(v24, &qword_1ECAB71E0, &unk_1D9197360);
      (*(v64 + 8))(v11, v235);
      goto LABEL_28;
    }

    LODWORD(v233) = v69;
    v70 = v64;
    v71 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    *&v258 = v215;
    *v71 = 141558531;
    *(v71 + 4) = 1752392040;
    *(v71 + 12) = 2081;
    v72 = v228;
    sub_1D8D800E0(v231, v228, type metadata accessor for StoreFeedUpdater.Update);
    v73 = (v72 + *(v227 + 32));
    v74 = *v73;
    v75 = v73[1];

    v76 = v72;
    v77 = v70;
    sub_1D8D90C88(v76, type metadata accessor for StoreFeedUpdater.Update);
    v78 = sub_1D8CFA924(v74, v75, &v258);

    *(v71 + 14) = v78;
    *(v71 + 22) = 2082;
    sub_1D8D088B4(v24, v21, &qword_1ECAB71E0, &unk_1D9197360);
    v79 = *(v70 + 48);
    v80 = v235;
    if (v79(v21, 1, v235) == 1)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    sub_1D8F6F5EC(&qword_1EDCD5918, MEMORY[0x1E69695A8]);
    v81 = sub_1D9179A4C();
    v83 = v82;
    sub_1D8D08A50(v24, &qword_1ECAB71E0, &unk_1D9197360);
    v84 = *(v77 + 8);
    v84(v21, v80);
    v85 = sub_1D8CFA924(v81, v83, &v258);

    *(v71 + 24) = v85;
    _os_log_impl(&dword_1D8CEC000, v68, v233, "Job %{private,mask.hash}s: Processing: Continuing bootstrap with token %{public}s", v71, 0x20u);
    v86 = v215;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v86, -1, -1);
    MEMORY[0x1DA72CB90](v71, -1, -1);

    v84(v11, v80);
LABEL_27:
    v62 = v236;
    goto LABEL_28;
  }

  v44 = v232;
  sub_1D9176E9C();
  (*(v230 + 56))(v44, 0, 1, v235);
  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v45 = sub_1D917744C();
  __swift_project_value_buffer(v45, qword_1EDCD1050);
  sub_1D8D088B4(v44, v30, &qword_1ECAB71E0, &unk_1D9197360);

  v46 = sub_1D917741C();
  v47 = sub_1D9178D1C();

  if (!os_log_type_enabled(v46, v47))
  {

    sub_1D8D08A50(v30, &qword_1ECAB71E0, &unk_1D9197360);
    goto LABEL_27;
  }

  v48 = swift_slowAlloc();
  v233 = swift_slowAlloc();
  *&v258 = v233;
  *v48 = 141558531;
  *(v48 + 4) = 1752392040;
  *(v48 + 12) = 2081;
  v49 = v228;
  sub_1D8D800E0(v231, v228, type metadata accessor for StoreFeedUpdater.Update);
  v50 = (v49 + *(v227 + 32));
  v51 = *v50;
  v52 = v50[1];

  sub_1D8D90C88(v49, type metadata accessor for StoreFeedUpdater.Update);
  v53 = sub_1D8CFA924(v51, v52, &v258);

  *(v48 + 14) = v53;
  *(v48 + 22) = 2082;
  sub_1D8D088B4(v30, v27, &qword_1ECAB71E0, &unk_1D9197360);
  v54 = v230;
  v55 = v235;
  if ((*(v230 + 48))(v27, 1, v235) != 1)
  {
    sub_1D8F6F5EC(&qword_1EDCD5918, MEMORY[0x1E69695A8]);
    v56 = sub_1D9179A4C();
    v58 = v57;
    sub_1D8D08A50(v30, &qword_1ECAB71E0, &unk_1D9197360);
    (*(v54 + 8))(v27, v55);
    v59 = sub_1D8CFA924(v56, v58, &v258);

    *(v48 + 24) = v59;
    _os_log_impl(&dword_1D8CEC000, v46, v47, "Job %{private,mask.hash}s: Processing: Starting a new bootstrap with token %{public}s", v48, 0x20u);
    v60 = v233;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v60, -1, -1);
    MEMORY[0x1DA72CB90](v48, -1, -1);

    goto LABEL_27;
  }

LABEL_82:
  __break(1u);
}