id sub_1E3E2EE74()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViewLayouts) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViewsAndModels) = 0;
  OUTLINED_FUNCTION_0_258(&OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView);
  v2 = (v0 + v1);
  v3 = type metadata accessor for DescriptionTemplateView();
  *v2 = 0;
  v2[1] = 0;
  v8 = v3;
  v4 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v5, v6, v4, v0, v8);
}

id sub_1E3E2EF24(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViews] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViewLayouts] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_subViewsAndModels] = 0;
  OUTLINED_FUNCTION_0_258(&OBJC_IVAR____TtC8VideosUI23DescriptionTemplateView_scrollView);
  v4 = &v1[v3];
  v5 = type metadata accessor for DescriptionTemplateView();
  *v4 = 0;
  *(v4 + 1) = 0;
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1E3E2EFEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DescriptionTemplateView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3E2F0AC(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v6 = v2;
    v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD0))();
    if (v3 && (v4 = sub_1E3E2F1CC(v6, v3), , v4))
    {
      OUTLINED_FUNCTION_25();
      v5();
    }

    else
    {
    }
  }
}

uint64_t sub_1E3E2F1CC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1E4207694();

    if (v3)
    {
      type metadata accessor for ViewModel();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1E373C68C(a1);
    if (v5)
    {
    }
  }

  return 0;
}

uint64_t sub_1E3E2F2E4()
{

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3E2F370()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v26 = v6;
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326D0);
  OUTLINED_FUNCTION_0_10();
  v28 = v9;
  v29 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_itemIdToSubjectMap;
  type metadata accessor for EpicShowcasePlaybackManager.ItemIdsPublishersMap();
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39980);
  v15 = MEMORY[0x1E69E7CC0];
  *(v14 + 16) = sub_1E4205CB4();
  *(v1 + v13) = v14;
  *(v1 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_playedItems) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_visibleItems) = v15;
  v16 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_visibilityItemsSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  swift_allocObject();
  *(v1 + v16) = sub_1E4200544();
  *(v1 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_subscriptions) = v15;
  v17 = sub_1E3B500B4();
  v30 = *(v17 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_visibilityItemsSubject);
  swift_retain_n();

  sub_1E4207064();
  v18 = [objc_opt_self() mainRunLoop];
  v31 = v18;
  v19 = sub_1E4207054();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v19);
  sub_1E3C8D9A0();
  OUTLINED_FUNCTION_2_195();
  sub_1E32752B0(v20, &unk_1ECF326C0);
  sub_1E3782CC4();
  sub_1E42007F4();
  sub_1E325F748(v4, &unk_1ECF3DB30);

  (*(v26 + 8))(v8, v27);

  OUTLINED_FUNCTION_4_0();
  v21 = swift_allocObject();
  swift_weakInit();

  v22 = swift_allocObject();
  *(v22 + 16) = sub_1E3E2F914;
  *(v22 + 24) = v21;
  sub_1E32752B0(&unk_1EE28A2D0, &unk_1ECF326D0);
  v23 = v28;
  sub_1E4200844();

  (*(v29 + 8))(v12, v23);
  swift_beginAccess();
  v24 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v24);
  sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580);
  sub_1E42004D4();
  swift_endAccess();

  return v17;
}

uint64_t sub_1E3E2F80C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1E3C066E8(0, 0, v4, &unk_1E42D5400, v6);

  return sub_1E325F748(v4, &unk_1ECF2C400);
}

uint64_t sub_1E3E2F91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E3E2F93C, 0, 0);
}

uint64_t sub_1E3E2F93C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1E4206434();
    *(v0 + 64) = sub_1E4206424();
    v3 = sub_1E42063B4();

    return MEMORY[0x1EEE6DFA0](sub_1E3E2FA28, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1E3E2FA28()
{
  OUTLINED_FUNCTION_24();

  sub_1E3E30598();

  return MEMORY[0x1EEE6DFA0](sub_1E3E2FA98, 0, 0);
}

uint64_t sub_1E3E2FAC0(void *a1)
{
  v4 = v1;
  result = TVAppFeature.isEnabled.getter(17);
  v7 = a1[2];
  if (result)
  {
    if (!v7)
    {
      OUTLINED_FUNCTION_5_182();
      v40 = *(v4 + 16);
      OUTLINED_FUNCTION_0_259();
      result = OUTLINED_FUNCTION_13_140();
      v41 = 0;
      if (v3)
      {
        while (1)
        {
LABEL_40:
          OUTLINED_FUNCTION_4_201();

          sub_1E4200524();
        }
      }

      while (1)
      {
        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_48;
        }

        if (v42 >= v2)
        {
          goto LABEL_34;
        }

        ++v41;
        if (*(v40 + 64 + 8 * v42))
        {
          goto LABEL_40;
        }
      }
    }

    result = sub_1E3E2FF0C(a1);
    if (result)
    {
      v46 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_visibleItems;
      v47 = result;

      v9 = sub_1E3E30038(v8);

      v10 = sub_1E3AAF2AC(v9);
      result = sub_1E3E30CE4(a1, v10);
      v11 = result;
      v12 = 0;
      v13 = 1 << *(result + 32);
      v14 = -1;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      v15 = result + 56;
      v16 = v14 & *(result + 56);
      v17 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_itemIdToSubjectMap;
      v18 = (v13 + 63) >> 6;
      v48 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_itemIdToSubjectMap;
      while (v16)
      {
LABEL_12:
        v20 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v21 = (*(v11 + 48) + ((v12 << 10) | (16 * v20)));
        v22 = v21[1];
        if (v22)
        {
          v23 = *v21;
          v24 = *(v4 + v17);
          result = OUTLINED_FUNCTION_5_0();
          if (*(*(v24 + 16) + 16))
          {

            sub_1E327D33C(v23, v22);
            v26 = v25;

            if (v26)
            {

              sub_1E4200524();
            }

            else
            {
            }

            v17 = v48;
          }
        }
      }

      while (1)
      {
        v19 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v19 >= v18)
        {

          *(v4 + v46) = v47;

          sub_1E3E3050C();
          v39 = OUTLINED_FUNCTION_27_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(v39);
          OUTLINED_FUNCTION_3_195(&qword_1EE28A140);
          return sub_1E4200624();
        }

        v16 = *(v15 + 8 * v19);
        ++v12;
        if (v16)
        {
          v12 = v19;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }
  }

  else
  {
    if (!v7)
    {
      OUTLINED_FUNCTION_5_182();
      v43 = *(v4 + 16);
      OUTLINED_FUNCTION_0_259();
      result = OUTLINED_FUNCTION_13_140();
      v44 = 0;
      if (v3)
      {
        while (1)
        {
LABEL_45:
          OUTLINED_FUNCTION_4_201();

          sub_1E4200524();
        }
      }

      while (1)
      {
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_49;
        }

        if (v45 >= v2)
        {
LABEL_34:
        }

        ++v44;
        if (*(v43 + 64 + 8 * v45))
        {
          goto LABEL_45;
        }
      }
    }

    v27 = a1[5];
    if (v27)
    {
      v28 = a1[4];
      OUTLINED_FUNCTION_5_182();
      v29 = *(v4 + 16);
      OUTLINED_FUNCTION_0_259();
      v32 = v31 & v30;
      v34 = (v33 + 63) >> 6;
      swift_bridgeObjectRetain_n();

      v35 = 0;
      if (v32)
      {
        goto LABEL_25;
      }

      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_47;
        }

        if (v36 >= v34)
        {

          goto LABEL_34;
        }

        v32 = *(v29 + 64 + 8 * v36);
        ++v35;
        if (v32)
        {
          v35 = v36;
          do
          {
LABEL_25:
            v37 = (*(v29 + 48) + 16 * (__clz(__rbit64(v32)) | (v35 << 6)));
            if (*v37 != v28 || v27 != v37[1])
            {
              sub_1E42079A4();
            }

            v32 &= v32 - 1;

            sub_1E4200524();
          }

          while (v32);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E3E2FF0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  sub_1E377FD30(0, v2, 0);
  v3 = v11;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E377FD30((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 16;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1E3E30038(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1E3E31650(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1E3E31650((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1E3E30150(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v2 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_itemIdToSubjectMap);
  OUTLINED_FUNCTION_5_0();
  v7 = *(v6 + 16);

  v8 = sub_1E396E6C0(a1, a2, v7);

  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39980);
    swift_allocObject();
    v10 = sub_1E4200544();
    swift_beginAccess();
    swift_retain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + 16);
    sub_1E3E317A0(v10, a1, a2);
    *(v6 + 16) = v13;
    swift_endAccess();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39980);
  OUTLINED_FUNCTION_2_195();
  sub_1E32752B0(v11, &qword_1ECF39980);
  v9 = sub_1E42006B4();

  return v9;
}

uint64_t sub_1E3E302E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E324FBDC();
  v10 = OUTLINED_FUNCTION_16_119();
  v11(v10);

  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1E3270FC8(a1, a2, v19);
    _os_log_impl(&dword_1E323F000, v12, v13, "EpicShowcasePlaybackManager: hasPlayedToEnd %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v6 + 8))(v9, v4);
  swift_beginAccess();

  sub_1E3277398(&v20, a1, a2);
  swift_endAccess();

  v16 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16);
  OUTLINED_FUNCTION_3_195(&qword_1EE28A140);
  return sub_1E4200624();
}

uint64_t sub_1E3E3050C()
{

  sub_1E32772D8(v1);
  v2 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_playedItems;
  swift_beginAccess();

  v3 = OUTLINED_FUNCTION_27_0();
  v5 = sub_1E3E3198C(v3, v4);

  *(v0 + v2) = v5;
}

uint64_t sub_1E3E30598()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  sub_1E324FBDC();
  v10 = OUTLINED_FUNCTION_16_119();
  v61 = v11;
  v60 = v12;
  v59 = v13;
  (v13)(v10);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v67[0] = v66;
    *v16 = 136315138;
    OUTLINED_FUNCTION_5_0();

    v17 = sub_1E4206634();
    v19 = v18;

    v20 = sub_1E3270FC8(v17, v19, v67);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1E323F000, v14, v15, "EpicShowcasePlaybackManager: playNextItemIfPossible played %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v21 = *(v4 + 8);
  result = v21(v9, v2);
  v23 = *(v1 + OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_visibleItems);
  v66 = *(v23 + 16);
  if (v66)
  {
    v57 = v21;
    v58 = v2;
    isa = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_playedItems;
    v64 = OBJC_IVAR____TtC8VideosUI27EpicShowcasePlaybackManager_itemIdToSubjectMap;
    v63 = v23 + 32;

    v65 = isa;
    result = OUTLINED_FUNCTION_5_0();
    v25 = 0;
    v26 = 0;
    v56 = v4 + 8;
    *&v27 = 136315138;
    v55 = v27;
    while (1)
    {
      if (v26 >= *(v23 + 16))
      {
        __break(1u);
        return result;
      }

      v28 = (v63 + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      ++v26;
      v31 = *(v1 + v65);
      if (*(v31 + 16))
      {
        sub_1E4207B44();

        sub_1E4206014();
        v32 = sub_1E4207BA4();
        isa = v31 + 56;
        v33 = ~(-1 << *(v31 + 32));
        while (1)
        {
          v34 = v32 & v33;
          if (((*(isa + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
          {
            break;
          }

          v35 = (*(v31 + 48) + 16 * v34);
          if (*v35 != v30 || v35[1] != v29)
          {
            v37 = sub_1E42079A4();
            v32 = v34 + 1;
            if ((v37 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_16;
        }

        if ((v25 & 1) == 0)
        {
LABEL_24:
          v42 = v62;
          v43 = v58;
          v59(v62, v61, v58);

          v44 = sub_1E41FFC94();
          v45 = sub_1E4206814();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v54 = v44;
            v44 = v47;
            v67[0] = v47;
            *v46 = v55;
            *(v46 + 4) = sub_1E3270FC8(v30, v29, v67);
            v48 = v45;
            v49 = v54;
            _os_log_impl(&dword_1E323F000, v54, v48, "EpicShowcasePlaybackManager: play item %s", v46, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v44);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();
          }

          else
          {
          }

          v57(v42, v43);
          OUTLINED_FUNCTION_14_135();
          OUTLINED_FUNCTION_5_0();
          isa = v44[2].isa;
          if (!*(isa + 16) || (, v50 = sub_1E327D33C(v30, v29), v52 = v51, , (v52 & 1) == 0))
          {

            v25 = 1;
            goto LABEL_21;
          }

          v41 = *(*(isa + 56) + 8 * v50);

          v25 = 1;
          LOBYTE(v67[0]) = 1;
          goto LABEL_19;
        }
      }

      else
      {

        if ((v25 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

LABEL_16:
      OUTLINED_FUNCTION_14_135();
      OUTLINED_FUNCTION_5_0();
      isa = *(isa + 16);
      if (!*(isa + 16) || (, v38 = sub_1E327D33C(v30, v29), v40 = v39, , (v40 & 1) == 0))
      {

        goto LABEL_21;
      }

      v41 = *(*(isa + 56) + 8 * v38);

      LOBYTE(v67[0]) = 0;
LABEL_19:
      isa = v41;
      sub_1E4200524();

LABEL_21:
      if (v26 == v66)
      {
      }
    }
  }

  return result;
}

uint64_t sub_1E3E30BB8()
{
}

uint64_t sub_1E3E30C24()
{
  v0 = sub_1E3B4FF80();

  return v0;
}

uint64_t sub_1E3E30C90()
{
  v0 = sub_1E3E30C24();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3E30CE4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v55 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v3 = 0;
  v53 = a1;
  v4 = *(a1 + 16);
  v50 = a1;
  v51 = a1 + 32;
  v5 = (a2 + 56);

  v43 = 0;
  v52 = v2;
  for (i = v4; ; v4 = i)
  {
    if (v3 == v4)
    {
LABEL_49:

      return v2;
    }

    v6 = (v51 + 16 * v3);
    v8 = *v6;
    v7 = v6[1];
    sub_1E4207B44();
    sub_1E4207B64();
    if (v7)
    {

      sub_1E4206014();
    }

    ++v3;
    v9 = sub_1E4207BA4();
    v10 = -1 << *(v2 + 32);
    v11 = v9 & ~v10;
    v12 = v11 >> 6;
    v13 = 1 << v11;
    if (((1 << v11) & v5[v11 >> 6]) != 0)
    {
      break;
    }

LABEL_18:

    v2 = v52;
  }

  v14 = v2;
  v15 = ~v10;
  v16 = *(v14 + 48);
  while (1)
  {
    v17 = (v16 + 16 * v11);
    v18 = v17[1];
    if (!v18)
    {
      break;
    }

    if (v7)
    {
      v19 = *v17 == v8 && v18 == v7;
      if (v19 || (v9 = sub_1E42079A4(), (v9 & 1) != 0))
      {
        v54 = v3;

        goto LABEL_22;
      }
    }

LABEL_17:
    v11 = (v11 + 1) & v15;
    v12 = v11 >> 6;
    v13 = 1 << v11;
    if ((v5[v11 >> 6] & (1 << v11)) == 0)
    {
      goto LABEL_18;
    }
  }

  if (v7)
  {
    goto LABEL_17;
  }

  v54 = v3;
LABEL_22:
  v20 = v52;
  v21 = *(v52 + 32);
  v44 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v44;
  v23 = v50;
  if ((v21 & 0x3Fu) > 0xD)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v45 = &v43;
    MEMORY[0x1EEE9AC00](v9);
    v11 = &v43 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v11, v5, v22);
    v24 = *(v11 + 8 * v12) & ~v13;
    v47 = v11;
    *(v11 + 8 * v12) = v24;
    v25 = *(v20 + 16) - 1;
    i = *(v23 + 16);
    v13 = 1;
    v26 = v3;
LABEL_24:
    v46 = v25;
    v48 = v26;
LABEL_25:
    while (2)
    {
      if (v3 == i)
      {
        v2 = sub_1E3E31418(v47, v44, v46, v20);
        goto LABEL_49;
      }

      if ((v26 & 0x8000000000000000) == 0)
      {
        if (v3 >= *(v23 + 16))
        {
          goto LABEL_53;
        }

        v27 = (v51 + 16 * v3);
        v28 = *v27;
        v12 = v27[1];
        sub_1E4207B44();
        sub_1E4207B64();
        if (v12)
        {

          sub_1E4206014();
        }

        ++v3;
        v29 = sub_1E4207BA4();
        v30 = -1 << *(v20 + 32);
        v31 = v29 & ~v30;
        v11 = v31 >> 6;
        v32 = 1 << v31;
        if (((1 << v31) & v5[v31 >> 6]) == 0)
        {
LABEL_42:

          v20 = v52;
          v23 = v50;
          v26 = v48;
          continue;
        }

        v22 = ~v30;
        v33 = *(v20 + 48);
        while (1)
        {
          v34 = (v33 + 16 * v31);
          v35 = v34[1];
          if (v35)
          {
            if (v12)
            {
              v36 = *v34 == v28 && v35 == v12;
              if (v36 || (sub_1E42079A4() & 1) != 0)
              {

LABEL_44:
                v37 = v47[v11];
                v47[v11] = v37 & ~v32;
                v20 = v52;
                v23 = v50;
                v26 = v48;
                if ((v37 & v32) != 0)
                {
                  v25 = v46 - 1;
                  if (__OFSUB__(v46, 1))
                  {
                    __break(1u);
                  }

                  v26 = v3;
                  if (v46 == 1)
                  {

                    v2 = MEMORY[0x1E69E7CD0];
                    goto LABEL_49;
                  }

                  goto LABEL_24;
                }

                goto LABEL_25;
              }
            }
          }

          else if (!v12)
          {
            goto LABEL_44;
          }

          v31 = (v31 + 1) & v22;
          v11 = v31 >> 6;
          v32 = 1 << v31;
          if ((v5[v31 >> 6] & (1 << v31)) == 0)
          {
            goto LABEL_42;
          }
        }
      }

      break;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v39 = swift_slowAlloc();
  v40 = v43;
  v41 = sub_1E3E31390(v39, v44, v5, v44, v20, v11, &v53);
  if (v40)
  {

    result = MEMORY[0x1E69143B0](v39, -1, -1);
    __break(1u);
  }

  else
  {
    v42 = v41;

    MEMORY[0x1E69143B0](v39, -1, -1);

    return v42;
  }

  return result;
}

uint64_t sub_1E3E3119C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v26 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v27 = a5;
LABEL_2:
  v25 = v7;
LABEL_3:
  while (2)
  {
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_1E3E31418(v26, a2, v25, v5);
    }

    if (v9 < v10)
    {
      v11 = *a5 + 16 * v9;
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);
      a5[1] = v9 + 1;
      sub_1E4207B44();
      sub_1E4207B64();
      if (v12)
      {

        sub_1E4206014();
      }

      result = sub_1E4207BA4();
      v14 = -1 << *(v5 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      v17 = 1 << v15;
      if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
      {
LABEL_19:

        v5 = a3;
        a5 = v27;
        continue;
      }

      v18 = ~v14;
      v19 = *(v5 + 48);
      while (1)
      {
        v20 = (v19 + 16 * v15);
        v21 = v20[1];
        if (v21)
        {
          if (v12)
          {
            v22 = *v20 == v13 && v21 == v12;
            if (v22 || (result = sub_1E42079A4(), (result & 1) != 0))
            {

LABEL_21:
              a5 = v27;
              v23 = v26[v16];
              v26[v16] = v23 & ~v17;
              v5 = a3;
              if ((v23 & v17) != 0)
              {
                v7 = v25 - 1;
                if (__OFSUB__(v25, 1))
                {
                  goto LABEL_27;
                }

                if (v25 == 1)
                {
                  return MEMORY[0x1E69E7CD0];
                }

                goto LABEL_2;
              }

              goto LABEL_3;
            }
          }
        }

        else if (!v12)
        {
          goto LABEL_21;
        }

        v15 = (v15 + 1) & v18;
        v16 = v15 >> 6;
        v17 = 1 << v15;
        if ((*(v8 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    break;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E3E31390(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1E3E3119C(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1E3E31418(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320A0);
  result = sub_1E4207464();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_1E4207B44();
    sub_1E4207B64();
    if (v17)
    {

      sub_1E4206014();
    }

    result = sub_1E4207BA4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_28;
        }
      }

      goto LABEL_32;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_33;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *sub_1E3E31650(void *a1, int64_t a2, char a3)
{
  result = sub_1E3E31670(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3E31670(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3E317A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39988);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1E377E1B0(v11, a2, a3, a1, v15);
  }
}

uint64_t type metadata accessor for EpicShowcasePlaybackManager()
{
  result = qword_1EE294C00;
  if (!qword_1EE294C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E3198C(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1E373CBF0(0, v6, v8);
    v9 = sub_1E3E31BE4(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1E3E31B54(v11, v6, a2, a1);

    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  return v9;
}

void *sub_1E3E31B54(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1E3E31BE4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E3E31BE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_1E4207B44();

      sub_1E4206014();
      v40 = sub_1E4207BA4();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_1E42079A4();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_1E38689E8(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_1E4207B44();

      sub_1E4206014();
      v18 = sub_1E4207BA4();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_1E42079A4();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1E3E31F88()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3(v4);
  *v5 = v8;
  v5[1] = sub_1E398814C;

  return sub_1E3E2F91C(v2, v6, v7, v3);
}

uint64_t sub_1E3E3201C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(*v0 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v5;

  *v1 = *(v5 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E3E32124()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0);
  OUTLINED_FUNCTION_21_1();
  sub_1E32752B0(v0, v1);
  return sub_1E42006B4();
}

void *sub_1E3E321AC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0);
  swift_allocObject();
  v10 = sub_1E4200544();
  *a5 = a1;
  result = memcpy((a5 + 8), a2, 0x41uLL);
  *(a5 + 80) = a3;
  *(a5 + 88) = a4;
  *(a5 + 96) = v10;
  return result;
}

uint64_t sub_1E3E32238@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v71 = sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v70 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_3(&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_3(&v61 - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39990);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39998);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF399A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v61 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF399A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF399B0);
  OUTLINED_FUNCTION_0_10();
  v65 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_17_3(&v61 - v23);
  sub_1E3E32904();
  v24 = *v1;
  v25 = *(**v1 + 392);
  v26 = v25();
  if (v26 && ((*(*v26 + 176))(v73), v27 = v73[0], v28 = v73[1], v29 = v73[2], v30 = v73[3], , (v74 & 1) == 0))
  {
    v31.n128_u64[0] = v27;
    v32.n128_u64[0] = v28;
    v33.n128_u64[0] = v29;
    v34.n128_u64[0] = v30;
    v35 = j_nullsub_1(v31, v32, v33, v34);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_5_8();
  }

  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = sub_1E4202734();
  v44 = sub_1E329E454(v10, v14, &qword_1ECF39990);
  v45 = &v14[*(v11 + 36)];
  *v45 = v43;
  *(v45 + 1) = v39;
  *(v45 + 2) = v40;
  *(v45 + 3) = v41;
  *(v45 + 4) = v42;
  v45[40] = 0;
  if (!*(v2 + 56) || (*(v2 + 72) & 1) == 0)
  {
    v46 = (v25)(v44);
    if (v46)
    {
      (*(*v46 + 304))();
    }
  }

  v47 = v63;
  sub_1E4203DA4();
  sub_1E4200D94();
  sub_1E329E454(v14, v17, &qword_1ECF39998);
  v48 = &v17[*(v62 + 36)];
  v49 = v76;
  *v48 = v75;
  *(v48 + 1) = v49;
  *(v48 + 2) = v77;
  v50 = *(v2 + 88);
  sub_1E329E454(v17, v20, &qword_1ECF399A0);
  v20[*(v47 + 36)] = v50;
  v51 = swift_allocObject();
  memcpy((v51 + 16), v2, 0x68uLL);
  sub_1E382CDC8(v2, v72);
  v52 = sub_1E3E331B8();
  v53 = v64;
  sub_1E4202E74();

  v54 = sub_1E325F6F0(v20, &qword_1ECF399A8);
  if (v50 != 1)
  {
    v57 = sub_1E4204724();
    v56 = v67;
LABEL_14:
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v57);
    goto LABEL_15;
  }

  v55 = (*(*v24 + 576))(v54);
  v56 = v67;
  if (!v55)
  {
    v57 = sub_1E4204724();
    goto LABEL_14;
  }

  (*(*v55 + 224))(v55);

LABEL_15:
  v72[0] = v47;
  v72[1] = v52;
  OUTLINED_FUNCTION_2_196();
  swift_getOpaqueTypeConformance2();
  v58 = v68;
  v59 = v66;
  sub_1E3B29C44();
  sub_1E3B29C48();
  (*(v70 + 8))(v58, v71);
  sub_1E325F6F0(v56, &qword_1ECF2B7B0);
  return (*(v65 + 8))(v53, v59);
}

void sub_1E3E32904()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v51 = v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v44 - v4);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17_3(&v44 - v7);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF399F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v44 - v9);
  v11 = *(v1 + 56);
  v46 = v1;
  if (!v11 || (*(v1 + 72) & 1) == 0)
  {
    v45 = v5;
    OUTLINED_FUNCTION_8();
    v19 = (*(v18 + 464))();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    *&v58 = MEMORY[0x1E69E7CC0];
    v21 = sub_1E32AE9B0(v20);
    for (i = 0; ; ++i)
    {
      if (v21 == i)
      {

        v24 = v58;
        v25 = sub_1E4201B84();
        v26 = v45;
        *v45 = v25;
        *(v26 + 8) = 0;
        *(v26 + 16) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A48);
        v27 = v46;
        *&v58 = sub_1E3E335DC(v24);
        v28 = swift_allocObject();
        memcpy((v28 + 16), v27, 0x68uLL);
        sub_1E382CDC8(v27, &v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A58);
        sub_1E32752B0(&qword_1ECF39A60, &qword_1ECF39A50);
        sub_1E3E35360();
        sub_1E3E35440();
        sub_1E4203B44();

        sub_1E3E35494(v26, v50);
        swift_storeEnumTagMultiPayload();
        sub_1E3E33498();
        OUTLINED_FUNCTION_9_0();
        sub_1E32752B0(v29, &qword_1ECF39A20);
        sub_1E4201F44();
        sub_1E325F6F0(v26, &qword_1ECF39A20);
        goto LABEL_42;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1E6911E60](i, v20);
      }

      else
      {
        if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v23 = *(v20 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return;
      }

      LOBYTE(v57) = 2;
      (*(*v23 + 776))(&v52, &v57, &unk_1F5D5D5B8, &off_1F5D5C878);
      if (v54)
      {
        if ((swift_dynamicCast() & 1) != 0 && v57 == 1)
        {

          continue;
        }
      }

      else
      {
        sub_1E325F6F0(&v52, &unk_1ECF296E0);
      }

      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }
  }

  v45 = v10;
  OUTLINED_FUNCTION_8();
  v13 = (*(v12 + 464))();
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v57 = MEMORY[0x1E69E7CC0];
  v15 = sub_1E32AE9B0(v14);
  for (j = 0; v15 != j; ++j)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1E6911E60](j, v14);
    }

    else
    {
      if (j >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v17 = *(v14 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_45;
    }

    v56 = 2;
    (*(*v17 + 776))(&v58, &v56, &unk_1F5D5D5B8, &off_1F5D5C878);
    if (v59)
    {
      sub_1E329504C(&v58, &v52);
      sub_1E329504C(&v52, &v58);
      if (!swift_dynamicCast() || (v56 & 1) != 0)
      {

        continue;
      }
    }

    else
    {
      sub_1E325F6F0(&v58, &unk_1ECF296E0);
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
  }

  v30 = v57;
  v31 = v46;
  v32 = MEMORY[0x1E69E7CC0];
  if (v46[10])
  {
    OUTLINED_FUNCTION_8();
    v34 = (*(v33 + 464))();
    if (v34)
    {
      v32 = v34;
    }
  }

  v35 = v50;
  sub_1E3E3391C(v30, v32);

  sub_1E3EB9AB8(&v58);
  v36 = *(v31 + 24);
  v37 = *(v31 + 48);
  v52 = *(v31 + 1);
  v53 = v36 & 1;
  v54 = *(v31 + 2);
  v55 = v37 & 1;
  v38 = sub_1E4201D54();
  v39 = v45;
  *v45 = v38;
  *(v39 + 8) = 0;
  *(v39 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A80);
  sub_1E3E33B58();

  sub_1E4202794();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A00);
  OUTLINED_FUNCTION_7_181(v40);
  sub_1E4202724();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF399F0);
  OUTLINED_FUNCTION_7_181(v41);
  sub_1E3294EE4(v39, v35, &qword_1ECF399F0);
  swift_storeEnumTagMultiPayload();
  sub_1E3E33498();
  OUTLINED_FUNCTION_9_0();
  sub_1E32752B0(v42, v43);
  sub_1E4201F44();
  sub_1E325F6F0(v39, &qword_1ECF399F0);
LABEL_42:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E33138()
{
  if (*(v0 + 104))
  {
    memset(v3, 0, sizeof(v3));
    v4 = 1;
    sub_1E40421AC(2, 0, v3, &v2);
    sub_1E4200524();
    return sub_1E38E5014(&v2);
  }

  return result;
}

unint64_t sub_1E3E331B8()
{
  result = qword_1ECF399B8;
  if (!qword_1ECF399B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF399A8);
    sub_1E3E33244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399B8);
  }

  return result;
}

unint64_t sub_1E3E33244()
{
  result = qword_1ECF399C0;
  if (!qword_1ECF399C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF399A0);
    sub_1E3E332D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399C0);
  }

  return result;
}

unint64_t sub_1E3E332D0()
{
  result = qword_1ECF399C8;
  if (!qword_1ECF399C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39998);
    sub_1E3E3335C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399C8);
  }

  return result;
}

unint64_t sub_1E3E3335C()
{
  result = qword_1ECF399D0;
  if (!qword_1ECF399D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39990);
    sub_1E3E333E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399D0);
  }

  return result;
}

unint64_t sub_1E3E333E0()
{
  result = qword_1ECF399D8;
  if (!qword_1ECF399D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF399E0);
    sub_1E3E33498();
    sub_1E32752B0(&qword_1ECF39A18, &qword_1ECF39A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399D8);
  }

  return result;
}

unint64_t sub_1E3E33498()
{
  result = qword_1ECF399E8;
  if (!qword_1ECF399E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF399F0);
    sub_1E3E33524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399E8);
  }

  return result;
}

unint64_t sub_1E3E33524()
{
  result = qword_1ECF399F8;
  if (!qword_1ECF399F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39A00);
    sub_1E32752B0(&qword_1ECF39A08, &qword_1ECF39A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF399F8);
  }

  return result;
}

