uint64_t sub_1B378DD80()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_1();
  *v2 = v1;
  v4 = *(v3 + 112);
  v5 = *v0;
  OUTLINED_FUNCTION_2_1();
  *v6 = v5;
  *(v8 + 128) = v7;

  v9 = OUTLINED_FUNCTION_36_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B378DE88()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = [v1 firstObject];

  v4 = *&v2[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset];
  *&v2[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset] = v3;

  sub_1B3C9CD48();
  OUTLINED_FUNCTION_1();

  return v5();
}

void sub_1B378DF28()
{
  if (sub_1B378C2C0())
  {
    goto LABEL_5;
  }

  v1 = sub_1B378CBE0();
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v1;
  v4 = v2;
  sub_1B378CD5C(&v56);
  v5 = v56;
  if (v56 == 6)
  {

LABEL_5:
    OUTLINED_FUNCTION_38_3();
    return;
  }

  sub_1B381284C(v3, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v7 = sub_1B3C9CAA8();
    if (qword_1EB8500A0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v8 = qword_1EB855DC0;
    if (os_log_type_enabled(qword_1EB855DC0, v7))
    {
      v9 = 0x6D75626C61;
      v10 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v10 = 136315394;
      v11 = 0xE500000000000000;
      switch(v5)
      {
        case 1:
          OUTLINED_FUNCTION_65_0();
          break;
        case 2:
          v11 = 0xE400000000000000;
          v9 = 1937007984;
          break;
        case 3:
          OUTLINED_FUNCTION_64_0();
          break;
        case 4:
          OUTLINED_FUNCTION_63_0();
          break;
        case 5:
          break;
        default:
          OUTLINED_FUNCTION_39_2();
          break;
      }

      v39 = sub_1B3749364(v9, v11, &v56);

      *(v10 + 4) = v39;
      *(v10 + 12) = 2080;
      v40 = sub_1B3749364(v3, v4, &v56);

      *(v10 + 14) = v40;
      _os_log_impl(&dword_1B36F3000, v8, v7, "Removed key asset for poster kind: %s posterIdentifier: %s", v10, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
    }

    else
    {
    }

    v41 = [objc_opt_self() standardUserDefaults];
    v42 = sub_1B3C9C5A8();

    v43 = OUTLINED_FUNCTION_2_16();
    [v43 v44];

    OUTLINED_FUNCTION_38_3();

    [v45 v46];
    return;
  }

  v12 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 viewModel];
    v15 = [v14 mainAsset];

    if (v15)
    {
      swift_unknownObjectRetain();
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset);
    if (v16)
    {
      v15 = v16;
LABEL_18:
      sub_1B3710718(0, &qword_1EB84F770);
      swift_getObjCClassFromMetadata();
      v17 = [v15 uuid];
      v18 = OUTLINED_FUNCTION_2_16();
      v20 = [v18 v19];

      if (!v20)
      {
        __break(1u);
        return;
      }

      v21 = sub_1B3C9C5E8();
      v23 = v22;
      v55 = objc_opt_self();
      v24 = [v55 standardUserDefaults];
      v25 = sub_1B3C9C5A8();
      v26 = [v24 stringForKey_];

      if (v26)
      {
        v27 = sub_1B3C9C5E8();
        v29 = v28;

        if (v21 == v27 && v23 == v29)
        {

          swift_unknownObjectRelease();

          goto LABEL_35;
        }

        v31 = sub_1B3C9D6A8();

        if (v31)
        {

          swift_unknownObjectRelease();

LABEL_35:

          OUTLINED_FUNCTION_38_3();

          swift_unknownObjectRelease();
          return;
        }
      }

      v33 = sub_1B3C9CAA8();
      if (qword_1EB8500A0 != -1)
      {
        OUTLINED_FUNCTION_0_16();
        swift_once();
      }

      v34 = qword_1EB855DC0;
      if (os_log_type_enabled(qword_1EB855DC0, v33))
      {
        log = v34;
        v54 = v33;
        v35 = 0x6D75626C61;
        v36 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v36 = 136315650;
        v37 = 0xE500000000000000;
        switch(v5)
        {
          case 1:
            OUTLINED_FUNCTION_65_0();
            break;
          case 2:
            v37 = 0xE400000000000000;
            v35 = 1937007984;
            break;
          case 3:
            OUTLINED_FUNCTION_64_0();
            break;
          case 4:
            OUTLINED_FUNCTION_63_0();
            break;
          case 5:
            break;
          default:
            OUTLINED_FUNCTION_39_2();
            break;
        }

        v48 = sub_1B3749364(v35, v37, &v56);

        *(v36 + 4) = v48;
        *(v36 + 12) = 2080;
        v49 = sub_1B3749364(v3, v4, &v56);

        *(v36 + 14) = v49;
        *(v36 + 22) = 2080;
        v50 = sub_1B3749364(v21, v23, &v56);

        *(v36 + 24) = v50;
        _os_log_impl(&dword_1B36F3000, log, v54, "Updated key asset for poster kind: %s posterIdentifier: %s to %s", v36, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_5();
        OUTLINED_FUNCTION_3_5();
      }

      else
      {
      }

      v51 = [v55 standardUserDefaults];
      v52 = sub_1B3C9C5A8();

      [v51 setObject:v20 forKey:v52];

      [*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_renderer) px_noteContentSignificantlyChanged];
      swift_unknownObjectRelease_n();
      goto LABEL_5;
    }
  }

  OUTLINED_FUNCTION_38_3();
}

id sub_1B378E65C()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController____lazy_storage___contentView;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController____lazy_storage___contentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController____lazy_storage___contentView);
  }

  else
  {
    v4 = sub_1B378E6C0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B378E6C0(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_renderer) backgroundView];
  [v1 bounds];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v7 = [objc_opt_self() blackColor];
  [v6 setBackgroundColor_];

  [v1 addSubview_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B3D001A0;
  v10 = [v6 topAnchor];
  v11 = [v1 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v9 + 32) = v12;
  v13 = [v6 leadingAnchor];
  v14 = [v1 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v9 + 40) = v15;
  v16 = [v6 trailingAnchor];
  v17 = [v1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v9 + 48) = v18;
  v19 = [v6 bottomAnchor];
  v20 = [v1 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v9 + 56) = v21;
  sub_1B3710718(0, &qword_1EB84FE50);
  v22 = sub_1B3C9C778();

  [v8 activateConstraints_];

  return v6;
}

void sub_1B378E9E0()
{
  PFSharedFigDecodeSessionDiscardCachedBuffers();
  sub_1B378DF28();
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset);
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset) = 0;

  sub_1B378FDF8();
  swift_unknownObjectWeakAssign();
  v2 = sub_1B378E65C();
  v3 = [v2 subviews];

  sub_1B3710718(0, &unk_1EB84F790);
  v4 = sub_1B3C9C788();

  v5 = sub_1B3711890(v4);
  for (i = 0; v5 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B8C6A930](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v7 removeFromSuperview];
  }

  v9 = objc_opt_self();

  [v9 releaseCachedResources];
}

void sub_1B378EB40()
{
  v1 = v0;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v2 = sub_1B378C2C0();
    sub_1B378CD5C(&v24);
    v3 = objc_allocWithZone(type metadata accessor for AmbientPhotoFrameContentUnavailableView());
    v4 = sub_1B380190C(v2, &v24);
    sub_1B38024B8(*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_isActive));
    swift_unknownObjectWeakAssign();
    v5 = sub_1B378E65C();
    v6 = v4;
    [v5 addSubview_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v23 = [*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController____lazy_storage___contentView) safeAreaLayoutGuide];
    v7 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v8 = OUTLINED_FUNCTION_51_0();
    *(v8 + 16) = xmmword_1B3D001A0;
    v9 = [v6 topAnchor];

    v10 = [v23 topAnchor];
    v11 = OUTLINED_FUNCTION_15_10();
    v13 = [v11 v12];

    *(v8 + 32) = v13;
    v14 = [v6 bottomAnchor];

    v15 = OUTLINED_FUNCTION_8_12([v23 bottomAnchor]);
    *(v8 + 40) = v15;
    v16 = [v6 leadingAnchor];

    v17 = OUTLINED_FUNCTION_8_12([v23 leadingAnchor]);
    *(v8 + 48) = v17;
    v18 = [v6 trailingAnchor];

    v19 = OUTLINED_FUNCTION_8_12([v23 trailingAnchor]);
    *(v8 + 56) = v19;
    sub_1B3710718(0, &qword_1EB84FE50);
    v20 = sub_1B3C9C778();

    [v7 activateConstraints_];
  }

  OUTLINED_FUNCTION_55_0();
}

void sub_1B378EE40()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset);
  if (v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v2;
    v4 = [v3 init];
    v5 = [v4 layer];
    [v5 setAllowsDisplayCompositing_];

    swift_unknownObjectWeakAssign();
    v6 = sub_1B378E65C();
    [v6 addSubview_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v8 = OUTLINED_FUNCTION_51_0();
    *(v8 + 16) = xmmword_1B3D001A0;
    v9 = [v4 topAnchor];
    v10 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController____lazy_storage___contentView;
    v11 = [*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController____lazy_storage___contentView) topAnchor];
    v12 = [v9 constraintEqualToAnchor_];

    *(v8 + 32) = v12;
    v13 = [v4 leadingAnchor];
    v14 = OUTLINED_FUNCTION_21_5([*(v1 + v10) leadingAnchor]);

    *(v8 + 40) = v14;
    v15 = [v4 trailingAnchor];
    v16 = OUTLINED_FUNCTION_21_5([*(v1 + v10) trailingAnchor]);

    *(v8 + 48) = v16;
    v17 = [v4 bottomAnchor];

    v18 = OUTLINED_FUNCTION_21_5([*(v1 + v10) bottomAnchor]);
    *(v8 + 56) = v18;
    sub_1B3710718(0, &qword_1EB84FE50);
    v19 = sub_1B3C9C778();

    [v7 activateConstraints_];

    v20 = PXDisplayAssetFetchResultFromAsset();
    type metadata accessor for AmbientPhotoFrameStoryUtilities();
    v21 = sub_1B38128CC(v20, 1);
    v22 = [*(v1 + v10) traitCollection];
    [v22 displayScale];

    sub_1B378C2C0();
    sub_1B378C2C0();
    sub_1B378C2C0();
    sub_1B3C98D48();
    sub_1B378F224();
    v23 = sub_1B3C98D38();
    [v4 setImage_];
    PFSharedFigDecodeSessionDiscardCachedBuffers();

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_72_0();
  }

  else
  {
    OUTLINED_FUNCTION_72_0();
  }
}

void sub_1B378F224()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_renderer) backgroundView];
  [v1 bounds];
}

void sub_1B378F290()
{
  OUTLINED_FUNCTION_39();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  if (!*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView))
  {
    sub_1B378CA38(&v17);
    v6 = v19;
    if (v19 != 1)
    {
      v8 = v20;
      v7 = v21;
      v9 = v17;
      v22 = v18 & 1;
      v10 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_photoLibrary);
      v11 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset);
      v12 = v11;
      sub_1B3C9C898();
      v13 = sub_1B3C9C8B8();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v13);
      OUTLINED_FUNCTION_20();
      swift_allocObject();
      OUTLINED_FUNCTION_48_0();
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v1;
      v14[5] = v9;
      v15 = OUTLINED_FUNCTION_29_5(v14);
      v15[7] = v6;
      v15[8] = v8;
      v15[9] = v7;
      v15[10] = v10;
      v15[11] = v11;
      v16 = v10;
      sub_1B3850B9C();
    }
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_1B378F3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B378F41C, 0, 0);
}

uint64_t sub_1B378F41C()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_50_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_40_1();
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_1B378F500;
    v4 = v0[12];
    v3 = v0[13];

    return AmbientPhotoFrameContentConfiguration.fetchAssets(photoLibrary:keyAsset:countLimit:)(v4, v3, 0, 1);
  }

  else
  {
    OUTLINED_FUNCTION_1();

    return v6();
  }
}

uint64_t sub_1B378F500()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 128) = v3;

  v4 = OUTLINED_FUNCTION_36_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B378F5F0()
{
  OUTLINED_FUNCTION_0_0();
  sub_1B3C9C888();
  *(v0 + 136) = sub_1B3C9C878();
  v2 = sub_1B3C9C848();

  return MEMORY[0x1EEE6DFA0](sub_1B378F680, v2, v1);
}

uint64_t sub_1B378F680()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 128);

  sub_1B378F748(v1);
  v2 = OUTLINED_FUNCTION_36_3();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1B378F6E8()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_1();

  return v2();
}

void sub_1B378F748(void *a1)
{
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView;
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView))
  {
    OUTLINED_FUNCTION_31_2();
    return;
  }

  v3 = v1;
  if ([a1 count] >= 1)
  {
    v5 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_skipToNextAssetBecauseOfWake;
    v6 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_skipToNextAssetBecauseOfWake);
    v7 = a1;
    v8 = v7;
    v9 = v7;
    if (v6 == 1)
    {
      v9 = v7;
      if ([v7 count] >= 2)
      {
        v10 = [v8 firstObject];
        v11 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset);
        if (v10)
        {
          v12 = v10;
          if (!v11)
          {

            v9 = v8;
            goto LABEL_20;
          }

          sub_1B3710718(0, &qword_1EB84F770);
          v13 = v11;
          v14 = sub_1B3C9CFA8();

          v9 = v8;
          if ((v14 & 1) == 0)
          {
            goto LABEL_20;
          }

LABEL_16:
          if (__OFSUB__([v8 count], 1))
          {
            __break(1u);
          }

          else
          {
            v9 = PXDisplayAssetFetchResultSubfetchResultWithRange();

            sub_1B3C9CAE8();
            if (qword_1EB8500A0 == -1)
            {
LABEL_18:
              sub_1B3C9A438();
              *(v3 + v5) = 0;
              goto LABEL_20;
            }
          }

          OUTLINED_FUNCTION_0_16();
          swift_once();
          goto LABEL_18;
        }

        v9 = v8;
        if (!v11)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_20:
    type metadata accessor for AmbientPhotoFrameStoryUtilities();
    v20 = sub_1B38128CC(v9, 0);
    sub_1B378F224();
    OUTLINED_FUNCTION_58();
    v21 = sub_1B378E65C();
    v22 = [v21 traitCollection];

    [v22 displayScale];
    v23 = objc_allocWithZone(MEMORY[0x1E69C3AF0]);
    v24 = OUTLINED_FUNCTION_28_5();
    v27 = [v25 v26];
    sub_1B3710718(0, &qword_1EB84F7E0);
    v58 = v20;
    v57 = v27;
    v56 = sub_1B3851144();
    v28 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController____lazy_storage___contentView;
    [*(v3 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController____lazy_storage___contentView) bounds];
    OUTLINED_FUNCTION_58();
    v29 = objc_allocWithZone(MEMORY[0x1E69C3B30]);
    v30 = OUTLINED_FUNCTION_28_5();
    v33 = [v31 v32];
    v34 = [v33 tungstenView];
    [v34 setDisableMetalViewDisplayCompositing_];

    v35 = *(v3 + v2);
    *(v3 + v2) = v33;
    v36 = v33;

    *(v3 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyViewLoadingState) = 0;
    v37 = v36;
    [v37 setTranslatesAutoresizingMaskIntoConstraints_];
    [*(v3 + v28) addSubview_];
    v38 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v39 = OUTLINED_FUNCTION_51_0();
    *(v39 + 16) = xmmword_1B3D001A0;
    v40 = [v37 topAnchor];
    v41 = [*(v3 + v28) topAnchor];
    v42 = [v40 constraintEqualToAnchor_];

    *(v39 + 32) = v42;
    v43 = [v37 leadingAnchor];
    v44 = OUTLINED_FUNCTION_22_3([*(v3 + v28) leadingAnchor]);

    *(v39 + 40) = v44;
    v45 = [v37 trailingAnchor];
    v46 = OUTLINED_FUNCTION_22_3([*(v3 + v28) trailingAnchor]);

    *(v39 + 48) = v46;
    v47 = [v37 bottomAnchor];
    v48 = OUTLINED_FUNCTION_22_3([*(v3 + v28) bottomAnchor]);

    *(v39 + 56) = v48;
    sub_1B3710718(0, &qword_1EB84FE50);
    v49 = sub_1B3C9C778();

    [v38 activateConstraints_];

    v50 = [v37 viewModel];
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v51 = sub_1B3C9CA58();
    v53 = v52;

    v54 = (v3 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyViewModelObservation);
    *v54 = v51;
    v54[1] = v53;
    swift_unknownObjectRelease();
    sub_1B3794688();
    [v37 setIsActive_];
    [v37 setAlpha_];

    sub_1B3790C38();
    sub_1B378FF14();
    sub_1B3790D1C();
    sub_1B3794AE8(v8);

    OUTLINED_FUNCTION_31_2();

    swift_unknownObjectRelease();
    return;
  }

  v15 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong removeFromSuperview];
  }

  sub_1B378EB40();
  OUTLINED_FUNCTION_31_2();

  sub_1B3794AE8(v18);
}

void sub_1B378FDF8()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView);
  if (v2)
  {
    v3 = v2;
    [v3 setIsActive_];
    [v3 removeFromSuperview];
    sub_1B379111C();
    v4 = (v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyViewModelObservation);
    *v4 = 0;
    v4[1] = 0;
    swift_unknownObjectRelease();
    v5 = [v3 tungstenView];
    v6 = [v5 engine];

    v7 = [v6 textureManager];
    [v7 releaseCachedResources];

    v8 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_1B378FF14()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView);
  if (v1)
  {
    if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_isActive) == 1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nightMode);
    }

    else
    {
      v2 = 1;
    }

    v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_shouldAnimatePlayback);
    v4 = v1;
    v5 = [v4 viewModel];
    OUTLINED_FUNCTION_20();
    v6 = swift_allocObject();
    *(v6 + 16) = (v2 ^ 1) & v3;
    v11[4] = sub_1B379620C;
    v11[5] = v6;
    OUTLINED_FUNCTION_1_0();
    v11[1] = 1107296256;
    OUTLINED_FUNCTION_13_1();
    v11[2] = v7;
    v11[3] = &block_descriptor_173;
    v8 = _Block_copy(v11);

    v9 = OUTLINED_FUNCTION_62();
    [v9 v10];
    _Block_release(v8);

    if (v2 & 1) != 0 || (v3)
    {
      sub_1B3790BA4();
    }

    else
    {
      sub_1B379089C();
    }
  }
}

void sub_1B3790044()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyViewLoadingState;
  if (!*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyViewLoadingState))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyMainModel);
      if (v3)
      {
        v4 = v2;
        v10 = v3;
        if ([v10 readinessStatus])
        {
          *(v0 + v1) = 1;
          v5 = [v4 tungstenView];
          OUTLINED_FUNCTION_20();
          v6 = swift_allocObject();
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_20();
          v7 = swift_allocObject();
          OUTLINED_FUNCTION_41_2(v7);
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_14_1();
          v8 = swift_allocObject();
          *(v8 + 16) = v6;
          *(v8 + 24) = v0;
          v15 = sub_1B3796204;
          v16 = v8;
          OUTLINED_FUNCTION_12_8();
          v12 = 1107296256;
          v13 = sub_1B386A14C;
          v14 = &block_descriptor_167;
          v9 = _Block_copy(aBlock);

          [v5 notifyContentFullyLoadedWithTimeout:v9 block:10.0];
          _Block_release(v9);
        }

        else
        {
        }
      }
    }
  }
}

void sub_1B37901E8(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *&v3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView];
      if (v6)
      {
        sub_1B3710718(0, &qword_1EB853B18);
        v7 = v5;
        v8 = v6;
        v9 = sub_1B3C9CFA8();

        if (v9)
        {
          if (a1)
          {
            v10 = 3;
          }

          else
          {
            v10 = 2;
          }

          v3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyViewLoadingState] = v10;
          v5 = v3;
          sub_1B3790304();
        }

        else
        {
          v5 = v3;
        }
      }

      else
      {
        v7 = v3;
      }

      v3 = v7;
    }
  }
}

void sub_1B3790304()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView);
  if (!v1)
  {
    return;
  }

  v15 = v1;
  [v15 alpha];
  if (v2 != 0.0)
  {
    goto LABEL_17;
  }

  v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyMainModel);
  if (!v3)
  {
    goto LABEL_17;
  }

  v14 = v3;
  if (![v14 readinessStatus])
  {

LABEL_17:
    v13 = v15;
    goto LABEL_18;
  }

  if ((*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyViewLoadingState) & 0xFE) == 2)
  {
    [v15 setAlpha_];
    if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_skipToNextAssetBecauseOfWake) == 1)
    {
      *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_skipToNextAssetBecauseOfWake) = 0;
      v4 = [v15 viewModel];
      v20 = sub_1B379650C;
      v21 = 0;
      OUTLINED_FUNCTION_12_8();
      v17 = 1107296256;
      OUTLINED_FUNCTION_13_1();
      v18 = v5;
      v19 = &block_descriptor_157;
      v6 = _Block_copy(aBlock);
      v7 = OUTLINED_FUNCTION_2_16();
      [v7 v8];
      _Block_release(v6);

      sub_1B3C9CAE8();
      if (qword_1EB8500A0 != -1)
      {
        OUTLINED_FUNCTION_0_16();
        swift_once();
      }

      sub_1B3C9A438();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      [Strong removeFromSuperview];
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      [v11 removeFromSuperview];
    }

    swift_unknownObjectWeakAssign();
    return;
  }

  v13 = v14;
LABEL_18:
}

void sub_1B3790548()
{
  v1 = [objc_opt_self() processInfo];
  [v1 thermalState];

  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:sel_thermalStateDidChangeWithNotification_ name:*MEMORY[0x1E696A7E0] object:0];
}

void sub_1B3790600()
{
  OUTLINED_FUNCTION_39();
  v2 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_31();
  v6 = sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  sub_1B3710718(0, &qword_1EB84FE60);
  v13 = sub_1B3C9CC88();
  OUTLINED_FUNCTION_20();
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  v20[4] = sub_1B37961A4;
  v20[5] = v14;
  OUTLINED_FUNCTION_4_5();
  v20[1] = 1107296256;
  OUTLINED_FUNCTION_2();
  v20[2] = v15;
  v20[3] = &block_descriptor_154;
  v16 = _Block_copy(v20);
  v17 = v0;

  sub_1B3C9C138();
  v20[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_13();
  sub_1B3796414(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  OUTLINED_FUNCTION_6_9();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v12, v1, v16);
  _Block_release(v16);

  (*(v4 + 8))(v1, v2);
  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_27();
}

void sub_1B379089C()
{
  v2 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nonAnimatingPlaybackTimer;
  if (!*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nonAnimatingPlaybackTimer))
  {
    sub_1B3710718(0, &qword_1EB84F140);
    v3 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v3 fixedAssetDuration];
    v5 = v4;

    v6 = objc_opt_self();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_48_0();
    v10[4] = sub_1B379619C;
    v10[5] = v1;
    OUTLINED_FUNCTION_1_0();
    v10[1] = 1107296256;
    v10[2] = sub_1B37D2F2C;
    v10[3] = &block_descriptor_142;
    v7 = _Block_copy(v10);

    v8 = [v6 scheduledTimerWithTimeInterval:1 repeats:v7 block:v5];
    _Block_release(v7);
    [v8 setTolerance_];
    v9 = *(v0 + v2);
    *(v0 + v2) = v8;
  }
}