uint64_t sub_1E3E335DC(unint64_t a1)
{
  result = sub_1E32AE9B0(a1);
  v3 = result;
  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v21 = a1;
  v7 = MEMORY[0x1E69E7CC0];
  v23 = a1 & 0xC000000000000001;
  v24 = result;
  v22 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v4 == v3)
    {
      return v7;
    }

    if (v5)
    {
      result = MEMORY[0x1E6911E60](v4, v21);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_43;
      }
    }

    if (__OFADD__(v4, 1))
    {
      goto LABEL_42;
    }

    v25 = result;
    v26 = v7;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v29 == v27 && v30 == v28)
    {
    }

    else
    {
      v9 = sub_1E42079A4();

      if ((v9 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_8();
    v11 = (*(v10 + 464))();
    if (v11)
    {
      break;
    }

LABEL_28:
    v15 = 0;
LABEL_33:
    v7 = v26;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E3E34970(0, *(v26 + 16) + 1, 1, v26);
      v7 = result;
    }

    v19 = *(v7 + 16);
    v18 = *(v7 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_1E3E34970((v18 > 1), v19 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v19 + 1;
    v20 = (v7 + 32 * v19);
    v20[4] = v4;
    v20[5] = v4++;
    v20[6] = v25;
    v20[7] = v15;
  }

  v12 = v11;
  result = sub_1E32AE9B0(v11);
  v13 = result;
  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {

      v15 = 0;
      goto LABEL_32;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v12);
      v15 = result;
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v15 = *(v12 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E4206254();
    sub_1E4206254();
    if (v29 == v27 && v30 == v28)
    {

LABEL_31:

LABEL_32:
      v5 = v23;
      v3 = v24;
      v6 = v22;
      goto LABEL_33;
    }

    v17 = sub_1E42079A4();

    if (v17)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void *sub_1E3E3391C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  type metadata accessor for FlexibleGridLayoutHelper();
  v6 = sub_1E39DAFFC(a1);
  v7 = sub_1E39DAFFC(a2);
  v8 = sub_1E376EDA8(49, 0xE100000000000000, v6);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = sub_1E376EDA8(50, 0xE100000000000000, v6);
  if (!v10)
  {
LABEL_8:

LABEL_9:
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v11 = v10;
  v12 = sub_1E376EDA8(51, 0xE100000000000000, v6);
  if (!v12)
  {

    goto LABEL_8;
  }

  v13 = v12;
  sub_1E379738C(v11);
  sub_1E379738C(v13);
  v14 = v9;
  v15 = sub_1E3E34840(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = v15[2];
  v16 = v15[3];
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v15[2] = v18;
    v15[v17 + 4] = v14;
LABEL_10:
    v14 = 0;
    v17 = sub_1E3E34A78(v6, 52);

    v18 = sub_1E3E343E8(v17);

    v16 = *(v18 + 16);
    if (!v16)
    {
      __break(1u);
      goto LABEL_17;
    }

    v6 = *(v18 + 32);

    v17 = sub_1E3E34A78(v7, 52);

    v18 = sub_1E3E343E8(v17);

    v16 = *(v18 + 16);
    if (v16)
    {
      break;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    v15 = sub_1E3E34840((v16 > 1), v18, 1, v15);
  }

  v19 = *(v18 + 32);

  if (*(v3 + 56))
  {
    v20 = *(v3 + 64);
  }

  else
  {
    v20 = INFINITY;
  }

  sub_1E39DB3E8(v6, v19, v20);

  return v15;
}

void sub_1E3E33B58()
{
  OUTLINED_FUNCTION_31_1();
  v43 = v0;
  v2 = v1;
  v4 = v3;
  v49 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A88);
  OUTLINED_FUNCTION_0_10();
  v47 = v7;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v46 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v40 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A90);
  OUTLINED_FUNCTION_0_10();
  v50 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v44 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v19 = *(v4 + 16);
  v52 = 0;
  v53 = v19;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_11_142();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  v21 = v2[1];
  *(v20 + 24) = *v2;
  *(v20 + 40) = v21;
  *(v20 + 49) = *(v2 + 25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A98);
  sub_1E37432DC();
  sub_1E32752B0(&qword_1ECF39AA0, &qword_1ECF39A98);
  v41 = v18;
  sub_1E4203B34();
  v22 = v43;
  v23 = *(v43 + 16);
  v52 = 0;
  v53 = v23;
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_142();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = v2[1];
  *(v24 + 24) = *v2;
  *(v24 + 40) = v25;
  *(v24 + 49) = *(v2 + 25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AA8);
  sub_1E32752B0(&qword_1ECF39AB0, &qword_1ECF39AA8);
  v26 = v51;
  sub_1E4203B34();
  v27 = *(v50 + 16);
  v28 = v44;
  v29 = v18;
  v30 = v45;
  v27(v44, v29, v45);
  v31 = v46;
  v32 = v47;
  v33 = *(v47 + 16);
  v34 = v26;
  v35 = v48;
  v33(v46, v34, v48);
  v36 = v49;
  v27(v49, v28, v30);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AB8);
  v33(v36 + *(v37 + 48), v31, v35);
  v38 = *(v32 + 8);
  v38(v51, v35);
  v39 = *(v50 + 8);
  v39(v41, v30);
  v38(v31, v35);
  v39(v28, v30);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E33F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AD8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  OUTLINED_FUNCTION_4_6();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = *v25;
  if ((*v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v36 = *(v23 + 16);
  if (v35 >= v36)
  {
LABEL_8:
    __break(1u);
    return;
  }

  *v34 = sub_1E4201D44();
  *(v34 + 1) = 0;
  v34[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AE0);
  sub_1E3E3414C();
  v37 = v35 >= v36 - 1;
  v38 = !v37;
  sub_1E3294EE4(v34, v31, &qword_1ECF39AD8);
  sub_1E3294EE4(v31, v27, &qword_1ECF39AD8);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AE8) + 48);

  v40 = v27 + v39;
  *v40 = 0;
  *(v40 + 8) = v38;
  *(v40 + 9) = v37;
  sub_1E325F6F0(v34, &qword_1ECF39AD8);
  sub_1E325F6F0(v31, &qword_1ECF39AD8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E3414C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v41 = v4;
  v6 = *v5;
  v39 = v5[1];
  v40 = v6;
  v7 = *(v5 + 16);
  v8 = v5[4];
  v38 = v5[3];
  v9 = *(v5 + 40);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - v23;
  v42[0] = v40;
  v42[1] = v39;
  v42[2] = v7 & 1;
  v42[3] = v38;
  v42[4] = v8;
  v43 = v9 & 1;
  v44 = 0;
  v25 = (*(*v1 + 392))(v22);
  sub_1E382A9B4(v1, v42, v25, v24);

  *&v24[*(v11 + 44)] = 1;
  v27 = (*(*v3 + 392))(v26);
  sub_1E382A9B4(v3, v42, v27, v20);

  *&v20[*(v11 + 44)] = 1;
  sub_1E3294EE4(v24, v17, &qword_1ECF289B0);
  sub_1E3294EE4(v20, v14, &qword_1ECF289B0);
  v28 = v41;
  sub_1E3294EE4(v17, v41, &qword_1ECF289B0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AF0);
  sub_1E3294EE4(v14, v28 + *(v29 + 48), &qword_1ECF289B0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v30, v31);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v32, v33);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v34, v35);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v36, v37);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E343E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_1E3E346F0(0, v1, 0);
  v2 = v32;
  result = sub_1E37817B4();
  v6 = result;
  v8 = v7;
  v9 = 0;
  v10 = a1 + 64;
  v29 = v1;
  v11 = v1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v6 < 1 << *(a1 + 32))
    {
      v12 = v6 >> 6;
      if ((*(v10 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_31;
      }

      v31 = v5;
      v13 = *(*(a1 + 56) + 8 * v6);
      v30 = v8;
      if (v13 >> 62)
      {
        result = sub_1E4207384();
        if (result)
        {
          v28 = result;
          v14 = sub_1E37FEA14(result, 0);
          swift_bridgeObjectRetain_n();
          sub_1E3798230(v14 + 32, v28, v13);
          v27 = v26;

          if (v27 != v28)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v14 = MEMORY[0x1E69E7CC0];
        }

        v11 = v29;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = *(v32 + 16);
      v15 = *(v32 + 24);
      v17 = v31;
      if (v16 >= v15 >> 1)
      {
        result = sub_1E3E346F0((v15 > 1), v16 + 1, 1);
        v17 = v31;
        v11 = v29;
      }

      *(v32 + 16) = v16 + 1;
      *(v32 + 8 * v16 + 32) = v14;
      v18 = 1 << *(a1 + 32);
      if (v6 >= v18)
      {
        goto LABEL_32;
      }

      v10 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v12);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v17)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v12 << 6;
        v22 = v12 + 1;
        v23 = (a1 + 72 + 8 * v12);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1E3746E04(v6, v17, v30 & 1);
            v11 = v29;
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_20;
          }
        }

        result = sub_1E3746E04(v6, v17, v30 & 1);
        v11 = v29;
      }