void sub_1B37909F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView);
    v3 = v2;

    if (v2)
    {
      v4 = [v3 viewModel];

      if (v4)
      {
        v5 = [v4 mainModel];
        v6 = [v5 isLastSegmentVisible];

        if (v6)
        {
          v13 = sub_1B3790B94;
          v14 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v10 = 1107296256;
          v7 = &block_descriptor_148;
        }

        else
        {
          v13 = sub_1B379650C;
          v14 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v10 = 1107296256;
          v7 = &block_descriptor_145;
        }

        v11 = sub_1B386A148;
        v12 = v7;
        v8 = _Block_copy(&aBlock);
        [v4 performChanges_];

        _Block_release(v8);
      }
    }
  }
}

void sub_1B3790BA4()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nonAnimatingPlaybackTimer;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nonAnimatingPlaybackTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_1B3790C00(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_shouldAnimatePlayback) != (a1 & 1))
  {
    sub_1B378FF14();
  }
}

void sub_1B3790C20(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_shouldAnimatePlayback);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_shouldAnimatePlayback) = a1;
  sub_1B3790C00(v2);
}

void sub_1B3790C38()
{
  v1 = (v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_notAnimatingReason);
  v2 = 0xD000000000000026;
  *v1 = 0;
  v1[1] = 0;

  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v3 = "cause of thermal state";
    v2 = 0xD000000000000032;
LABEL_5:
    *v1 = v2;
    v1[1] = v3 | 0x8000000000000000;

    v6 = 0;
    goto LABEL_7;
  }

  v4 = [objc_opt_self() processInfo];
  v5 = [v4 thermalState];

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = "ces>8@<PXPosterTransition>16";
    goto LABEL_5;
  }

  v6 = 1;
LABEL_7:

  sub_1B3790C20(v6);
}

void sub_1B3790D1C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_renderer) foregroundView];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = OUTLINED_FUNCTION_2_16();
  [v3 v4];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v6 = OUTLINED_FUNCTION_51_0();
  *(v6 + 16) = xmmword_1B3D001A0;
  v7 = [v2 leadingAnchor];
  v8 = OUTLINED_FUNCTION_52_0([v1 leadingAnchor]);

  *(v6 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = OUTLINED_FUNCTION_9_9([v1 trailingAnchor]);

  *(v6 + 40) = v10;
  v11 = [v2 topAnchor];
  v12 = OUTLINED_FUNCTION_9_9([v1 topAnchor]);

  *(v6 + 48) = v12;
  v13 = [v2 bottomAnchor];
  v14 = OUTLINED_FUNCTION_9_9([v1 bottomAnchor]);

  *(v6 + 56) = v14;
  sub_1B3710718(0, &qword_1EB84FE50);
  v15 = sub_1B3C9C778();

  [v5 activateConstraints_];

  [v2 setAlpha_];
  swift_unknownObjectWeakAssign();
  sub_1B3793700();
  v16 = sub_1B3794258();
  if (v16)
  {
    sub_1B3793BB4(v16, v17, v18, v19, v20, v21, v22, v23, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  }

  v24 = objc_opt_self();
  OUTLINED_FUNCTION_20();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = sub_1B379616C;
  v33 = v25;
  OUTLINED_FUNCTION_1_0();
  v29 = 1107296256;
  OUTLINED_FUNCTION_2();
  v30 = v26;
  v31 = &block_descriptor_138;
  v27 = _Block_copy(&v28);

  [v24 animateWithDuration:117440512 delay:v27 options:0 animations:0.3 completion:0.0];
  _Block_release(v27);
}

void sub_1B379105C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = 0.0;
    if ((*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_overlayHidden) & 1) == 0)
    {
      v2 = 1.0;
      if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nightMode))
      {
        v2 = 0.0;
      }
    }

    v3 = Strong;
    [Strong setAlpha_];
  }
}

uint64_t sub_1B37910EC()
{
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_overlayHidden))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nightMode) ^ 1;
  }

  return v1 & 1;
}

void sub_1B379111C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong removeFromSuperview];

  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_tapToRadarButtonTitleLeadingConstraint);
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_tapToRadarButtonTitleLeadingConstraint) = 0;
}

uint64_t sub_1B379117C(char a1, double a2)
{
  OUTLINED_FUNCTION_14_1();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  OUTLINED_FUNCTION_14_1();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B37960E8;
  *(v5 + 24) = v4;
  v11[4] = sub_1B3796144;
  v11[5] = v5;
  OUTLINED_FUNCTION_1_0();
  v11[1] = 1107296256;
  v11[2] = sub_1B378C180;
  v11[3] = &block_descriptor_134;
  v6 = _Block_copy(v11);

  v7 = OUTLINED_FUNCTION_62();
  [v7 v8];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1B37912C4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_titleAlignment) != a1)
  {
    sub_1B37912F8();
  }
}

void sub_1B37912E0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_titleAlignment);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_titleAlignment) = a1;
  sub_1B37912C4(v2);
}

void sub_1B37912F8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1B386FF9C(*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_titleAlignment));
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_1B37894F4(*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_titleAlignment));
  }

  sub_1B3793EE4();
}

void sub_1B3791384()
{
  v1 = v0;
  if (!sub_1B3791F68())
  {
    v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView];
    if (v2)
    {
      v3 = [v2 viewModel];
      if (v3)
      {
        v22 = v3;
        sub_1B3791B14();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v5 = Strong;
          v6 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyMainModel];
          if (v6)
          {
            v7 = [*&v1[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyMainModel] currentSegmentIdentifier];
          }

          else
          {
            v7 = 0;
          }

          v8 = v6 == 0;
          v9 = [v22 displayTitle];
          v10 = [v9 string];

          sub_1B3C9C5E8();
          v11 = [v22 displaySubtitle];
          v12 = [v11 string];

          sub_1B3C9C5E8();
          v13 = OUTLINED_FUNCTION_67_0();
          sub_1B386F68C(v13, v14);

          v15 = objc_opt_self();
          OUTLINED_FUNCTION_20();
          v16 = swift_allocObject();
          *(v16 + 16) = v5;
          v27 = sub_1B37960BC;
          v28 = v16;
          aBlock = MEMORY[0x1E69E9820];
          v24 = 1107296256;
          v25 = sub_1B370C014;
          v26 = &block_descriptor_112;
          v17 = _Block_copy(&aBlock);
          v18 = v5;

          v19 = swift_allocObject();
          *(v19 + 16) = v1;
          *(v19 + 24) = v7;
          *(v19 + 32) = v8;
          v27 = sub_1B37960D0;
          v28 = v19;
          aBlock = MEMORY[0x1E69E9820];
          v24 = 1107296256;
          v25 = sub_1B386A14C;
          v26 = &block_descriptor_118;
          v20 = _Block_copy(&aBlock);
          v21 = v1;

          [v15 animateWithDuration:117440512 delay:v17 options:v20 animations:0.3 completion:0.0];
          _Block_release(v20);
          _Block_release(v17);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_1B37916A0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v25 = a4;
  v24 = a3;
  v4 = sub_1B3C9C118();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B3C9C168();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B3C9C188();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  sub_1B3710718(0, &qword_1EB84FE60);
  v17 = sub_1B3C9CC88();
  sub_1B3C9C178();
  sub_1B3C9C1B8();
  v23 = *(v11 + 8);
  v23(v13, v10);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  *(v19 + 32) = v25 & 1;
  aBlock[4] = sub_1B37960DC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_125;
  v21 = _Block_copy(aBlock);

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B3796414(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A1D0](v16, v9, v6, v21);
  _Block_release(v21);

  (*(v28 + 8))(v6, v4);
  (*(v26 + 8))(v9, v27);
  return (v23)(v16, v10);
}

void sub_1B3791A7C(uint64_t a1, id a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyMainModel);
    if (v7)
    {
      v8 = [v7 currentSegmentIdentifier];
      if ((a3 & 1) != 0 || v8 != a2)
      {
        goto LABEL_6;
      }
    }

    else if ((a3 & 1) == 0)
    {
      goto LABEL_6;
    }

    sub_1B3791DEC(1);
LABEL_6:
  }
}

void sub_1B3791B14()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      OUTLINED_FUNCTION_55_0();
      return;
    }

    v2 = Strong;
    type metadata accessor for AmbientPhotoFrameCompactMetadataOverlayView();
    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    sub_1B386FF9C(*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_titleAlignment));
    swift_unknownObjectWeakAssign();
    [v2 addSubview_];
    v3 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v4 = OUTLINED_FUNCTION_51_0();
    *(v4 + 16) = xmmword_1B3D001A0;
    v5 = [v19 topAnchor];
    v6 = [v2 topAnchor];
    v7 = OUTLINED_FUNCTION_15_10();
    v9 = [v7 v8];

    *(v4 + 32) = v9;
    v10 = [v19 leadingAnchor];
    v11 = OUTLINED_FUNCTION_8_12([v2 leadingAnchor]);

    *(v4 + 40) = v11;
    v12 = [v19 trailingAnchor];
    v13 = OUTLINED_FUNCTION_8_12([v2 trailingAnchor]);

    *(v4 + 48) = v13;
    v14 = [v19 bottomAnchor];
    v15 = OUTLINED_FUNCTION_8_12([v2 bottomAnchor]);

    *(v4 + 56) = v15;
    sub_1B3710718(0, &qword_1EB84FE50);
    v16 = sub_1B3C9C778();

    [v3 activateConstraints_];

    [v19 setAlpha_];
  }

  OUTLINED_FUNCTION_55_0();
}

void sub_1B3791DEC(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (a1)
    {
      v4 = 0.3;
    }

    else
    {
      v4 = 0.0;
    }

    v5 = objc_opt_self();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    OUTLINED_FUNCTION_48_0();
    v8[4] = sub_1B37960B4;
    v8[5] = v1;
    OUTLINED_FUNCTION_1_0();
    v8[1] = 1107296256;
    OUTLINED_FUNCTION_2();
    v8[2] = v6;
    v8[3] = &block_descriptor_106_0;
    v7 = _Block_copy(v8);

    [v5 animateWithDuration:117440512 delay:v7 options:0 animations:v4 completion:0.0];
    _Block_release(v7);
  }
}

void sub_1B3791EE8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 setAlpha_];
    }
  }
}

BOOL sub_1B3791F68()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
  }

  return v1 != 0;
}

void sub_1B3791FA8()
{
  v1 = v0;
  if (sub_1B3791F68() || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    OUTLINED_FUNCTION_7_6();
  }

  else
  {
    v3 = Strong;
    v4 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView];
    if (v4)
    {
      v29 = v3;
      v5 = [v4 viewModel];
      if (v5)
      {
        v6 = v5;
        sub_1B3791DEC(0);
        type metadata accessor for AmbientPhotoFrameExtendedMetadataOverlayView();
        v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_1B37894F4(*&v1[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_titleAlignment]);
        v8 = v7;
        [v8 setTranslatesAutoresizingMaskIntoConstraints_];
        swift_unknownObjectWeakAssign();
        [v29 addSubview_];
        v9 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
        v10 = OUTLINED_FUNCTION_51_0();
        *(v10 + 16) = xmmword_1B3D001A0;
        v11 = [v8 topAnchor];
        v12 = OUTLINED_FUNCTION_52_0([v29 topAnchor]);

        *(v10 + 32) = v12;
        v13 = [v8 leadingAnchor];
        v14 = OUTLINED_FUNCTION_9_9([v29 leadingAnchor]);

        *(v10 + 40) = v14;
        v15 = [v8 trailingAnchor];
        v16 = OUTLINED_FUNCTION_9_9([v29 trailingAnchor]);

        *(v10 + 48) = v16;
        v17 = [v8 bottomAnchor];

        v18 = OUTLINED_FUNCTION_9_9([v29 bottomAnchor]);
        *(v10 + 56) = v18;
        sub_1B3710718(0, &qword_1EB84FE50);
        v19 = sub_1B3C9C778();

        [v9 activateConstraints_];

        v20 = [v6 displayTitle];
        v21 = [v20 string];

        sub_1B3C9C5E8();
        v22 = [v6 displaySubtitle];
        v23 = [v22 string];

        sub_1B3C9C5E8();
        v24 = OUTLINED_FUNCTION_67_0();
        sub_1B37892D0(v24, v25);

        *(v8 + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_wantsOpenInPhotosAction) = [objc_opt_self() isAppInstalled_];
        sub_1B37883DC();
        OUTLINED_FUNCTION_14_1();
        v26 = swift_allocObject();
        *(v26 + 16) = v1;
        *(v26 + 24) = v8;
        v8;
        v27 = v1;
        sub_1B378A1E4(sub_1B37960A4, v26);

        sub_1B379117C(1, 0.3);
        [v27 accessibilityPresentExtendedMetadataOverlay];
      }
    }

    OUTLINED_FUNCTION_7_6();

    MEMORY[0x1EEE66BB8]();
  }
}

uint64_t sub_1B37923F0(uint64_t a1, uint64_t a2)
{
  v21[1] = a2;
  v2 = sub_1B3C9C118();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B3C9C168();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B3C9C188();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  sub_1B3710718(0, &qword_1EB84FE60);
  v15 = sub_1B3C9CC88();
  sub_1B3C9C178();
  sub_1B3C9C1B8();
  v22 = *(v9 + 8);
  v22(v11, v8);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1B37960AC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_102;
  v19 = _Block_copy(aBlock);

  sub_1B3C9C138();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B3796414(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A1D0](v14, v7, v4, v19);
  _Block_release(v19);

  (*(v25 + 8))(v4, v2);
  (*(v23 + 8))(v7, v24);
  return (v22)(v14, v8);
}

void sub_1B37927DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = v3;
    if (v2)
    {
      if (!v3)
      {

        goto LABEL_10;
      }

      type metadata accessor for AmbientPhotoFrameExtendedMetadataOverlayView();
      v5 = sub_1B3C9CFA8();

      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v3)
    {

LABEL_10:
      return;
    }

    sub_1B37928C0();
    goto LABEL_10;
  }
}

void sub_1B37928C0()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v35 = v9;
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v12 = v11 - v10;
  v37 = sub_1B3C9C188();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    swift_unknownObjectWeakAssign();
    OUTLINED_FUNCTION_20();
    swift_allocObject();
    v34 = v3;
    v24 = v1;
    swift_unknownObjectWeakInit();

    v32 = v0;
    sub_1B378AA84();

    v25 = sub_1B3710718(0, &qword_1EB84FE60);
    v26 = sub_1B3C9CC88();
    sub_1B3C9C178();
    sub_1B3C9C1B8();
    v33 = *(v14 + 8);
    v33(v18, v37);
    OUTLINED_FUNCTION_20();
    v27 = swift_allocObject();
    OUTLINED_FUNCTION_41_2(v27);
    swift_unknownObjectWeakInit();
    v38[4] = sub_1B379609C;
    v38[5] = v25;
    OUTLINED_FUNCTION_4_5();
    v38[1] = 1107296256;
    OUTLINED_FUNCTION_2();
    v38[2] = v28;
    v38[3] = &block_descriptor_91;
    v29 = _Block_copy(v38);

    sub_1B3C9C138();
    v38[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_5_13();
    sub_1B3796414(v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
    sub_1B37254F8();
    sub_1B3C9D278();
    MEMORY[0x1B8C6A1D0](v21, v12, v7, v29);
    _Block_release(v29);

    (*(v34 + 8))(v7, v24);
    (*(v35 + 8))(v12, v36);
    v33(v21, v37);
    [v32 accessibilityDismissExtendedMetadataOverlay];
  }

  OUTLINED_FUNCTION_27();
}

void sub_1B3792C80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong removeFromSuperview];
  }
}

void sub_1B3792CDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B379117C(0, 0.513);
  }
}

BOOL sub_1B3792D40(double a1, double a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = [*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_renderer) floatingView];
    [Strong convertPoint:v6 fromCoordinateSpace:{a1, a2}];
    OUTLINED_FUNCTION_58();

    v7 = OUTLINED_FUNCTION_28_5();
    if ((sub_1B378A0EC(v7, v8) & 1) != 0 && *(Strong + OBJC_IVAR____TtC15PhotosUIPrivate44AmbientPhotoFrameExtendedMetadataOverlayView_wantsOpenInPhotosAction) == 1)
    {
      sub_1B3793024();
    }

    else
    {
      sub_1B37928C0();
    }
  }

  return Strong != 0;
}

uint64_t sub_1B3792E20(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nightMode) != (result & 1))
  {
    return sub_1B3792E64();
  }

  return result;
}

uint64_t sub_1B3792E4C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nightMode);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nightMode) = a1;
  return sub_1B3792E20(v2);
}

uint64_t sub_1B3792E64()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nightMode;
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nightMode))
  {
    v2 = 0.2;
  }

  else
  {
    v2 = 1.0;
  }

  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_41_2(v3);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_14_1();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = *(v0 + v1);
  *(v4 + 24) = v2;
  v6 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_renderer + 8);
  swift_getObjectType();
  v7 = sub_1B378E65C();
  if (v5 == 1)
  {
    v8 = *(v6 + 16);
  }

  else
  {
    v8 = *(v6 + 24);
  }

  v9 = OUTLINED_FUNCTION_10_10();
  v8(v9);

  sub_1B378FF14();
}

void sub_1B3792FA8(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1B379105C();
    v4 = sub_1B378E65C();
    [v4 setAlpha_];
  }
}

void sub_1B3793024()
{
  OUTLINED_FUNCTION_39();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970);
  v2 = OUTLINED_FUNCTION_8_0(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  v9 = sub_1B3C98068();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_31();
  v13 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView);
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = v13;
  sub_1B378CA38(&v63);
  v15 = v65;
  if (v65 == 1)
  {

LABEL_4:
    OUTLINED_FUNCTION_27();
    return;
  }

  v60 = v11;
  v59 = v0;
  v61 = v9;
  v16 = v63;
  v17 = v64;
  v19 = v66;
  v18 = v67;
  v20 = [v14 viewModel];
  v21 = [v20 mainAsset];

  if (v21)
  {
    v62 = v16;
    v57 = v14;
    v58 = v18;
    v22 = [v21 uuid];
    swift_unknownObjectRelease();
    if (v22)
    {
      v56 = sub_1B3C9C5E8();

      v63 = v62;
      LOBYTE(v64) = v17 & 1;
      v23 = v15;
      v65 = v15;
      v66 = v19;
      v67 = v58;
      sub_1B37E7918(*(v59 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_photoLibrary));
      v55 = v17;
      if (v24 && *(v24 + 16) == 1 && v17 & 1 | (v62 == 0))
      {
        v54 = v24;

        v25 = sub_1B3C9C5A8();

        sub_1B3710718(0, &qword_1EB84F1A0);
        v26 = [swift_getObjCClassFromMetadata() uuidFromLocalIdentifier_];

        v27 = v61;
        if (!v26)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v28 = sub_1B3C9C5E8();
        v30 = v29;

        v63 = 0;
        v64 = 0xE000000000000000;
        sub_1B3C9D378();

        v63 = 0xD000000000000014;
        v64 = 0x80000001B3D131C0;
        OUTLINED_FUNCTION_70_0();
        MEMORY[0x1B8C69C10](0x75756D75626C6126, 0xEB000000003D6469);
        MEMORY[0x1B8C69C10](v28, v30);
        OUTLINED_FUNCTION_54_0();
        sub_1B3C98058();

        if (__swift_getEnumTagSinglePayload(v8, 1, v27) == 1)
        {
LABEL_26:
          __break(1u);
          return;
        }

        v31 = v62;
      }

      else
      {
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_1B3C9D378();
        MEMORY[0x1B8C69C10](0xD000000000000029, 0x80000001B3D13190);
        OUTLINED_FUNCTION_70_0();
        OUTLINED_FUNCTION_54_0();
        sub_1B3C98058();

        v27 = v61;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v61);
        v8 = v5;
        v31 = v62;
        if (EnumTagSinglePayload == 1)
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      (*(v60 + 32))(v17, v8, v27);
      v33 = [objc_opt_self() defaultWorkspace];
      if (v33)
      {
        v34 = v33;
        sub_1B3795AC0(v31, v55, v23);

        v35 = sub_1B3C98018();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8571B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B3CFA2E0;
        *(inited + 32) = sub_1B3C9C5E8();
        *(inited + 40) = v37;
        v38 = MEMORY[0x1E69E6370];
        *(inited + 72) = MEMORY[0x1E69E6370];
        *(inited + 48) = 1;
        *(inited + 80) = sub_1B3C9C5E8();
        *(inited + 88) = v39;
        *(inited + 120) = v38;
        *(inited + 96) = 1;
        sub_1B3C9C4D8();
        v40 = sub_1B3C9C4A8();

        LODWORD(inited) = [v34 openSensitiveURL:v35 withOptions:v40];

        if (inited)
        {
          v41 = *(v59 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_renderer + 8);
          ObjectType = swift_getObjectType();
          (*(v41 + 8))(ObjectType, v41);
          OUTLINED_FUNCTION_42_2();

          v44 = OUTLINED_FUNCTION_24_4();
          v45(v44);
        }

        else
        {
          v51 = OUTLINED_FUNCTION_24_4();
          v52(v51);
          OUTLINED_FUNCTION_42_2();
        }

        goto LABEL_4;
      }

      __break(1u);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_42_2();

    OUTLINED_FUNCTION_34();
  }

  else
  {

    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_60_0();
  }

  OUTLINED_FUNCTION_27();

  sub_1B3795AC0(v47, v48, v49);
}

void sub_1B3793700()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v15 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v15 setTranslatesAutoresizingMaskIntoConstraints_];
    v2 = [objc_opt_self() whiteColor];
    [v15 setColor_];

    [v1 addSubview_];
    objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1B3CFB680;
    v4 = [v15 centerXAnchor];
    v5 = [v1 centerXAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    *(v3 + 32) = v6;
    v7 = [v15 centerYAnchor];

    v8 = [v1 centerYAnchor];
    v9 = [v7 constraintEqualToAnchor_];

    *(v3 + 40) = v9;
    sub_1B3710718(0, &qword_1EB84FE50);
    v10 = sub_1B3C9C778();

    v11 = OUTLINED_FUNCTION_62();
    [v11 v12];

    swift_unknownObjectWeakAssign();
    OUTLINED_FUNCTION_7_6();
  }

  else
  {
    OUTLINED_FUNCTION_7_6();
  }
}