LABEL_20:
      if (++v9 == v11)
      {
        return v2;
      }

      v8 = 0;
      v5 = *(a1 + 36);
      v6 = v18;
      if (v18 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *sub_1E3E346F0(void *a1, int64_t a2, char a3)
{
  result = sub_1E3E34710(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3E34710(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E3E34840(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3E34970(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3E34A78(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = swift_bridgeObjectRetain_n();
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v16 = OUTLINED_FUNCTION_8_157();
      a2 = sub_1E3E34D84(v16, v17, v18, v19, v20);
      MEMORY[0x1E69143B0](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1E373CBF0(0, v6, v21 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));

  v8 = OUTLINED_FUNCTION_8_157();
  v13 = sub_1E3E34C28(v8, v9, v10, v11, v12);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v13;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return a2;
}

uint64_t sub_1E3E34C28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*(a3 + 48) + 16 * v18);
    result = *v19;
    if (*v19 != a4 || v19[1] != a5)
    {
      result = sub_1E42079A4();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:
      v22 = sub_1E3E34E2C(v24, a2, v8, a3);

      return v22;
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E3E34D84(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

    swift_bridgeObjectRetain_n();
    v10 = sub_1E3E34C28(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1E3E34E2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A30);
  result = sub_1E4207744();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_1E4207B44();

    sub_1E4206014();
    result = sub_1E4207BA4();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1E3E35084(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E3E350C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_44()
{

  return swift_deallocObject();
}

void *sub_1E3E3518C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(v2 + 72);
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  if (v8)
  {
    *&v11 = COERCE_DOUBLE(OUTLINED_FUNCTION_15_126());
    if ((v12 & 0xFF00) != 0x200)
    {
      v18 = v12;
      v17 = *&v11;
      v30 = (v12 >> 8) & 1;
LABEL_6:

      v19 = OUTLINED_FUNCTION_15_126();
      if ((v20 & 0xFF00) != 0x200)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  v13 = j__OUTLINED_FUNCTION_18();
  v14 = j__OUTLINED_FUNCTION_18();
  v15 = sub_1E406F5AC(v13, v14 & 1);
  v17 = v16;
  v18 = v15;
  v30 = (v15 >> 8) & 1;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  v21 = v7;
  v22 = v6;
  v23 = v5;
  v24 = a2;
  v25 = j__OUTLINED_FUNCTION_18();
  v26 = j__OUTLINED_FUNCTION_18();
  sub_1E406F5AC(v25, v26 & 1);
  v19 = v27;
  a2 = v24;
  v5 = v23;
  v6 = v22;
  v7 = v21;
LABEL_8:
  v32 = *(v2 + 24);
  v33 = *(v2 + 40);
  v34 = v19;
  v35 = 0;
  v36 = 0;
  *v37 = *(v2 + 65);
  *&v37[3] = *(v2 + 68);
  v38 = v8;
  v39 = v9;
  if (v30)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  v40 = v10;

  sub_1E4117970(&v32, v5, v4, v6, v7, v28 & 0xFFFFFF00 | v18, __src, v17);
  sub_1E4203DA4();
  sub_1E4200D94();
  return memcpy(a2, __src, 0xA8uLL);
}

unint64_t sub_1E3E35360()
{
  result = qword_1ECF39A68;
  if (!qword_1ECF39A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39A58);
    sub_1E3E353EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39A68);
  }

  return result;
}

unint64_t sub_1E3E353EC()
{
  result = qword_1ECF39A70;
  if (!qword_1ECF39A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39A70);
  }

  return result;
}

unint64_t sub_1E3E35440()
{
  result = qword_1ECF39A78;
  if (!qword_1ECF39A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39A78);
  }

  return result;
}

uint64_t sub_1E3E35494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E35504@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *(v2 + 16);
  if (v4 >= *(v5 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v5 + 8 * v4 + 32);

  *a2 = sub_1E4201B84();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AF8);
  result = sub_1E32AE9B0(v6);
  if ((result & 0x8000000000000000) == 0)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_142();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_6_170(v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8);
    sub_1E37432DC();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_13_141(OpaqueTypeConformance2, v9, sub_1E3E357CC, v10, v11, v12, v13, MEMORY[0x1E69E6540], OpaqueTypeConformance2, v14, 0);
    return sub_1E4203B34();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1E3E3565C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*result < *(*(v2 + 16) + 16))
  {

    *a2 = sub_1E4201B84();
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AC0);
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_142();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_6_170(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28AD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39AC8);
    sub_1E37432DC();
    v5 = sub_1E32752B0(&qword_1ECF39AD0, &qword_1ECF39AC8);
    OUTLINED_FUNCTION_13_141(v5, v6, sub_1E3E357C0, v7, v8, v9, v10, MEMORY[0x1E69E6540], v5, v11, 0);
    return sub_1E4203B34();
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3E357CC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v11 = *a1;
  sub_1E34AF4E4(*a1, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1E6911E60](v11, v4);
  }

  else
  {
    v12 = *(v4 + 8 * v11 + 32);
  }

  v22[0] = v5;
  v22[1] = v6;
  v22[2] = v7 & 1;
  v22[3] = v8;
  v22[4] = v9;
  v23 = v10 & 1;
  v24 = 0;
  OUTLINED_FUNCTION_8();
  v20 = (*(v13 + 392))(v14, v15, v16, v17, v18, v19);
  sub_1E382A9B4(v12, v22, v20, a2);
}

uint64_t sub_1E3E358F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
      sub_1E4203C94();
      goto LABEL_6;
    case 1:
      sub_1E4203CB4();
      goto LABEL_6;
    case 2:
      sub_1E4203C84();
      goto LABEL_6;
    case 3:
      sub_1E4203CA4();
LABEL_6:
      v3 = 0;
      break;
    default:
      v3 = 1;
      break;
  }

  v4 = sub_1E4203CC4();

  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

unint64_t VUIGlassBackground.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E3E359B4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VUIGlassBackground.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1E3E359E8()
{
  OUTLINED_FUNCTION_31_1();
  v51 = v0;
  v53 = v2;
  v54 = v1;
  v4 = v3;
  v6 = v5;
  v47 = v8;
  v48 = v7;
  v50 = v9;
  v11 = v10;
  OUTLINED_FUNCTION_1_2();
  v49 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  OUTLINED_FUNCTION_1_2();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v47 - v27;
  v52 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_5_7();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v47 - v33;
  if (v50)
  {
    v48(v51, v32);
    v35 = *(v21 + 16);
    v36 = OUTLINED_FUNCTION_11_6();
    v35(v36);
    v51 = v11;
    v37 = *(v21 + 8);
    v37(v25, v4);
    (v35)(v25, v28, v4);
    OUTLINED_FUNCTION_168_0();
    sub_1E37B8D98(v38, v39);
    v37(v25, v4);
    v37(v28, v4);
    v11 = v51;
  }

  else
  {
    v40 = v49;
    v41 = *(v49 + 16);
    v41(v19, v51, v6, v32);
    (v41)(v16, v19, v6);
    OUTLINED_FUNCTION_168_0();
    sub_1E37B8E90(v42, v43, v44);
    v45 = *(v40 + 8);
    v45(v16, v6);
    v45(v19, v6);
  }

  v55 = v53;
  v56 = v54;
  OUTLINED_FUNCTION_2_25();
  v46 = v52;
  swift_getWitnessTable();
  (*(v30 + 16))(v11, v34, v46);
  (*(v30 + 8))(v34, v46);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E35D1C@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14(v2, v11);
  v15 = *(v6 + 16);
  v15(v13, v9, a1);
  v16 = *(v6 + 8);
  v17 = OUTLINED_FUNCTION_11_6();
  v16(v17);
  v15(a2, v13, a1);
  return (v16)(v13, a1);
}

void sub_1E3E35E58()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v0;
  v2 = v1;
  v55 = v4;
  v56 = v3;
  v6 = v5;
  v49 = v7;
  LODWORD(v51) = v8;
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v50 = v18;
  v19 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v49 - v27;
  OUTLINED_FUNCTION_168_0();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v53 = v30;
  v54 = v29;
  OUTLINED_FUNCTION_5_7();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v49 - v33;
  if (v51)
  {
    v51 = v2;
    v35 = v56;
    MEMORY[0x1E690DE70](v49, v6, v50, v56, v32);
    v57 = v35;
    v58 = v51;
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v36 = *(v21 + 16);
    v36(v28, v25, v19);
    v37 = *(v21 + 8);
    v37(v25, v19);
    v38 = OUTLINED_FUNCTION_11_6();
    (v36)(v38);
    OUTLINED_FUNCTION_168_0();
    v2 = v51;
    sub_1E37B8D98(v39, v40);
    v37(v25, v19);
    v37(v28, v19);
  }

  else
  {
    v41 = *(v10 + 16);
    v41(v17, WitnessTable, v6, v32);
    (v41)(v14, v17, v6);
    v63 = v56;
    v64 = v2;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_168_0();
    sub_1E37B8E90(v42, v43, v44);
    v45 = *(v10 + 8);
    v45(v14, v6);
    v45(v17, v6);
  }

  v46 = v56;
  v61 = v56;
  v62 = v2;
  OUTLINED_FUNCTION_4_1();
  v59 = swift_getWitnessTable();
  v60 = v46;
  OUTLINED_FUNCTION_2_25();
  v47 = v54;
  swift_getWitnessTable();
  v48 = v53;
  (*(v53 + 16))(v55, v34, v47);
  (*(v48 + 8))(v34, v47);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E361E8()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v0;
  v49 = v1;
  v3 = v2;
  LODWORD(v47) = v4;
  v51 = v5;
  OUTLINED_FUNCTION_1_2();
  v45 = v6;
  v46 = v7;
  MEMORY[0x1EEE9AC00](*&v6);
  OUTLINED_FUNCTION_4_6();
  v44 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v13 = sub_1E4201534();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = (v15 - v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298B0);
  v17 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  v27 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v50 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v44 - v30;
  if (v47)
  {
    v32 = v46;
    v33 = *(v46 + 16);
    v33(v12, WitnessTable, v3);
    v34 = v44;
    v33(v44, v12, v3);
    v35 = sub_1E3953E6C();
    v36 = v49;
    v58 = v49;
    v59 = v35;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    sub_1E37B8E90(v34, v17, v3);
    v37 = *(v32 + 8);
    v37(v34, v3);
    v37(v12, v3);
  }

  else
  {
    sub_1E3DBED70(v16, v45);
    sub_1E3E36604();
    v47 = v27;
    v38 = v49;
    sub_1E4203574();
    sub_1E3A69608(v16);
    v39 = sub_1E3953E6C();
    v52 = v38;
    v53 = v39;
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v40 = *(v19 + 16);
    v40(v26, v23, v17);
    v41 = *(v19 + 8);
    v41(v23, v17);
    v40(v23, v26, v17);
    v36 = v38;
    v27 = v47;
    sub_1E37B8D98(v23, v17);
    v41(v23, v17);
    v41(v26, v17);
  }

  v42 = sub_1E3953E6C();
  v56 = v36;
  v57 = v42;
  OUTLINED_FUNCTION_4_1();
  v54 = swift_getWitnessTable();
  v55 = v36;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v43 = v50;
  (*(v50 + 16))(v51, v31, v27);
  (*(v43 + 8))(v31, v27);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3E36604()
{
  result = qword_1EE2893F0;
  if (!qword_1EE2893F0)
  {
    sub_1E4201534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2893F0);
  }

  return result;
}

uint64_t sub_1E3E3665C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *(v6 + 16);
  v11(v9 - v8, v2, a1);
  v11(a2, v10, a1);
  v12 = OUTLINED_FUNCTION_11_6();
  return v13(v12);
}

void sub_1E3E36744()
{
  OUTLINED_FUNCTION_31_1();
  v46 = v0;
  v47 = v1;
  v41 = v3;
  v42 = v2;
  v5 = v4;
  v44 = v6;
  v8 = v7;
  v39 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B00);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = sub_1E4203CC4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v40 = sub_1E4203D34();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v43 = v8;
  v48 = v8;
  v49 = v5;
  v45 = v5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v38 - v34;
  sub_1E3E358F4(v39, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1E4203C94();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_1E3E36A78(v12);
    }
  }

  else
  {
    (*(v15 + 32))(v19, v12, v13);
  }

  sub_1E4203D04();
  (*(v15 + 8))(v19, v13);
  sub_1E3E36AE0(v25, v42, v43, v44, v45);
  (*(v21 + 8))(v25, v40);
  v36 = *(v28 + 16);
  v36(v35, v32, OpaqueTypeMetadata2);
  v37 = *(v28 + 8);
  v37(v32, OpaqueTypeMetadata2);
  v36(v47, v35, OpaqueTypeMetadata2);
  v37(v35, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E36A78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3E36AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[2] = a5;
  v16[0] = a1;
  v16[1] = a3;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4203FA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33620);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E4297BE0;
  (*(v7 + 16))(v9, a2, a4);
  *(v14 + 32) = sub_1E4203BD4();
  sub_1E4203F94();
  sub_1E4202F44();
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1E3E36D74()
{
  result = qword_1ECF39B08;
  if (!qword_1ECF39B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39B08);
  }

  return result;
}

void *sub_1E3E36DD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    type metadata accessor for ExponentialBackoffRetryStrategy();
  }

  else
  {
    type metadata accessor for SequentialRetryStrategy();
  }

  result = swift_allocObject();
  result[3] = a2;
  result[4] = 0;
  result[2] = a1;
  return result;
}

uint64_t sub_1E3E36EA4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

long double sub_1E3E36F20()
{
  OUTLINED_FUNCTION_10_137();
  result = exp2(*(v0 + 32)) * 0.5;
  if (*(v0 + 24) < result)
  {
    return *(v0 + 24);
  }

  return result;
}

uint64_t sub_1E3E36FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  sub_1E325A828(a1, &v17 - v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a6;
  v15[5] = a2;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a5;
  swift_unknownObjectRetain();

  return sub_1E3E3795C(0, 0, v14, &unk_1E42D57E0, v15);
}

uint64_t sub_1E3E370D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E3E370F8, 0, 0);
}

uint64_t sub_1E3E370F8()
{
  v1 = v0[8];
  v0[11] = swift_getObjectType();
  result = (*(v1 + 16))();
  v0[12] = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v0[13] = 1;
      OUTLINED_FUNCTION_0_260();
      v12 = v3;
      swift_task_alloc();
      OUTLINED_FUNCTION_33_3();
      v0[14] = v4;
      *v4 = v5;
      OUTLINED_FUNCTION_2_197();
    }

    else
    {
      sub_1E4206514();
      OUTLINED_FUNCTION_0_260();
      v12 = v9;
      swift_task_alloc();
      OUTLINED_FUNCTION_33_3();
      v0[16] = v10;
      *v10 = v11;
      OUTLINED_FUNCTION_1_230();
    }

    *(v6 + 8) = v7;
    v8 = OUTLINED_FUNCTION_9_143();

    return v12(v8);
  }

  return result;
}

uint64_t sub_1E3E3727C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E3E3747C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_54();

    return v5();
  }
}

uint64_t sub_1E3E3739C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3E3747C()
{
  v1 = (*(v0[8] + 40))(v0 + 2, v0[11]);
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v0[11];
  v4 = v0[8];
  ++*v2;
  v1(v0 + 2, 0);
  v5 = (*(v4 + 8))(v3, v4) * 1000000000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 <= -1.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DA60](v1);
  }

  v6 = v5;
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_1E3E375D8;
  v1 = v6;

  return MEMORY[0x1EEE6DA60](v1);
}

uint64_t sub_1E3E375D8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 144) = v0;

  if (v0)
  {
    v5 = sub_1E3E37844;
  }

  else
  {
    v5 = sub_1E3E376DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1E3E376DC()
{
  v1 = *(v0 + 104);
  if (v1 == *(v0 + 96))
  {
    v2 = *(v0 + 144);
    sub_1E4206514();
    if (v2)
    {
      OUTLINED_FUNCTION_54();

      v3();
      return;
    }

    OUTLINED_FUNCTION_0_260();
    v13 = v9;
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    *(v0 + 128) = v10;
    *v10 = v11;
    OUTLINED_FUNCTION_1_230();
  }

  else
  {
    *(v0 + 104) = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_0_260();
    v13 = v4;
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    *(v0 + 112) = v5;
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_2_197();
  }

  *(v7 + 8) = v8;
  v12 = OUTLINED_FUNCTION_9_143();

  v13(v12);
}

uint64_t sub_1E3E37844()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3E378A0(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v7 = v1[7];
  v6 = v1[8];
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_1E3286A7C;

  return sub_1E3E370D0(a1, v8, v9, v4, v5, v7, v6);
}

uint64_t sub_1E3E3795C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-1] - v10;
  v22[5] = a4;
  v22[6] = a5;
  sub_1E325A828(a3, &v22[-1] - v10);
  v12 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325A8C0(v11);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E42063B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4205FB4();
      sub_1E3E37B98(v18 + 32, v22);

      v19 = v22[0];
      sub_1E325A8C0(a3);

      return v19;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E325A8C0(a3);
  if (v17 | v15)
  {
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v15;
    v22[4] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E3E37B98@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3E37C60()
{
  v0 = sub_1E4207784();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3E37CB8(char a1, char a2)
{
  v3 = sub_1E32877AC(a1);
  v5 = v4;
  if (v3 == sub_1E32877AC(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3E37D44(char a1)
{
  sub_1E4207B44();
  sub_1E32877AC(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3E37DB0(uint64_t a1, char a2)
{
  sub_1E32877AC(a2);
  sub_1E4206014();
}

uint64_t sub_1E3E37E0C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E32877AC(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3E37E6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3E37C60();
  *a1 = result;
  return result;
}

unint64_t sub_1E3E37E9C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E32877AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3E38024@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1E41FFCB4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_1E3E380C0()
{
  result = qword_1ECF39B10;
  if (!qword_1ECF39B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39B10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LoggerCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3E381F0()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3E3823C(char a1)
{
  result = 0x656E696665646E75;
  switch(a1)
  {
    case 1:
      result = 0x426C656E6E616863;
      break;
    case 2:
      result = 0x4F6C656E6E616863;
      break;
    case 3:
      result = 0x776F685363697065;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3E382F0(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  v4 = a1;
  v5 = 0x656E696665646E75;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v5 = 0x426C656E6E616863;
      v7 = 0x72656E6E61;
      goto LABEL_5;
    case 2:
      v5 = 0x4F6C656E6E616863;
      v6 = 0xEC00000072656666;
      break;
    case 3:
      v5 = 0x776F685363697065;
      v7 = 0x4565736163;
LABEL_5:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x426C656E6E616863;
      v8 = 0x72656E6E61;
      goto LABEL_10;
    case 2:
      v3 = 0x4F6C656E6E616863;
      v2 = 0xEC00000072656666;
      break;
    case 3:
      v3 = 0x776F685363697065;
      v8 = 0x4565736163;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3E38484()
{
  sub_1E4207B44();
  sub_1E3E384D4();
  return sub_1E4207BA4();
}

uint64_t sub_1E3E384D4()
{
  sub_1E4206014();
}

uint64_t sub_1E3E385B8()
{
  sub_1E4207B44();
  sub_1E3E384D4();
  return sub_1E4207BA4();
}

uint64_t sub_1E3E385FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3E381F0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3E3862C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E3823C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3E38694(char a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 98) = a1;
  v2 = sub_1E3C2F9A0();

  sub_1E3E386D4();

  return v2;
}

uint64_t sub_1E3E386D4()
{
  v1 = v0;
  switch((*(*v0 + 1712))())
  {
    case 1u:
      OUTLINED_FUNCTION_111();
      v2 += 217;
      v3 = *v2;
      (*v2)();
      OUTLINED_FUNCTION_2_1();
      (*(v4 + 1808))(1);

      (v3)(v5);
      OUTLINED_FUNCTION_2_1();
      (*(v6 + 360))(0x4070E00000000000, 0);

      v8 = (v3)(v7);
      v9 = *(MEMORY[0x1E69DDCE0] + 16);
      __src[0] = *MEMORY[0x1E69DDCE0];
      __src[1] = v9;
      LOBYTE(__src[2]) = 0;
      (*(*v8 + 160))(__src);

      v11 = (v3)(v10);
      v12 = *sub_1E3E5F58C();
      v13 = *(*v11 + 680);
      v14 = v12;
      v13(v12);

      OUTLINED_FUNCTION_9_2();
      v16 = (*(v15 + 1760))();
      v17 = *sub_1E3E5FD88();
      v18 = *(*v16 + 680);
      v19 = v17;
      v18(v17);

      break;
    case 2u:
      OUTLINED_FUNCTION_111();
      v20 += 217;
      v21 = *v20;
      (*v20)();
      OUTLINED_FUNCTION_2_1();
      (*(v22 + 1808))(1);

      v24 = (v21)(v23);
      v25 = sub_1E3E5F58C();
      v26 = *v25;
      v27 = *(*v24 + 680);
      v28 = *v25;
      v27(v26);

      LODWORD(v26) = [objc_opt_self() isTV];
      v21();
      OUTLINED_FUNCTION_2_1();
      v30 = *(v29 + 256);
      if (v26)
      {
        v30(0x4074A00000000000, 0);

        v32 = (v21)(v31);
        v33 = (TVAppFeature.isEnabled.getter(10) & 1) == 0;
        v34 = 0x404E000000000000;
        v35 = 0x4043000000000000;
      }

      else
      {
        v30(0x405B000000000000, 0);

        v32 = (v21)(v36);
        v33 = (TVAppFeature.isEnabled.getter(10) & 1) == 0;
        v34 = 0x4041000000000000;
        v35 = 0x4040000000000000;
      }

      if (v33)
      {
        v37 = v34;
      }

      else
      {
        v37 = v35;
      }

      (*(*v32 + 360))(v37, 0);

      OUTLINED_FUNCTION_111();
      v38 += 220;
      v39 = *v38;
      (*v38)();
      OUTLINED_FUNCTION_15_11();
      v40 = *v25;
      v42 = *(*v41 + 680);
      v43 = v40;
      v42(v40);

      (v39)(v44);
      OUTLINED_FUNCTION_2_1();
      (*(v45 + 1808))(1);

      (v39)(v46);
      sub_1E3952C88();
      v93[0] = v47;
      v93[1] = v48;
      v93[2] = v49;
      v93[3] = v50;
      LOBYTE(v93[4]) = 0;
      v113 = 0u;
      v114 = 0u;
      v115 = 1;
      v110 = 0u;
      v111 = 0u;
      v112 = 1;
      sub_1E3952C88();
      v105 = v51;
      v106 = v52;
      v107 = v53;
      v108 = v54;
      v109 = 0;
      sub_1E3952C88();
      v100 = v55;
      v101 = v56;
      v102 = v57;
      v103 = v58;
      v104 = 0;
      type metadata accessor for UIEdgeInsets();
      v60 = v59;
      sub_1E3C3DE00(v59);
      v94 = v97;
      v95 = v98;
      v96 = v99;
      sub_1E3C2FCB8(v93, __src);
      memcpy(v93, __src, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      (*(v61 + 1600))(v93, 0, v62 & 1, v60);

      v64 = (v39)(v63);
      v21();
      OUTLINED_FUNCTION_2_1();
      (*(v65 + 352))();

      VUIRoundValue();
      (*(*v64 + 360))(v66, 0);

      v68 = (v39)(v67);
      v21();
      OUTLINED_FUNCTION_30();
      v70 = (*(v69 + 248))();
      LOBYTE(v42) = v71;

      if (v42)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      (*(*v68 + 256))(v72, 0);

      (v21)(v73);
      OUTLINED_FUNCTION_2_1();
      v75 = (*(v74 + 352))();
      v77 = v76;

      (v39)(v78);
      OUTLINED_FUNCTION_2_1();
      v80 = (*(v79 + 352))();
      v82 = v81;

      (v39)(v83);
      OUTLINED_FUNCTION_30();
      (*(v84 + 152))(__src);

      v85 = *__src;
      if (__src[2])
      {
        v85 = 0.0;
      }

      v86 = *&v80;
      if (v82)
      {
        v86 = 0.0;
      }

      v87 = *&v75;
      if (v77)
      {
        v87 = 0.0;
      }

      (*(*v1 + 360))(v87 + v86 + v85, 0);
      break;
    default:
      sub_1E3E397BC();
      break;
  }

  OUTLINED_FUNCTION_111();
  v89 = (*(v88 + 1736))();
  sub_1E3C37CBC(v89, 39);

  OUTLINED_FUNCTION_9_2();
  v91 = (*(v90 + 1760))();
  sub_1E3C37CBC(v91, 40);
}

uint64_t sub_1E3E390F8()
{
  *(v0 + 98) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E3E386D4();

  return v1;
}

uint64_t sub_1E3E39138(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_1E3C35CF4(a1, a2);
  switch((*(*v2 + 1712))())
  {
    case 1u:

      goto LABEL_4;
    default:
      v5 = sub_1E42079A4();

      if (v5)
      {
LABEL_4:
        OUTLINED_FUNCTION_111();
        v7 += 195;
        v8 = *v7;
        (*v7)();
        if ((sub_1E373F630() & 1) == 0 && a2)
        {
          v9 = a2;
          [v9 isAXEnabled];
          v10 = v8();
          sub_1E3A24FDC(v10);
        }

        VUIRoundValue();
        v12 = v11;
        VUIRoundValue();
        VUIRoundValue();
        v14 = v13;
        VUIRoundValue();
        v15 = OUTLINED_FUNCTION_36_2();
        v16(v15);
        OUTLINED_FUNCTION_9_2();
        v17 = OUTLINED_FUNCTION_36_2();
        v18(v17);
        v19 = OUTLINED_FUNCTION_36_2();
        v20(v19);
        OUTLINED_FUNCTION_9_2();
        v22 = *(v21 + 1736);
        v22();
        OUTLINED_FUNCTION_15_11();
        (*(*v2 + 360))(v12, 0);

        (v22)(v23);
        OUTLINED_FUNCTION_2_1();
        v24 = OUTLINED_FUNCTION_36_2();
        v25(v24);

        OUTLINED_FUNCTION_9_2();
        v27 = *(v26 + 1760);
        v28 = v27();
        sub_1E3952C88();
        v37[0] = v29;
        v37[1] = v30;
        v37[2] = v31;
        v37[3] = v32;
        v38 = 0;
        (*(*v28 + 160))(v37);

        (v27)(v33);
        OUTLINED_FUNCTION_2_1();
        v34 = OUTLINED_FUNCTION_36_2();
        v35(v34);

        (v27)(v36);
        OUTLINED_FUNCTION_15_11();
        (*(*v3 + 360))(v14, 0);
      }

      return result;
  }
}

unint64_t sub_1E3E39668()
{
  result = qword_1ECF39B18;
  if (!qword_1ECF39B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39B18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChannelLogoViewLayout.LogoMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3E397BC()
{
  v1 = (*v0 + 1736);
  v2 = *v1;
  (*v1)();
  OUTLINED_FUNCTION_30();
  (*(v3 + 1808))(1);

  OUTLINED_FUNCTION_9_2();
  v147 = v4 + 1760;
  v158 = *(v4 + 1760);
  v158();
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 1808))(1);

  OUTLINED_FUNCTION_1_232();
  v182 = 0x4072600000000000;
  LOBYTE(v183) = 0;
  v177 = 0x4073800000000000;
  LOBYTE(v178) = 0;
  v6 = MEMORY[0x1E69E7DE0];
  v7 = sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  OUTLINED_FUNCTION_0_262(v7, v8, v9, v10, v11, v12, v13, v14, v147, v158, __dst[0], *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v170, SBYTE8(v170), v171, *(&v171 + 1), v172, v173, v174, SBYTE8(v174));
  OUTLINED_FUNCTION_6_172(v15, v16);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v18 = *(v17 + 1600);
  v27 = OUTLINED_FUNCTION_4_68(v19, v20, v21, v22, v23, v24, v25, v26, v148, v159, __dst[0]);
  v18(v27, 4);
  OUTLINED_FUNCTION_1_232();
  v28 = OUTLINED_FUNCTION_12_131();
  OUTLINED_FUNCTION_0_262(v28, v29, v30, v31, v32, v33, v34, v35, v149, v160, __dst[0], *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v170, SBYTE8(v170), v171, *(&v171 + 1), v172, v173, v174, SBYTE8(v174));
  OUTLINED_FUNCTION_6_172(v36, v37);
  v38 = OUTLINED_FUNCTION_18();
  v46 = OUTLINED_FUNCTION_4_68(v38, v39, v40, v41, v42, v43, v44, v45, v150, v161, __dst[0]);
  v47 = (v18)(v46, 8);
  (v2)(v47);
  OUTLINED_FUNCTION_1_232();
  v48 = OUTLINED_FUNCTION_12_131();
  OUTLINED_FUNCTION_0_262(v48, v49, v50, v51, v52, v53, v54, v55, v151, v162, __dst[0], *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v170, SBYTE8(v170), v171, *(&v171 + 1), v172, v173, v174, SBYTE8(v174));
  OUTLINED_FUNCTION_6_172(v56, v57);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v66 = OUTLINED_FUNCTION_4_68(v58, v59, v60, v61, v62, v63, v64, v65, v152, v163, __dst[0]);
  v67(v66, 4);

  (v2)(v68);
  OUTLINED_FUNCTION_1_232();
  v182 = 0x403F000000000000;
  LOBYTE(v183) = 0;
  v177 = 0x404E000000000000;
  v69 = OUTLINED_FUNCTION_12_131();
  OUTLINED_FUNCTION_0_262(v69, v70, v71, v72, v73, v74, v75, v76, v153, v164, __dst[0], *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v170, SBYTE8(v170), v171, *(&v171 + 1), v172, v173, v174, SBYTE8(v174));
  OUTLINED_FUNCTION_6_172(v77, v78);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v87 = OUTLINED_FUNCTION_4_68(v79, v80, v81, v82, v83, v84, v85, v86, v154, v165, __dst[0]);
  v88(v87, 8);

  v90 = (v2)(v89);
  v91 = sub_1E3E5F58C();
  v92 = *v91;
  v93 = *(*v90 + 680);
  v94 = *v91;
  v93(v92);

  v96 = v166;
  v166(v95);
  OUTLINED_FUNCTION_1_232();
  v97 = sub_1E3C3DE00(v6);
  OUTLINED_FUNCTION_0_262(v97, v98, v99, v100, v101, v102, v103, v104, v155, v166, __dst[0], *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v170, SBYTE8(v170), v171, *(&v171 + 1), v172, v173, v174, SBYTE8(v174));
  OUTLINED_FUNCTION_6_172(v105, v106);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v115 = OUTLINED_FUNCTION_4_68(v107, v108, v109, v110, v111, v112, v113, v114, v156, v167, __dst[0]);
  v116(v115, 6);

  v96(v117);
  sub_1E3952C88();
  *__dst = v118;
  *&__dst[8] = v119;
  *&__dst[16] = v120;
  *&__dst[24] = v121;
  __dst[32] = 0;
  v190 = 0u;
  v191 = 0u;
  v192 = 1;
  v187 = 0u;
  v188 = 0u;
  v189 = 1;
  sub_1E3952C88();
  v182 = v122;
  v183 = v123;
  v184 = v124;
  v185 = v125;
  v186 = 0;
  sub_1E3952C88();
  v177 = v126;
  v178 = v127;
  v179 = v128;
  v180 = v129;
  v181 = 0;
  type metadata accessor for UIEdgeInsets();
  sub_1E3C3DE00(v130);
  v170 = v174;
  v171 = v175;
  LOBYTE(v172) = v176;
  sub_1E3C2FCB8(__dst, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v139 = OUTLINED_FUNCTION_4_68(v131, v132, v133, v134, v135, v136, v137, v138, v157, v168, __dst[0]);
  v140(v139, 0);

  v96(v141);
  OUTLINED_FUNCTION_15_11();
  v142 = *v91;
  v144 = *(*v143 + 680);
  v145 = v142;
  v144(v142);
}

void sub_1E3E39D3C(uint64_t a1, double a2, double a3)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6.n128_f64[0] = a3;
  sub_1E3C8BB10(a1, sub_1E3E39DD4, a2, v6);

  OUTLINED_FUNCTION_17_4();
}

void sub_1E3E39DD4(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong numberOfLines], v3, v4 >= 2))
  {
    OUTLINED_FUNCTION_2_199();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = v5;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 numberOfLines];
    }

    else
    {
      v9 = 1;
    }

    [v6 textRectForBounds:v9 limitedToNumberOfLines:{0.0, 0.0, a1, 1.79769313e308}];
  }

  else
  {
    OUTLINED_FUNCTION_2_199();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
      goto LABEL_12;
    }

    v6 = v10;
    v11 = OUTLINED_FUNCTION_17_4();
    [v12 v13];
  }

LABEL_12:
  OUTLINED_FUNCTION_17_4();
}

uint64_t sub_1E3E39F14()
{
  v0 = sub_1E4207784();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3E39F60(char a1)
{
  result = 0x656C626179616C70;
  switch(a1)
  {
    case 1:
    case 3:
    case 5:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x61746C6564;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_1E3E3A03C(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x656C626179616C70;
  v4 = a1;
  v5 = 0x656C626179616C70;
  v6 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0xD000000000000010;
      v6 = 0x80000001E42855E0;
      break;
    case 3:
      v6 = 0xEF73656C61636F4CLL;
      goto LABEL_7;
    case 4:
      v6 = 0x80000001E4285610;
      v5 = 0xD000000000000011;
      break;
    case 5:
      v6 = 0xEA00000000006449;
LABEL_7:
      v5 = 0x656C626179616C70;
      break;
    case 6:
      v6 = 0xE500000000000000;
      v5 = 0x61746C6564;
      break;
    default:
      v6 = 0x80000001E42855B0;
      v5 = 0xD000000000000017;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0xD000000000000010;
      v2 = 0x80000001E42855E0;
      break;
    case 3:
      v2 = 0xEF73656C61636F4CLL;
      break;
    case 4:
      v2 = 0x80000001E4285610;
      v3 = 0xD000000000000011;
      break;
    case 5:
      v2 = 0xEA00000000006449;
      break;
    case 6:
      v2 = 0xE500000000000000;
      v3 = 0x61746C6564;
      break;
    default:
      v2 = 0x80000001E42855B0;
      v3 = 0xD000000000000017;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3E3A214(char a1)
{
  sub_1E4207B44();
  sub_1E3E39F60(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3E3A280()
{
  sub_1E4206014();
}

uint64_t sub_1E3E3A38C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3E39F60(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3E3A3EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3E39F14();
  *a1 = result;
  return result;
}

unint64_t sub_1E3E3A41C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E3E39F60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3E3A4A4(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[31] = 0;
  v8 = (v3 + 31);
  sub_1E388C2BC();

  v10 = sub_1E3E3A8DC(v9);
  swift_beginAccess();
  v11 = v3[31];
  v3[31] = v10;
  v12 = v10;

  if (v10)
  {
  }

  else
  {
    sub_1E3277E60(0x746C7561666564, 0xE700000000000000, a2, &v36);
    if (v37)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if (swift_dynamicCast())
      {
        v13 = sub_1E3E3A8DC(v39[0]);
        v14 = *v8;
        *v8 = v13;
      }
    }

    else
    {
      sub_1E325F748(&v36, &unk_1ECF296E0);
    }
  }

  v37 = &unk_1F5D7C258;
  v38 = &off_1F5D7BCB8;
  LOBYTE(v36) = 0;
  sub_1E3F9F164(&v36);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_0_263())
    {
      __swift_destroy_boxed_opaque_existential_1(&v36);
      v3[32] = sub_1E3E3A8DC(v31);
      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v36);
    sub_1E325F748(v39, &unk_1ECF296E0);
  }

  v15 = v3[31];
  v3[32] = v15;
  v16 = v15;
LABEL_12:
  v37 = &unk_1F5D7C258;
  v38 = &off_1F5D7BCB8;
  OUTLINED_FUNCTION_1_233(4, v27, v31, v36);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_0_263())
    {
      __swift_destroy_boxed_opaque_existential_1(&v36);
      v3[34] = sub_1E3E3A8DC(v32);
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v36);
    sub_1E325F748(v39, &unk_1ECF296E0);
  }

  v17 = v3[31];
  v3[34] = v17;
  v18 = v17;
LABEL_18:
  v37 = &unk_1F5D7C258;
  v38 = &off_1F5D7BCB8;
  OUTLINED_FUNCTION_1_233(3, v28, v32, v36);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_0_263())
    {
      __swift_destroy_boxed_opaque_existential_1(&v36);
      v3[33] = sub_1E3E3A8DC(v33);
      goto LABEL_24;
    }

    __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v36);
    sub_1E325F748(v39, &unk_1ECF296E0);
  }

  v19 = v3[31];
  v3[33] = v19;
  v20 = v19;
LABEL_24:
  v37 = &unk_1F5D7C258;
  v38 = &off_1F5D7BCB8;
  OUTLINED_FUNCTION_1_233(1, v29, v33, v36);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_0_263())
    {
      __swift_destroy_boxed_opaque_existential_1(&v36);
      v3[35] = sub_1E3E3A8DC(v34);
      goto LABEL_30;
    }

    __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v36);
    sub_1E325F748(v39, &unk_1ECF296E0);
  }

  v21 = v3[31];
  v3[35] = v21;
  v22 = v21;
LABEL_30:
  v37 = &unk_1F5D7C258;
  v38 = &off_1F5D7BCB8;
  OUTLINED_FUNCTION_1_233(2, v30, v34, v36);
  if (!v40)
  {
    __swift_destroy_boxed_opaque_existential_1(&v36);
    sub_1E325F748(v39, &unk_1ECF296E0);
LABEL_35:
    v23 = v3[31];
    v3[36] = v23;
    v24 = v23;
    goto LABEL_36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_0_263() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v36);
    goto LABEL_35;
  }

  __swift_destroy_boxed_opaque_existential_1(&v36);
  v3[36] = sub_1E3E3A8DC(v35);
LABEL_36:
  v37 = &type metadata for VideoViewModel.Keys;
  v38 = &off_1F5D87FC0;
  LOBYTE(v36) = 0;
  v25 = sub_1E39BD1A0(&v36, a2);
  __swift_destroy_boxed_opaque_existential_1(&v36);
  v4[37] = v25;
  return sub_1E39BEDCC(a1, a2, a3);
}