void sub_1B3793960()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyMainModel);
  v4 = Strong;
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  if ([v3 readinessStatus] != 1)
  {

    Strong = v4;
LABEL_7:
    [Strong stopAnimating];
    goto LABEL_8;
  }

  [v4 startAnimating];

LABEL_8:
}

uint64_t sub_1B3793A18(CGFloat a1)
{
  if (sub_1B3791F68())
  {
    v2 = OUTLINED_FUNCTION_28_5();
    if (sub_1B3792D40(v2, v3))
    {
      return 1;
    }
  }

  v4 = OUTLINED_FUNCTION_28_5();
  if (sub_1B3794050(v4, v5) & 1) != 0 || (sub_1B3793A78(a1))
  {
    return 1;
  }

  sub_1B3791FA8();
  return 0;
}

uint64_t sub_1B3793A78(CGFloat a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView);
  if (v2)
  {
    v4 = v2;
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v4 bounds];
    Width = CGRectGetWidth(v21);
    sub_1B3710718(0, &qword_1EB84F200);
    v14 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v14 tapNavigationAreaFraction];
    v16 = v15;

    v17 = Width * v16;
    if (v17 >= a1)
    {
      v19 = &selRef_moveLeft_;
    }

    else
    {
      v22.origin.x = v6;
      v22.origin.y = v8;
      v22.size.width = v10;
      v22.size.height = v12;
      if (CGRectGetMaxX(v22) - v17 > a1)
      {
        v18 = 0;
LABEL_9:

        return v18;
      }

      v19 = &selRef_moveRight_;
    }

    [v4 *v19];
    v18 = 1;
    goto LABEL_9;
  }

  return 0;
}

void sub_1B3793BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853AB0);
  v24 = OUTLINED_FUNCTION_8_0(v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &a9 - v25;
  v27 = sub_1B3C9D0C8();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  v33 = v32 - v31;
  v34 = sub_1B3C9D128();
  OUTLINED_FUNCTION_0();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_31();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    sub_1B3C9D008();
    (*(v29 + 104))(v33, *MEMORY[0x1E69DC568], v27);
    sub_1B3C9D018();
    v40 = objc_opt_self();
    v41 = sub_1B3C9C5A8();
    v42 = [v40 __systemImageNamedSwift_];

    sub_1B3C9D0F8();
    v43 = [objc_opt_self() buttonWithType_];
    OUTLINED_FUNCTION_34();
    v44();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v34);
    sub_1B3C9D148();
    v45 = v43;
    [v45 setTranslatesAutoresizingMaskIntoConstraints_];
    v46 = OUTLINED_FUNCTION_15_10();
    [v46 v47];
    swift_unknownObjectWeakAssign();
    v48 = [v45 bottomAnchor];

    v49 = [v39 bottomAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:-40.0];

    [v50 setActive_];
    sub_1B3793EE4();

    (*(v36 + 8))(v20, v34);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1B3793EE4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_tapToRadarButtonTitleLeadingConstraint;
      v5 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_tapToRadarButtonTitleLeadingConstraint);
      if (v5)
      {
        [v5 setActive_];
      }

      if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_titleAlignment) == 2)
      {
        v6 = &selRef_rightAnchor;
      }

      else
      {
        v6 = &selRef_leftAnchor;
      }

      v7 = [v13 *v6];
      v8 = [v3 safeAreaLayoutGuide];
      v9 = [v8 *v6];

      v10 = [v7 constraintEqualToAnchor_];
      [v10 setActive_];

      *(v0 + v4) = v10;
    }

    OUTLINED_FUNCTION_55_0();
  }

  else
  {
    OUTLINED_FUNCTION_55_0();
  }
}

id sub_1B3794050(double a1, double a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = [*(v2 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_renderer) floatingView];
  [v6 convertPoint:v7 fromCoordinateSpace:{a1, a2}];
  OUTLINED_FUNCTION_58();

  v8 = OUTLINED_FUNCTION_28_5();
  v11 = [v9 v10];
  if (v11)
  {
    sub_1B3794118();
  }

  return v11;
}

void sub_1B3794118()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69C3940]) init];
  sub_1B3710718(0, &qword_1EB84F200);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v3 setIncludeImagesInVisualDiagnosticsForTTR_];
  [v1 addDiagnosticProvider_];
  [v1 setComponent_];
  [v1 setAttachmentsIncludeAnyUserAsset_];
  [v1 setWantsPhotosDiagnostics_];
  [v1 setWantsSystemDiagnostics_];
  [v1 setClassification_];
  OUTLINED_FUNCTION_13_0();
  sub_1B373ED44(0xD000000000000017, v2, v1);
  PXFileRadarWithConfiguration();
}

id sub_1B3794258()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_1B3C9C5A8();
  v3 = OUTLINED_FUNCTION_62();
  v5 = [v3 v4];

  if (v5)
  {
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
    sub_1B370ED44(&v10, v11);
    sub_1B370EEB0(v11, &qword_1EB850170);
    v6 = [v0 standardUserDefaults];
    v7 = sub_1B3C9C5A8();
    v8 = [v6 BOOLForKey_];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    sub_1B370EEB0(v11, &qword_1EB850170);
    sub_1B3710718(0, &qword_1EB84F140);
    v7 = [swift_getObjCClassFromMetadata() sharedInstance];
    v8 = [v7 showTapToRadarButton];
  }

  return v8;
}

uint64_t sub_1B37943FC()
{
  if (!PFOSVariantHasInternalUI())
  {
    return 0;
  }

  sub_1B3710718(0, &qword_1EB84F140);
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 includePhotosInRadar];

  if (v1)
  {
    return 1;
  }

  v3 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_13_0();
  v4 = sub_1B3C9C5A8();
  v2 = [v3 BOOLForKey_];

  return v2;
}

uint64_t sub_1B37944E8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyMainModel);
  if (v2)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = v2;

    v2 = sub_1B3C9CA58();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyModelObservation);
  *v6 = v2;
  v6[1] = v5;

  return swift_unknownObjectRelease();
}

void sub_1B37945C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a4(a2);
  }
}

void sub_1B3794630(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyMainModel);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyMainModel) = a1;
  v3 = a1;

  sub_1B37944E8();
}

void sub_1B3794688()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView);
  if (v1)
  {
    v2 = [v1 viewModel];
    v3 = [v2 mainModel];
  }

  else
  {
    v3 = 0;
  }

  sub_1B3794630(v3);
}

void sub_1B379470C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x18000000000000) != 0)
  {
    sub_1B3791384();
  }

  if ((v1 & 0x40) != 0)
  {
    sub_1B3794688();
  }

  if ((v1 & 4) != 0)
  {

    sub_1B3790304();
  }
}

void sub_1B3794760()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = sub_1B3C9C118();
  OUTLINED_FUNCTION_0();
  v31 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_31();
  sub_1B3C9C168();
  OUTLINED_FUNCTION_0();
  v29 = v7;
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  v10 = v9 - v8;
  v11 = sub_1B3C9C188();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  if ((v2 & 0x200000) != 0)
  {
    sub_1B3790044();
    sub_1B3790304();
    sub_1B3793960();
  }

  if ((v2 & 0x20) != 0)
  {
    sub_1B37928C0();
    v21 = sub_1B3710718(0, &qword_1EB84FE60);
    v22 = sub_1B3C9CC88();
    sub_1B3C9C178();
    sub_1B3C9C1B8();
    v28 = *(v13 + 8);
    v28(v17, v11);
    OUTLINED_FUNCTION_20();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_41_2(v23);
    swift_unknownObjectWeakInit();
    v32[4] = sub_1B3796020;
    v32[5] = v21;
    OUTLINED_FUNCTION_4_5();
    v32[1] = 1107296256;
    OUTLINED_FUNCTION_2();
    v32[2] = v24;
    v32[3] = &block_descriptor_21;
    v25 = _Block_copy(v32);

    sub_1B3C9C138();
    v32[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_5_13();
    sub_1B3796414(v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
    sub_1B37254F8();
    OUTLINED_FUNCTION_6_9();
    sub_1B3C9D278();
    MEMORY[0x1B8C6A1D0](v20, v10, v0, v25);
    _Block_release(v25);

    (*(v31 + 8))(v0, v3);
    (*(v29 + 8))(v10, v30);
    v28(v20, v11);
  }

  OUTLINED_FUNCTION_27();
}

void sub_1B3794A90(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_41_2(a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1B3794AE8(void *a1)
{
  sub_1B378CA38(&v16);
  v2 = v18;
  if (v18 != 1)
  {
    if (v17)
    {
      if (v18)
      {
LABEL_4:

        OUTLINED_FUNCTION_60_0();
        sub_1B3795AC0(v3, v4, v5);

LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853AA0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B3CFC360;
        *(inited + 32) = 1701869940;
        *(inited + 40) = 0xE400000000000000;
        v11 = sub_1B3C9C5A8();

        *(inited + 48) = v11;
        *(inited + 56) = 0x6F635F7465737361;
        *(inited + 64) = 0xEB00000000746E75;
        [a1 count];
        *(inited + 72) = sub_1B3C9C9C8();
        *(inited + 80) = 0xD000000000000015;
        *(inited + 88) = 0x80000001B3D13590;
        *(inited + 96) = sub_1B3C9C9C8();
        sub_1B3710718(0, &qword_1EB854400);
        OUTLINED_FUNCTION_66_0();
        sub_1B3C9C4D8();
        objc_opt_self();
        v12 = sub_1B3C9C5A8();
        OUTLINED_FUNCTION_66_0();
        v13 = sub_1B3C9C4A8();

        v14 = OUTLINED_FUNCTION_15_10();
        [v14 v15];

        return;
      }
    }

    else
    {
      v6 = PFPosterShuffleSmartAlbumsDescription();
      sub_1B3C9C5E8();

      if (v2)
      {
        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_60_0();
    sub_1B3795AC0(v7, v8, v9);
    goto LABEL_7;
  }
}

id AmbientPhotoFrameController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AmbientPhotoFrameController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientPhotoFrameController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AmbientPhotoFrameController.renderer(_:didInitializeWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = swift_getObjectType();

  return sub_1B3795B38(a1, a3, v4, ObjectType, v10, a2, a4);
}

uint64_t AmbientPhotoFrameController.renderer(_:didUpdate:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    ObjectType = swift_getObjectType();
    v10 = *(a6 + 8);
    swift_unknownObjectRetain();
    LOBYTE(a6) = v10(ObjectType, a6);
    swift_unknownObjectRelease();
    if (a6)
    {
      *(v6 + OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_skipToNextAssetBecauseOfWake) = 1;
    }
  }

  v11 = swift_unknownObjectRetain();

  return sub_1B378C114(v11, a4);
}

uint64_t AmbientPhotoFrameController.rendererDidInvalidate(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1B3795B6C(a1, v1);
}

uint64_t AmbientPhotoFrameController.renderer(_:didReceiveTapAt:)(CGFloat a1)
{
  swift_getObjectType();

  return sub_1B3795D7C(a1);
}

uint64_t sub_1B3795154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = swift_getObjectType();

  return sub_1B3795B38(a1, a3, v4, ObjectType, v10, a2, a4);
}

uint64_t sub_1B37951D0(uint64_t a1)
{
  swift_getObjectType();

  return sub_1B3795B6C(a1, v1);
}

uint64_t sub_1B3795220(CGFloat a1)
{
  swift_getObjectType();

  return sub_1B3795D7C(a1);
}

void AmbientPhotoFrameController.collectTapToRadarDiagnostics(into:)(id a1)
{
  v2 = v1;
  if (*&v1[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_environment])
  {
    type metadata accessor for AmbientPhotoFrameController.AmbientRenderingEnvironmentRadarAttachmentProvider();
    v4 = swift_allocObject();
    v5 = swift_unknownObjectRetain_n();
    v1 = v4;
    v6 = sub_1B3795484(v5);
    if (v6)
    {
      OUTLINED_FUNCTION_69_0(v6);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  [a1 addSubprovider_];
  sub_1B3710718(0, &qword_1EB84F200);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  OUTLINED_FUNCTION_69_0(v7);

  if (*&v2[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_notAnimatingReason + 8])
  {

    v8 = sub_1B3C9C5A8();

    OUTLINED_FUNCTION_13_0();
    v11 = sub_1B3C9C5A8();
    v9 = OUTLINED_FUNCTION_2_16();
    [v9 v10];
  }
}

uint64_t sub_1B3795484(void *a1)
{
  v2 = v1;
  v4 = sub_1B3C98068();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v19 - v13;
  v15 = [a1 px_assetDirectory];
  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = v15;
  sub_1B3C98038();

  v17 = *(v5 + 32);
  v17(v14, v10, v4);
  if ((static AmbientPhotoFramePosterConfiguration.configurationFileExists(inDirectory:)() & 1) == 0 && (static AmbientPhotoFramePosterDescriptor.descriptorFileExists(inDirectory:)() & 1) == 0)
  {
    (*(v5 + 8))(v14, v4);
LABEL_6:
    swift_unknownObjectRelease();
    type metadata accessor for AmbientPhotoFrameController.AmbientRenderingEnvironmentRadarAttachmentProvider();
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_1B3C98028();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v14, v4);
  v17((v2 + OBJC_IVAR____TtCC15PhotosUIPrivate27AmbientPhotoFrameControllerP33_EA3E727B382B1CE1E97FC2072598E56A50AmbientRenderingEnvironmentRadarAttachmentProvider_contentsAttachmentURL), v7, v4);
  return v2;
}

void sub_1B37956CC(void *a1)
{
  v2 = sub_1B3C98018();
  [a1 addAttachment_];
}

uint64_t sub_1B3795788()
{
  v1 = OBJC_IVAR____TtCC15PhotosUIPrivate27AmbientPhotoFrameControllerP33_EA3E727B382B1CE1E97FC2072598E56A50AmbientRenderingEnvironmentRadarAttachmentProvider_contentsAttachmentURL;
  v2 = sub_1B3C98068();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

id sub_1B3795824(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_allocWithZone(type metadata accessor for AmbientPhotoFrameController());

  return sub_1B3795884(a1, a2, v9, a4, a5);
}

id sub_1B3795884(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_keyAsset] = 0;
  a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_skipToNextAssetBecauseOfWake] = 0;
  v9 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_environment];
  *v9 = 0;
  v9[1] = 0;
  a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_isActive] = 0;
  v10 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterConfiguration];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 8) = 0;
  v11 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_posterDescriptor];
  *(v11 + 8) = 0;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController____lazy_storage___contentView] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyView] = 0;
  a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyViewLoadingState] = 0;
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nonAnimatingPlaybackTimer] = 0;
  v12 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_notAnimatingReason];
  *v12 = 0;
  v12[1] = 0;
  a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_shouldAnimatePlayback] = 1;
  swift_unknownObjectWeakInit();
  a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_overlayHidden] = 0;
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_titleAlignment] = 3;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_nightMode] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_tapToRadarButtonTitleLeadingConstraint] = 0;
  v13 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyViewModelObservation];
  *v13 = 0;
  v13[1] = 0;
  v14 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyModelObservation];
  *v14 = 0;
  v14[1] = 0;
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_storyMainModel] = 0;
  v15 = &a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_renderer];
  *v15 = a1;
  v15[1] = a5;
  *&a3[OBJC_IVAR____TtC15PhotosUIPrivate27AmbientPhotoFrameController_photoLibrary] = a2;
  v19.receiver = a3;
  v19.super_class = type metadata accessor for AmbientPhotoFrameController();
  v16 = a2;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  sub_1B3790548();

  return v17;
}