id sub_1E3E3A8DC(uint64_t a1)
{
  v10 = &unk_1F5D7BE68;
  v11 = &off_1F5D7BC48;
  LOBYTE(v9) = 5;
  sub_1E3F9F164(&v9);
  if (!v12[3])
  {

    __swift_destroy_boxed_opaque_existential_1(&v9);
    sub_1E325F748(v12, &unk_1ECF296E0);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(&v9);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v9);
  v2 = sub_1E4205F14();
  sub_1E3277E60(v2, v3, a1, &v9);

  if (!v10)
  {
    sub_1E325F748(&v9, &unk_1ECF296E0);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

  v4 = v12[0];
LABEL_11:
  sub_1E3744600(v8);

  v6 = sub_1E4205C44();

  if (v4)
  {
    sub_1E3744600(v4);

    v4 = sub_1E4205C44();
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDictionary:v6 andMetadataDictionary:v4];

  if (v5)
  {
  }

  return v5;
}

id sub_1E3E3AB0C(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = a1;
  if (!*(v6 + 296))
  {
    v60 = 0u;
    v61 = 0u;
    goto LABEL_14;
  }

  __dst[3] = &type metadata for VideoViewModel.Keys;
  __dst[4] = &off_1F5D87FC0;
  LOBYTE(__dst[0]) = 3;
  OUTLINED_FUNCTION_2_200(a1, a2, a3, a4, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (!*(&v61 + 1))
  {
LABEL_14:
    sub_1E325F748(&v60, &unk_1ECF296E0);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0);
  OUTLINED_FUNCTION_3_197();
  v10 = swift_dynamicCast();
  if ((v10 & 1) == 0)
  {
LABEL_15:
    v31 = objc_opt_self();
    if ([v31 isVision])
    {
      v32 = 288;
    }

    else if (v9 < 3u)
    {
      memcpy(__dst, a2, 0x82uLL);
      if (sub_1E3D44104(__dst) == 1 || (__dst[16] & 0x100) != 0) && (sub_1E373F630() & 1) != 0 && ([v31 isPad])
      {
        v32 = 272;
      }

      else
      {
        v32 = 264;
      }
    }

    else
    {
      v32 = 256;
      if (v9 - 3 < 3)
      {
        v32 = 272;
      }
    }

    v33 = *(v7 + v32);
    v34 = v33;
    return v33;
  }

  v16 = __dst[0];
  __dst[3] = &type metadata for VideoViewModel.Keys;
  __dst[4] = &off_1F5D87FC0;
  LOBYTE(__dst[0]) = 4;
  OUTLINED_FUNCTION_2_200(v10, v11, v12, v13, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (!*(&v61 + 1))
  {

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_197();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:

    goto LABEL_15;
  }

  v17 = __dst[1];
  v56 = __dst[0];
  sub_1E39C30DC();
  if (!v18)
  {
LABEL_30:

    goto LABEL_31;
  }

  v24 = v18;
  __dst[3] = &type metadata for VideoViewModel.Keys;
  __dst[4] = &off_1F5D87FC0;
  LOBYTE(__dst[0]) = 1;
  OUTLINED_FUNCTION_2_200(v18, v19, v20, v21, v22, v23);
  if (!*(&v61 + 1))
  {
LABEL_32:

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_197();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:

    __swift_destroy_boxed_opaque_existential_1(__dst);
    goto LABEL_15;
  }

  v54 = v58;
  v55 = v24;
  __swift_destroy_boxed_opaque_existential_1(__dst);
  __dst[3] = &unk_1F5D5DAC8;
  __dst[4] = &off_1F5D5C998;
  LOBYTE(__dst[0]) = 52;
  sub_1E39C29A4(__dst);
  v26 = v25;
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (v26)
  {
    v52 = [objc_opt_self() standardUserDefaults];
    v51 = sub_1E4205ED4();

    v27 = [v52 stringForKey_];

    if (v27)
    {
      v28 = sub_1E4205F14();
      v53 = v29;

      if (sub_1E376EDA8(v28, v53, v16))
      {

        v30 = v28;
        v17 = v53;
        goto LABEL_36;
      }
    }
  }

  v30 = v56;
LABEL_36:
  v36 = sub_1E376EDA8(v30, v17, v16);

  if (!v36)
  {
    goto LABEL_30;
  }

  __dst[3] = &type metadata for VideoViewModel.Keys;
  __dst[4] = &off_1F5D87FC0;
  LOBYTE(__dst[0]) = 5;
  OUTLINED_FUNCTION_2_200(v37, v38, v39, v40, v41, v42);
  if (!*(&v61 + 1))
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_3_197();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v43 = v58;
  v44 = v59;
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v45 = sub_1E376EDA8(v43, v44, v54);

  if (!v45)
  {
    goto LABEL_30;
  }

  __dst[3] = &type metadata for VideoViewModel.Keys;
  __dst[4] = &off_1F5D87FC0;
  LOBYTE(__dst[0]) = 6;
  v46 = sub_1E39BD1A0(__dst, v36);

  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (v46)
  {
    v45 = sub_1E3E3B048(v46, v45);
  }

  __dst[3] = &type metadata for VideoViewModel.Keys;
  __dst[4] = &off_1F5D87FC0;
  LOBYTE(__dst[0]) = 2;
  v47 = sub_1E39BD1A0(__dst, v55);

  __swift_destroy_boxed_opaque_existential_1(__dst);
  v48 = sub_1E3744600(v45);

  if (v47)
  {
    v49 = sub_1E3744600(v47);
  }

  else
  {
    v49 = 0;
  }

  v50 = objc_allocWithZone(VUIVideosPlayable);
  v33 = sub_1E37448C4(v48, v49);
  if (!v33)
  {
    goto LABEL_15;
  }

  return v33;
}

uint64_t sub_1E3E3B048(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1E394C48C(a1, sub_1E394C454, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1E3E3B0FC()
{
}

id *sub_1E3E3B154()
{
  v0 = ViewModel.deinit();

  return v0;
}

uint64_t sub_1E3E3B1B4()
{
  v0 = sub_1E3E3B154();

  return MEMORY[0x1EEE6BDC0](v0, 304, 7);
}

unint64_t sub_1E3E3B1E8()
{
  result = qword_1ECF39B20;
  if (!qword_1ECF39B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39B20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoViewModel.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3E3B33C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = MEMORY[0x1E6980F00];
      goto LABEL_13;
    case 2:
    case 5:
      v3 = MEMORY[0x1E6980F08];
      goto LABEL_13;
    case 3:
      v3 = MEMORY[0x1E6980F10];
      goto LABEL_13;
    case 6:
      v3 = MEMORY[0x1E6980EE8];
      goto LABEL_13;
    case 7:
      v3 = MEMORY[0x1E6980F38];
      goto LABEL_13;
    case 14:
      v3 = MEMORY[0x1E6980F18];
      goto LABEL_13;
    case 15:
      v3 = MEMORY[0x1E6980EF8];
      goto LABEL_13;
    case 17:
      v3 = MEMORY[0x1E6980EF0];
      goto LABEL_13;
    case 19:
      v3 = MEMORY[0x1E6980F30];
      goto LABEL_13;
    case 21:
      v3 = MEMORY[0x1E6980F20];
      goto LABEL_13;
    case 22:
      v3 = MEMORY[0x1E6980F28];
LABEL_13:
      v4 = *v3;
      v5 = sub_1E4202A94();
      OUTLINED_FUNCTION_2();
      (*(v6 + 104))(a2, v4, v5);
      v7 = OUTLINED_FUNCTION_22_1();
      v10 = v5;
      break;
    default:
      sub_1E4202A94();
      v7 = OUTLINED_FUNCTION_10_2();
      break;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1E3E3B47C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 24:
      sub_1E4202814();
      goto LABEL_7;
    case 23:
      sub_1E4202804();
      goto LABEL_7;
    case 20:
      sub_1E4202824();
LABEL_7:
      v3 = 0;
      goto LABEL_9;
  }

  v3 = 1;
LABEL_9:
  v4 = sub_1E4202834();

  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

uint64_t sub_1E3E3B50C(char a1)
{
  switch(a1)
  {
    case 1:
      sub_1E42028F4();
      goto LABEL_11;
    case 2:
      sub_1E4202914();
      goto LABEL_11;
    case 3:
      sub_1E4202944();
      goto LABEL_11;
    case 4:
      sub_1E4202964();
      goto LABEL_11;
    case 5:
      sub_1E4202954();
      goto LABEL_11;
    case 6:
      sub_1E4202974();
      goto LABEL_11;
    case 7:
      sub_1E4202904();
      goto LABEL_11;
    case 8:
      sub_1E4202934();
      goto LABEL_11;
    case 9:
      sub_1E4202924();
LABEL_11:
      v2 = v1;
      break;
    default:
      v2 = 0;
      break;
  }

  if (UIAccessibilityIsBoldTextEnabled())
  {
    sub_1E376C2B0();
    if ((sub_1E4205E84() & 1) == 0 && (sub_1E4205E84() & 1) == 0)
    {
      sub_1E4202904();
      return v3;
    }
  }

  return v2;
}

uint64_t sub_1E3E3B648(char a1)
{
  switch(a1)
  {
    case 1:
      result = MEMORY[0x1EEDE2C50]();
      break;
    case 3:
      result = MEMORY[0x1EEDE2C40]();
      break;
    case 4:
      result = MEMORY[0x1EEDE2C38]();
      break;
    default:
      result = MEMORY[0x1EEDE2C48]();
      break;
  }

  return result;
}

uint64_t sub_1E3E3B67C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A200);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = (*(*v1 + 1928))(v5);
  v9 = sub_1E4202BE4();
  if (v8 != 4)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v9);
    if (v8 == 1)
    {
      v17 = MEMORY[0x1E6980FD0];
    }

    else
    {
      if (v8 != 2)
      {
        return sub_1E3E3B808(v7, a1);
      }

      v17 = MEMORY[0x1E6980FD8];
    }

    sub_1E325F6F0(v7, &qword_1ECF2A200);
    (*(*(v9 - 8) + 104))(v7, *v17, v9);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
    return sub_1E3E3B808(v7, a1);
  }

  v10 = OUTLINED_FUNCTION_10_2();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
}

uint64_t sub_1E3E3B808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3E3B878()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v134 = v2;
  sub_1E4202A24();
  OUTLINED_FUNCTION_0_10();
  v141 = v4;
  v142 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v140 = v6 - v5;
  sub_1E42028B4();
  OUTLINED_FUNCTION_0_10();
  v138 = v8;
  v139 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v137 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B28);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v133 - v13;
  v143 = sub_1E4202834();
  OUTLINED_FUNCTION_0_10();
  v136 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v135 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v144 = &v133 - v21;
  v22 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v29);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v133 = &v133 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v133 - v38;
  v40 = (*(*v0 + 1784))(v37);
  if (v40 == 11)
  {
    v41 = v28;
    v146 = 0;
LABEL_3:
    v145 = 1;
    goto LABEL_17;
  }

  v42 = v40;
  v43 = sub_1E3E3B50C(v40);
  v44 = v43;
  if (v45)
  {
    if ((sub_1E376A0AC(v42, 10) & 1) == 0)
    {
      v146 = v44;
      v41 = v28;
      goto LABEL_3;
    }

    v148 = v24;
    v46 = v39;
    OUTLINED_FUNCTION_12_6();
    v47 += 211;
    v48 = *v47;
    (*v47)();
    OUTLINED_FUNCTION_11_143();
    if ((v113 || (v150 = v49, v149 = 0, sub_1E376C200(), (sub_1E4205E84() & 1) == 0)) && ((v48(), OUTLINED_FUNCTION_11_143(), v113) || (v152 = v50, v151 = 1, sub_1E376C200(), (sub_1E4205E84() & 1) == 0)) && ((v48(), OUTLINED_FUNCTION_11_143(), v113) || (v154 = v51, v153 = 2, sub_1E376C200(), (sub_1E4205E84() & 1) == 0)))
    {
      v41 = v28;
      sub_1E4202974();
    }

    else
    {
      v41 = v28;
      sub_1E4202904();
    }

    v145 = 0;
    v146 = v52;
    v39 = v46;
    v24 = v148;
  }

  else
  {
    v146 = v43;
    v41 = v28;
    v145 = 0;
  }

LABEL_17:
  v53 = v14;
  OUTLINED_FUNCTION_12_6();
  v147 = *(v54 + 1688);
  v148 = v54 + 1688;
  v55 = v147();
  v56 = v24;
  v57 = v39;
  if (v55 == 27)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v22);
  }

  else
  {
    sub_1E3E3B33C(v55, v39);
  }

  OUTLINED_FUNCTION_12_6();
  v62 = (*(v61 + 1760))();
  if (v63)
  {
    v64 = v62;
    v65 = v63;
    OUTLINED_FUNCTION_12_6();
    v67 = (*(v66 + 1808))();
    if (v68)
    {

      goto LABEL_23;
    }

    v83 = *&v67;
    OUTLINED_FUNCTION_12_6();
    v85 = (*(v84 + 1736))();
    if (v85 != 2 && (v85 & 1) != 0)
    {
      OUTLINED_FUNCTION_12_6();
      v94 = (*(v93 + 1712))();
      if (v94 == 13)
      {
        sub_1E42012F4();
        v95 = v133;
        v96 = OUTLINED_FUNCTION_10_2();
        __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
      }

      else
      {
        v95 = v133;
        sub_1E3B033CC(v94, v133);
      }

      sub_1E3AC5CD8(v134, v95, v83);
      sub_1E325F6F0(v95, &qword_1ECF2A250);
    }

    type metadata accessor for TextLayout();
    v113 = sub_1E4205F14() == v64 && v112 == v65;
    if (v113)
    {
    }

    else
    {
      v114 = sub_1E42079A4();

      if ((v114 & 1) == 0)
      {
        OUTLINED_FUNCTION_7_184();
        sub_1E3E3C4B0();
LABEL_51:
        v82 = v115;

        v70 = v147;
        goto LABEL_52;
      }
    }

    OUTLINED_FUNCTION_7_184();
    sub_1E3E3CA80();
    goto LABEL_51;
  }

LABEL_23:
  v64 = v57;
  sub_1E3E3C440(v57, v35);
  if (__swift_getEnumTagSinglePayload(v35, 1, v22) == 1)
  {
    v69 = sub_1E325F6F0(v35, &qword_1ECF2DEE8);
    v70 = v147;
    v71 = (v147)(v69);
    v72 = v53;
    if (v71 == 27)
    {
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v143);
LABEL_31:
      sub_1E325F6F0(v72, &qword_1ECF39B28);
      v82 = 0;
      goto LABEL_52;
    }

    sub_1E3E3B47C(v71, v53);
    v86 = v53;
    v87 = v143;
    if (__swift_getEnumTagSinglePayload(v86, 1, v143) == 1)
    {
      goto LABEL_31;
    }

    (*(v136 + 32))(v135, v72, v87);
    if (v145)
    {
      sub_1E42028E4();
      v100 = v144;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
      v82 = sub_1E42029C4();
      sub_1E325F6F0(v100, &qword_1ECF335F8);
    }

    else
    {
      sub_1E42028E4();
      v105 = v144;
      v106 = OUTLINED_FUNCTION_10_2();
      __swift_storeEnumTagSinglePayload(v106, v107, v108, v109);
      sub_1E42029C4();
      sub_1E325F6F0(v105, &qword_1ECF335F8);
      v82 = sub_1E4202A04();
    }

    v110 = OUTLINED_FUNCTION_119_0();
    v111(v110);
  }

  else
  {
    v76 = v56;
    (*(v56 + 32))(v41, v35, v22);
    v70 = v147;
    if (v145)
    {
      sub_1E42028E4();
      v77 = v144;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
      v82 = sub_1E42029D4();
      sub_1E325F6F0(v77, &qword_1ECF335F8);
    }

    else
    {
      sub_1E42028E4();
      v88 = v144;
      v89 = OUTLINED_FUNCTION_10_2();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
      sub_1E42029D4();
      sub_1E325F6F0(v88, &qword_1ECF335F8);
      v82 = sub_1E4202A04();
    }

    (*(v76 + 8))(v41, v22);
  }

LABEL_52:
  OUTLINED_FUNCTION_12_6();
  v117 = (*(v116 + 1832))();
  if (v117 != 5 && v82)
  {
    v118 = v137;
    sub_1E3E3B648(v117);
    sub_1E42028D4();
    OUTLINED_FUNCTION_14_15();
    (*(v138 + 8))(v118, v139);
    v82 = v1;
  }

  OUTLINED_FUNCTION_12_6();
  v120 = (*(v119 + 1856))();
  v121 = MEMORY[0x1E6980EA8];
  if (v120 == 3)
  {
    if (v82)
    {
      v123 = v140;
      v122 = v141;
      v124 = v64;
      v125 = v142;
      (*(v141 + 104))(v140, *MEMORY[0x1E6980EA8], v142);
      sub_1E4202A54();
      OUTLINED_FUNCTION_14_15();
      v126 = v125;
      v64 = v124;
      (*(v122 + 8))(v123, v126);
      goto LABEL_65;
    }
  }

  else if (v120 == 2)
  {
    if (v82)
    {
      sub_1E4202844();
      goto LABEL_62;
    }
  }

  else if (v120 == 1 && v82)
  {
    sub_1E4202AA4();
LABEL_62:
    OUTLINED_FUNCTION_14_15();
LABEL_65:
    v82 = v1;
  }

  v70();
  OUTLINED_FUNCTION_11_143();
  if (!v113 && (v156 = v127, v155 = 5, sub_1E376C200(), (sub_1E4205E84() & 1) != 0) && v82)
  {
    v128 = *v121;
    v130 = v141;
    v129 = v142;
    v131 = v64;
    v132 = v140;
    (*(v141 + 104))(v140, v128, v142);
    sub_1E4202A54();
    OUTLINED_FUNCTION_14_15();
    (*(v130 + 8))(v132, v129);
    sub_1E325F6F0(v131, &qword_1ECF2DEE8);
  }

  else
  {
    sub_1E325F6F0(v64, &qword_1ECF2DEE8);
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3E3C440(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E3E3C4B0()
{
  OUTLINED_FUNCTION_93();
  v62 = v0;
  v59 = v2;
  v60 = v1;
  v4 = v3;
  v56 = v5;
  v61 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v51 - v9;
  v58 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v54 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v53 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = sub_1E42028E4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v55 = v25 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B48);
  v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B50) - 8);
  v27 = *(*v26 + 72);
  v28 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1E4299720;
  v30 = (v29 + v28);
  v31 = v26[14];
  *v30 = sub_1E4205F14();
  v30[1] = v32;
  v33 = *(v22 + 104);
  v33(v30 + v31, *MEMORY[0x1E6980E28], v20);
  v34 = (v30 + v27);
  v35 = v26[14];
  *v34 = sub_1E4205F14();
  v34[1] = v36;
  v37 = v34 + v35;
  v38 = v60;
  v33(v37, *MEMORY[0x1E6980E20], v20);
  v39 = v61;
  v40 = sub_1E4205CB4();
  sub_1E3E3C9C0(v39, v38, v40, MEMORY[0x1E6980E30], v19);

  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1E325F6F0(v19, &qword_1ECF335F8);
    v41 = v62;
  }

  else
  {
    v42 = v55;
    (*(v22 + 32))(v55, v19, v20);
    v41 = v62;
    if ((v62 & 1) == 0)
    {
      v47 = v52;
      (*(v22 + 16))(v52, v42, v20);
      v48 = OUTLINED_FUNCTION_22_1();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v20);
      sub_1E42029B4();
      sub_1E325F6F0(v47, &qword_1ECF335F8);
      (*(v22 + 8))(v42, v20);
      goto LABEL_11;
    }

    (*(v22 + 8))(v42, v20);
  }

  v43 = v57;
  sub_1E3E3C440(v56, v57);
  v44 = v58;
  if (__swift_getEnumTagSinglePayload(v43, 1, v58) == 1)
  {
    sub_1E325F6F0(v43, &qword_1ECF2DEE8);
    sub_1E4202994();
    if (v41)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v46 = v53;
    v45 = v54;
    (*(v54 + 32))(v53, v43, v44);
    MEMORY[0x1E690D2E0](v39, v38, v46, v4);
    (*(v45 + 8))(v46, v44);
    if (v41)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  sub_1E4202A04();

LABEL_12:
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3E3C9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_1E327D33C(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(a3 + 56);
    v12 = a4(0);
    OUTLINED_FUNCTION_2();
    (*(v13 + 16))(a5, v11 + *(v13 + 72) * v10, v12);
    v14 = OUTLINED_FUNCTION_22_1();
    v17 = v12;
  }

  else
  {
    a4(0);
    v14 = OUTLINED_FUNCTION_10_2();
  }

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void sub_1E3E3CA80()
{
  OUTLINED_FUNCTION_93();
  v45 = v0;
  v41[1] = v2;
  v42 = v1;
  v4 = v3;
  v43 = v6;
  v44 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v41 - v9;
  v11 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v41[0] = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B30);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v41 - v19;
  v21 = sub_1E42027F4();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B38);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B40) - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E4297BE0;
  v31 = (v30 + v29);
  *v31 = sub_1E4205F14();
  v31[1] = v32;
  sub_1E42027E4();
  v33 = sub_1E4205CB4();
  v34 = OUTLINED_FUNCTION_119_0();
  sub_1E3E3C9C0(v34, v35, v33, v36, v37);

  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_1E325F6F0(v20, &qword_1ECF39B30);
    v38 = v45;
  }

  else
  {
    (*(v23 + 32))(v27, v20, v21);
    v38 = v45;
    if ((v45 & 1) == 0)
    {
      sub_1E42029A4();
      (*(v23 + 8))(v27, v21);
      goto LABEL_11;
    }

    (*(v23 + 8))(v27, v21);
  }

  sub_1E3E3C440(v42, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1E325F6F0(v10, &qword_1ECF2DEE8);
    OUTLINED_FUNCTION_119_0();
    sub_1E4202994();
    if (v38)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v39 = v41[0];
  (*(v41[0] + 32))(v16, v10, v11);
  v40 = OUTLINED_FUNCTION_119_0();
  MEMORY[0x1E690D2E0](v40, v4);
  (*(v39 + 8))(v16, v11);
  if ((v38 & 1) == 0)
  {
LABEL_11:
    sub_1E4202A04();
  }

LABEL_12:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3E3CEC0(void *a1)
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3E3CF0C(void *a1))(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_19(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38063DC;
}

uint64_t sub_1E3E3CF9C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  return a2(v2 + v4);
}