uint64_t sub_1B3795AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1B3795B6C(uint64_t a1, void *a2)
{
  sub_1B378CD5C(&v14);
  v3 = v14;
  v4 = sub_1B3C9CAA8();
  if (qword_1EB8500A0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB855DC0;
  if (os_log_type_enabled(qword_1EB855DC0, v4))
  {
    v6 = a2;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    v9 = 0xE500000000000000;
    v10 = 0x6D75626C61;
    switch(v3)
    {
      case 0:
        v9 = 0xE800000000000000;
        v10 = 0x6465727574616566;
        goto LABEL_10;
      case 1:
        v9 = 0xE600000000000000;
        v10 = 0x65727574616ELL;
        goto LABEL_10;
      case 2:
        v9 = 0xE400000000000000;
        v10 = 1937007984;
        goto LABEL_10;
      case 3:
        v9 = 0xE600000000000000;
        v10 = 0x736569746963;
        goto LABEL_10;
      case 4:
        v9 = 0xE600000000000000;
        v10 = 0x656C706F6570;
        goto LABEL_10;
      case 5:
LABEL_10:
        v11 = sub_1B3749364(v10, v9, &v13);

        *(v7 + 4) = v11;
        *(v7 + 12) = 1024;
        LOBYTE(v11) = sub_1B378C2C0();

        *(v7 + 14) = v11 & 1;
        _os_log_impl(&dword_1B36F3000, v5, v4, "invalidating content for poster kind: %s isSnapshot: %{BOOL}d", v7, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        MEMORY[0x1B8C6EC70](v8, -1, -1);
        MEMORY[0x1B8C6EC70](v7, -1, -1);
        break;
      default:
        return sub_1B378C114(0, 0);
    }
  }

  return sub_1B378C114(0, 0);
}

uint64_t type metadata accessor for AmbientPhotoFrameController.AmbientRenderingEnvironmentRadarAttachmentProvider()
{
  result = qword_1EB853A88;
  if (!qword_1EB853A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B3795E5C()
{
  result = sub_1B3C98068();
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

_BYTE *storeEnumTagSinglePayload for AmbientPhotoFrameController.StoryViewLoadingState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B3795FCC()
{
  result = qword_1EB853A98;
  if (!qword_1EB853A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853A98);
  }

  return result;
}

id sub_1B37960E8(void *a1, void *a2)
{
  v4 = *(v2 + 24);
  [a1 setHideChrome_];

  return [a2 setPx:v4 duration:?];
}

uint64_t objectdestroy_98Tm()
{

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B379624C()
{
  v2 = *(v0 + 88);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_18_8(v3);

  return sub_1B378F3F8(v4, v5, v6, v7, v8, v9, v2);
}

uint64_t sub_1B3796304()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_18_8(v1);

  return sub_1B378DC5C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1B37963B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B3796414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B379645C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id OUTLINED_FUNCTION_8_12(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

id OUTLINED_FUNCTION_9_9(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

id OUTLINED_FUNCTION_21_5(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

id OUTLINED_FUNCTION_22_3(uint64_t a1)
{

  return [v1 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_27_5@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_1B37963B0(v4, v5);
}

uint64_t OUTLINED_FUNCTION_29_5(uint64_t result)
{
  *(result + 48) = *(v1 - 88);
  *(result + 49) = *(v1 - 128);
  *(result + 52) = *(v1 - 125);
  return result;
}

__n128 OUTLINED_FUNCTION_40_1()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 32);
  result = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = result;
  *(v0 + 48) = v2;
  return result;
}

void *OUTLINED_FUNCTION_47_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char __dst)
{

  return memcpy(&__dst, v24, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1B370EEB0(va, v10);
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_51_0()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_52_0(uint64_t a1)
{

  return [v1 constraintEqualToAnchor_];
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_54_0()
{

  JUMPOUT(0x1B8C69C10);
}

void *OUTLINED_FUNCTION_68_0@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v2 - 192), (v1 + a1), 0x48uLL);
}

id OUTLINED_FUNCTION_69_0(uint64_t a1)
{

  return [v1 (v2 + 2536)];
}

void OUTLINED_FUNCTION_70_0()
{

  JUMPOUT(0x1B8C69C10);
}

uint64_t OUTLINED_FUNCTION_71_0()
{
  *(v1 - 320) = v0;
}

id sub_1B3796A44(void *a1, char a2, void *a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CFA2E0;
  *(inited + 32) = a1;
  *(inited + 40) = a3;
  v9 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  v26 = a3;
  v27 = a1;
  v10 = 0;
  v11 = v9;
  while (v10 != 2)
  {
    v12 = *(inited + 8 * v10++ + 32);
    if (v12)
    {
      v13 = v12;
      MEMORY[0x1B8C69CE0]();
      OUTLINED_FUNCTION_4_15();
      if (v14)
      {
        OUTLINED_FUNCTION_3_16();
      }

      sub_1B3C9C808();
      v11 = v28;
    }
  }

  swift_setDeallocating();
  sub_1B389E74C();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1B3CFA2E0;
  if (a2)
  {
    v16 = v27;
  }

  else
  {
    a1 = 0;
  }

  *(v15 + 32) = a1;
  if (a4)
  {
    v17 = v26;
    v18 = v26;
    v19 = a3;
  }

  else
  {
    v19 = 0;
    v17 = v26;
  }

  v20 = 0;
  *(v15 + 40) = v19;
  v29 = v9;
  while (v20 != 2)
  {
    v21 = *(v15 + 8 * v20++ + 32);
    if (v21)
    {
      v22 = v21;
      MEMORY[0x1B8C69CE0]();
      OUTLINED_FUNCTION_4_15();
      if (v14)
      {
        OUTLINED_FUNCTION_3_16();
      }

      sub_1B3C9C808();
      v9 = v29;
    }
  }

  swift_setDeallocating();
  sub_1B389E74C();
  v23 = objc_allocWithZone(type metadata accessor for PickerNavigationBarPalette());
  v24 = sub_1B3796CD0(v11, v9);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v24;
}

id sub_1B3796CD0(unint64_t a1, uint64_t a2)
{
  type metadata accessor for PickerNavigationBarPaletteContentView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = MEMORY[0x1B8C6D660]();
  v7 = 0.0;
  if (v6)
  {
    v7 = 4.0;
  }

  [v5 setDirectionalLayoutMargins_];
  *&v5[OBJC_IVAR____TtC15PhotosUIPrivateP33_DC9A8F55D6B39D6B39426715689DCE8337PickerNavigationBarPaletteContentView_viewsShouldIgnoreHorizontalMargins] = a2;

  v28.receiver = v2;
  v28.super_class = type metadata accessor for PickerNavigationBarPalette();
  v8 = objc_msgSendSuper2(&v28, sel_initWithContentView_, v5);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B3C9D2C8())
  {
    v25 = v8;
    if (!i)
    {
      break;
    }

    v10 = OBJC_IVAR____TtC15PhotosUIPrivateP33_DC9A8F55D6B39D6B39426715689DCE8337PickerNavigationBarPaletteContentView_arrangedSubviews;
    v11 = a1 & 0xC000000000000001;
    v12 = a1;
    v26 = (a1 + 32);
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    a1 = v8;
    while (!__OFSUB__(i--, 1))
    {
      if (v11)
      {
        v14 = MEMORY[0x1B8C6A930](i, v12);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }

        if (i >= *(v27 + 16))
        {
          goto LABEL_19;
        }

        v14 = *&v26[8 * i];
      }

      v15 = v14;
      swift_beginAccess();
      v16 = v15;
      MEMORY[0x1B8C69CE0](v16);
      if (*((*&v5[v10] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v5[v10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B3C9C7E8();
      }

      sub_1B3C9C808();
      swift_endAccess();
      [v5 addSubview_];
      v8 = sub_1B3C9C5A8();
      [v16 addObserver:a1 forKeyPath:v8 options:0 context:0];

      if (!i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v17 = v8;
LABEL_22:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856820);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B3CFA2E0;
  v19 = sub_1B3C9A5D8();
  v20 = MEMORY[0x1E69DC2B0];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = sub_1B3C9A598();
  v22 = MEMORY[0x1E69DC0A0];
  *(v18 + 48) = v21;
  *(v18 + 56) = v22;
  v23 = v25;
  MEMORY[0x1B8C6A4B0](v18, sel_sizeTraitsDidChange);
  swift_unknownObjectRelease();

  [v23 _setContentViewMarginType_];
  [v23 setClipsToBounds_];

  return v23;
}

void sub_1B3796FDC()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for PickerNavigationBarPalette();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_1B3797500();
}

void sub_1B379705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v16 = 0;
    goto LABEL_15;
  }

  if (a1 != 0x6E6564646968 || a2 != 0xE600000000000000)
  {
    OUTLINED_FUNCTION_2_18();
    if ((sub_1B3C9D6A8() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_1B3798758(a3, v29);
  if (!v30)
  {
    sub_1B36FA490(v29);
    goto LABEL_14;
  }

  sub_1B3710718(0, &unk_1EB84F790);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    OUTLINED_FUNCTION_2_18();
    v16 = sub_1B3C9C5A8();
LABEL_15:
    sub_1B3798758(a3, v29);
    if (v30)
    {
      __swift_project_boxed_opaque_existential_0Tm(v29, v30);
      OUTLINED_FUNCTION_15_0();
      v18 = v17;
      MEMORY[0x1EEE9AC00](v19);
      OUTLINED_FUNCTION_8();
      (*(v18 + 16))(v21 - v20);
      OUTLINED_FUNCTION_2_18();
      v22 = sub_1B3C9D688();
      v23 = OUTLINED_FUNCTION_2_18();
      v24(v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      if (a4)
      {
LABEL_17:
        type metadata accessor for NSKeyValueChangeKey(0);
        sub_1B3798710(&qword_1EB850FE0, type metadata accessor for NSKeyValueChangeKey);
        v10 = sub_1B3C9C4A8();
LABEL_20:
        v25 = type metadata accessor for PickerNavigationBarPalette();
        v28.receiver = v5;
        v28.super_class = v25;
        objc_msgSendSuper2(&v28, sel_observeValueForKeyPath_ofObject_change_context_, v16, v22, v10, a5);

        swift_unknownObjectRelease();
        goto LABEL_21;
      }
    }

    else
    {
      v22 = 0;
      if (a4)
      {
        goto LABEL_17;
      }
    }

    v10 = 0;
    goto LABEL_20;
  }

  v10 = v27;
  v11 = [v5 contentView];
  type metadata accessor for PickerNavigationBarPaletteContentView();
  v12 = swift_dynamicCastClassUnconditional();
  v13 = OBJC_IVAR____TtC15PhotosUIPrivateP33_DC9A8F55D6B39D6B39426715689DCE8337PickerNavigationBarPaletteContentView_arrangedSubviews;
  swift_beginAccess();
  v14 = *(v12 + v13);

  v29[0] = v27;
  MEMORY[0x1EEE9AC00](v15);
  v26[2] = v29;
  LOBYTE(v11) = sub_1B3876ED4(sub_1B37987C8, v26, v14);

  if ((v11 & 1) == 0)
  {

    goto LABEL_14;
  }

  [v5 setNeedsLayout];
LABEL_21:
}

void sub_1B3797500()
{
  v1 = v0;
  v2 = [v0 contentView];
  type metadata accessor for PickerNavigationBarPaletteContentView();
  v3 = swift_dynamicCastClassUnconditional();
  v4 = OBJC_IVAR____TtC15PhotosUIPrivateP33_DC9A8F55D6B39D6B39426715689DCE8337PickerNavigationBarPaletteContentView_arrangedSubviews;
  swift_beginAccess();
  v5 = *(v3 + v4);

  v33 = MEMORY[0x1E69E7CC0];
  v6 = sub_1B3711890(v5);
  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8C6A930](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    if ([v8 isHidden])
    {
    }

    else
    {
      sub_1B3C9D408();
      sub_1B3C9D438();
      OUTLINED_FUNCTION_2_18();
      sub_1B3C9D448();
      sub_1B3C9D418();
    }
  }

  v10 = v33;
  v11 = sub_1B3711890(v33);
  v12 = v11;
  if (v11)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B37EACA0(0, v11 & ~(v11 >> 63), 0);
    if (v12 < 0)
    {
      goto LABEL_31;
    }

    v13 = 0;
    v14 = v34;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1B8C6A930](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = v15;
      [v15 intrinsicContentSize];
      v18 = v17;

      v34 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B37EACA0((v19 > 1), v20 + 1, 1);
      }

      ++v13;
      *(v14 + 16) = v20 + 1;
      *(v14 + 8 * v20 + 32) = v18;
    }

    while (v12 != v13);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v14 + 16);
  if (v21)
  {
    v22 = (v14 + 32);
    v23 = 0.0;
    do
    {
      v24 = *v22++;
      v23 = v23 + v24;
      --v21;
    }

    while (v21);
  }

  else
  {
    v23 = 0.0;
  }

  v25 = v12 * 12.0 + v23;
  v26 = [v1 contentView];
  [v26 directionalLayoutMargins];
  v28 = v27;

  v29 = v25 + v28;
  v30 = [v1 contentView];
  [v30 directionalLayoutMargins];
  v32 = v31;

  [v1 setPreferredHeight_];
}

uint64_t sub_1B3797820()
{
  v1 = sub_1B3C9C118();
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v7 = v6 - v5;
  v8 = sub_1B3C9C168();
  OUTLINED_FUNCTION_15_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v13 - v12;
  sub_1B3710718(0, &qword_1EB84FE60);
  v15 = sub_1B3C9CC88();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  aBlock[4] = sub_1B37986F8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_22;
  v17 = _Block_copy(aBlock);
  v18 = v0;
  sub_1B3C9C138();
  sub_1B3798710(&qword_1EB84FEE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0);
  sub_1B37254F8();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v14, v7, v17);
  _Block_release(v17);

  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
}

void sub_1B3797B88()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for PickerNavigationBarPaletteContentView();
  objc_msgSendSuper2(&v27, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v28);
  [v0 directionalLayoutMargins];
  v3 = v2;
  v4 = OBJC_IVAR____TtC15PhotosUIPrivateP33_DC9A8F55D6B39D6B39426715689DCE8337PickerNavigationBarPaletteContentView_arrangedSubviews;
  swift_beginAccess();
  v5 = *&v0[v4];
  v6 = sub_1B3711890(v5);
  if (v6)
  {
    v7 = v6;
    v24 = v5 & 0xFFFFFFFFFFFFFF8;
    v25 = OBJC_IVAR____TtC15PhotosUIPrivateP33_DC9A8F55D6B39D6B39426715689DCE8337PickerNavigationBarPaletteContentView_viewsShouldIgnoreHorizontalMargins;
    v23 = v5 + 32;

    while (!__OFSUB__(v7--, 1))
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B8C6A930](v7, v5);
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }

        if (v7 >= *(v24 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v23 + 8 * v7);
      }

      v10 = v9;
      v11 = [v9 isHidden];
      if (!v11)
      {
        v13 = *&v0[v25];
        if (!v13 || (v26 = v10, MEMORY[0x1EEE9AC00](v11), v22[2] = &v26, , v14 = sub_1B3876ED4(sub_1B37986D8, v22, v13), , v12 = 0.0, v15 = 0.0, (v14 & 1) == 0))
        {
          [v0 directionalLayoutMargins];
          v15 = v16;
          [v0 directionalLayoutMargins];
          v18 = v17;
          [v0 directionalLayoutMargins];
          v12 = v18 + v19;
        }

        v20 = Width - v12;
        [v10 intrinsicContentSize];
        [v10 setFrame_];
        [v10 frame];
        v3 = CGRectGetMaxY(v29) + 12.0;
        [v0 sendSubviewToBack_];
      }

      if (!v7)
      {

        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }
}

id sub_1B3797E50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerNavigationBarPaletteContentView();
  objc_msgSendSuper2(&v2, sel_layoutMarginsDidChange);
  return [v0 setNeedsLayout];
}

id sub_1B3797EE0(uint64_t a1, double a2, double a3)
{
  v7 = [v3 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (!MEMORY[0x1B8C6D660]() || v8 == 6)
  {
    swift_beginAccess();

    v11 = sub_1B3797FE4(v10);
    v9 = sub_1B379826C(v11, a1, a2, a3);
  }

  else
  {
    v13.receiver = v3;
    v13.super_class = type metadata accessor for PickerNavigationBarPaletteContentView();
    return objc_msgSendSuper2(&v13, sel_hitTest_withEvent_, a1, a2, a3);
  }

  return v9;
}

unint64_t sub_1B3797FE4(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v19 = sub_1B3C9D2C8();
    if (v19)
    {
      v20 = v19;
      v2 = sub_1B383D1DC(v19, 0);
      sub_1B37EC794(v2 + 32, v20, v1);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v1 = *(v2 + 16);
        v3 = v1 >> 1;
        goto LABEL_6;
      }

LABEL_39:
      v23 = sub_1B3C9D2C8();
      if (v23 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v1 = v23;
    v3 = v23 / 2;
LABEL_6:
    if (v1 + 1 < 3)
    {
      return v2;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v1 - (v6 - 3);
      if (__OFSUB__(v1, v6 - 3))
      {
        break;
      }

      v8 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1B8C6A930]();
          v12 = MEMORY[0x1B8C6A930](v1 - (v6 - 3), v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          if (v7 >= v9)
          {
            goto LABEL_34;
          }

          v10 = *(v2 + 8 * v7 + 32);
          v11 = *(v2 + 8 * v6);
          v12 = v10;
        }

        v13 = v12;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_1B37A4FC8(v2);
          v14 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v2 & 0xFFFFFFFFFFFFFF8;
        v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v13;

        if ((v2 & 0x8000000000000000) != 0 || v14)
        {
          v2 = sub_1B37A4FC8(v2);
          v15 = v2 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_30:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_35;
        }

        v17 = v15 + 8 * v7;
        v18 = *(v17 + 32);
        *(v17 + 32) = v11;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

uint64_t sub_1B379826C(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = a1;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B3C9D2C8())
  {
    v10 = 0;
    v11 = v8 & 0xC000000000000001;
    v12 = v8 & 0xFFFFFFFFFFFFFF8;
    v26 = v8;
    while (1)
    {
      if (v11)
      {
        v13 = MEMORY[0x1B8C6A930](v10, v8);
      }

      else
      {
        if (v10 >= *(v12 + 16))
        {
          goto LABEL_21;
        }

        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (([v13 isHidden] & 1) != 0 || (objc_msgSend(v14, sel_alpha), v16 <= 0.01) || !objc_msgSend(v14, sel_isUserInteractionEnabled))
      {
      }

      else
      {
        [v4 convertPoint:v14 toCoordinateSpace:{a3, a4}];
        v17 = [v14 hitTest:a2 withEvent:?];
        if (v17)
        {
          v24 = v17;

          return v24;
        }

        v18 = [v14 subviews];
        sub_1B3710718(0, &unk_1EB84F790);
        v19 = i;
        v20 = v11;
        v21 = v12;
        v22 = a2;
        v23 = sub_1B3C9C788();

        v24 = sub_1B379826C(v23, v22, a3, a4);
        a2 = v22;
        v12 = v21;
        v11 = v20;
        i = v19;
        v8 = v26;

        if (v24)
        {
          return v24;
        }
      }

      ++v10;
      if (v15 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return 0;
}

id sub_1B3798490(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivateP33_DC9A8F55D6B39D6B39426715689DCE8337PickerNavigationBarPaletteContentView_arrangedSubviews] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivateP33_DC9A8F55D6B39D6B39426715689DCE8337PickerNavigationBarPaletteContentView_viewsShouldIgnoreHorizontalMargins] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PickerNavigationBarPaletteContentView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1B379853C(void *a1)
{
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_DC9A8F55D6B39D6B39426715689DCE8337PickerNavigationBarPaletteContentView_arrangedSubviews] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_DC9A8F55D6B39D6B39426715689DCE8337PickerNavigationBarPaletteContentView_viewsShouldIgnoreHorizontalMargins] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PickerNavigationBarPaletteContentView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1B379860C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B3798710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B3798758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB850170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return sub_1B3C9C7E8();
}

uint64_t PUEditBadgeLabel.text.getter()
{
  OUTLINED_FUNCTION_3_17();
  v0 = sub_1B3798A88();

  return v0;
}

uint64_t PUEditBadgeLabel.text.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_17();
  sub_1B3798B08(a1, a2);
}

void sub_1B37989B0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B3C9C5E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B3798A18(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1B3C9C5A8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setText_];
}

uint64_t sub_1B3798A88()
{
  swift_getKeyPath();
  sub_1B3799D0C();
  sub_1B3C982D8();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1B3798B08(uint64_t a1, uint64_t a2)
{
  if (sub_1B3799B28(*(v2 + 16), *(v2 + 24), a1, a2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B3799BB8();
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }
}

uint64_t sub_1B3798CB0()
{
  swift_getKeyPath();
  sub_1B3799D0C();
  sub_1B3C982D8();

  return *(v0 + 32);
}

uint64_t sub_1B3798D20(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B3799BB8();
  }

  return result;
}

uint64_t sub_1B3798E20(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_3_17();
  v3 = a1(v2);

  return v3;
}

uint64_t sub_1B3798EDC(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_3_17();
  a2(a1);
}

id sub_1B3798F34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 interfaceTheme];
  *a2 = result;
  return result;
}

uint64_t sub_1B3798F70()
{
  swift_getKeyPath();
  sub_1B3799D0C();
  sub_1B3C982D8();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B3798FE4(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B3799BB8();

    return swift_unknownObjectRelease();
  }
}

id PUEditBadgeLabel.init(text:style:interfaceTheme:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1B3C9C5A8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v6 style:a3 interfaceTheme:a4];

  swift_unknownObjectRelease();
  return v7;
}

{
  v5 = v4;
  v10 = _s15IntegrationViewVMa(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  if (a4)
  {
    v11 = a4;
LABEL_5:
    _s16IntegrationModelCMa(0);
    swift_allocObject();
    swift_unknownObjectRetain();
    *&v5[OBJC_IVAR___PUEditBadgeLabel_integrationModel] = sub_1B3799CA8(a1, a2, a3, v11);
    sub_1B3799D0C();

    sub_1B3C9BF18();
    v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853BB0));
    *&v5[OBJC_IVAR___PUEditBadgeLabel_hostingController] = sub_1B3C9B088();
    v15.receiver = v5;
    v15.super_class = PUEditBadgeLabel;
    v14 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v14 setupViews];

    swift_unknownObjectRelease();
    return v14;
  }

  result = [objc_opt_self() currentTheme];
  if (result)
  {
    v11 = result;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1B3799474()
{
  v1 = v0;
  v2 = sub_1B3C9B498();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OBJC_IVAR___PUEditBadgeLabel_hostingController;
  v4 = *&v0[OBJC_IVAR___PUEditBadgeLabel_hostingController];
  sub_1B3C9B078();

  v5 = *&v1[v3];
  sub_1B3C9B488();
  sub_1B3C9B068();

  v6 = [*&v1[v3] view];
  if (v6)
  {
    v7 = v6;
    v8 = [*&v1[v3] view];
    if (v8)
    {
      v9 = v8;
      [v1 addSubview_];

      v10 = [objc_opt_self() clearColor];
      [v7 setBackgroundColor_];

      [v7 setTranslatesAutoresizingMaskIntoConstraints_];
      v11 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1B3D001A0;
      v13 = [v7 topAnchor];
      v14 = [v1 topAnchor];
      v15 = [v13 constraintEqualToAnchor_];

      *(v12 + 32) = v15;
      v16 = [v7 bottomAnchor];
      v17 = [v1 bottomAnchor];
      v18 = [v16 constraintEqualToAnchor_];

      *(v12 + 40) = v18;
      v19 = [v7 leadingAnchor];
      v20 = [v1 leadingAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      *(v12 + 48) = v21;
      v22 = [v7 trailingAnchor];
      v23 = [v1 trailingAnchor];
      v24 = [v22 constraintEqualToAnchor_];

      *(v12 + 56) = v24;
      sub_1B3710718(0, &qword_1EB84FE50);
      v25 = sub_1B3C9C778();

      [v11 activateConstraints_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B3799830@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B3C9B5A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853BD0);
  sub_1B3C9BEF8();
  v19 = sub_1B3798A88();
  v7 = v6;

  if (v7)
  {
    sub_1B3C9BEF8();
    v18 = sub_1B3798CB0();

    v9 = [objc_opt_self() systemBackgroundColor];
    v10 = sub_1B3C9BAF8();
    sub_1B3C9B598();
    sub_1B3C9B648();
    v11 = sub_1B3C9B668();
    (*(v3 + 8))(v5, v2);
    KeyPath = swift_getKeyPath();
    v13 = swift_getKeyPath();
    sub_1B3C9BEF8();
    v14 = sub_1B3798F70();

    v16 = v18;
    v15 = v19;
    LOBYTE(v20) = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v10 = 0;
    v11 = 0;
    KeyPath = 0;
    v13 = 0;
    v14 = 0;
  }

  *a1 = v15;
  a1[1] = v7;
  a1[2] = v16;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = KeyPath;
  a1[6] = 0;
  a1[7] = v13;
  a1[8] = v14;
  return result;
}

uint64_t sub_1B3799A40()
{
  sub_1B379A118();
  sub_1B3C9AE98();
  return v1;
}

uint64_t sub_1B3799AE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1B3798B08(v1, v2);
}

BOOL sub_1B3799B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1B3C9D6A8();
    }
  }

  return (v5 & 1) == 0;
}

uint64_t sub_1B3799B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t sub_1B3799C6C(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void *sub_1B3799CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = 0;
  v4[3] = 0;
  sub_1B3C98308();

  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

unint64_t sub_1B3799D0C()
{
  result = qword_1EB84F1C8;
  if (!qword_1EB84F1C8)
  {
    _s16IntegrationModelCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F1C8);
  }

  return result;
}

uint64_t sub_1B3799D64()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCE15PhotosUIPrivateCSo16PUEditBadgeLabelP33_36D9F3D8731501D2A2DAEB6E304B142616IntegrationModel___observationRegistrar;
  v2 = sub_1B3C98318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1B3799DD4()
{
  v0 = sub_1B3799D64();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void __swiftcall PUEditBadgeLabel.init(frame:)(PUEditBadgeLabel *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

uint64_t sub_1B3799EEC()
{
  result = sub_1B3C98318();
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

void sub_1B379A038()
{
  sub_1B379A0A4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B379A0A4()
{
  if (!qword_1EB84F250)
  {
    _s16IntegrationModelCMa(255);
    v0 = sub_1B3C9BF38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB84F250);
    }
  }
}

unint64_t sub_1B379A118()
{
  result = qword_1EB84F310;
  if (!qword_1EB84F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F310);
  }

  return result;
}

uint64_t sub_1B379A188@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v55 = sub_1B3C9BFD8();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v3);
  v50[1] = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C00);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v50 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C08);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v9);
  v56 = v50 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853C10);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v11);
  v57 = v50 - v12;
  v13 = v1[1];
  v53 = *v1;
  v59 = v53;
  v60 = v13;
  sub_1B371B158();
  v52 = v13;
  swift_bridgeObjectRetain_n();
  v14 = sub_1B3C9B7A8();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  KeyPath = swift_getKeyPath();
  v59 = v14;
  v60 = v16;
  v61 = v18 & 1;
  v62 = v20;
  v63 = KeyPath;
  v64 = 1;
  v65 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C20);
  sub_1B379AA84();
  sub_1B3C9BA78();
  sub_1B371B148(v14, v16, v18 & 1);

  v22 = v2[4];
  v23 = swift_getKeyPath();
  v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C30) + 36)];
  *v24 = v23;
  v24[1] = v22;

  LODWORD(v22) = sub_1B3C9B338();
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C38) + 36)] = v22;
  sub_1B3C9B4F8();
  sub_1B3C9A738();
  OUTLINED_FUNCTION_6();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C40);
  OUTLINED_FUNCTION_1_17(v25);
  sub_1B3C9B568();
  sub_1B3C9A738();
  OUTLINED_FUNCTION_6();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C48);
  OUTLINED_FUNCTION_1_17(v26);
  *&v8[*(v6 + 44)] = 0x3FF0000000000000;
  if (v2[2] == 1)
  {
    sub_1B3C9BFC8();
    v27 = v55;
    v28 = sub_1B3C9A8E8();
  }

  else
  {
    v59 = sub_1B3C9BB78();
    v28 = sub_1B3C9A8E8();
    v27 = v55;
  }

  v29 = v56;
  v30 = &v56[*(v51 + 36)];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C50);
  v32 = v30 + *(v31 + 52);
  v33 = *(sub_1B3C9AB78() + 20);
  v34 = *MEMORY[0x1E697F468];
  sub_1B3C9AFA8();
  OUTLINED_FUNCTION_0_1();
  (*(v35 + 104))(&v32[v33], v34);
  __asm { FMOV            V0.2D, #6.0 }

  *v32 = _Q0;
  *v30 = v28;
  *(v30 + *(v31 + 56)) = 256;
  sub_1B379AB3C(v8, v29, &qword_1EB853C00);
  v41 = v57;
  sub_1B379AB3C(v29, v57, &qword_1EB853C08);
  v42 = (v41 + *(v54 + 52));
  v43 = v52;
  *v42 = v53;
  v42[1] = v43;
  v44 = swift_getKeyPath();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C58);
  v46 = v58;
  v47 = (v58 + *(v45 + 36));
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C60) + 28);
  sub_1B3C9BFC8();
  __swift_storeEnumTagSinglePayload(v47 + v48, 0, 1, v27);
  *v47 = v44;
  return sub_1B379AB3C(v41, v46, &unk_1EB853C10);
}

uint64_t sub_1B379A674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C68);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B379AB9C(a1, &v5 - v3);
  return sub_1B3C9AD58();
}

id sub_1B379A708()
{
  result = [objc_opt_self() currentTheme];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1B379A744@<X0>(void *a1@<X8>)
{
  result = sub_1B379A708();
  *a1 = result;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B379A7D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1B379A814(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B379A874()
{
  result = qword_1EB84F3A8;
  if (!qword_1EB84F3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB853BE0);
    sub_1B379A8F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F3A8);
  }

  return result;
}

unint64_t sub_1B379A8F8()
{
  result = qword_1EB84F3B8;
  if (!qword_1EB84F3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB853BF0);
    sub_1B379A9B0();
    sub_1B370ED54(&unk_1EB84F2B0, &qword_1EB854370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F3B8);
  }

  return result;
}

unint64_t sub_1B379A9B0()
{
  result = qword_1EB84F718;
  if (!qword_1EB84F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F718);
  }

  return result;
}

uint64_t sub_1B379AA20@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B3C9AE38();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1B379AA84()
{
  result = qword_1EB84F388;
  if (!qword_1EB84F388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853C20);
    sub_1B370ED54(&qword_1EB84F2C0, &qword_1EB853C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F388);
  }

  return result;
}

uint64_t sub_1B379AB3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1B379AB9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B379AC0C()
{
  result = qword_1EB84F360;
  if (!qword_1EB84F360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853C58);
    sub_1B370ED54(&qword_1EB84F288, &unk_1EB853C10);
    sub_1B370ED54(&unk_1EB84F2D0, &qword_1EB853C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F360);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_17()
{
}

void sub_1B379AD08(uint64_t a1, int a2)
{
  v3 = [v2 suggestions];
  v4 = sub_1B3C9C788();

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B37106B4(v6, v34);
      sub_1B370ED44(v34, &v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB850CA0);
      if (swift_dynamicCast() && v33)
      {
        v30 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B370FC9C(0, *(v7 + 16) + 1, 1, v7);
          v7 = v11;
        }

        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        v10 = v30;
        if (v9 >= v8 >> 1)
        {
          sub_1B370FC9C(v8 > 1, v9 + 1, 1, v7);
          v10 = v30;
          v7 = v12;
        }

        *(v7 + 16) = v9 + 1;
        *(v7 + 16 * v9 + 32) = v10;
      }

      v6 += 32;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v13 = 0;
  v14 = *(v7 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  while (v14 != v13)
  {
    if (v13 >= *(v7 + 16))
    {
      __break(1u);
      return;
    }

    v31 = *(v7 + 16 * v13 + 32);
    v16 = *(v7 + 16 * v13 + 32);
    ObjectType = swift_getObjectType();
    v18 = *(*(&v31 + 1) + 48);
    v19 = v16;
    if (v18(a1, a2 & 0x10101, ObjectType, *(&v31 + 1)))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34[0] = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B37EAC80(0, *(v15 + 16) + 1, 1);
        v15 = *&v34[0];
      }

      v21 = v31;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B37EAC80((v22 > 1), v23 + 1, 1);
        v21 = v31;
        v15 = *&v34[0];
      }

      ++v13;
      *(v15 + 16) = v23 + 1;
      *(v15 + 16 * v23 + 32) = v21;
    }

    else
    {

      ++v13;
    }
  }

  v24 = *(v15 + 16) + 1;
  v25 = 32;
  while (--v24)
  {
    v26 = v25 + 16;
    sub_1B3C9C238();
    v27 = swift_dynamicCastClass();
    v25 = v26;
    if (!v27)
    {
      return;
    }
  }
}

void *sub_1B379B004()
{
  v0 = sub_1B3C9C3A8();
  result = 0;
  switch(v0)
  {
    case 1:
      result = &unk_1F2AB30B8;
      break;
    case 2:
      result = &unk_1F2AB30E0;
      break;
    case 3:
      result = &unk_1F2AB3108;
      break;
    case 4:
      result = &unk_1F2AB3130;
      break;
    case 5:
      result = &unk_1F2AB3090;
      break;
    case 7:
      result = &unk_1F2AB3158;
      break;
    case 8:
      result = &unk_1F2AB3180;
      break;
    case 9:
      result = &unk_1F2AB31A8;
      break;
    case 10:
      result = &unk_1F2AB31D0;
      break;
    case 11:
      result = &unk_1F2AB31F8;
      break;
    case 12:
      result = &unk_1F2AB3220;
      break;
    case 13:
      result = &unk_1F2AB3248;
      break;
    case 14:
      result = &unk_1F2AB3270;
      break;
    case 15:
      result = &unk_1F2AB3298;
      break;
    case 16:
      result = &unk_1F2AB32C0;
      break;
    default:
      return result;
  }

  return result;
}

id sub_1B379B100(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B3CF9810;
  sub_1B3710718(0, &qword_1EB84F210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852810);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B3CFA2E0;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1B3753408();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0x6574617473;
  *(v3 + 40) = 0xE500000000000000;
  v6 = MEMORY[0x1E69E75F8];
  v7 = MEMORY[0x1E69E7660];
  *(v3 + 96) = MEMORY[0x1E69E75F8];
  *(v3 + 104) = v7;
  *(v3 + 72) = 4;
  *(v2 + 32) = sub_1B3C9CA28();
  v29 = v2;
  sub_1B3C9C3A8();
  v8 = sub_1B3C9C398();
  if (v8 == sub_1B3C9C398())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B3CFC4D0;
    *(v9 + 56) = v4;
    *(v9 + 64) = v5;
    *(v9 + 32) = 0x65707974627573;
    *(v9 + 40) = 0xE700000000000000;
    *(v9 + 96) = v6;
    *(v9 + 104) = v7;
    *(v9 + 72) = 602;
    *(v9 + 136) = v4;
    *(v9 + 144) = v5;
    *(v9 + 112) = 0x65707974627573;
    *(v9 + 120) = 0xE700000000000000;
    *(v9 + 176) = v6;
    *(v9 + 184) = v7;
    v10 = 605;
    goto LABEL_5;
  }

  sub_1B3C9C3A8();
  v11 = sub_1B3C9C398();
  if (v11 == sub_1B3C9C398())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B3CFC4D0;
    *(v9 + 56) = v4;
    *(v9 + 64) = v5;
    *(v9 + 32) = 0x65707974627573;
    *(v9 + 40) = 0xE700000000000000;
    *(v9 + 96) = v6;
    *(v9 + 104) = v7;
    *(v9 + 72) = 801;
    *(v9 + 136) = v4;
    *(v9 + 144) = v5;
    *(v9 + 112) = 0x65707974627573;
    *(v9 + 120) = 0xE700000000000000;
    *(v9 + 176) = v6;
    *(v9 + 184) = v7;
    v10 = 805;
LABEL_5:
    *(v9 + 152) = v10;
    sub_1B3C9CA28();
    MEMORY[0x1B8C69CE0]();
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B3C9C7E8();
    }

    goto LABEL_22;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B3CFA2E0;
  *(v12 + 56) = v4;
  *(v12 + 64) = v5;
  *(v12 + 32) = 0x65707974627573;
  *(v12 + 40) = 0xE700000000000000;
  v13 = sub_1B379B004();
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = v13;
    v16 = v13[2];
    if (v16)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_1B37EACC0(0, v16, 0);
      v17 = v28;
      v18 = *(v28 + 16);
      v19 = 32;
      do
      {
        v20 = *(v15 + v19);
        v21 = *(v28 + 24);
        if (v18 >= v21 >> 1)
        {
          sub_1B37EACC0((v21 > 1), v18 + 1, 1);
        }

        *(v28 + 16) = v18 + 1;
        *(v28 + 2 * v18 + 32) = v20;
        v19 += 2;
        ++v18;
        --v16;
      }

      while (v16);

      v14 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v17 = 0;
  }

  *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C70);
  *(v12 + 104) = sub_1B379E228();
  if (v17)
  {
    v22 = v17;
  }

  else
  {
    v22 = v14;
  }

  *(v12 + 72) = v22;
  sub_1B3C9CA28();
  MEMORY[0x1B8C69CE0]();
  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B3C9C7E8();
  }

LABEL_22:
  sub_1B3C9C808();
  sub_1B3710718(0, &qword_1EB84F188);
  v23 = sub_1B3809B44();
  [v1 setPredicate_];

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B3CFB680;
  v25 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v24 + 32) = sub_1B38810B4(0x6E6F697461657263, 0xEC00000065746144, 0);
  v26 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v24 + 40) = sub_1B38810B4(1684632949, 0xE400000000000000, 0);
  sub_1B3881270(v24, v1);
  return v1;
}

id sub_1B379B640(void *a1)
{
  v2 = sub_1B3C99DE8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(sub_1B3C9C3A8())
  {
    case 0:
      v15 = sub_1B379B100(a1);
      v16 = [objc_opt_self() fetchSuggestionsWithOptions_];
      v17 = [objc_opt_self() randomNumberGeneratorForWallpaperDonation];
      v18 = [v16 fetchedObjects];
      if (v18)
      {
        v19 = v18;
        sub_1B3710718(0, &unk_1EB850C80);
        v20 = sub_1B3C9C788();
      }

      else
      {
        v20 = MEMORY[0x1E69E7CC0];
      }

      sub_1B370BBC4(v20);

      v29 = sub_1B3C9C778();

      v30 = PFShuffledArrayWithRandomNumberGenerator();

      v31 = sub_1B3C9C788();
      v32 = sub_1B37E9AAC(48, v31);
      v23 = v33;
      v35 = v34;
      v37 = v36;
      if ((v36 & 1) == 0)
      {
        goto LABEL_13;
      }

      sub_1B3C9D6C8();
      swift_unknownObjectRetain_n();
      v38 = swift_dynamicCastClass();
      if (!v38)
      {
        swift_unknownObjectRelease();
        v38 = MEMORY[0x1E69E7CC0];
      }

      v39 = *(v38 + 16);

      if (__OFSUB__(v37 >> 1, v35))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v39 != (v37 >> 1) - v35)
      {
        goto LABEL_35;
      }

      v40 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v40)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    case 6:
      v21 = sub_1B379B100(a1);
      v16 = [objc_opt_self() fetchSuggestionsWithOptions_];
      v22 = objc_opt_self();
      v17 = [v22 filterSuggestions:v16 includingSingleFeature:2];
      v23 = [v22 randomNumberGeneratorForWallpaperDonation];
      v24 = [v17 fetchedObjects];
      if (v24)
      {
        v25 = v24;
        sub_1B3710718(0, &unk_1EB850C80);
        v26 = sub_1B3C9C788();
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

      sub_1B370BBC4(v26);

      v51 = sub_1B3C9C778();

      v52 = PFShuffledArrayWithRandomNumberGenerator();

      v53 = sub_1B3C9C788();
      v32 = sub_1B37E9AAC(48, v53);
      v35 = v54;
      v37 = v55;
      v57 = v56;
      if ((v56 & 1) == 0)
      {
        goto LABEL_23;
      }

      v70[1] = v23;
      v23 = v17;
      v17 = v16;
      v16 = v21;
      v21 = sub_1B3C9D6C8();
      swift_unknownObjectRetain_n();
      v58 = swift_dynamicCastClass();
      if (!v58)
      {
        swift_unknownObjectRelease();
        v58 = MEMORY[0x1E69E7CC0];
      }

      v15 = *(v58 + 16);

      if (!__OFSUB__(v57 >> 1, v37))
      {
        if (v15 == ((v57 >> 1) - v37))
        {
          v59 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_12_9();
          if (v59)
          {
LABEL_30:
            sub_1B3C9C5E8();
            objc_allocWithZone(MEMORY[0x1E69788E0]);
            v60 = a1;
            OUTLINED_FUNCTION_10_11();
            sub_1B37EA7D0(v61, v62, v63, v64, v65, v66, v67, v68);
            v28 = v69;

            return v28;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_12_9();
LABEL_23:
          sub_1B37EAAE0(v32, v35, v37, v57);
        }

        swift_unknownObjectRelease();
        goto LABEL_30;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      swift_unknownObjectRelease();
LABEL_13:
      sub_1B37EAAE0(v32, v23, v35, v37);
LABEL_19:
      swift_unknownObjectRelease();
LABEL_20:
      sub_1B3C9C5E8();
      objc_allocWithZone(MEMORY[0x1E69788E0]);
      v41 = a1;
      OUTLINED_FUNCTION_10_11();
      sub_1B37EA7D0(v42, v43, v44, v45, v46, v47, v48, v49);
      v28 = v50;

      return v28;
    case 7:
    case 8:
    case 9:
    case 10:
      v8 = sub_1B379B100(a1);
      v9 = [objc_opt_self() fetchSuggestionsWithOptions_];
      v10 = [objc_opt_self() filterSuggestions:v9 includingSingleFeature:2];
      goto LABEL_4;
    case 14:
    case 15:
    case 16:
      v8 = sub_1B379B100(a1);
      v9 = [objc_opt_self() fetchSuggestionsWithOptions_];
      v10 = [objc_opt_self() filterSuggestions:v9 includingSingleFeature:16];
LABEL_4:
      v11 = v10;

      return v11;
    case 17:
      v27 = a1;
      sub_1B3C99DB8();
      sub_1B3C99DD8();
      v28 = sub_1B3C99DC8();
      (*(v4 + 8))(v7, v2);
      return v28;
    default:
      v13 = sub_1B379B100(a1);
      v14 = [objc_opt_self() fetchSuggestionsWithOptions_];

      return v14;
  }
}

id sub_1B379BD14(uint64_t a1, id a2)
{
  v3 = [a2 librarySpecificFetchOptions];
  [v3 setIncludeGuestAssets_];
  result = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:a1 options:v3];
  if (result)
  {
    v5 = result;
    sub_1B3710718(0, &qword_1EB84F770);
    v6 = sub_1B3C9C4C8();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B379BDE4()
{
  switch(sub_1B3C9C3C8())
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      if (PLSearchLookupIdentifierForStickerSuggestionType())
      {
        sub_1B3C9C5E8();
        OUTLINED_FUNCTION_15_11();
      }

      break;
    default:
      return OUTLINED_FUNCTION_87();
  }

  return OUTLINED_FUNCTION_87();
}

id sub_1B379BEC8(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  [v1 setFetchLimit_];
  [v1 setIncludeStoryMemories_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851C50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B3CF6CE0;
  *(v3 + 32) = sub_1B3C9C408();
  *(v3 + 40) = v4;
  v5 = sub_1B3C9C778();

  v6 = [v2 fetchAssetCollectionsWithLocalIdentifiers:v5 options:v1];

  v7 = [v6 firstObject];
  return v7;
}

uint64_t sub_1B379BFDC()
{
  v0 = sub_1B3C9C5A8();
  v1 = PXLocalizedString();

  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_7_18();
  return OUTLINED_FUNCTION_5_14();
}

unint64_t sub_1B379C060(__int16 a1)
{
  if ((a1 & 0x100) != 0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1B379C254()
{
  switch(sub_1B3C9C3C8())
  {
    case 0:
    case 7:
      result = 0x696E6B2E6B726F66;
      break;
    case 1:
      OUTLINED_FUNCTION_3_18();
      result = OUTLINED_FUNCTION_9_10();
      break;
    case 2:
      OUTLINED_FUNCTION_8_13();
      result = v1 | 7;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      OUTLINED_FUNCTION_8_13();
      result = v2 | 4;
      break;
    case 5:
    case 8:
      result = 0x6C6C69662E726163;
      break;
    case 6:
      result = 0x746F68706576696CLL;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_1B379C348()
{
  v0 = 0xD000000000000017;
  switch(sub_1B3C9C3C8())
  {
    case 0:
    case 6:
    case 7:
      return v0;
    case 1:
    case 2:
    case 4:
      v0 = 0xD000000000000019;
      break;
    case 3:
      v0 = 0xD00000000000001ALL;
      break;
    case 5:
    case 8:
      v0 = 0xD00000000000001DLL;
      break;
    default:
      v0 = 0xD000000000000012;
      break;
  }

  return v0;
}

uint64_t sub_1B379C424()
{
  OUTLINED_FUNCTION_4_16();
  sub_1B3C9D378();
  OUTLINED_FUNCTION_6_15();
  MEMORY[0x1B8C69C10](0xD00000000000001CLL);
  sub_1B3C9C3C8();
  sub_1B3C9D458();
  return v1;
}

uint64_t sub_1B379C4A8(void *a1, char a2)
{
  if (a2)
  {
    return 1;
  }

  v3 = [a1 librarySpecificFetchOptions];
  [v3 setFetchLimit_];
  [v3 setShouldPrefetchCount_];
  v4 = objc_opt_self();
  v5 = sub_1B379BDE4();
  v7 = v6;
  v8 = [a1 librarySpecificFetchOptions];
  v9 = sub_1B37D64FC(v5, v7, v8, v4);

  v10 = [v9 firstObject];
  if (v10)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_1B379C5C0()
{
  v0 = OUTLINED_FUNCTION_14_11();
  v1 = PXLocalizedString();

  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_7_18();
  return OUTLINED_FUNCTION_5_14();
}

unint64_t sub_1B379C630()
{
  sub_1B3C9D378();

  v0 = sub_1B3C9C408();
  MEMORY[0x1B8C69C10](v0);

  return 0xD000000000000020;
}

uint64_t sub_1B379C6B0(void *a1)
{
  result = sub_1B379BEC8(a1);
  if (result)
  {
    v3 = result;
    v4 = [a1 librarySpecificFetchOptions];
    [v4 setFetchLimit_];
    [v4 setShouldPrefetchCount_];
    v5 = sub_1B3C9C418();
    v6 = objc_opt_self();
    v7 = &selRef_fetchExtendedCuratedAssetsInAssetCollection_options_;
    if ((v5 & 1) == 0)
    {
      v7 = &selRef_fetchAssetsInAssetCollection_options_;
    }

    v8 = [v6 *v7];
    v9 = [v8 firstObject];

    if (v9)
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B379C9C0()
{
  switch(sub_1B3C9C3A8())
  {
    case 0:
    case 5:
    case 6:
    case 17:
      result = 0x6C69662E72617473;
      break;
    case 1:
    case 10:
      result = 0xD000000000000017;
      break;
    case 2:
    case 9:
    case 11:
    case 16:
      OUTLINED_FUNCTION_3_18();
      result = OUTLINED_FUNCTION_9_10();
      break;
    case 3:
    case 7:
    case 12:
    case 15:
      result = 0x6C69662E6661656CLL;
      break;
    case 4:
    case 8:
    case 13:
    case 14:
      OUTLINED_FUNCTION_3_18();
      result = 0x676E69646C697562;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_1B379CC14()
{
  OUTLINED_FUNCTION_4_16();
  sub_1B3C9D378();
  OUTLINED_FUNCTION_6_15();
  MEMORY[0x1B8C69C10](0xD00000000000001ALL);
  sub_1B3C9C3A8();
  sub_1B3C9D458();
  return v1;
}

uint64_t sub_1B379CC98()
{
  v0 = sub_1B3C9C3A8();
  if (v0 > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_1B3D00DC8[v0];
  }
}

void sub_1B379CCCC(void *a1)
{
  v2 = sub_1B3C99DE8();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B379B100(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B3CF9810;
  v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v9 + 32) = sub_1B38810B4(0xD000000000000011, 0x80000001B3D13E80, 0);
  sub_1B3881270(v9, v8);
  v11 = [objc_opt_self() fetchSuggestionsWithOptions_];
  v12 = sub_1B3C9C3A8();
  if (!sub_1B37D8D94(v12, &unk_1F2AB32E8))
  {
    v21 = [v11 firstObject];
    if (v21)
    {
    }

    else
    {
LABEL_15:
      sub_1B3C9C3A8();
      v22 = sub_1B3C9C398();
      if (v22 != sub_1B3C9C398() || (v38 = v7, v23 = objc_opt_self(), v24 = [v23 coldStartDeviceOwnerWallpaperInPhotoLibrary_], sub_1B3710718(0, &qword_1EB84F770), v25 = sub_1B3C9C788(), v24, v26 = sub_1B3711890(v25), , !v26) && (v27 = objc_msgSend(v23, sel_coldStartPortraitWallpaperInPhotoLibrary_, a1), v28 = sub_1B3C9C788(), v27, v29 = sub_1B3711890(v28), , v7 = v38, !v29))
      {
        sub_1B3C9C3A8();
        v30 = sub_1B3C9C398();
        if (v30 == sub_1B3C9C398())
        {
          v31 = a1;
          sub_1B3C99DB8();
          v32 = sub_1B3C99DC8();
          [v32 count];

          (*(v4 + 8))(v7, v2);
          return;
        }
      }
    }

    return;
  }

  v34 = a1;
  v35 = v4;
  v37 = v11;
  v38 = v7;
  v36 = v2;
  v13 = [v11 fetchedObjects];
  if (v13)
  {
    v14 = v13;
    sub_1B3710718(0, &unk_1EB850C80);
    v15 = sub_1B3C9C788();

    v16 = sub_1B3711890(v15);
    for (i = 0; ; ++i)
    {
      if (v16 == i)
      {

        v4 = v35;
        v2 = v36;
        v11 = v37;
        v7 = v38;
        a1 = v34;
        goto LABEL_15;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B8C6A930](i, v15);
      }

      else
      {
        if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v18 = *(v15 + 8 * i + 32);
      }

      v19 = v18;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v20 = [v18 availableFeatures];

      if ((v20 & 2) != 0)
      {

        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B379D104()
{
  v0 = sub_1B3C9C5A8();
  v1 = PXLocalizedString();

  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_7_18();
  return OUTLINED_FUNCTION_5_14();
}

uint64_t sub_1B379D260()
{
  v0 = OUTLINED_FUNCTION_14_11();
  v1 = PXLocalizedString();

  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_7_18();
  return OUTLINED_FUNCTION_5_14();
}

BOOL sub_1B379D2E8(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_1B3710718(0, &qword_1EB852330);
  v3 = sub_1B3C9CF88();
  v4 = [v2 fetchGyroPosterSuggestionsInPhotoLibrary:a1 limit:v3];

  v5 = [v4 count];
  return v5 > 0;
}

id sub_1B379D390(void *a1)
{
  v2 = objc_opt_self();
  v3 = sub_1B379E28C(a1, MEMORY[0x1E69E7CD0], 0, v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [a1 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B3CF9810;
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v6 + 32) = sub_1B38810B4(0x6E6F697461657263, 0xEC00000065746144, 1);
  sub_1B3881270(v6, v5);
  v8 = [objc_opt_self() fetchKeyAssetForEachSuggestion:v4 options:v5];

  return v8;
}

uint64_t sub_1B379D54C()
{
  v0 = sub_1B3C9C3E8();
  if (!v0 || v0 == 2 || v0 == 1)
  {
    v1 = sub_1B3C9C5A8();
    v2 = PXLocalizedString();

    sub_1B3C9C5E8();
    OUTLINED_FUNCTION_15_11();
  }

  return OUTLINED_FUNCTION_87();
}

unint64_t sub_1B379D604()
{
  v0 = sub_1B3C9C3E8();
  v1 = 0x662E6E6F73726570;
  v2 = 0x69662E7472616568;
  if (v0)
  {
    v2 = 0;
  }

  if (v0 != 1)
  {
    v1 = v2;
  }

  if (v0 == 2)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1B379D68C()
{
  v0 = sub_1B3C9C3E8();
  v1 = 0xD000000000000024;
  v2 = 0xD000000000000025;
  if (v0 == 1)
  {
    v2 = 0xD000000000000020;
  }

  if (v0 != 2)
  {
    v1 = v2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t sub_1B379D718()
{
  OUTLINED_FUNCTION_4_16();
  sub_1B3C9D378();
  OUTLINED_FUNCTION_6_15();
  MEMORY[0x1B8C69C10](0xD00000000000001FLL);
  sub_1B3C9C3E8();
  sub_1B3C9D458();
  return v1;
}

BOOL sub_1B379D79C(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B3C9C3E8();
  if ((v2 - 1) < 2)
  {
    v3 = sub_1B379DA0C(a1);
    v4 = [objc_opt_self() fetchSuggestionsWithOptions_];
    v5 = [v4 count];

    v6 = v5 <= 0;
    return !v6;
  }

  if (v2)
  {
    return 0;
  }

  v7 = sub_1B379D89C(a1, 1);
  [v7 setFetchLimit_];
  v8 = sub_1B379D928(a1, v7);
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = [v8 count];

  v6 = v10 <= 0;
  return !v6;
}

id sub_1B379D89C(void *a1, char a2)
{
  v3 = [a1 librarySpecificFetchOptions];
  [v3 setIncludeGuestAssets_];
  if (a2)
  {
    v4 = [objc_opt_self() predicateForStyleableAssets];
    [v3 setInternalPredicate_];
  }

  return v3;
}

id sub_1B379D928(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [a1 librarySpecificFetchOptions];
  v6 = [v4 fetchAssetCollectionsWithType:2 subtype:203 options:v5];

  v7 = [v6 firstObject];
  if (!v7)
  {
    return 0;
  }

  v8 = [objc_opt_self() fetchAssetsInAssetCollection:v7 options:a2];

  return v8;
}

id sub_1B379DA0C(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  v2 = sub_1B379DB38();
  if ((v2 & 0x10000) == 0)
  {
    v3 = v2;
    sub_1B3710718(0, &qword_1EB84F210);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852810);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B3CFA2E0;
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B3753408();
    v5 = MEMORY[0x1E69E75F8];
    *(v4 + 32) = 0x65707974627573;
    *(v4 + 40) = 0xE700000000000000;
    v6 = MEMORY[0x1E69E7660];
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 72) = v3;
    v7 = sub_1B3C9CA28();
    [v1 setPredicate_];
  }

  return v1;
}

uint64_t sub_1B379DB38()
{
  v0 = sub_1B3C9C3E8();
  if (v0 == 1)
  {
    v1 = 1201;
  }

  else
  {
    v1 = 0;
  }

  v2 = v0 != 1;
  if (v0 == 2)
  {
    v3 = 1202;
  }

  else
  {
    v3 = v1;
  }

  if (v0 == 2)
  {
    v2 = 0;
  }

  return v3 | (v2 << 16);
}

uint64_t sub_1B379DB80(uint64_t a1, id a2)
{
  v4 = [a2 librarySpecificFetchOptions];
  [v4 setIncludeGuestAssets_];
  v5 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:a1 options:v4];
  if (v5)
  {
    v6 = v5;
    sub_1B3710718(0, &qword_1EB84F770);
    v7 = sub_1B3C9C4C8();

    v8 = sub_1B370B9C0(v7);
    v9 = sub_1B370BA54(v8);

    v10 = sub_1B3C9C5E8();
    v12 = v11;
    objc_allocWithZone(MEMORY[0x1E69788E0]);
    sub_1B37EA7D0(v9, a2, v10, v12, 0, 0, 0, 0);
    v14 = v13;
  }

  else
  {

    return 0;
  }

  return v14;
}

uint64_t sub_1B379DCD4(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B3C9C3E8();
  if ((v2 - 1) >= 2)
  {
    if (v2)
    {
      return 0;
    }

    v3 = sub_1B379D89C(a1, 1);
    v5 = sub_1B379D928(a1, v3);
  }

  else
  {
    v3 = sub_1B379DA0C(a1);
    v4 = [objc_opt_self() fetchSuggestionsWithOptions_];
    v5 = sub_1B379DB80(v4, a1);
  }

  return v5;
}

uint64_t sub_1B379DDA4()
{
  v0 = sub_1B3C9C5A8();
  v1 = PXLocalizedString();

  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_7_18();
  return OUTLINED_FUNCTION_5_14();
}

uint64_t sub_1B379DE6C()
{
  v0 = sub_1B3C9C5A8();
  v1 = PXLocalizedString();

  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_7_18();
  return OUTLINED_FUNCTION_5_14();
}

BOOL sub_1B379DEEC(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PickerSuggestionResultFetcher();
  v5 = static PickerSuggestionResultFetcher.fetchResult(for:in:)(a3, a1);
  v6 = [v5 firstObject];

  if (v6)
  {
  }

  return v6 != 0;
}

uint64_t sub_1B379DFAC()
{
  v0 = sub_1B3C9C5A8();
  v1 = PXLocalizedString();

  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_7_18();
  return OUTLINED_FUNCTION_5_14();
}

BOOL sub_1B379E044()
{
  v0 = sub_1B3C99E08();
  v1 = [v0 count];

  return v1 > 0;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PickerDisplayableSuggestionContext(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for PickerDisplayableSuggestionContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1B379E228()
{
  result = qword_1EB853C78;
  if (!qword_1EB853C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853C78);
  }

  return result;
}

id sub_1B379E28C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1B3C9C968();

  v8 = [a4 fetchFeaturedGyroPosterSuggestionsFetchResultInPhotoLibrary:a1 avoiding:v7 limit:a3];

  return v8;
}

void OUTLINED_FUNCTION_7_18()
{
}

uint64_t OUTLINED_FUNCTION_14_11()
{

  return sub_1B3C9C5A8();
}

void OUTLINED_FUNCTION_15_11()
{
}

void sub_1B379E3E8(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_0_17();
      break;
    case 3:
      OUTLINED_FUNCTION_3_19();
      break;
    case 4:
      OUTLINED_FUNCTION_2_19();
      break;
    case 8:
    case 9:
      OUTLINED_FUNCTION_13_0();
      break;
    default:
      return;
  }
}

void sub_1B379E540(char a1)
{
  switch(a1)
  {
    case 1:
    case 6:
      OUTLINED_FUNCTION_13_0();
      break;
    case 7:
    case 12:
      return;
    case 8:
      OUTLINED_FUNCTION_0_17();
      break;
    case 10:
      OUTLINED_FUNCTION_3_19();
      break;
    case 11:
      OUTLINED_FUNCTION_2_19();
      break;
    default:
      OUTLINED_FUNCTION_7_19();
      break;
  }
}

unint64_t sub_1B379E6AC(unint64_t result)
{
  if (result <= 0xE)
  {
    return qword_1B3D010B8[byte_1F2AB3380[24 * result + 32]];
  }

  __break(1u);
  return result;
}

unint64_t sub_1B379E6DC(unint64_t result)
{
  if (result <= 0xC)
  {
    return qword_1B3D01128[byte_1F2AB3508[24 * result + 32]];
  }

  __break(1u);
  return result;
}

uint64_t sub_1B379E70C@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  result = sub_1B3C9BC88();
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = a1 & 1;
  *(a4 + 17) = HIBYTE(a1) & 1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3 & 1;
  *(a4 + 33) = HIBYTE(a3) & 1;
  *(a4 + 40) = 0;
  *(a4 + 48) = v9;
  *(a4 + 56) = v10;
  return result;
}

void *sub_1B379E7BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (*result > 0xEuLL)
  {
    __break(1u);
  }

  else
  {
    sub_1B371B158();

    result = sub_1B3C9B7A8();
    *a2 = result;
    *(a2 + 8) = v3;
    *(a2 + 16) = v4 & 1;
    *(a2 + 24) = v5;
  }

  return result;
}

uint64_t sub_1B379E848()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853CD8);
  sub_1B3C9BCB8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D48);
  sub_1B3C9BE08();

  sub_1B37F3AB8(v2);
  v0 = v2[6];

  sub_1B3C9B798();
  sub_1B371B0F4(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D78);
  sub_1B37A1930();
  return sub_1B3C9BD58();
}

uint64_t sub_1B379EA6C()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8537A0);
  sub_1B3776650();
  return sub_1B3C9BE88();
}

void *sub_1B379EB0C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (*result > 0xCuLL)
  {
    __break(1u);
  }

  else
  {
    sub_1B371B158();

    result = sub_1B3C9B7A8();
    *a2 = result;
    *(a2 + 8) = v3;
    *(a2 + 16) = v4 & 1;
    *(a2 + 24) = v5;
  }

  return result;
}

uint64_t sub_1B379EB98@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  sub_1B3C9B378();
  OUTLINED_FUNCTION_0();
  v24 = v2;
  v25 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C80);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v27 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C88);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853C90);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853C98);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853CA0);
  v15 = sub_1B370ED54(&qword_1EB853CA8, &qword_1EB853CA0);
  v28 = v14;
  v29 = v15;
  v16 = OUTLINED_FUNCTION_5_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853CB0);
  v18 = sub_1B370ED54(&qword_1EB853CB8, &qword_1EB853CB0);
  v28 = v17;
  v29 = v18;
  v19 = OUTLINED_FUNCTION_5_0();
  v28 = v12;
  v29 = v13;
  v30 = v16;
  v31 = v19;
  OUTLINED_FUNCTION_5_0();
  sub_1B3C9AA48();
  sub_1B3C9B368();
  OUTLINED_FUNCTION_1_18();
  sub_1B370ED54(v20, &qword_1EB853C80);
  sub_1B37A1780();
  v21 = v24;
  sub_1B3C9B7F8();
  (*(v25 + 8))(v5, v21);
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_1B379EE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853CA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C90);
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v15 - v8;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853CC8);
  sub_1B370ED54(&qword_1EB853CD0, &qword_1EB853CC8);
  sub_1B3C9B708();
  sub_1B3C9AF78();
  v10 = sub_1B370ED54(&qword_1EB853CA8, &qword_1EB853CA0);
  sub_1B3C9B998();

  (*(v4 + 8))(v6, v3);
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853C98);
  v21 = v3;
  v22 = v10;
  swift_getOpaqueTypeConformance2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853CB0);
  v12 = sub_1B370ED54(&qword_1EB853CB8, &qword_1EB853CB0);
  v21 = v11;
  v22 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = v17;
  sub_1B3C9BA98();
  return (*(v7 + 8))(v9, v13);
}