uint64_t sub_1E3E3CFF0()
{
  OUTLINED_FUNCTION_37();
  swift_weakAssign();
}

void (*sub_1E3E3D040(void *a1))(uint64_t a1)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_19(v2);
  v2[3] = swift_weakLoadStrong();
  return sub_1E3806578;
}

uint64_t sub_1E3E3D284(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  sub_1E3E3D2EC(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1E3E3D2EC(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_1E41FE624();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *(v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_contextData) = 0;
  *(v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_contextDataRef) = 0;
  *(v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_appendContextDataRef) = 0;
  *(v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_updateContextDataRef) = 0;
  sub_1E41FE614();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestID, v12, v9);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  *(v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType) = a1;
  v13 = (v4 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_controllerRef);
  *v13 = a2;
  v13[1] = a3;
  return v4;
}

uint64_t sub_1E3E3D480@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B018);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  strcpy((inited + 32), "controllerRef");
  *(inited + 46) = -4864;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_controllerRef + 8);
  if (v5)
  {
    v6 = *(v1 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_controllerRef);
    v7 = MEMORY[0x1E69E6158];
  }

  else
  {
    v6 = 0;
    v7 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 72) = v7;
  strcpy((inited + 80), "contextDataRef");
  *(inited + 95) = -18;
  v8 = *(*v1 + 224);

  v10 = v8(v9);
  v11 = v10;
  if (v10)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  }

  else
  {
    *(inited + 104) = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v11;
  *(inited + 120) = v10;
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x80000001E425E740;
  v12 = (*(*v2 + 248))();
  v13 = v12;
  if (v12)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  }

  else
  {
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v13;
  *(inited + 168) = v12;
  ViewModelKeys.rawValue.getter(34);
  *(inited + 176) = v14;
  *(inited + 184) = v15;
  v16 = (*(*v2 + 272))();
  v17 = v16;
  if (v16)
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  }

  else
  {
    *(inited + 200) = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v17;
  *(inited + 216) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
  v18 = MEMORY[0x1E69E6158];
  v19 = sub_1E4205CB4();
  v20 = *(v2 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType);
  if (v20 != 5)
  {
    *&v26 = ViewModelRequestType.rawValue.getter(v20);
    *(&v26 + 1) = v21;
    v27 = v18;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1E3807164(&v26, 0x5474736575716572, 0xEB00000000657079);
  }

  v22 = (*(*v2 + 200))(v20);
  if (v22)
  {
    v23 = v22;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    *&v26 = v23;
    v27 = v24;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1E3807164(&v26, 0x44747865746E6F63, 0xEB00000000617461);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0);
  a1[3] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_1E3E3D7D8()
{
  v1 = OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_appContext);
  swift_weakDestroy();

  return v0;
}

uint64_t sub_1E3E3D8A4()
{
  sub_1E3E3D7D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3E3D8FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for CollectionServiceRequestContext()
{
  result = qword_1EE292AB0;
  if (!qword_1EE292AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E3DA64()
{
  result = sub_1E41FE624();
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

id sub_1E3E3DB24()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF08]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B78);
  sub_1E42024A4();
  [v1 setDelegate_];

  [v1 setAutocorrectionType_];
  sub_1E3E3F7D0(*(v0 + 168), *(v0 + 176), v1);
  [v1 setMaximumContentSizeCategory_];
  return v1;
}

void sub_1E3E3DBEC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B60);
  OUTLINED_FUNCTION_18_104();
  sub_1E390E860(v2, v3, a1);
}

id sub_1E3E3DC40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B60);
  sub_1E4203AB4();
  v14 = *(v0 + 40);
  v15 = *(v0 + 32);
  v2 = *(v0 + 56);
  v19 = *(v0 + 72);
  v20 = *(v0 + 48);
  v3 = *(v0 + 88);
  v12 = *(v0 + 64);
  v13 = *(v0 + 80);
  v18 = *(v0 + 96);
  v4 = *(v0 + 144);
  v17 = v1[17];
  v5 = v1[20];
  v16 = v1[19];
  v7 = v1[13];
  v6 = v1[14];
  v8 = v1[15];
  v9 = v1[16];
  objc_allocWithZone(type metadata accessor for HostedUISearchBar.Coordinator());

  sub_1E394C830(v8, v9);
  *&v11 = v7;
  *(&v11 + 1) = v6;
  return sub_1E3E3E718(v21, v22, v23, v24, v15, v14, v20, v2, v12, v19, v13, v3, v18, v17, v4, v16, v5, v11, v8, v9);
}

uint64_t sub_1E3E3DE90()
{
  OUTLINED_FUNCTION_8_158(OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__text);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B60);
  OUTLINED_FUNCTION_18_104();
  return v1;
}

uint64_t sub_1E3E3DEE4()
{
  OUTLINED_FUNCTION_8_158(OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__text);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B60);
  return OUTLINED_FUNCTION_7_185();
}

void (*sub_1E3E3DF38())()
{
  v2 = __swift_coroFrameAllocStub(0x88uLL);
  OUTLINED_FUNCTION_18_4(v2);
  v3 = OUTLINED_FUNCTION_12_132(OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__text);
  v5 = *(v4 + 16);
  v1[14] = v5;
  v6 = *(v4 + 24);
  v1[15] = v6;
  *v1 = v3;
  v1[1] = v0;
  v1[2] = v5;
  v1[3] = v6;

  v1[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B60);
  MEMORY[0x1E690E3F0]();
  return sub_1E3E3DFE8;
}

void sub_1E3E3DFE8()
{
  OUTLINED_FUNCTION_25_80();
  v2 = v0[13];
  *(v1 + 32) = v0[12];
  v0[10] = v0[8];
  v3 = v0[9];
  v4 = v0[15];
  v5 = v0[14];
  v0[5] = v2;
  v0[6] = v5;
  v0[7] = v4;
  v0[11] = v3;
  if (v6)
  {

    sub_1E4203AA4();
  }

  else
  {
    sub_1E4203AA4();
  }

  free(v0);
}

uint64_t sub_1E3E3E0BC()
{
  OUTLINED_FUNCTION_8_158(OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__text);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF39B60);
  v0 = OUTLINED_FUNCTION_26_91();
  return OUTLINED_FUNCTION_24_89(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_1E3E3E128()
{
  v0 = __swift_coroFrameAllocStub(0x48uLL);
  OUTLINED_FUNCTION_18_4(v0);
  OUTLINED_FUNCTION_1_234(OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__searchBarHasFocus);

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  OUTLINED_FUNCTION_14_136(v1);
  return OUTLINED_FUNCTION_5_184();
}

uint64_t sub_1E3E3E1CC()
{
  v0 = __swift_coroFrameAllocStub(0x48uLL);
  OUTLINED_FUNCTION_18_4(v0);
  OUTLINED_FUNCTION_1_234(OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__shouldBeShowingSearchResults);

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  OUTLINED_FUNCTION_14_136(v1);
  return OUTLINED_FUNCTION_5_184();
}

uint64_t sub_1E3E3E260()
{
  OUTLINED_FUNCTION_6_173();
  LOBYTE(v0) = *(v0 + 16);
  v6 = v1;
  v7 = v2;
  v8 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  MEMORY[0x1E690E3F0](&v5, v3);
  return v5;
}

uint64_t sub_1E3E3E2C8()
{
  OUTLINED_FUNCTION_6_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  return sub_1E4203AA4();
}

uint64_t sub_1E3E3E328()
{
  v0 = __swift_coroFrameAllocStub(0x48uLL);
  OUTLINED_FUNCTION_18_4(v0);
  OUTLINED_FUNCTION_1_234(OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__searchingIsCancelled);

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  OUTLINED_FUNCTION_14_136(v1);
  return OUTLINED_FUNCTION_5_184();
}

void sub_1E3E3E3A4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  *(*a1 + 24) = *(*a1 + 48);
  OUTLINED_FUNCTION_15_127(v2);

  free(v1);
}

uint64_t sub_1E3E3E414()
{
  OUTLINED_FUNCTION_6_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  sub_1E4203AB4();
  return v1;
}

uint64_t sub_1E3E3E474()
{
  OUTLINED_FUNCTION_6_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B70);
  OUTLINED_FUNCTION_18_104();
  return v1;
}

uint64_t sub_1E3E3E4CC()
{
  OUTLINED_FUNCTION_6_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B70);
  return OUTLINED_FUNCTION_7_185();
}

void (*sub_1E3E3E524())()
{
  v2 = __swift_coroFrameAllocStub(0x88uLL);
  OUTLINED_FUNCTION_18_4(v2);
  v3 = OUTLINED_FUNCTION_12_132(OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__textInputSource);
  v5 = *(v4 + 16);
  v1[14] = v5;
  v6 = *(v4 + 24);
  v1[15] = v6;
  *v1 = v3;
  v1[1] = v0;
  v1[2] = v5;
  v1[3] = v6;

  sub_1E394C830(v5, v6);
  v1[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B70);
  MEMORY[0x1E690E3F0]();
  return sub_1E3E3E5E0;
}

void sub_1E3E3E5E0()
{
  OUTLINED_FUNCTION_25_80();
  v2 = v0[13];
  *(v1 + 32) = v0[12];
  v3 = v0[8];
  v0[10] = v3;
  v4 = v0[9];
  v5 = v0[15];
  v6 = v0[14];
  v0[5] = v2;
  v0[6] = v6;
  v0[7] = v5;
  v0[11] = v4;
  if (v7)
  {
    sub_1E394C830(v3, v4);
    sub_1E4203AA4();

    sub_1E38FE9AC(v6, v5);
    v8 = v0[8];
    v9 = v0[9];
  }

  else
  {
    sub_1E4203AA4();

    v8 = v6;
    v9 = v5;
  }

  sub_1E38FE9AC(v8, v9);

  free(v0);
}

uint64_t sub_1E3E3E6C0()
{
  OUTLINED_FUNCTION_6_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39B70);
  v0 = OUTLINED_FUNCTION_26_91();
  return OUTLINED_FUNCTION_24_89(v0, v1, v2, v3, v4, v5, v6, v7, v9);
}

id sub_1E3E3E718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v20[OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator_suppressEditingChange] = 0;
  v21 = &v20[OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__text];
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  v22 = &v20[OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__searchBarHasFocus];
  *v22 = a5;
  *(v22 + 1) = a6;
  v22[16] = a7;
  v23 = &v20[OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__shouldBeShowingSearchResults];
  *v23 = a8;
  *(v23 + 1) = a9;
  v23[16] = a10;
  v24 = &v20[OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__searchingIsCancelled];
  *v24 = a11;
  *(v24 + 1) = a12;
  v24[16] = a13;
  v25 = &v20[OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator__textInputSource];
  *v25 = a18;
  *(v25 + 2) = a19;
  *(v25 + 3) = a20;
  v26 = &v20[OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator_recordMetricsForSubmit];
  *v26 = a14;
  v26[1] = a15;
  v27 = &v20[OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator_recordMetricsForCancel];
  *v27 = a16;
  v27[1] = a17;
  v29.receiver = v20;
  v29.super_class = type metadata accessor for HostedUISearchBar.Coordinator();
  return objc_msgSendSuper2(&v29, sel_init);
}

uint64_t sub_1E3E3E7F4(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = [a1 searchTextField];
  v9 = [v8 markedTextRange];

  v10 = MEMORY[0x1E69E7D40];
  if (v9)
  {
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
    v13 = *(v12 + 152);

    v14 = OUTLINED_FUNCTION_53();
    v11 = v13(v14);
  }

  v15 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a3) & 0xF;
  }

  if (v15)
  {
    if (((*((*v10 & *v4) + 0xB0))(v11) & 1) == 0)
    {
      OUTLINED_FUNCTION_18_1();
      (*(v16 + 184))(1);
    }
  }

  else
  {
    (*((*v10 & *v4) + 0xD8))(0);
  }

  v17 = [a1 _textInputSource] - 1;
  if (v17 > 7)
  {
    v18 = 3;
  }

  else
  {
    v18 = qword_1E42D5E50[v17];
  }

  OUTLINED_FUNCTION_18_1();
  v20 = (*(v19 + 272))();
  v22 = v21;
  sub_1E394C8A0();
  v23 = sub_1E4205E84();
  sub_1E38FE9AC(v20, v22);
  if (v23)
  {
    return sub_1E38FE9AC(0, v18);
  }

  OUTLINED_FUNCTION_18_1();
  return (*(v25 + 280))(0, v18);
}

uint64_t sub_1E3E3EAF4()
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))(0);
  v2 = *((*v1 & *v0) + 0xB8);

  return v2(1);
}

uint64_t sub_1E3E3EC7C(void *a1)
{
  v3 = sub_1E4203FC4();
  OUTLINED_FUNCTION_1_2();
  v31 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4203FF4();
  OUTLINED_FUNCTION_1_2();
  v29 = v9;
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4204014();
  v28 = v12;
  OUTLINED_FUNCTION_1_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v21 = &v26 - v20;
  *(v1 + OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator_suppressEditingChange) = 1;
  [a1 endEditing_];
  sub_1E32ADE38();
  v22 = sub_1E4206A04();
  sub_1E4204004();
  sub_1E4204074();
  v27 = *(v14 + 8);
  v27(v17, v12);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1E3E3F84C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_122;
  v24 = _Block_copy(aBlock);

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E69112E0](v21, v11, v7, v24);
  _Block_release(v24);

  (*(v31 + 8))(v7, v3);
  (*(v29 + 8))(v11, v30);
  return (v27)(v21, v28);
}

uint64_t sub_1E3E3EFFC(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v6 = v5();
  v8 = v7;

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    OUTLINED_FUNCTION_18_1();
    (*(v11 + 216))(1);
    v12 = *(v2 + OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator_recordMetricsForSubmit);

    v14 = (v5)(v13);
    v12(v14);

    v15 = *((*v4 & *v2) + 0x1A0);

    return v15(a1);
  }

  return result;
}

uint64_t sub_1E3E3F1C0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator_recordMetricsForCancel);

  v3(v4);

  OUTLINED_FUNCTION_1_24();
  if ((*(v5 + 144))())
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 0xE000000000000000;
  }

  if (v7)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  OUTLINED_FUNCTION_1_24();
  (*(v9 + 248))(v8 & 1);
  OUTLINED_FUNCTION_1_24();
  result = (*(v10 + 240))();
  if (result)
  {
    OUTLINED_FUNCTION_1_24();
    v13 = *(v12 + 416);

    return v13(a1);
  }

  return result;
}

id sub_1E3E3F494()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostedUISearchBar.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3E3F5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3E3F97C();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E3E3F604()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3E3F97C();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

id sub_1E3E3F648@<X0>(void *a1@<X8>)
{
  result = sub_1E3E3DC40();
  *a1 = result;
  return result;
}

uint64_t sub_1E3E3F700()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3E3F8C0();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E3E3F754()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3E3F8C0();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3E3F7A8()
{
  sub_1E3E3F8C0();
  sub_1E4201F04();
  __break(1u);
}

void sub_1E3E3F7D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  [a3 setPlaceholder_];
}

void sub_1E3E3F84C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtCV8VideosUI17HostedUISearchBar11Coordinator_suppressEditingChange] = 0;
  }
}

unint64_t sub_1E3E3F898(uint64_t a1)
{
  result = sub_1E3E3F8C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3E3F8C0()
{
  result = qword_1ECF39B88;
  if (!qword_1ECF39B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39B88);
  }

  return result;
}

unint64_t sub_1E3E3F918()
{
  result = qword_1ECF39B90;
  if (!qword_1ECF39B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39B90);
  }

  return result;
}

unint64_t sub_1E3E3F97C()
{
  result = qword_1ECF39C00;
  if (!qword_1ECF39C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39C00);
  }

  return result;
}

void sub_1E3E3F9D4(id a1, __int16 a2)
{
  if (HIBYTE(a2) != 255)
  {
    sub_1E3E3F9EC(a1);
  }
}

id sub_1E3E3FA2C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC8VideosUI23ClipImageFetchOperation_result];
  *v5 = 0;
  *(v5 + 4) = -256;
  *&v1[OBJC_IVAR____TtC8VideosUI23ClipImageFetchOperation_completions] = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR____TtC8VideosUI23ClipImageFetchOperation_url;
  v7 = sub_1E41FE414();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v9(&v2[v6], a1, v7);
  v16[3] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  v9(boxed_opaque_existential_1, a1, v7);
  v11 = [objc_opt_self() sharedInstance];
  v12 = objc_allocWithZone(MEMORY[0x1E69DF730]);
  *&v2[OBJC_IVAR____TtC8VideosUI23ClipImageFetchOperation_imageProxy] = sub_1E38B2064(v16, v11, 0);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v8 + 8))(a1, v7);
  return v13;
}

uint64_t sub_1E3E3FBB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC8VideosUI23ClipImageFetchOperation_completions;
  swift_beginAccess();

  sub_1E3E40224();
  v8 = *(*(v3 + v7) + 16);
  sub_1E3E40270(v8);
  v9 = *(v3 + v7);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = sub_1E3E4021C;
  *(v10 + 40) = v6;
  *(v3 + v7) = v9;
  return swift_endAccess();
}