uint64_t sub_1B379F204@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853CE0);
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853CE8);
  v32 = *(v8 - 8);
  v9 = v32;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v36 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853CF0);
  sub_1B370ED54(&qword_1EB853CF8, &qword_1EB853CF0);
  v31 = v14;
  sub_1B3C9BED8();
  v15 = swift_allocObject();
  v16 = a1[1];
  v15[1] = *a1;
  v15[2] = v16;
  v17 = a1[3];
  v15[3] = a1[2];
  v15[4] = v17;
  sub_1B37A1810(a1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D00);
  sub_1B370ED54(&qword_1EB853D08, &qword_1EB853D00);
  v29 = v7;
  sub_1B3C9BCE8();
  v18 = *(v9 + 16);
  v30 = v11;
  v18(v11, v14, v8);
  v19 = *(v3 + 16);
  v20 = v33;
  v21 = v7;
  v22 = v34;
  v19(v33, v21, v34);
  v23 = v35;
  v18(v35, v11, v8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D10);
  v19(&v23[*(v24 + 48)], v20, v22);
  v25 = *(v3 + 8);
  v25(v29, v22);
  v26 = *(v32 + 8);
  v26(v31, v8);
  v25(v20, v22);
  return (v26)(v30, v8);
}

uint64_t sub_1B379F5CC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v87 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D18);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v76 - v3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D20);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v94 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v76 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852C08);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v93 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v76 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D30);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D38);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v91 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D40);
  v96 = *(v17 - 8);
  v97 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v76 - v20;
  v78 = a1;
  v22 = *(a1 + 32);
  v106 = *(a1 + 16);
  v107 = v22;
  v23 = *(a1 + 32);
  v104 = *(a1 + 16);
  v105 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853CD8);
  sub_1B3C9BCB8();
  v25 = v100;
  v26 = v101;
  v27 = BYTE1(v101);
  v28 = *(&v101 + 1);
  v29 = v102;
  v30 = v103;
  swift_getKeyPath();
  v100 = v25;
  LOBYTE(v101) = v26;
  BYTE1(v101) = v27;
  *(&v101 + 1) = v28;
  v102 = v29;
  v103 = v30;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D48);
  sub_1B3C9BE08();

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D50);
  sub_1B370ED54(&qword_1EB853D58, &qword_1EB853D50);
  v90 = v21;
  v32 = v24;
  v33 = v78;
  sub_1B3C9BD98();
  v34 = *(v33 + 32);
  v100 = *(v33 + 16);
  v101 = v34;
  v88 = v32;
  sub_1B3C9BC98();
  if (v105 == 1)
  {
    sub_1B3710718(0, &qword_1EB853D70);
    v35 = [swift_getObjCClassFromMetadata() sharedInstance];
    v36 = [v35 showVisualDiagnosticsOptionInTapToRadar];

    if (v36)
    {
      v37 = *(v33 + 32);
      v104 = *(v33 + 16);
      v105 = v37;
      sub_1B3C9BCB8();
      v38 = v100;
      v39 = v101;
      v40 = BYTE1(v101);
      v76 = v31;
      v41 = *(&v101 + 1);
      v42 = v102;
      v43 = v103;
      swift_getKeyPath();
      v100 = v38;
      LOBYTE(v101) = v39;
      BYTE1(v101) = v40;
      *(&v101 + 1) = v41;
      v102 = v42;
      v103 = v43;
      sub_1B3C9BE08();

      v44 = v95;
      sub_1B3C9BD98();
      v45 = v77;
      v46 = v44;
      v47 = v97;
      (*(v96 + 32))(v77, v46, v97);
      v48 = 0;
      v49 = v98;
    }

    else
    {
      v48 = 1;
      v47 = v97;
      v49 = v98;
      v45 = v77;
    }

    __swift_storeEnumTagSinglePayload(v45, v48, 1, v47);
    sub_1B37A18C0(v45, v49);
    v50 = 0;
  }

  else
  {
    v50 = 1;
    v49 = v98;
  }

  __swift_storeEnumTagSinglePayload(v49, v50, 1, v79);
  v104 = v106;
  v105 = v107;
  sub_1B3C9BCB8();
  v51 = v100;
  v52 = v101;
  v53 = BYTE1(v101);
  v54 = *(&v101 + 1);
  v55 = v102;
  v56 = v103;
  swift_getKeyPath();
  v100 = v51;
  LOBYTE(v101) = v52;
  BYTE1(v101) = v53;
  *(&v101 + 1) = v54;
  v102 = v55;
  v103 = v56;
  sub_1B3C9BE08();

  sub_1B3C9BD98();
  v100 = v106;
  v101 = v107;
  sub_1B3C9BC98();
  v57 = v80;
  sub_1B379E848();
  v58 = v82;
  v59 = v83;
  (*(v82 + 16))(v84, v57, v83);
  swift_storeEnumTagMultiPayload();
  sub_1B370ED54(&qword_1EB853D60, &qword_1EB853D20);
  v60 = v92;
  sub_1B3C9B168();
  (*(v58 + 8))(v57, v59);
  v61 = v95;
  v62 = *(v96 + 16);
  v63 = v97;
  v62(v95, v90, v97);
  v64 = v91;
  sub_1B373C544(v98, v91, &qword_1EB853D38);
  v65 = v85;
  v66 = *(v85 + 16);
  v67 = v86;
  v66(v93, v99, v86);
  sub_1B373C544(v60, v94, &qword_1EB853D28);
  v68 = v87;
  v62(v87, v61, v63);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D68);
  sub_1B373C544(v64, &v68[v69[12]], &qword_1EB853D38);
  v70 = v93;
  v66(&v68[v69[16]], v93, v67);
  v71 = v94;
  sub_1B373C544(v94, &v68[v69[20]], &qword_1EB853D28);
  sub_1B370EEB0(v92, &qword_1EB853D28);
  v72 = *(v65 + 8);
  v72(v99, v67);
  sub_1B370EEB0(v98, &qword_1EB853D38);
  v73 = v97;
  v74 = *(v96 + 8);
  v74(v90, v97);
  sub_1B370EEB0(v71, &qword_1EB853D28);
  v72(v70, v67);
  sub_1B370EEB0(v91, &qword_1EB853D38);
  return (v74)(v95, v73);
}

uint64_t sub_1B37A00BC@<X0>(uint64_t a1@<X8>)
{
  sub_1B37F3AB8(v19);
  v2 = v19[6];

  v3 = sub_1B3C9B798();
  v5 = v4;
  v17 = v6;
  v18 = v7;
  sub_1B371B0F4(v19);
  sub_1B37F3AB8(v20);
  v8 = v20[6];

  v9 = sub_1B3C9B798();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1B371B0F4(v20);
  v22 = v17 & 1;
  v13 &= 1u;
  v21 = v13;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  sub_1B370EFD4(v3, v5, v17 & 1);

  sub_1B370EFD4(v9, v11, v13);

  sub_1B371B148(v9, v11, v13);

  sub_1B371B148(v3, v5, v17 & 1);
}

uint64_t sub_1B37A02C0@<X0>(uint64_t a1@<X8>)
{
  sub_1B37F3AB8(v19);
  v2 = v19[6];

  v3 = sub_1B3C9B798();
  v5 = v4;
  v17 = v6;
  v18 = v7;
  sub_1B371B0F4(v19);
  sub_1B37F3AB8(v20);
  v8 = v20[6];

  v9 = sub_1B3C9B798();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1B371B0F4(v20);
  v22 = v17 & 1;
  v13 &= 1u;
  v21 = v13;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;
  *(a1 + 56) = v15;
  sub_1B370EFD4(v3, v5, v17 & 1);

  sub_1B370EFD4(v9, v11, v13);

  sub_1B371B148(v9, v11, v13);

  sub_1B371B148(v3, v5, v17 & 1);
}

uint64_t sub_1B37A04C0@<X0>(uint64_t a1@<X8>)
{
  sub_1B37F3AB8(v11);
  v2 = v11[6];

  v3 = sub_1B3C9B798();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  result = sub_1B371B0F4(v11);
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1B37A05A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B3C9AF18();
  sub_1B37F3AB8(v12);
  v3 = v12[6];

  v4 = sub_1B3C9B798();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1B371B0F4(v12);
  v15 = 1;
  v8 &= 1u;
  v14 = v8;
  v13 = 1;
  sub_1B370EFD4(v4, v6, v8);

  sub_1B371B148(v4, v6, v8);

  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v4;
  *(a1 + 48) = v6;
  *(a1 + 56) = v8;
  *(a1 + 64) = v10;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  return result;
}

uint64_t sub_1B37A06F4(uint64_t a1)
{
  v2 = sub_1B3C9B238();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853CB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1B3C9B218();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8521A0);
  sub_1B370ED54(&qword_1EB8521B0, &qword_1EB8521A0);
  sub_1B3C9A7F8();
  v7 = sub_1B370ED54(&qword_1EB853CB8, &qword_1EB853CB0);
  MEMORY[0x1B8C68850](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B37A08E0(_OWORD *a1)
{
  sub_1B3C9AF78();
  v2 = swift_allocObject();
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v4 = a1[3];
  v2[3] = a1[2];
  v2[4] = v4;
  sub_1B37A1810(a1, &v6);
  return sub_1B3C9BD08();
}

uint64_t sub_1B37A09AC(void (**a1)(void, void, uint64_t, void), char a2)
{
  v2 = *a1;
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853CD8);
    sub_1B3C9BC98();
    if (v8)
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    if (v11)
    {
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    v2(a2 & 1, v4 | v7, v9, v5 | v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852FC8);
  return sub_1B3C9BCA8();
}

id sub_1B37A0A90(void **a1, unsigned int a2, unint64_t a3, int a4, void *a5)
{
  v10 = sub_1B3C98068();
  OUTLINED_FUNCTION_0();
  v106 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v99 - v16;
  v17 = *a1;
  v104 = a4;
  v103 = v14;
  if (a4)
  {
    [v17 setComponent_];
    sub_1B3C98E18();
    result = MEMORY[0x1B8C66380]();
    if (a3 <= 0xC)
    {
      v20 = result;
      v21 = v19;
      sub_1B379E540(byte_1F2AB3508[24 * a3 + 32]);
      v112 = v22;
      v113 = v23;
      MEMORY[0x1B8C69C10](8250, 0xE200000000000000);
      v24 = v112;
      v25 = v113;
      v112 = v20;
      v113 = v21;

      MEMORY[0x1B8C69C10](v24, v25);

      goto LABEL_6;
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    return result;
  }

  result = [v17 setComponent_];
  if (a3 > 0xE)
  {
    goto LABEL_51;
  }

  sub_1B379E3E8(byte_1F2AB3380[24 * a3 + 32]);
  v112 = v26;
  v113 = v27;
  MEMORY[0x1B8C69C10](0x63616279616C5020, 0xE90000000000006BLL);
LABEL_6:
  sub_1B37A15A0(&unk_1F2AB3660, v17);
  [v17 setAttachmentsIncludeAnyUserAsset_];
  [v17 setWantsPhotosDiagnostics_];
  [v17 setWantsSystemDiagnostics_];
  if (a5)
  {
    v107 = v17;
    v28 = [v17 component];
    v102 = v10;
    switch(v28)
    {
      case 0xEuLL:
        v52 = [a5 localizedTitle];
        if (v52)
        {
          v53 = v52;
          v54 = sub_1B3C9C5E8();
          v56 = v55;
        }

        else
        {
          v56 = 0x80000001B3D14A40;
          v54 = 0xD000000000000011;
        }

        v72 = [a5 localizedSubtitle];
        if (v72)
        {
          v73 = v72;
          v74 = sub_1B3C9C5E8();
          v76 = v75;
        }

        else
        {
          v76 = 0x80000001B3D14A60;
          v74 = 0xD000000000000014;
        }

        v110 = 0;
        v111 = 0xE000000000000000;
        sub_1B3C9D378();

        v110 = 0x3A656C7469542820;
        v111 = 0xEA00000000002220;
        MEMORY[0x1B8C69C10](v54, v56);

        MEMORY[0x1B8C69C10](0x7469746275532022, 0xED000022203A656CLL);
        MEMORY[0x1B8C69C10](v74, v76);

        MEMORY[0x1B8C69C10](10530, 0xE200000000000000);
        MEMORY[0x1B8C69C10](v110, v111);

        goto LABEL_37;
      case 0xFuLL:
      case 0x10uLL:
        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (!v29)
        {
          goto LABEL_37;
        }

        v30 = v29;
        swift_unknownObjectRetain();
        v100 = v30;
        v31 = sub_1B37A160C(v30);
        v32 = MEMORY[0x1E69E7CC0];
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = MEMORY[0x1E69E7CC0];
        }

        v34 = sub_1B3711890(v33);
        if (v34)
        {
          v35 = v34;
          v101 = a5;
          v110 = v32;
          result = sub_1B37EABC0(0, v34 & ~(v34 >> 63), 0);
          if (v35 < 0)
          {
            goto LABEL_52;
          }

          v36 = v110;
          v108 = objc_opt_self();
          v37 = 0;
          v38 = v33 & 0xC000000000000001;
          v39 = v33;
          do
          {
            if (v38)
            {
              v40 = MEMORY[0x1B8C6A930](v37, v33);
            }

            else
            {
              v40 = *(v33 + 8 * v37 + 32);
            }

            v41 = v40;
            v42 = [v40 unsignedIntegerValue];
            v43 = [v108 stringForTriggerType_];
            v44 = sub_1B3C9C5E8();
            v46 = v45;

            v110 = v36;
            v48 = *(v36 + 16);
            v47 = *(v36 + 24);
            if (v48 >= v47 >> 1)
            {
              sub_1B37EABC0((v47 > 1), v48 + 1, 1);
              v36 = v110;
            }

            ++v37;
            *(v36 + 16) = v48 + 1;
            v49 = v36 + 16 * v48;
            *(v49 + 32) = v44;
            *(v49 + 40) = v46;
            v33 = v39;
          }

          while (v35 != v37);

          a5 = v101;
        }

        else
        {

          v36 = MEMORY[0x1E69E7CC0];
        }

        v57 = objc_opt_self();
        v58 = v100;
        v59 = [v57 stringForCategory_];
        v60 = sub_1B3C9C5E8();
        v62 = v61;

        v63 = [v57 stringForSubcategory_];
        v64 = sub_1B3C9C5E8();
        v66 = v65;

        v110 = 0;
        v111 = 0xE000000000000000;
        sub_1B3C9D378();
        MEMORY[0x1B8C69C10](0x6F67657461432820, 0xED000022203A7972);
        MEMORY[0x1B8C69C10](v60, v62);

        MEMORY[0x1B8C69C10](10272, 0xE200000000000000);
        v109 = [v58 category];
        v67 = sub_1B3C9D678();
        MEMORY[0x1B8C69C10](v67);

        MEMORY[0x1B8C69C10](0xD000000000000011, 0x80000001B3D14A20);
        MEMORY[0x1B8C69C10](v64, v66);

        MEMORY[0x1B8C69C10](10272, 0xE200000000000000);
        v109 = [v58 subcategory];
        v68 = sub_1B3C9D678();
        MEMORY[0x1B8C69C10](v68);

        MEMORY[0x1B8C69C10](0x6767697254202229, 0xEE0022203A737265);
        v69 = MEMORY[0x1B8C69D10](v36, MEMORY[0x1E69E6158]);
        v71 = v70;

        MEMORY[0x1B8C69C10](v69, v71);

        MEMORY[0x1B8C69C10](10530, 0xE200000000000000);
        MEMORY[0x1B8C69C10](v110, v111);
        swift_unknownObjectRelease();

LABEL_37:
        v77 = sub_1B3C9C5A8();
        [v107 setTitle_];

        objc_opt_self();
        v78 = swift_dynamicCastObjCClass();
        if (!v78)
        {
        }

        v79 = v78;
        v80 = objc_opt_self();
        swift_unknownObjectRetain();
        v81 = [v80 getSummaryFromProviderItem_];
        sub_1B3C9C4C8();

        v82 = sub_1B3C9C4A8();

        v83 = sub_1B3C9C5A8();
        v84 = PXFeedbackTapToRadarUtilitiesWriteDictionaryToPlistFile();

        if (v84)
        {
          v85 = v105;
          sub_1B3C98038();

          v86 = sub_1B3C98018();
          [v107 addAttachment_];

          (*(v106 + 8))(v85, v102);
        }

        if ([v79 isGenerative])
        {
          sub_1B3C99EA8();
          v87 = sub_1B3C99E98();
          v88 = v103;

          v89 = *(v87 + 16);
          if (v89)
          {
            v108 = v79;
            v101 = a5;
            v90 = v107;
            v91 = v106 + 16;
            v92 = *(v106 + 16);
            v93 = (*(v106 + 80) + 32) & ~*(v106 + 80);
            v106 = v87;
            v94 = v87 + v93;
            v95 = *(v91 + 56);
            v96 = v102;
            do
            {
              v92(v88, v94, v96);
              v97 = sub_1B3C98018();
              (*(v91 - 8))(v88, v96);
              [v90 addAttachment_];

              v94 += v95;
              --v89;
            }

            while (v89);
          }

          v98 = v107;
          if ((v104 & 0x100) != 0)
          {
            sub_1B3C98EE8();
            swift_allocObject();
            swift_unknownObjectRetain();
            [v98 addDiagnosticProvider_];
          }
        }

        else
        {
        }

        result = swift_unknownObjectRelease();
        break;
      case 0x11uLL:
        v50 = "ured your trip better]";
        v51 = 0xD000000000000023;
        goto LABEL_29;
      case 0x12uLL:
        v50 = "MemoryInfoAndCuration";
        v51 = 0xD000000000000036;
LABEL_29:
        MEMORY[0x1B8C69C10](v51, v50 | 0x8000000000000000);
        goto LABEL_37;
      default:
        goto LABEL_37;
    }
  }

  else
  {
  }

  return result;
}

void sub_1B37A15A0(uint64_t a1, void *a2)
{
  v3 = sub_1B3C9C778();

  [a2 setKeywordIDs_];
}

uint64_t sub_1B37A160C(void *a1)
{
  v1 = [a1 triggerTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B3710718(0, &qword_1EB852330);
  v3 = sub_1B3C9C788();

  return v3;
}

uint64_t get_enum_tag_for_layout_string_Sb15PhotosUIPrivate19StoryTapToRadarFormV7OptionsVIegyy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B37A1694(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B37A16E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1B37A1780()
{
  result = qword_1EB8521C0;
  if (!qword_1EB8521C0)
  {
    sub_1B3C9B378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8521C0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B37A18C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B37A1930()
{
  result = qword_1EB853D80;
  if (!qword_1EB853D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB853D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853D80);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StoryTapToRadarForm.Options(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[18])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for StoryTapToRadarForm.Options(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1B37A1AB8(void *__src@<X0>, uint64_t *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = sub_1B38A2180();
  sub_1B37A1B74();
  v4 = sub_1B3C9CBD8();
  type metadata accessor for StoryViewController();
  v5 = swift_dynamicCastClassUnconditional();
  type metadata accessor for StoryViewModel(0);
  swift_allocObject();
  v6 = StoryViewModel.init(storyViewController:)(v5);

  *a2 = v4;
  a2[1] = v6;
}

unint64_t sub_1B37A1B74()
{
  result = qword_1EB853D88;
  if (!qword_1EB853D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB853D88);
  }

  return result;
}

char *sub_1B37A1C30(void *a1)
{
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate34StoryColorGradeEditorContentLayout_viewModel] = a1;
  v3 = objc_allocWithZone(type metadata accessor for StoryColorGradeEditorOverlayContentLayout());
  v4 = a1;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate34StoryColorGradeEditorContentLayout_overlayLayout] = sub_1B37A2364(v4);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for StoryColorGradeEditorContentLayout();
  v5 = objc_msgSendSuper2(&v11, sel_init);
  [v5 setDecoratedLayout_];
  v6 = &v4[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec];
  swift_beginAccess();
  if (*(*__swift_project_boxed_opaque_existential_0Tm(v6, *(v6 + 3)) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_itemSelectionStyle) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1B3CF9810;
    v8 = v5;
    *(v7 + 32) = sub_1B3C9C9C8();
    sub_1B37A4DA4();
    v9 = sub_1B3C9C778();

    [v8 setActiveDecorations_];

    [v8 setContentSource_];
    [v8 setDecorationSource_];
  }

  return v5;
}

uint64_t sub_1B37A1DE0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858130);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1B3C98248();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  v7 = *(*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate34StoryColorGradeEditorContentLayout_viewModel) + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectedItem);
  v8 = sub_1B386E1F4();
  sub_1B382C60C(v7, v8);
  LOBYTE(v7) = v9;

  if ((v7 & 1) == 0)
  {
    sub_1B3C98218();
    sub_1B37A4C68(a1);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
    return sub_1B37A4CD0(v5, a1);
  }

  return result;
}

uint64_t sub_1B37A2194@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = CGSizeMake(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B37A21C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B37118A8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1B37A21F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B3720E04(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1B37A2220@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B371192C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1B37A2250@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B3711894(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B37A2284@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B3711880(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B37A22C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B37118E8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1B37A230C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = CGSizeMake(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B37A233C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B3711908();
  *a1 = result;
  return result;
}

char *sub_1B37A2364(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_selectionSpritesIndexRange];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_sublayoutFrames] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_previewClip] = 0;
  v4 = &v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_previewClipTimeRange];
  v5 = MEMORY[0x1E69C4188];
  v6 = *(MEMORY[0x1E69C4188] + 16);
  *v4 = *MEMORY[0x1E69C4188];
  v4[1] = v6;
  v4[2] = *(v5 + 32);
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_captionHeightsByRow] = MEMORY[0x1E69E7CC8];
  v7 = &v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_storyModelObservation];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_viewModelObservation];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_updateFlags];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 8) = 0;
  v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_hasVerticalScrollingContent] = 0;
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_viewModel] = a1;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for StoryColorGradeEditorOverlayContentLayout();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v24, sel_init);
  v12 = *&v10[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_storyModel];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = v11;
  v14 = v12;

  v15 = sub_1B3C9CA58();
  v17 = v16;

  v18 = &v13[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_storyModelObservation];
  *v18 = v15;
  v18[1] = v17;
  swift_unknownObjectRelease();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = sub_1B3C9CA58();
  v21 = v20;

  v22 = &v13[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_viewModelObservation];
  *v22 = v19;
  v22[1] = v21;
  swift_unknownObjectRelease();
  sub_1B37A28A8();
  sub_1B37A28C0();
  sub_1B37A28B8();
  sub_1B37A2938();

  return v13;
}

void sub_1B37A25C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a4(a2);
  }
}

id sub_1B37A2634()
{
  swift_beginAccess();
  ShouldBeginUpdates = PXUpdateShouldBeginUpdates();
  swift_endAccess();
  if (ShouldBeginUpdates)
  {
    swift_beginAccess();
    IsUpdateNeeded = PXUpdateIsUpdateNeeded();
    swift_endAccess();
    if (IsUpdateNeeded)
    {
      sub_1B37A2DA0();
    }

    swift_beginAccess();
    v3 = PXUpdateIsUpdateNeeded();
    swift_endAccess();
    if (v3)
    {
      sub_1B37A2E90();
    }

    swift_beginAccess();
    v4 = PXUpdateIsUpdateNeeded();
    swift_endAccess();
    if (v4)
    {
      sub_1B37A380C();
    }

    swift_beginAccess();
    v5 = PXUpdateIsUpdateNeeded();
    swift_endAccess();
    if (v5)
    {
      sub_1B37A3280();
    }

    swift_beginAccess();
    v6 = PXUpdateIsUpdateNeeded();
    swift_endAccess();
    if (v6)
    {
      sub_1B37A33DC();
    }
  }

  swift_beginAccess();
  PXUpdateEndUpdates();
  swift_endAccess();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for StoryColorGradeEditorOverlayContentLayout();
  return objc_msgSendSuper2(&v8, sel_update);
}

void sub_1B37A2820()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for StoryColorGradeEditorOverlayContentLayout();
  objc_msgSendSuper2(&v1, sel_referenceSizeDidChange);
  sub_1B37A28B0();
  sub_1B37A2938();
}

uint64_t sub_1B37A28D0()
{
  swift_beginAccess();
  sub_1B37A4C14();
  sub_1B3C9D178();
  return swift_endAccess();
}

void sub_1B37A2938()
{
  v10[0] = *(*&v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_viewModel] + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectedItem);
  type metadata accessor for PFStoryColorGradeKind(0);
  v1 = [v0 spriteReferenceForObjectReference_];
  swift_unknownObjectRelease();
  v2 = *MEMORY[0x1E69C48A0];
  v3 = *(MEMORY[0x1E69C48A0] + 8);
  v4 = *(MEMORY[0x1E69C48A0] + 16);
  v5 = *(MEMORY[0x1E69C48A0] + 24);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1B37A4C0C;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B37A2BAC;
  v10[3] = &block_descriptor_64;
  v7 = _Block_copy(v10);

  v8 = [v0 createAnchorForScrollingSpriteForSpriteReference:v1 toScrollPosition:4 padding:v7 customOffset:{v2, v3, v4, v5}];
  _Block_release(v7);
  v9 = [v8 autoInvalidate];
}

double sub_1B37A2ADC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (Strong == a1 && (v13.origin.x = a2, v13.origin.y = a3, v13.size.width = a4, v13.size.height = a5, CGRectGetMinY(v13) < 0.0))
    {
      [v11 safeAreaInsets];
    }

    else
    {
    }
  }

  return 0.0;
}

double sub_1B37A2BAC(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v13 = v11(a3, a4, a5, a6);

  return v13;
}

uint64_t sub_1B37A2C3C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1B3C97D18();
  sub_1B37106B4(a1, v12);
  type metadata accessor for PFStoryColorGradeKind(0);
  if (swift_dynamicCast())
  {
    v6 = sub_1B386E1F4();
    v7 = sub_1B382C60C(v11, v6);
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
      *a3 = sub_1B3C9D688();
      return v7;
    }
  }

  return v5;
}

id sub_1B37A2DA0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_selectionSpritesIndexRange];
  if ((v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_selectionSpritesIndexRange + 8] & 1) == 0)
  {
    [v0 removeSpritesInRange_];
  }

  v3 = *(sub_1B386E1F4() + 16);

  if (HIDWORD(v3))
  {
    __break(1u);
  }

  else
  {
    *v2 = v3 << 32;
    v2[8] = 0;
    [v0 addSpritesInRange_initialState_];
    [v0 removeSublayoutsInRange_];
    v5 = *(sub_1B386E1F4() + 16);

    return [v1 insertSublayoutProvider:v1 inRange:{0, v5}];
  }

  return result;
}

void sub_1B37A2E90()
{
  v1 = v0;
  isEscapingClosureAtFileLocation = *(*&v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_viewModel] + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_storyModel);
  v3 = [isEscapingClosureAtFileLocation timeline];
  v4 = [isEscapingClosureAtFileLocation currentSegmentIdentifier];
  swift_getObjectType();
  [v3 timeRangeForSegmentWithIdentifier_];
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 1;
  sub_1B3C9CB28();
  v5 = [v1 sublayoutDataStore];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1B37A4C04;
    *(v8 + 24) = v7;
    aBlock[4] = sub_1B37A4FDC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B37A3218;
    aBlock[3] = &block_descriptor_58;
    v9 = _Block_copy(aBlock);
    v10 = v1;

    [v6 enumerateSublayoutsUsingBlock_];
    swift_unknownObjectRelease();

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  swift_unknownObjectRelease();
}