void sub_1E3E3FCC8()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI23ClipImageFetchOperation_imageProxy);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1E3E402B0;
    *(v3 + 24) = v1;
    aBlock[4] = sub_1E3E402C4;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E38B2C5C;
    aBlock[3] = &block_descriptor_123;
    v4 = _Block_copy(aBlock);
    v5 = v2;

    [v5 setCompletionHandler_];
    _Block_release(v4);
    [v5 load];
  }

  else
  {
    sub_1E3E401C8();
    v6 = swift_allocError();
    *v7 = 1;

    sub_1E3E3FE60(v6, 256);
  }
}

uint64_t sub_1E3E3FE60(void *a1, __int16 a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR____TtC8VideosUI23ClipImageFetchOperation_imageProxy);
    if (v6)
    {
      [v6 setCompletionHandler_];
    }

    v7 = &v5[OBJC_IVAR____TtC8VideosUI23ClipImageFetchOperation_result];
    swift_beginAccess();
    v8 = *v7;
    *v7 = a1;
    v9 = *(v7 + 4);
    *(v7 + 4) = a2 & 0x1FF;
    sub_1E3E3F9D4(v8, v9);
    sub_1E3ACA01C(a1);
    [v5 finishExecutionIfPossible];
    v10 = OBJC_IVAR____TtC8VideosUI23ClipImageFetchOperation_completions;
    swift_beginAccess();
    v11 = *&v5[v10];
    v12 = *(v11 + 16);

    v13 = 0;
    for (i = v11 + 40; ; i += 16)
    {
      if (v12 == v13)
      {

        *&v5[v10] = MEMORY[0x1E69E7CC0];
      }

      if (v13 >= *(v11 + 16))
      {
        break;
      }

      ++v13;
      v15 = *(i - 8);
      v16 = a1;
      v17 = a2 & 0x1FF;

      v15(&v16);
    }

    __break(1u);
  }

  return result;
}

id sub_1E3E40048()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_cancel);
  return [*&v0[OBJC_IVAR____TtC8VideosUI23ClipImageFetchOperation_imageProxy] cancel];
}

unint64_t sub_1E3E401C8()
{
  result = qword_1ECF39C10;
  if (!qword_1ECF39C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39C10);
  }

  return result;
}

void *sub_1E3E40224()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3E405F4(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_1E3E40270(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1E3E405F4((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void sub_1E3E402C4(void *a1, id a2, char a3)
{
  v4 = *(v3 + 16);
  if (a2)
  {
    v6 = a2;
    v4(a2, 256);
    v7 = a2;
    goto LABEL_3;
  }

  if (!a1)
  {
    sub_1E3E401C8();
    v10 = swift_allocError();
    *v11 = 2;
    v4(v10, 256);
    v7 = v10;
LABEL_3:

    goto LABEL_5;
  }

  v12 = a1;
  v4(a1, a3 & 1);
  v7 = v12;

LABEL_5:
}

unint64_t sub_1E3E403C0()
{
  result = qword_1ECF39C18;
  if (!qword_1ECF39C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39C18);
  }

  return result;
}

uint64_t type metadata accessor for ClipImageFetchOperation()
{
  result = qword_1ECF64EC0;
  if (!qword_1ECF64EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E40468()
{
  result = sub_1E41FE414();
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

_BYTE *storeEnumTagSinglePayload for ClipImageFetchOperation.FetchError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_1E3E405F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3E4075C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 304) = a1;
}

uint64_t sub_1E3E407DC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 312) = a1;
}

uint64_t sub_1E3E40824()
{
  if ((*(*v0 + 392))())
  {
    OUTLINED_FUNCTION_30();
    v1 = OUTLINED_FUNCTION_4_203();
    v2(v1);
  }

  OUTLINED_FUNCTION_111();
  (*(v3 + 1008))();
  OUTLINED_FUNCTION_30();
  v4 = OUTLINED_FUNCTION_4_203();
  v5(v4);

  v7 = *(*v0 + 1032);
  (v7)(v6);
  v8 = OUTLINED_FUNCTION_4_203();
  v9(v8);

  if (sub_1E389CC78())
  {
    OUTLINED_FUNCTION_111();
    result = (*(v10 + 488))();
    if (!result)
    {
      type metadata accessor for ViewModel();
      sub_1E37414E0();
      result = sub_1E4205CB4();
    }

    v12 = result;
    v13 = 0;
    v14 = result + 64;
    v15 = 1 << *(result + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(result + 64);
    v18 = (v15 + 63) >> 6;
    if (!v17)
    {
LABEL_9:
      while (1)
      {
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v19 >= v18)
        {
        }

        v17 = *(v14 + 8 * v19);
        ++v13;
        if (v17)
        {
          v13 = v19;
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    }

    while (1)
    {
LABEL_13:
      v20 = *(*(v12 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v17)))));

      if (sub_1E373F6E0())
      {
        v30[3] = &unk_1F5D5DE28;
        v30[4] = &off_1F5D5CA58;
        LOBYTE(v30[0]) = 1;
        v21 = j__OUTLINED_FUNCTION_18();
        v22 = sub_1E39C29F0(v30, v21 & 1);
        __swift_destroy_boxed_opaque_existential_1(v30);
        v23 = *v20;
        if (v22)
        {
          if (v23 != _TtC8VideosUI13TextViewModel)
          {
            goto LABEL_24;
          }

          v24 = v20[49];
          LOWORD(v30[0]) = v24;
          sub_1E3741534();
          if (sub_1E4205E84())
          {
            goto LABEL_24;
          }

          LOWORD(v30[0]) = v24;
          if ((sub_1E4205E84() & 1) != 0 || !(*(*v20 + 392))())
          {
            goto LABEL_24;
          }

          OUTLINED_FUNCTION_30();
          (*(v25 + 944))(1);
          goto LABEL_23;
        }

        if (v23 == _TtC8VideosUI13TextViewModel)
        {

          v26 = sub_1E3C27528();
          if (v26)
          {
            (*(*v26 + 944))(1);
          }

LABEL_23:
        }
      }

LABEL_24:
      if (sub_1E3ABB674(v20[49], &unk_1F5D882B8))
      {
        if ((*(*v20 + 392))())
        {
          OUTLINED_FUNCTION_30();
          (*(v27 + 944))(1);
        }
      }

      v17 &= v17 - 1;

      if (!v17)
      {
        goto LABEL_9;
      }
    }
  }

  if (sub_1E389CC78())
  {
    v7();
    sub_1E3B023EC();
  }

  else
  {
    result = sub_1E389CC78();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  result = [objc_opt_self() isSearchEnabled];
  if (result)
  {
    v7();
    OUTLINED_FUNCTION_111();
    v29 = (*(v28 + 488))();
    sub_1E3B01F94(v29);
  }

  return result;
}

uint64_t sub_1E3E40DEC(char a1, char a2)
{
  if ((a2 & 1) != 0 || (TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    v6 += 49;
    v7 = *v6;
    v8 = (*v6)();
    if (v8)
    {
      type metadata accessor for CardCollectionViewCellLayout();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = (*(*v9 + 1920))();
LABEL_13:

        goto LABEL_16;
      }
    }

    if ((v7)(v8))
    {
      type metadata accessor for StandardLockupCellLayout();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v10 = *(v11 + 112);

        goto LABEL_13;
      }
    }

    v10 = 0;
LABEL_16:
    if (a1 == 3)
    {
LABEL_17:

      return 0;
    }

    sub_1E3AFFC64();
    if (sub_1E4205E84())
    {
      OUTLINED_FUNCTION_111();
      v13 += 126;
      v14 = *v13;
      (*v13)();
      v15 = sub_1E38A86A4();

      sub_1E3E410C0(v15, v10);

      v17 = (v14)(v16);
    }

    else
    {
      if ((sub_1E4205E84() & 1) == 0)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_111();
      v18 += 129;
      v19 = *v18;
      (*v18)();
      v20 = sub_1E38A86A4();

      sub_1E3E410C0(v20, v10);

      v17 = (v19)(v21);
    }

    v12 = v17;

    return v12;
  }

  OUTLINED_FUNCTION_111();
  v4 = *(v3 + 392);

  return v4();
}

uint64_t sub_1E3E410C0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *(*a2 + 432);

    v6 = v4(v5);
    v8 = (*(*v3 + 440))(v6, v7 & 1);
    v9 = (*(*a2 + 1992))(v8);
    v10 = (*(*v3 + 2000))(v9);
    v11 = (*(*a2 + 1968))(v10);
    (*(*v3 + 1976))(v11);
  }

  return result;
}

uint64_t sub_1E3E412CC(__int16 a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LegacySearchListCellLayout();
  *(v3 + 304) = sub_1E3AFFD68(1);
  *(v3 + 312) = sub_1E3AFFD68(2);

  return sub_1E3E5A2A4(a1, a2, a3);
}

uint64_t sub_1E3E41348()
{
}

uint64_t sub_1E3E41378()
{
  v0 = sub_1E3E5A6A0();

  return v0;
}

uint64_t sub_1E3E413B0()
{
  v0 = sub_1E3E41378();

  return MEMORY[0x1EEE6BDC0](v0, 320, 7);
}

uint64_t sub_1E3E413E0()
{
  OUTLINED_FUNCTION_7_186();
  v2 = (*(*v0 + 672))();
  ViewModelKeys.rawValue.getter(8);
  v4 = v3;
  v6 = v5;
  type metadata accessor for RecentlySearchedDataManager();
  sub_1E39D3DC4(v0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  *(&v101 + 1) = v7;
  OUTLINED_FUNCTION_6_174(v7, v8, v9, v10, v11, v12, v13, v14, v81, v85, v89, v93, v97, v98, v99, v100);
  swift_isUniquelyReferenced_nonNull_native();
  v94 = v2;
  sub_1E32A87C0(&v97, v4, v6);

  v15 = v2;
  v16 = v0[49];
  if ((sub_1E373F6E0() & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = OUTLINED_FUNCTION_3_198();
  sub_1E3277E60(v17, v18, v15, v19);
  if (!*(&v101 + 1))
  {
    sub_1E329505C(&v100);
    goto LABEL_16;
  }

  if ((OUTLINED_FUNCTION_0_264() & 1) == 0)
  {
    goto LABEL_16;
  }

  v20 = v97;
  sub_1E3277E60(0x6D6172676F6E6F6DLL, 0xE800000000000000, v97, &v100);
  if (!*(&v101 + 1))
  {
    sub_1E329505C(&v100);
    goto LABEL_15;
  }

  if ((OUTLINED_FUNCTION_0_264() & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v21 = v97;
  v22 = OUTLINED_FUNCTION_3_198();
  sub_1E3277E60(v22, v23, v21, v24);
  if (!*(&v101 + 1))
  {
    sub_1E329505C(&v100);
    goto LABEL_14;
  }

  if ((OUTLINED_FUNCTION_0_264() & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  v25 = v97;
  v26 = sub_1E327D33C(0xD000000000000013, 0x80000001E4261F90);
  if (v27)
  {
    v1 = v26;
    HIDWORD(v90) = swift_isUniquelyReferenced_nonNull_native();
    *&v97 = v25;
    v86 = *(v25 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
    sub_1E4207644();
    v28 = v97;

    sub_1E329504C((*(v28 + 56) + 32 * v1), &v100);
    sub_1E4207664();
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
  }

  v64 = sub_1E329505C(&v100);
  *(&v101 + 1) = v7;
  OUTLINED_FUNCTION_6_174(v64, v65, v66, v67, v68, v69, v70, v71, v82, v86, v90, v94, v97, v98, v99, v100);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_7_186();
  sub_1E32A87C0(v72, v1, 0xE800000000000000);
  *(&v101 + 1) = v7;
  *&v100 = v21;
  sub_1E329504C(&v100, &v97);

  swift_isUniquelyReferenced_nonNull_native();
  sub_1E32A87C0(&v97, 0x6D6172676F6E6F6DLL, 0xE800000000000000);
  *(&v101 + 1) = v7;
  *&v100 = v20;
  sub_1E329504C(&v100, &v97);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_5_185(isUniquelyReferenced_nonNull_native, v74, v75, v76, v77, v78, v79, v80, v84, v88, v92, v20, v97);

  v15 = v94;
LABEL_16:
  if ([objc_opt_self() isSearchEnabled])
  {
    v29 = OUTLINED_FUNCTION_3_198();
    sub_1E3277E60(v29, v30, v15, v31);
    if (*(&v101 + 1))
    {
      if (OUTLINED_FUNCTION_0_264())
      {
        v32 = v97;
        sub_1E384EE08(16);
        sub_1E3277E60(v33, v34, v32, &v100);

        v35 = *(&v101 + 1);
        sub_1E329505C(&v100);
        if (v35)
        {
          sub_1E384EE08(16);
          v38 = sub_1E327D33C(v36, v37);
          if (v39)
          {
            v40 = v38;
            swift_isUniquelyReferenced_nonNull_native();
            *&v97 = v32;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
            sub_1E4207644();
            v41 = v97;

            sub_1E329504C((*(v41 + 56) + 32 * v40), &v100);
            sub_1E4207664();
          }

          else
          {
            v100 = 0u;
            v101 = 0u;
          }

          v42 = sub_1E329505C(&v100);
          *(&v101 + 1) = v7;
          OUTLINED_FUNCTION_6_174(v42, v43, v44, v45, v46, v47, v48, v49, v82, v86, v90, v94, v97, v98, v99, v100);
          v50 = swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_5_185(v50, v51, v52, v53, v54, v55, v56, v57, v83, v87, v91, v95, v97);
          v15 = v96;
        }

        else
        {
        }
      }
    }

    else
    {
      sub_1E329505C(&v100);
    }
  }

  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_111();
  v59 = *(v58 + 624);

  v61 = v59(v60);
  v62 = sub_1E39BED80(v16, v15, v61);

  return v62;
}

void sub_1E3E4191C(uint64_t a1@<X0>, _WORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a3;
  v108 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v93 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v93 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v105 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v93 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v93 - v20;
  if (!a2)
  {
    goto LABEL_22;
  }

  v102 = v14;
  v103 = v19;
  v99 = v17;
  v22 = a2[49];
  LOWORD(v111) = v22;
  LOWORD(v109) = 84;
  sub_1E3741534();

  if (OUTLINED_FUNCTION_25_81())
  {
    v96 = v11;
    v97 = v8;
    v23 = &v21[*(v103 + 36)];

    type metadata accessor for AppEnvironment();
    sub_1E39DC8E8();
    *v23 = sub_1E4201754();
    v23[1] = v24;
    v25 = type metadata accessor for RoomBannerBackground();
    v26 = v25[5];
    *(v23 + v26) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
    swift_storeEnumTagMultiPayload();
    *(v23 + v25[7]) = a2;
    v27 = *(*a2 + 392);
    v28 = swift_retain_n();
    v29 = v27(v28);

    if (v29)
    {
      type metadata accessor for RoomBannerLayout();
      v30 = swift_dynamicCastClass();
      if (!v30)
      {
      }
    }

    else
    {
      v30 = 0;
    }

    *(v23 + v25[10]) = v30;
    OUTLINED_FUNCTION_111();
    v46 = *(v45 + 488);

    v48 = v46(v47);

    if (v48)
    {
      v49 = sub_1E373E010(9, v48);

      if (!v49 || *v49 == _TtC8VideosUI13TextViewModel)
      {
LABEL_29:
        *(v23 + v25[9]) = v49;
        OUTLINED_FUNCTION_111();
        v51 = (*(v50 + 488))();

        if (v51)
        {
          v52 = sub_1E373E010(39, v51);

          if (v52)
          {
            type metadata accessor for ImageViewModel();
            v53 = swift_dynamicCastClass();
            if (v53)
            {
LABEL_34:
              *(v23 + v25[8]) = v53;
              v98 = a4;
              if (v30)
              {
                v54 = *(*v30 + 328);

                v56 = v54(v55);
                v58 = v57;

                if (v58)
                {
                  *(v23 + v25[11]) = 0;
                }

                else
                {
                  *(v23 + v25[11]) = v56;
                }

                v60 = *(*v30 + 1784);

                v62 = v60(v61);

                *(v23 + v25[12]) = v62;
                v63 = *(*v30 + 1832);

                v65 = v63(v64);

                *(v23 + v25[14]) = v65;
                v59 = (*(*v30 + 1808))(v66);
              }

              else
              {
                *(v23 + v25[11]) = 0;
                *(v23 + v25[12]) = 0;
                *(v23 + v25[14]) = 0;
                v59 = 0.0;
              }

              *(v23 + v25[13]) = v59;
              *(v23 + v25[6]) = v107;
              v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C50);
              OUTLINED_FUNCTION_2();
              (*(v68 + 16))(v21, v108, v67);
              sub_1E3743538(v21, v105, &qword_1ECF39C48);
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_7_187();
              sub_1E3E4261C(v69, &qword_1ECF39C48, &unk_1E42D6020, v70);
              OUTLINED_FUNCTION_6_175();
              sub_1E3E4261C(v71, v72, v73, v74);
              v75 = v99;
              sub_1E4201F44();
              sub_1E3743538(v75, v96, &qword_1ECF39C40);
              swift_storeEnumTagMultiPayload();
              sub_1E3E42494();
              OUTLINED_FUNCTION_1_11();
              sub_1E374AD40(v76, &qword_1ECF39C50);
              sub_1E4201F44();
              sub_1E325F69C(v75, &qword_1ECF39C40);
              v77 = v21;
              v78 = &qword_1ECF39C48;
              goto LABEL_48;
            }
          }
        }

        v53 = 0;
        goto LABEL_34;
      }
    }

    v49 = 0;
    goto LABEL_29;
  }

  LOWORD(v111) = v22;
  LOWORD(v109) = 82;
  if ((OUTLINED_FUNCTION_25_81() & 1) == 0)
  {

LABEL_22:
    v41 = OUTLINED_FUNCTION_32_0();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v41);
    OUTLINED_FUNCTION_2();
    (*(v43 + 16))(v11, v108, v42);
    swift_storeEnumTagMultiPayload();
    sub_1E3E42494();
    OUTLINED_FUNCTION_1_11();
    sub_1E374AD40(v44, &qword_1ECF39C50);
    sub_1E4201F44();
LABEL_49:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v97 = v8;
  type metadata accessor for AppEnvironment();
  sub_1E39DC8E8();

  v31 = sub_1E4201754();
  v95 = v32;
  v33 = *(*a2 + 464);

  v35 = v33(v34);

  v98 = a4;
  if (!v35)
  {
LABEL_47:
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C50);
    OUTLINED_FUNCTION_2();
    v81 = v101;
    (*(v80 + 16))(v101, v108, v79);
    v82 = v105;
    v83 = (v81 + *(v106 + 36));
    v84 = v95;
    *v83 = v31;
    v83[1] = v84;
    v83[2] = v107;
    v83[3] = a2;
    v83[4] = v35;
    sub_1E3743538(v81, v82, &qword_1ECF39C28);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_187();
    sub_1E3E4261C(v85, v86, v87, v88);
    OUTLINED_FUNCTION_6_175();
    sub_1E3E4261C(v89, &qword_1ECF39C28, &unk_1E42D6000, v90);
    v91 = v99;
    sub_1E4201F44();
    sub_1E3743538(v91, v11, &qword_1ECF39C40);
    swift_storeEnumTagMultiPayload();
    sub_1E3E42494();
    OUTLINED_FUNCTION_1_11();
    sub_1E374AD40(v92, &qword_1ECF39C50);
    sub_1E4201F44();
    sub_1E325F69C(v91, &qword_1ECF39C40);
    v77 = v81;
    v78 = &qword_1ECF39C28;
LABEL_48:
    sub_1E325F69C(v77, v78);
    goto LABEL_49;
  }

  v94 = v31;
  v96 = v11;
  v36 = sub_1E32AE9B0(v35);
  v37 = 0;
  v100 = v35 & 0xC000000000000001;
  while (1)
  {
    if (v36 == v37)
    {

      v35 = 0;
      goto LABEL_46;
    }

    if (v100)
    {
      v38 = MEMORY[0x1E6911E60](v37, v35);
    }

    else
    {
      if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v38 = *(v35 + 8 * v37 + 32);
    }

    if (__OFADD__(v37, 1))
    {
      break;
    }

    v114 = *(v38 + 98);
    v113 = 39;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v111 == v109 && v112 == v110)
    {

LABEL_44:

      type metadata accessor for ImageViewModel();
      v35 = swift_dynamicCastClass();
      if (!v35)
      {
      }

LABEL_46:
      v11 = v96;
      v31 = v94;
      goto LABEL_47;
    }

    v40 = sub_1E42079A4();

    if (v40)
    {
      goto LABEL_44;
    }

    ++v37;
  }

  __break(1u);
LABEL_51:
  __break(1u);
}

unint64_t sub_1E3E42494()
{
  result = qword_1EE288F48;
  if (!qword_1EE288F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39C40);
    sub_1E3E4261C(&qword_1EE289AE0, &unk_1ECF39C48, &unk_1E42D6020, sub_1E3E42578);
    sub_1E3E4261C(&qword_1EE289AD8, &unk_1ECF39C28, &unk_1E42D6000, sub_1E3E426B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F48);
  }

  return result;
}

unint64_t sub_1E3E42578()
{
  result = qword_1EE29CEB0[0];
  if (!qword_1EE29CEB0[0])
  {
    type metadata accessor for RoomBannerBackground();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29CEB0);
  }

  return result;
}

uint64_t type metadata accessor for RoomBannerBackground()
{
  result = qword_1EE29CEA0;
  if (!qword_1EE29CEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E4261C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    OUTLINED_FUNCTION_1_11();
    sub_1E374AD40(v8, v9);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3E426B8()
{
  result = qword_1EE299258[0];
  if (!qword_1EE299258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE299258);
  }

  return result;
}

void sub_1E3E42714()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E378);
  *(swift_allocObject() + 16) = xmmword_1E4297BD0;
  sub_1E42036E4();
  v0 = sub_1E4203C14();
  OUTLINED_FUNCTION_18_105(v0, v1);
  sub_1E42036C4();
  sub_1E4203734();
  OUTLINED_FUNCTION_27_76();
  v2 = sub_1E4203C14();
  OUTLINED_FUNCTION_17_117(v2, v3);
  sub_1E42036C4();
  sub_1E4203734();
  OUTLINED_FUNCTION_27_76();
  v4 = sub_1E4203C14();
  OUTLINED_FUNCTION_16_120(v4, v5);
  sub_1E4203F34();
  sub_1E4203F54();
  OUTLINED_FUNCTION_14_137();
  OUTLINED_FUNCTION_4_94();
  v6 = sub_1E4201064();
  OUTLINED_FUNCTION_12_133(v6, v7, v8, v9, v10, v11, v12, v13, v15, v14, v16, v17);
}

void sub_1E3E42810()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E378);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E4298AD0;
  sub_1E42036E4();
  v1 = sub_1E4203C14();
  OUTLINED_FUNCTION_18_105(v1, v2);
  sub_1E42036E4();
  v3 = sub_1E4203C14();
  OUTLINED_FUNCTION_17_117(v3, v4);
  sub_1E42036C4();
  sub_1E4203734();
  OUTLINED_FUNCTION_27_76();
  v5 = sub_1E4203C14();
  OUTLINED_FUNCTION_16_120(v5, v6);
  sub_1E42036C4();
  sub_1E4203734();
  OUTLINED_FUNCTION_27_76();
  *(v0 + 80) = sub_1E4203C14();
  *(v0 + 88) = v7;
  sub_1E4203F34();
  sub_1E4203F54();
  OUTLINED_FUNCTION_14_137();
  OUTLINED_FUNCTION_4_94();
  v8 = sub_1E4201064();
  OUTLINED_FUNCTION_12_133(v8, v9, v10, v11, v12, v13, v14, v15, v17, v16, v18, v19);
}