__n128 sub_1B37A30F4(uint64_t a1, void *a2, _BYTE *a3, id a4, uint64_t a5)
{
  if (a2[1] == 1)
  {
    v8 = [a4 clipWithIdentifier_];
    *(a5 + OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_previewClip) = v8;
    swift_unknownObjectRelease();
    v9 = a5 + OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_previewClipTimeRange;
    v10 = *(a1 + 16);
    *v9 = *a1;
    *(v9 + 16) = v10;
    result = *(a1 + 32);
    *(v9 + 32) = result;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1B37A318C()
{
  type metadata accessor for StoryColorGradeEditorItemLayout();
  swift_dynamicCastClassUnconditional();
  v0 = swift_unknownObjectRetain();
  sub_1B389285C(v0);
  return sub_1B3892914();
}

void sub_1B37A3218(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v6(a2, v7, a4);
}

uint64_t sub_1B37A3280()
{
  v1 = [v0 sublayoutDataStore];
  if (v1 && (v2 = v1, v5[4] = sub_1B37A3214, v5[5] = 0, v5[0] = MEMORY[0x1E69E9820], v5[1] = 1107296256, v5[2] = sub_1B37A3218, v5[3] = &block_descriptor_48, v3 = _Block_copy(v5), , [v2 enumerateSublayoutsUsingBlock_], v2, _Block_release(v3), result = swift_isEscapingClosureAtFileLocation(), (result & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    [v0 invalidateDecoration];
    return sub_1B37A28C8();
  }

  return result;
}

uint64_t sub_1B37A3394()
{
  type metadata accessor for StoryColorGradeEditorItemLayout();
  swift_dynamicCastClassUnconditional();
  return sub_1B3892998();
}

void sub_1B37A33DC()
{
  if ((v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_selectionSpritesIndexRange + 8] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_selectionSpritesIndexRange];
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1B37A4BEC;
    *(v3 + 24) = v2;
    v6[4] = sub_1B37A4BF4;
    v6[5] = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1B38924A4;
    v6[3] = &block_descriptor_45;
    v4 = _Block_copy(v6);
    v5 = v0;

    [v5 modifySpritesInRange:v1 state:v4];
    _Block_release(v4);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }
}

void *sub_1B37A354C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v9) = a1;
  v10 = HIDWORD(a1);
  v11 = *(a5 + OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_viewModel);
  v12 = OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec;
  swift_beginAccess();
  result = sub_1B3723558(v11 + v12, v43);
  v14 = __CFADD__(v9, v10);
  v15 = (v9 + v10);
  if (!v14)
  {
    if (v15 == v9)
    {
      return __swift_destroy_boxed_opaque_existential_0Tm(v43);
    }

    v9 = v9;
    v41 = OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_sublayoutFrames;
    v16 = OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_captionHeightsByRow;
    result = swift_beginAccess();
    v17 = 0;
    v18 = a2 + 32 * v9;
    v19 = a3 + 160 * v9;
    v20 = (a4 + 40 * v9 + 34);
    v21 = 56;
    while (v9 < v15)
    {
      v22 = *(a5 + v41);
      if (v17 >= *(v22 + 16))
      {
        goto LABEL_14;
      }

      v23 = (v22 + v21);
      v24 = *(v23 - 3);
      v25 = *(v23 - 2);
      v26 = *(v23 - 1);
      v27 = *v23;
      result = __swift_project_boxed_opaque_existential_0Tm(v43, v44);
      v28 = *(*result + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow);
      if (!v28)
      {
        goto LABEL_15;
      }

      v29 = *(a5 + v16);
      if (*(v29 + 16) && (v30 = sub_1B371EEC4(v17 / v28), (v31 & 1) != 0))
      {
        v32 = (*(v29 + 56) + 8 * v30);
      }

      else
      {
        v32 = (*__swift_project_boxed_opaque_existential_0Tm(v43, v44) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_estimatedCaptionHeight);
      }

      ++v9;
      v33 = *v32;
      __swift_project_boxed_opaque_existential_0Tm(v43, v44);
      sub_1B37C9E3C(v24, v25, v26, v27, v33);
      Height = CGRectGetHeight(v45);
      v46.origin.x = v24;
      v46.origin.y = v25;
      v46.size.width = v26;
      v46.size.height = Height;
      MidX = CGRectGetMidX(v46);
      v47.origin.x = v24;
      v47.origin.y = v25;
      v47.size.width = v26;
      v47.size.height = Height;
      MidY = CGRectGetMidY(v47);
      v48.origin.x = v24;
      v48.origin.y = v25;
      v48.size.width = v26;
      v48.size.height = Height;
      Width = CGRectGetWidth(v48);
      v49.origin.x = v24;
      v49.origin.y = v25;
      v49.size.width = v26;
      v49.size.height = Height;
      v37 = CGRectGetHeight(v49);
      v38.f64[0] = Width;
      v38.f64[1] = v37;
      v39 = v18 + v21;
      *(v39 - 56) = MidX;
      *(v39 - 48) = MidY;
      *(v39 - 40) = 0;
      *(v39 - 32) = vcvt_f32_f64(v38);
      memcpy(v19, MEMORY[0x1E69DB5C0], 0xA0uLL);
      result = __swift_project_boxed_opaque_existential_0Tm(v43, v44);
      v40 = *(*result + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_itemCornerRadius);
      *&v40 = v40;
      *(v19 + 36) = vdupq_lane_s32(*&v40, 0);
      v21 += 32;
      *(v20 - 33) = 0;
      *v20 = 4;
      v20 += 40;
      v19 += 160;
      ++v17;
      if (v15 == v9)
      {
        return __swift_destroy_boxed_opaque_existential_0Tm(v43);
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B37A380C()
{
  v1 = v0;
  v2 = [v0 numberOfSublayouts];
  if (v2 >= 1)
  {
    v3 = v2;
    [v0 referenceSize];
    v5 = v4;
    v6 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_viewModel];
    v7 = (v6 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec);
    swift_beginAccess();
    sub_1B3723558(v7, v69);
    __swift_project_boxed_opaque_existential_0Tm(v7, v7[3]);
    sub_1B37C9A2C(v5);
    v9 = v8;
    sub_1B3C9D188();
    PXEdgeInsetsInsetRect();
    rect = v10;
    v12 = v11;
    [v1 safeAreaInsets];
    PXEdgeInsetsInsetSize();
    v14 = v13;
    __swift_project_boxed_opaque_existential_0Tm(v69, v70);
    v15 = *(sub_1B386E1F4() + 16);

    sub_1B37C9B14(v15);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v65 = v22;
    v23 = *(*__swift_project_boxed_opaque_existential_0Tm(v69, v70) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow);
    v24 = *(*__swift_project_boxed_opaque_existential_0Tm(v69, v70) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_estimatedCaptionHeight);
    __swift_project_boxed_opaque_existential_0Tm(v69, v70);
    v25 = sub_1B37C9F48(v3);
    sub_1B37A3EBC(v17);
    v26 = sub_1B37A3DAC(v25, v19);
    if ((v25 & 0x8000000000000000) == 0)
    {
      v27 = v26;
      if (v25)
      {
        v28 = OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_captionHeightsByRow;
        swift_beginAccess();
        for (i = 0; v25 != i; ++i)
        {
          v30 = *&v1[v28];
          if (*(v30 + 16))
          {
            v31 = sub_1B371EEC4(i);
            if (v32)
            {
              v33 = *(*(v30 + 56) + 8 * v31);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1B37A4BD8(v27);
                v27 = v34;
              }

              if (i >= *(v27 + 16))
              {
                goto LABEL_39;
              }

              *(v27 + 8 * i + 32) = v33 - v24 + *(v27 + 8 * i + 32);
            }
          }
        }
      }

      v61 = v9;
      sub_1B37A44B0(v27);
      v36 = v35;
      v38 = v37;
      v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_hasVerticalScrollingContent] = v14 < v37;
      if (*(*__swift_project_boxed_opaque_existential_0Tm(v69, v70) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_centerContentVerticallyWhenNotScrollable) == 1 && v14 >= v38)
      {
        v40 = [*(v6 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_storyModel) extendedTraitCollection];
        v41 = [v40 userInterfaceIdiom];

        v42 = (v14 - v38) * 0.5;
        if (v41 == 5)
        {
          v42 = 4.0;
        }

        v12 = v12 + v42;
      }

      v43 = OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_sublayoutFrames;
      *&v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_sublayoutFrames] = MEMORY[0x1E69E7CC0];

      sub_1B37A3E58(v3);
      if (!v25)
      {
        goto LABEL_34;
      }

      if (v23 < 0)
      {
LABEL_41:
        __break(1u);
        return;
      }

      v67 = 0;
      v44 = 0;
      v63 = v27;
      v64 = v27 + 32;
      v45 = v17 + v21;
      v46 = v12;
      v47 = v3;
      v62 = v25;
      while (2)
      {
        if (v44 < *(v27 + 16))
        {
          v48 = 0;
          v49 = *(v64 + 8 * v44);
          v66 = v44 + 1;
          v50 = (v44 * v23) >> 64 != (v44 * v23) >> 63;
          for (j = v67; v23 != v48; ++j)
          {
            if (__OFADD__(v48, 1))
            {
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            if (v50)
            {
              goto LABEL_37;
            }

            if (j >= v3)
            {
              break;
            }

            v71.origin.x = rect;
            v71.origin.y = v12;
            v71.size.width = v36;
            v71.size.height = v38;
            MinX = CGRectGetMinX(v71);
            v53 = *&v1[v43];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v1[v43] = v53;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1B370FD78(0, *(v53 + 16) + 1, 1, v53);
              v53 = v58;
              *&v1[v43] = v58;
            }

            v56 = *(v53 + 16);
            v55 = *(v53 + 24);
            if (v56 >= v55 >> 1)
            {
              sub_1B370FD78(v55 > 1, v56 + 1, 1, v53);
              v53 = v59;
            }

            *(v53 + 16) = v56 + 1;
            v57 = (v53 + 32 * v56);
            v57[4] = v45 * v48 + MinX;
            v57[5] = v46;
            v57[6] = v17;
            v57[7] = v49;
            *&v1[v43] = v53;
            ++v48;
            v3 = v47;
          }

          v46 = v46 + v65 + v49;
          v67 += v23;
          v44 = v66;
          v27 = v63;
          if (v66 != v62)
          {
            continue;
          }

LABEL_34:
          v72.origin.x = rect;
          v72.origin.y = v12;
          v72.size.width = v36;
          v72.size.height = v38;
          MaxX = CGRectGetMaxX(v72);
          v73.origin.x = rect;
          v73.origin.y = v12;
          v73.size.width = v36;
          v73.size.height = v38;
          [v1 setContentSize_];

          sub_1B3C9CE08();

          [v1 setNeedsUpdateOfScrollableAxis];
          sub_1B37A28C8();

          __swift_destroy_boxed_opaque_existential_0Tm(v69);
          return;
        }

        break;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }
}

uint64_t sub_1B37A3DAC(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = sub_1B3C9C7F8();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_1B3D01200)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void sub_1B37A3E58(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    sub_1B370FD78(isUniquelyReferenced_nonNull_native, v5, 0, v3);
    v3 = v6;
  }

  *v1 = v3;
}

void sub_1B37A3EBC(double a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_viewModel];
  v5 = OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec;
  swift_beginAccess();
  sub_1B3723558(v4 + v5, v49);
  __swift_project_boxed_opaque_existential_0Tm(v49, v50);
  v6 = *(*__swift_project_boxed_opaque_existential_0Tm(v49, v50) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow);

  v7 = *(sub_1B386E1F4() + 16);

  __swift_project_boxed_opaque_existential_0Tm(v49, v50);
  v8 = sub_1B37C9F48(v7);
  v9 = *(*__swift_project_boxed_opaque_existential_0Tm(v49, v50) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_estimatedCaptionHeight);
  v10 = OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_captionHeightsByRow;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EC0);
  v44 = v10;
  sub_1B3C9C4E8();
  swift_endAccess();
  v11 = *(*__swift_project_boxed_opaque_existential_0Tm(v49, v50) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionPadding + 8);
  v12 = *(*__swift_project_boxed_opaque_existential_0Tm(v49, v50) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionPadding + 24);
  v13 = *(*__swift_project_boxed_opaque_existential_0Tm(v49, v50) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionContentPadding + 8);
  v14 = __swift_project_boxed_opaque_existential_0Tm(v49, v50);
  if (v8 < 0)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v16 = a1 - (v11 + v12 + v13 + *(*v14 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_captionContentPadding + 24));
      v17 = 0;
      v42 = v8;
      v43 = v1;
      while (2)
      {
        v18 = 0;
        v45 = v17;
        v46 = v17 + 1;
        v19 = (v17 * v6) >> 64 != (v17 * v6) >> 63;
        v20 = v15;
        v21 = v9;
        while (v6 != v18)
        {
          if (__OFADD__(v18, 1))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          if (v19)
          {
            goto LABEL_20;
          }

          if (v20 >= v7)
          {
            break;
          }

          v22 = sub_1B386E0F8(v20);
          sub_1B386E168(v22);
          v23 = sub_1B3C9C5A8();

          type metadata accessor for Key(0);
          sub_1B37A4B80();
          v24 = sub_1B3C9C4A8();
          [v23 boundingRectWithSize:1 options:v24 attributes:0 context:{v16, 1.79769313e308}];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v51.origin.x = v26;
          v51.origin.y = v28;
          v51.size.width = v30;
          v51.size.height = v32;
          Height = CGRectGetHeight(v51);
          if (v21 <= Height)
          {
            v21 = Height;
          }

          ++v20;
          ++v18;
        }

        v2 = v43;
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v48 = *&v43[v44];
        sub_1B371FD68(v45, v21);
        *&v43[v44] = v48;
        swift_endAccess();
        v15 += v6;
        v17 = v46;
        if (v46 != v42)
        {
          continue;
        }

        break;
      }

LABEL_14:

      v34 = [v2 sublayoutDataStore];
      if (v34)
      {
        v35 = v34;
        v36 = swift_allocObject();
        *(v36 + 2) = v6;
        *(v36 + 3) = v2;
        v36[4] = v9;
        v37 = swift_allocObject();
        v38 = sub_1B37A4B44;
        *(v37 + 16) = sub_1B37A4B44;
        *(v37 + 24) = v36;
        aBlock[4] = sub_1B37A4B50;
        aBlock[5] = v37;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B37A3218;
        aBlock[3] = &block_descriptor_23;
        v39 = _Block_copy(aBlock);
        v40 = v2;

        [v35 enumerateSublayoutsUsingBlock_];

        _Block_release(v39);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
LABEL_18:
          __swift_destroy_boxed_opaque_existential_0Tm(v49);
          sub_1B36F9DA0(v38);
          return;
        }

        __break(1u);
      }

      v38 = 0;
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1B37A43C0(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for StoryColorGradeEditorItemLayout();
  result = swift_dynamicCastClassUnconditional();
  if (!a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (a1 == 0x8000000000000000 && a5 == -1)
  {
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_captionHeightsByRow;
  swift_beginAccess();
  v13 = COERCE_DOUBLE(sub_1B3898E94(a1 / a5, *(a6 + v12)));
  if (v14)
  {
    v13 = a2;
  }

  return sub_1B3892970(v13);
}

uint64_t sub_1B37A44B0(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_viewModel);
  v4 = OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec;
  swift_beginAccess();
  sub_1B3723558(v3 + v4, v13);
  v5 = *(sub_1B386E1F4() + 16);

  v6 = __swift_project_boxed_opaque_existential_0Tm(v13, v14);
  if (*(*v6 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow) >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(*v6 + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow);
  }

  __swift_project_boxed_opaque_existential_0Tm(v13, v14);
  result = sub_1B37C9F48(v5);
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(result, 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 32);
    v11 = 0.0;
    do
    {
      v12 = *v10++;
      v11 = v11 + v12;
      --v9;
    }

    while (v9);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t sub_1B37A45F0(uint64_t result)
{
  if (*(*(v1 + OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_viewModel) + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_previewMode))
  {
    if ((result & 0x20) != 0)
    {
      return sub_1B37A28B8();
    }
  }

  return result;
}

uint64_t sub_1B37A461C(uint64_t result)
{
  if (result)
  {
    return sub_1B37A28B0();
  }

  if ((result & 2) != 0)
  {
    return sub_1B37A28C0();
  }

  return result;
}

char *sub_1B37A4630(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_viewModel);
  v6 = sub_1B386E0F8(a2);
  objc_allocWithZone(type metadata accessor for StoryColorGradeEditorItemLayout());
  v7 = v5;
  v8 = sub_1B3892510(v6, v7);
  v9 = swift_unknownObjectRetain();
  sub_1B389285C(v9);
  v10 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_previewClipTimeRange + 16);
  v22 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_previewClipTimeRange);
  v23 = v10;
  v24 = *(v3 + OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_previewClipTimeRange + 32);
  sub_1B3892914();
  v11 = OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec;
  swift_beginAccess();
  sub_1B3723558(&v7[v11], v20);
  result = __swift_project_boxed_opaque_existential_0Tm(v20, v21);
  v13 = *(*result + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_numberOfFullyVisibleItemsPerRow);
  if (!v13)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_11;
  }

  v15 = OBJC_IVAR____TtC15PhotosUIPrivateP33_3F240FA02FCAE5DC780044DE9ABB5C8941StoryColorGradeEditorOverlayContentLayout_captionHeightsByRow;
  v16 = a2 / v13;
  swift_beginAccess();
  v17 = sub_1B3898E94(v16, *(v3 + v15));
  if (v18)
  {
    v19 = *(*__swift_project_boxed_opaque_existential_0Tm(v20, v21) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryColorGradeEditorConcreteLayoutSpec_estimatedCaptionHeight);
  }

  else
  {
    v19 = *&v17;
  }

  sub_1B3892970(v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  return v8;
}

double sub_1B37A484C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id sub_1B37A4A5C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1B37A4B80()
{
  result = qword_1EB850B88;
  if (!qword_1EB850B88)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB850B88);
  }

  return result;
}

unint64_t sub_1B37A4C14()
{
  result = qword_1EB853ED0;
  if (!qword_1EB853ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853ED0);
  }

  return result;
}

uint64_t sub_1B37A4C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B37A4CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB858130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B37A4D40(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B3C9D2C8();
  }

  return sub_1B3C9D3C8();
}

unint64_t sub_1B37A4DA4()
{
  result = qword_1EB852330;
  if (!qword_1EB852330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB852330);
  }

  return result;
}

unint64_t sub_1B37A4E5C()
{
  result = qword_1EB853EF0;
  if (!qword_1EB853EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853EF0);
  }

  return result;
}

unint64_t sub_1B37A4EB4()
{
  result = qword_1EB853EF8;
  if (!qword_1EB853EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853EF8);
  }

  return result;
}

unint64_t sub_1B37A4F0C()
{
  result = qword_1EB853F00;
  if (!qword_1EB853F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853F00);
  }

  return result;
}

unint64_t sub_1B37A4F64()
{
  result = qword_1EB853F08;
  if (!qword_1EB853F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB853F08);
  }

  return result;
}

uint64_t OneUpSubtitleWithSymbolFormatter.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1B3710718(0, &qword_1EB84F190);
  *(v0 + 16) = sub_1B3C9C4D8();
  return v0;
}

id sub_1B37A5050()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_5_1();
  v1 = sub_1B3C9C5A8();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t OneUpSubtitleWithSymbolFormatter.init()()
{
  sub_1B3710718(0, &qword_1EB84F190);
  *(v0 + 16) = sub_1B3C9C4D8();
  return v0;
}

id sub_1B37A5114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  sub_1B3710718(0, &qword_1EB853938);

  v5 = sub_1B37A5050();
  if (a4)
  {
    v6 = sub_1B37A51D0();
    if (v6)
    {
      v7 = v6;
      [v5 appendAttributedString_];
    }
  }

  return v5;
}

id sub_1B37A51D0()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16))
  {

    v3 = OUTLINED_FUNCTION_5_1();
    v5 = sub_1B371EF40(v3, v4);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      return v7;
    }
  }

  v8 = OUTLINED_FUNCTION_5_1();
  v10 = static OneUpTitleFormatter.attributedStringForSymbolName(_:shouldPrependSpace:)(v8, v9, 1);
  if (v10)
  {
    v7 = v10;
    swift_beginAccess();
    v11 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v1 + 16);
    sub_1B371F6DC();
    *(v1 + 16) = v20;
    swift_endAccess();
  }

  else
  {
    if (qword_1EB84FFE0 != -1)
    {
      swift_once();
    }

    v12 = sub_1B3C9A558();
    __swift_project_value_buffer(v12, qword_1EB853F70);

    v13 = sub_1B3C9A538();
    v14 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v15 = 136315138;
      v16 = OUTLINED_FUNCTION_5_1();
      *(v15 + 4) = sub_1B3749364(v16, v17, v18);
      _os_log_impl(&dword_1B36F3000, v13, v14, "Failed to create attributed string for symbolName: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x1B8C6EC70](v21, -1, -1);
      MEMORY[0x1B8C6EC70](v15, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_1B37A53EC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853F88);
  sub_1B3C9C4E8();
  return swift_endAccess();
}

uint64_t sub_1B37A5450()
{
  v0 = sub_1B3C9A558();
  __swift_allocate_value_buffer(v0, qword_1EB853F70);
  __swift_project_value_buffer(v0, qword_1EB853F70);
  return sub_1B3C9A548();
}

uint64_t OneUpSubtitleWithSymbolFormatter.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_So12PXAudioAsset_pSgIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B37A5604@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853F90);
  OUTLINED_FUNCTION_0();
  v21 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853F98);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v20 - v7;
  v24 = v2;
  sub_1B3C9B4D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853FA0);
  sub_1B370ED54(&qword_1EB853FA8, &qword_1EB853FA0);
  sub_1B3C9A7A8();
  v9 = *(*(v2 + 8) + OBJC_IVAR____TtC15PhotosUIPrivate39StoryMusicEditorSongCollectionViewModel_localizedTitleKey + 48);

  v10 = sub_1B3C9B798();
  v12 = v11;
  v14 = v13;
  sub_1B370ED54(&unk_1EB853FB0, &qword_1EB853F90);
  v15 = v20;
  sub_1B3C9B9A8();
  sub_1B371B148(v10, v12, v14 & 1);

  (*(v21 + 8))(v6, v15);
  v16 = swift_allocObject();
  memcpy((v16 + 16), v2, 0x68uLL);
  v17 = &v8[*(v22 + 36)];
  *v17 = sub_1B37A7204;
  v17[1] = v16;
  v17[2] = 0;
  v17[3] = 0;
  v18 = *(v2 + 88);
  v26[0] = *(v2 + 72);
  v26[1] = v18;
  sub_1B3787B2C(v2, &v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853650);
  sub_1B3C9BCB8();
  sub_1B37A720C();
  sub_1B3C9B7D8();
  *&v26[0] = v25;
  sub_1B371CB0C(v26);

  return sub_1B370EEB0(v8, &qword_1EB853F98);
}

uint64_t sub_1B37A599C@<X0>(const void *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = sub_1B37A5A38();
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v6 & 1;
  memcpy((v7 + 32), a1, 0x68uLL);
  *a2 = sub_1B37A7308;
  a2[1] = v7;
  return sub_1B3787B2C(a1, v9);
}

uint64_t sub_1B37A5A38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853650);
  sub_1B3C9BC98();
  if ((v2 & 1) == 0)
  {
    return sub_1B378838C(v1);
  }

  sub_1B3C9CAC8();
  if (qword_1EB84FFB8 != -1)
  {
    swift_once();
  }

  sub_1B3C9A438();
  return 0;
}

uint64_t sub_1B37A5B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a5;
  v9 = sub_1B3C9AB48();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v56 = v11;
  v53 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B3C9B2C8();
  MEMORY[0x1EEE9AC00](v12);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853FC8);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v37 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853FD0);
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v37 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853FD8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v37 - v16;
  sub_1B3C9B008();
  v55 = a2;
  v57 = a2;
  v45 = a3 & 1;
  v58 = a3 & 1;
  v59 = a4;
  LODWORD(v60) = 0;
  sub_1B37A781C(&qword_1EB853FE0, MEMORY[0x1E697FCB0]);
  sub_1B3C9D858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853FE8);
  sub_1B37A7328();
  v44 = v14;
  sub_1B3C9A788();
  v60 = *(a4 + 16);
  v17 = a4;
  v61 = *(a4 + 32);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8536F0);
  MEMORY[0x1B8C69360](v62, v18);
  v19 = v62[0];
  if (v62[0])
  {
    v20 = [v62[0] identifier];
    swift_unknownObjectRelease();
    v21 = sub_1B3C9C5E8();
    v19 = v22;
  }

  else
  {
    v21 = 0;
  }

  v41 = v19;
  v62[0] = v21;
  v62[1] = v19;
  v43 = *(v10 + 16);
  v23 = v53;
  v43(v53, a1, v9);
  v42 = a1;
  v24 = *(v10 + 80);
  v25 = v9;
  v38 = v9;
  v26 = (v24 + 120) & ~v24;
  v27 = swift_allocObject();
  v39 = v17;
  memcpy((v27 + 16), v17, 0x68uLL);
  v40 = *(v10 + 32);
  v40(v27 + v26, v23, v25);
  sub_1B3787B2C(v17, &v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854010);
  sub_1B370ED54(&unk_1EB854018, &qword_1EB853FC8);
  sub_1B37A76EC(&qword_1EB853700);
  v28 = v46;
  v29 = v49;
  v30 = v44;
  sub_1B3C9BAC8();

  (*(v47 + 8))(v30, v29);
  v31 = v38;
  v43(v23, v42, v38);
  v32 = swift_allocObject();
  v33 = v39;
  memcpy((v32 + 16), v39, 0x68uLL);
  v40(v32 + v26, v23, v31);
  v34 = v50;
  (*(v48 + 32))(v50, v28, v52);
  v35 = (v34 + *(v51 + 36));
  *v35 = sub_1B37A73DC;
  v35[1] = v32;
  v35[2] = 0;
  v35[3] = 0;
  sub_1B3787B2C(v33, &v60);
  sub_1B37A7440();
  sub_1B3C9B7E8();
  return sub_1B370EEB0(v34, &qword_1EB853FD8);
}

uint64_t sub_1B37A61F0(uint64_t a1, uint64_t a2, const void *a3)
{
  sub_1B3C9A718();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v15 = sub_1B37EE550();
  v12 = swift_allocObject();
  memcpy(v12 + 2, a3, 0x68uLL);
  v12[15] = v5;
  v12[16] = v7;
  v12[17] = v9;
  v12[18] = v11;
  sub_1B3787B2C(a3, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854000);
  sub_1B370ED54(&qword_1EB854048, &qword_1EB854040);
  sub_1B370ED54(&qword_1EB853FF8, &unk_1EB854000);
  sub_1B37A781C(&unk_1EB8537F0, type metadata accessor for StorySongViewModel);
  return sub_1B3C9BE98();
}

uint64_t sub_1B37A63C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v40 = a3;
  v39 = sub_1B3C9AB68();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8537D8);
  v15 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v17 = &v37 - v16;
  v18 = *a1;
  v19 = *(*a1 + 32);
  v20 = *(*a1 + 40);
  v41 = *(a2 + 16);
  v42 = *(a2 + 32);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8536F0);
  MEMORY[0x1B8C69360](v43, v21);
  if (v43[0])
  {
    v22 = [v43[0] identifier];
    swift_unknownObjectRelease();
    v23 = sub_1B3C9C5E8();
    v25 = v24;

    if (v19 == v23 && v20 == v25)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_1B3C9D6A8();
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = swift_allocObject();
  v29 = memcpy((v28 + 16), a2, 0x68uLL);
  *(v28 + 120) = v18;
  MEMORY[0x1EEE9AC00](v29);
  *(&v37 - 8) = v18;
  *(&v37 - 56) = v27 & 1;
  *(&v37 - 6) = a4;
  *(&v37 - 5) = a5;
  *(&v37 - 4) = a6;
  *(&v37 - 3) = a7;
  *(&v37 - 2) = a2;
  sub_1B3787B2C(a2, &v41);
  sub_1B37877C4();

  sub_1B3C9BCE8();
  sub_1B3C9AB58();
  sub_1B370ED54(&unk_1EB8537E0, &qword_1EB8537D8);
  sub_1B37A781C(&unk_1EB854060, MEMORY[0x1E697C248]);
  v31 = v39;
  v30 = v40;
  v32 = v37;
  sub_1B3C9B858();
  (*(v38 + 8))(v14, v31);
  (*(v15 + 8))(v17, v32);
  v34 = *(v18 + 32);
  v33 = *(v18 + 40);
  v35 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854000) + 52));
  *v35 = v34;
  v35[1] = v33;
}

uint64_t sub_1B37A67B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853740);
  result = sub_1B3C9BCA8();
  if (v3)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = swift_unknownObjectRetain();
      v5(v6);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_1B37A6854@<Q0>(uint64_t a1@<X0>, char a2@<W1>, const void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  memcpy((v16 + 24), a3, 0x68uLL);
  swift_retain_n();
  sub_1B3787B2C(a3, &v24);
  type metadata accessor for StorySongViewModel();
  sub_1B37A781C(&unk_1EB853800, type metadata accessor for StorySongViewModel);
  v17 = sub_1B3C9AA58();
  v19 = v18;
  v20 = sub_1B3C9B6C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB854070);
  sub_1B3C9BC88();
  v21 = v25;
  v22 = v26;
  result = v24;
  *a4 = v17;
  *(a4 + 8) = v19;
  *(a4 + 16) = a2;
  *(a4 + 17) = 1;
  *(a4 + 18) = 0;
  *(a4 + 22) = 0;
  *(a4 + 24) = a5;
  *(a4 + 32) = a6;
  *(a4 + 40) = a7;
  *(a4 + 48) = a8;
  *(a4 + 56) = xmmword_1B3D00200;
  *(a4 + 72) = sub_1B37A7810;
  *(a4 + 80) = v16;
  *(a4 + 88) = v20;
  *(a4 + 96) = result;
  *(a4 + 112) = v21;
  *(a4 + 116) = *(v24.n128_u32 + 3);
  *(a4 + 113) = v24.n128_u32[0];
  *(a4 + 120) = v22;
  return result;
}

uint64_t sub_1B37A6A00(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 32);
    swift_unknownObjectRetain();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8536F0);
    MEMORY[0x1B8C69360](&v7, v4);
    v5 = [v2 isEqual_];
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = *(a2 + 40);
      if (v6)
      {
        v6(0);
      }
    }

    sub_1B37EF088(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}