unint64_t sub_1E3E42960()
{
  result = qword_1EE288BD8;
  if (!qword_1EE288BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39C58);
    sub_1E3E42494();
    sub_1E374AD40(&qword_1EE288980, &qword_1ECF39C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BD8);
  }

  return result;
}

void sub_1E3E42A40()
{
  sub_1E381EC50();
  if (v0 <= 0x3F)
  {
    sub_1E3E42C40(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ShowcaseValue();
      if (v2 <= 0x3F)
      {
        sub_1E3E42C40(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E3E42C40(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1E3E42C40(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1E3E42C40(319, qword_1EE27DA40, type metadata accessor for RoomBannerLayout, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E3E42C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3E42CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v6 = *(*a2 + 184);

    v6(v7);
    (*(*a2 + 184))();

    sub_1E3E42714();
    sub_1E3E42810();
    v8 = sub_1E4203DA4();
    v10 = v9;
    v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39DC0) + 36));
    *v11 = v8;
    v11[1] = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39DC8);
    sub_1E3E42F0C(a1, v22, v21, v11 + *(v12 + 44));
    sub_1E3E44DE8(v22);
    sub_1E3E44DE8(v21);
    sub_1E4203DA4();
    sub_1E4200D94();
    v13 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39DD0) + 36));
    v14 = v24;
    *v13 = v23;
    v13[1] = v14;
    v13[2] = v25;
    v15 = sub_1E4203DA4();
    v17 = v16;
    v18 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39DD8) + 36));
    *v18 = v15;
    v18[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39DE0);
    OUTLINED_FUNCTION_2();
    return (*(v19 + 16))(a3, a1);
  }

  else
  {
    type metadata accessor for AppEnvironment();
    sub_1E39DC8E8();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3E42F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v9 = OUTLINED_FUNCTION_32_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39DE0);
  OUTLINED_FUNCTION_2();
  v19 = *(v18 + 16);
  v20 = *(a2 + 8);
  v29 = *(a2 + 24);
  v30 = v20;
  v19(v17, a1);
  v21 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39DF0) + 36)];
  *v21 = 0x4049000000000000;
  v21[8] = 1;
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39DF8) + 36)] = 0x3FC999999999999ALL;
  v22 = &v17[*(v11 + 44)];
  *v22 = v8;
  v23 = v30;
  *(v22 + 24) = v29;
  *(v22 + 8) = v23;
  sub_1E3743538(v17, v14, &qword_1ECF39DE8);
  v24 = *a3;
  v25 = *(a3 + 8);
  v29 = *(a3 + 24);
  v30 = v25;
  sub_1E3743538(v14, a4, &qword_1ECF39DE8);
  v26 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39E00) + 48);
  *v26 = v24;
  v27 = v30;
  *(v26 + 24) = v29;
  *(v26 + 8) = v27;
  sub_1E3E44E3C(a2, v31);
  sub_1E3E44E3C(a3, v31);

  sub_1E325F69C(v17, &qword_1ECF39DE8);

  return sub_1E325F69C(v14, &qword_1ECF39DE8);
}

uint64_t sub_1E3E43140()
{
  if (*v0)
  {
    OUTLINED_FUNCTION_111();
    v2 = *(v1 + 184);

    v2(v3);
  }

  else
  {
    type metadata accessor for AppEnvironment();
    sub_1E39DC8E8();
    result = OUTLINED_FUNCTION_6_46();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3E431D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a1;
  v68 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39D10);
  OUTLINED_FUNCTION_0_10();
  v66 = v5;
  v67 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39D18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v62 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39D20) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  v63 = sub_1E4203D84();
  v62 = v16;
  if (*v3)
  {
    v17 = &v15[*(v12 + 44)];
    OUTLINED_FUNCTION_30_1();
    v19 = *(v18 + 184);

    v19(v20);
    OUTLINED_FUNCTION_30_1();
    (*(v21 + 184))(v22, v23, v24);

    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_3_199();
    LOBYTE(v65) = 1;
    v64 = 0;
    LOBYTE(v63) = 1;
    v62 = 0;
    OUTLINED_FUNCTION_5_186();
    sub_1E3EB9C0C(v25, v26, v27, v28, v29, v30, v31, 2, v32, v62, v63, v64, v65, v66, v67, SBYTE1(v67), SBYTE2(v67));
    *v11 = sub_1E4203D84();
    v11[1] = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39D60);
    sub_1E3E437A8(v3, v69, v11 + *(v34 + 44));
    sub_1E3E43140();
    sub_1E4203DA4();
    sub_1E4200D94();
    sub_1E375C31C(v69);
    v35 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39D18) + 36));
    v36 = v75;
    *v35 = v74;
    v35[1] = v36;
    v35[2] = v76;
    v37 = v3[2];
    v38 = sub_1E3E449A8();
    sub_1E38D54B8(5, v37, v8, v38);
    sub_1E325F69C(v11, &qword_1ECF39D18);
    v39 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39D40) + 36)];
    v40 = v62;
    *v39 = v63;
    v39[1] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39D48);
    OUTLINED_FUNCTION_2();
    (*(v41 + 16))(v15, v64);
    v42 = v3[4];
    if (v42)
    {
      v43 = *(*v42 + 392);

      v45 = v43(v44);
      if (v45)
      {
        if ((*(*v45 + 744))(v45))
        {
          v46 = sub_1E4203644();

LABEL_9:
          OUTLINED_FUNCTION_30_1();
          v48 = *(v47 + 184);

          v48(v49);
          OUTLINED_FUNCTION_30_1();
          (*(v50 + 184))();

          sub_1E4203DA4();
          sub_1E4200D94();
          v69[0] = v46;
          v69[1] = v74;
          v70 = BYTE8(v74);
          v71 = v75;
          v72 = BYTE8(v75);
          v73 = v76;
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1B8);
          v52 = sub_1E3868110();
          v53 = v65;
          sub_1E38D54B8(5, v37, v51, v52);

          v54 = sub_1E4203DA4();
          v56 = v55;
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39D50);
          v58 = v68;
          v59 = v68 + *(v57 + 36);
          (*(v66 + 32))(v59, v53, v67);
          v60 = (v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39D58) + 36));
          *v60 = v54;
          v60[1] = v56;
          return sub_1E3741EA0(v15, v58, &qword_1ECF39D20);
        }
      }
    }

    v46 = sub_1E42036E4();
    goto LABEL_9;
  }

  type metadata accessor for AppEnvironment();
  sub_1E39DC8E8();
  result = OUTLINED_FUNCTION_6_46();
  __break(1u);
  return result;
}

void sub_1E3E437A8(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39D68);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28[-1] - v10;
  v12 = *(a1 + 32);
  v31 = v12;
  if (v12)
  {
    OUTLINED_FUNCTION_24_90();
    OUTLINED_FUNCTION_24_90();
    sub_1E375C2C0(a2, v29);
    v13 = OUTLINED_FUNCTION_18();
    sub_1E39B6564(v12, a2, 0, v13 & 1, v30);
    type metadata accessor for AppEnvironment();
    sub_1E39DC8E8();
    v14 = sub_1E4201754();
    v16 = v15;
    memcpy(v28, v30, 0x98uLL);
    v28[19] = v14;
    v28[20] = v16;
    v17 = *(a1 + 16);
    sub_1E3E43140();
    v19 = v18;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39D70);
    v21 = sub_1E3E44A60();
    sub_1E3A23EA4(v17, 0, v20, v21, v19);
    sub_1E325F69C(&v31, &qword_1ECF31990);
    memcpy(v29, v28, sizeof(v29));
    sub_1E325F69C(v29, &qword_1ECF39D70);
    (*(v8 + 32))(a3, v11, v6);
    __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    OUTLINED_FUNCTION_54_0();

    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }
}

uint64_t sub_1E3E439F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v50 - v8);
  v10 = sub_1E4203D84();
  v51 = v11;
  v52 = v10;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C68) + 36);
  v13 = type metadata accessor for RoomBannerBackground();
  v14 = *v2;
  if (v14)
  {
    v15 = v13;
    v16 = *(*v14 + 184);

    v16(v17);

    *v9 = sub_1E4203D84();
    v9[1] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39CA8);
    OUTLINED_FUNCTION_4_94();
    sub_1E3E43E5C(v19, v20, v21, v22);
    v23 = *(v3 + *(v15 + 28));
    if (v23)
    {
      v24 = (*(*v23 + 488))();
      if (v24)
      {
        v25 = sub_1E373E010(39, v24);

        if (v25)
        {
          type metadata accessor for ImageViewModel();
          v26 = swift_dynamicCastClass();
          if (v26)
          {
            v50 = a1;
            v27 = *(*v26 + 392);

            v29 = v27(v28);

            if (v29)
            {
              OUTLINED_FUNCTION_111();
              v31 = (*(v30 + 744))();
              a1 = v50;
              if (v31)
              {
                v32 = sub_1E4203644();

LABEL_13:
                v33 = sub_1E4202734();
                v34 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C80) + 36);
                *v34 = v32;
                v34[8] = v33;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E378);
                *(swift_allocObject() + 16) = xmmword_1E4297BD0;
                sub_1E4203704();
                v35 = sub_1E4203C14();
                OUTLINED_FUNCTION_18_105(v35, v36);
                sub_1E4203704();
                v37 = sub_1E4203C14();
                OUTLINED_FUNCTION_17_117(v37, v38);
                sub_1E4203704();
                sub_1E4203734();

                v39 = sub_1E4203C14();
                OUTLINED_FUNCTION_16_120(v39, v40);
                sub_1E4203F34();
                sub_1E4203F54();
                OUTLINED_FUNCTION_14_137();
                OUTLINED_FUNCTION_4_94();
                sub_1E4201064();
                v41 = v53;
                v42 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C60) + 36);
                *v42 = v41;
                v43 = v54;
                *(v42 + 24) = v55;
                *(v42 + 8) = v43;
                v44 = *(v3 + *(v15 + 24));
                v45 = sub_1E3E44584();
                sub_1E38D54B8(6, v44, v6, v45);
                sub_1E325F69C(v9, &qword_1ECF39C60);
                v46 = (a2 + v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39C98) + 36));
                v47 = v51;
                *v46 = v52;
                v46[1] = v47;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39CA0);
                OUTLINED_FUNCTION_2();
                return (*(v48 + 16))(a2, a1);
              }
            }

            else
            {
              a1 = v50;
            }
          }
        }
      }
    }

    v32 = sub_1E42036E4();
    goto LABEL_13;
  }

  type metadata accessor for AppEnvironment();
  sub_1E39DC8E8();
  result = OUTLINED_FUNCTION_6_46();
  __break(1u);
  return result;
}

void sub_1E3E43E5C(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>, double a4@<D2>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39CB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v86 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39CB8);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v98 = &v86 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39CC0);
  OUTLINED_FUNCTION_0_10();
  v94 = v22;
  v95 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v93 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v97 = &v86 - v26;
  v27 = type metadata accessor for RoomBannerBackground();
  if (*(a1 + *(v27 + 32)))
  {
    v28 = v27;
    v29 = *(a1 + *(v27 + 32));
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E378);
    v30 = swift_allocObject();
    v92 = v12;
    v31 = v30;
    *(v30 + 16) = xmmword_1E4298AD0;

    sub_1E4203704();
    v31[4] = sub_1E4203C14();
    v31[5] = v32;
    sub_1E4203704();
    v31[6] = sub_1E4203C14();
    v31[7] = v33;
    sub_1E4203704();
    v91 = v11;
    sub_1E4203734();
    v96 = v14;
    v88 = v18;

    v31[8] = sub_1E4203C14();
    v31[9] = v34;
    sub_1E4203704();
    sub_1E4203734();

    v31[10] = sub_1E4203C14();
    v31[11] = v35;

    j__OUTLINED_FUNCTION_18();
    v90 = a2;
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_3_199();
    v89 = v8;
    OUTLINED_FUNCTION_13_142();
    OUTLINED_FUNCTION_5_186();
    sub_1E3EB9C0C(v36, v37, v38, v39, v40, v41, v42, 1, v43, v86, v87, v88, v89, v90, v91, SBYTE1(v91), SBYTE2(v91));
    v44 = OUTLINED_FUNCTION_18();
    sub_1E39B6564(v29, &v103, 0, v44 & 1, v104);
    v45 = *(a1 + v28[13]);
    v46 = *(a1 + v28[14]);
    sub_1E4203F34();
    sub_1E4203F54();
    sub_1E4203C24();
    sub_1E4201064();
    memcpy(v100, v104, 0x98uLL);
    v100[19] = v45;
    v100[20] = v46;
    LOBYTE(v100[21]) = 0;
    v100[22] = v105;
    *&v100[23] = v106;
    *&v100[25] = v107;
    v47 = *(a1 + v28[6]);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39CC8);
    v49 = sub_1E3E44720();
    v50 = v97;
    sub_1E3A23EA4(v47, 0, v48, v49, a3);
    memcpy(v101, v100, sizeof(v101));
    sub_1E325F69C(v101, &qword_1ECF39CC8);
    v86 = v29;

    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_3_199();
    OUTLINED_FUNCTION_13_142();
    OUTLINED_FUNCTION_5_186();
    sub_1E3EB9C0C(v51, v52, v53, v54, v55, v56, v57, 2, v58, v92, v93, v94, v95, v96, v97, SBYTE1(v97), SBYTE2(v97));
    v59 = OUTLINED_FUNCTION_18();
    sub_1E39B6564(v29, v108, 0, v59 & 1, v102);
    *(swift_allocObject() + 16) = xmmword_1E4297BD0;
    sub_1E4203704();
    v60 = sub_1E4203C14();
    OUTLINED_FUNCTION_18_105(v60, v61);
    sub_1E4203704();
    v62 = sub_1E4203C14();
    OUTLINED_FUNCTION_17_117(v62, v63);
    sub_1E4203704();
    sub_1E4203734();

    v64 = sub_1E4203C14();
    OUTLINED_FUNCTION_16_120(v64, v65);
    sub_1E4203F34();
    sub_1E4203F54();
    sub_1E4203C24();
    sub_1E4201064();
    memcpy(v99, v102, 0x98uLL);
    *(&v99[9] + 1) = v108[12];
    v99[10] = v109;
    v99[11] = v110;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39CF8);
    v67 = sub_1E3E448F0();
    v68 = v98;
    sub_1E3A23EA4(v47, 0, v66, v67, a4);
    memcpy(v100, v99, 0xC0uLL);
    sub_1E325F69C(v100, &qword_1ECF39CF8);
    v69 = v93;
    v70 = v94;
    v71 = *(v94 + 16);
    v72 = v95;
    v71(v93, v50, v95);
    v87 = *(v96 + 16);
    v73 = v88;
    v74 = v68;
    v75 = v92;
    v87(v88, v74, v92);
    v76 = v91;
    v71(v91, v69, v72);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39D08);
    v87(v76 + *(v77 + 48), v73, v75);

    v78 = *(v96 + 8);
    v78(v98, v75);
    v79 = *(v70 + 8);
    v79(v97, v72);
    v78(v73, v75);
    v79(v69, v72);
    v80 = v90;
    sub_1E3741EA0(v76, v90, &qword_1ECF39CB0);
    __swift_storeEnumTagSinglePayload(v80, 0, 1, v89);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    OUTLINED_FUNCTION_42();

    __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  }
}

unint64_t sub_1E3E44584()
{
  result = qword_1ECF39C70;
  if (!qword_1ECF39C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39C60);
    sub_1E3E4463C();
    sub_1E374AD40(&qword_1ECF31308, &qword_1ECF31310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39C70);
  }

  return result;
}