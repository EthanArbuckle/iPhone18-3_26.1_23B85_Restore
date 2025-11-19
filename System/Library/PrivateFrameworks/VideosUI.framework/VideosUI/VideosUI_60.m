uint64_t sub_1E3AFCCF4()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_12_78(OBJC_IVAR____TtC8VideosUI15VUICarouselView_dataSource);
  result = OUTLINED_FUNCTION_12_78(OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate);
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView____lazy_storage___collectionView) = 0;
  v3 = v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration;
  if (_MergedGlobals_80 != -1)
  {
    OUTLINED_FUNCTION_0_143();
    result = swift_once();
  }

  v4 = xmmword_1EE2AB130;
  v5 = unk_1EE2AB140;
  *v3 = vdupq_n_s64(0x4049000000000000uLL);
  *(v3 + 16) = 0x4024000000000000;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 56) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_itemCountMultiplier) = 5;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_lastViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_updateCellVisibleProgress) = 1;
  v6 = qword_1EE28AD58;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_instance) = qword_1EE28AD58;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    qword_1EE28AD58 = v6 + 1;
    v7 = OUTLINED_FUNCTION_2_0();
    v10 = objc_msgSendSuper2(v8, v9, v7, v0, ObjectType);
    v11 = sub_1E3AFBD8C();
    v12 = MEMORY[0x1E69E7D40];
    v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x70);
    v14 = swift_unknownObjectRetain();
    v13(v14);

    v15 = OBJC_IVAR____TtC8VideosUI15VUICarouselView____lazy_storage___collectionView;
    v16 = *&v10[OBJC_IVAR____TtC8VideosUI15VUICarouselView____lazy_storage___collectionView];
    v17 = *((*v12 & *v16) + 0x88);
    v18 = v10;
    v19 = v16;
    v17(v10);

    [*&v10[v15] setDataSource_];
    [*&v10[v15] setTranslatesAutoresizingMaskIntoConstraints_];
    [v18 addSubview_];
    v20 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1E42A1E20;
    v22 = [*&v10[v15] leadingAnchor];
    v23 = [v18 leadingAnchor];
    v24 = OUTLINED_FUNCTION_28_40();

    *(v21 + 32) = v24;
    v25 = [*&v10[v15] trailingAnchor];
    v26 = [v18 trailingAnchor];
    v27 = OUTLINED_FUNCTION_28_40();

    *(v21 + 40) = v27;
    v28 = [*&v10[v15] topAnchor];
    v29 = [v18 topAnchor];
    v30 = OUTLINED_FUNCTION_28_40();

    *(v21 + 48) = v30;
    v31 = [*&v10[v15] bottomAnchor];
    v32 = [v18 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    *(v21 + 56) = v33;
    sub_1E3280A90(0, &qword_1EE23B1A0);
    v34 = sub_1E42062A4();

    [v20 activateConstraints_];

    sub_1E3AFD114();
    return v18;
  }

  return result;
}

void sub_1E3AFD114()
{
  v0 = sub_1E3AFD61C();
  v1 = sub_1E3AFBD8C();
  [v1 setCollectionViewLayout:v0 animated:0];
}

void sub_1E3AFD198()
{
  OUTLINED_FUNCTION_12_78(OBJC_IVAR____TtC8VideosUI15VUICarouselView_dataSource);
  OUTLINED_FUNCTION_12_78(OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate);
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView____lazy_storage___collectionView) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration;
  if (_MergedGlobals_80 != -1)
  {
    OUTLINED_FUNCTION_0_143();
    swift_once();
  }

  v2 = v0 + v1;
  v3 = xmmword_1EE2AB130;
  v4 = unk_1EE2AB140;
  *v2 = vdupq_n_s64(0x4049000000000000uLL);
  *(v2 + 16) = 0x4024000000000000;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  *(v2 + 56) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_itemCountMultiplier) = 5;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_lastViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_updateCellVisibleProgress) = 1;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3AFD2D4()
{
  OUTLINED_FUNCTION_5_16();
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
  OUTLINED_FUNCTION_18_3();
  sub_1E3AFD338();
  OUTLINED_FUNCTION_17_4();
}

void sub_1E3AFD338()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_12();
  v3 = OBJC_IVAR____TtC8VideosUI15VUICarouselView_lastViewWidth;
  v4 = *&v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView_lastViewWidth];
  [v0 bounds];
  if (v4 != CGRectGetWidth(v19))
  {
    sub_1E324FBDC();
    v5 = OUTLINED_FUNCTION_13_89();
    v6(v5);
    v7 = v0;
    v8 = sub_1E41FFC94();
    v9 = sub_1E42067E4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v18 = OUTLINED_FUNCTION_100();
      *v10 = 136315138;
      v11 = sub_1E3AFC054();
      v13 = OUTLINED_FUNCTION_49_1(v11, v12);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_1E323F000, v8, v9, "%s viewWidth change, updating layout", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v14 = OUTLINED_FUNCTION_53();
    v15(v14);
    [v7 bounds];
    *&v1[v3] = CGRectGetWidth(v20);
    [v7 bounds];
    CGRectGetWidth(v21);
    v16 = sub_1E3AFBD8C();
    [v16 _setVisibleRectEdgeInsets_];

    v17 = sub_1E3AFBD8C();
    [v17 contentOffset];
    OUTLINED_FUNCTION_18_3();

    OUTLINED_FUNCTION_17_4();
    sub_1E3AFD764();
  }

  OUTLINED_FUNCTION_54_0();
}

id sub_1E3AFD61C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  [v0 setInterSectionSpacing_];
  [v0 setScrollDirection_];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for StackCollectionViewCompositionalLayout();
  OUTLINED_FUNCTION_40_1();
  return sub_1E37BEAF8();
}

uint64_t sub_1E3AFD6CC()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_dataSource;
  OUTLINED_FUNCTION_5_0();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(v0, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

void sub_1E3AFD764()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  OUTLINED_FUNCTION_5_16();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_12();
  sub_1E3AFDA90();
  v10 = v9;
  v11 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled] != 1)
  {
    goto LABEL_9;
  }

  v12 = *&v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex];
  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = __OFADD__(v12, 1);
  v15 = v12 + 1;
  if (v14)
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v15 >= v9)
  {
    v15 = v9;
  }

  if (v15 <= v13)
  {
    v10 = v13;
  }

  else
  {
    v10 = v15;
  }

LABEL_9:
  v16 = sub_1E3AFCCA8(v10);
  sub_1E324FBDC();
  v17 = OUTLINED_FUNCTION_13_89();
  v18(v17);
  v19 = v0;
  v20 = sub_1E41FFC94();
  v21 = sub_1E42067E4();

  if (!os_log_type_enabled(v20, v21))
  {

    v27 = OUTLINED_FUNCTION_53();
    v28(v27);
    if (v4)
    {
      goto LABEL_11;
    }

LABEL_13:
    v29 = sub_1E3AFBD8C();
    v30 = OUTLINED_FUNCTION_6_12();
    [v31 v32];

    goto LABEL_14;
  }

  v35 = v7;
  v22 = OUTLINED_FUNCTION_100();
  v36 = OUTLINED_FUNCTION_100();
  *v22 = 136315650;
  v23 = sub_1E3AFC054();
  v34 = v5;
  v25 = v4;
  v26 = OUTLINED_FUNCTION_49_1(v23, v24);

  *(v22 + 4) = v26;
  v4 = v25;
  *(v22 + 12) = 2048;
  *(v22 + 14) = v10;
  *(v22 + 22) = 2048;
  *(v22 + 24) = v16;
  _os_log_impl(&dword_1E323F000, v20, v21, "%s scrollViewWillEndDragging targetIndex = %ld, adjustedOffset = %f", v22, 0x20u);
  __swift_destroy_boxed_opaque_existential_1(v36);
  v11 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_0();

  (*(v35 + 8))(v1, v34);
  if (!v25)
  {
    goto LABEL_13;
  }

LABEL_11:
  *v4 = v16;
  *(v4 + 1) = v2;
LABEL_14:
  v33 = v11[185];
  if (v10 != *&v19[v33])
  {
    *&v19[v33] = v10;
    sub_1E3AFD9F0();
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3AFD9F0()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate;
  OUTLINED_FUNCTION_5_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = sub_1E3AFCC0C(*(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex));
    (*(v3 + 24))(v0, v5, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E3AFDA90()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = &v0[OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration];
  OUTLINED_FUNCTION_5_0();
  if (*v10 + v10[2] <= 0.0)
  {
LABEL_9:
    v15 = sub_1E324FBDC();
    (*(v5 + 16))(v9, v15, v3);
    v16 = v0;
    v17 = sub_1E41FFC94();
    v18 = sub_1E42067F4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = OUTLINED_FUNCTION_100();
      v26 = v20;
      *v19 = 136315138;
      v21 = sub_1E3AFC054();
      v23 = sub_1E3270FC8(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1E323F000, v17, v18, "%s collectionIndex return 0 because itemWidth is 0", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v9, v3);
    goto LABEL_22;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      OUTLINED_FUNCTION_133_0();
      if (!(v13 ^ v14 | v12))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v11 <= -9.22337204e18)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_15_84();
      if (!v13)
      {
        __break(1u);
        goto LABEL_9;
      }

LABEL_22:
      OUTLINED_FUNCTION_54_0();
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_133_0();
    if (!(v13 ^ v14 | v12))
    {
      goto LABEL_23;
    }

    if (v24 <= -9.22337204e18)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_15_84();
    if (v13)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_133_0();
  if (!(v13 ^ v14 | v12))
  {
    goto LABEL_24;
  }

  if (v25 > -9.22337204e18)
  {
    OUTLINED_FUNCTION_15_84();
    if (!v13)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1E3AFDD08()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled);
  result = sub_1E3AFD6CC();
  if (v1 == 1)
  {
    v3 = (result * 5) >> 64;
    result *= 5;
    if (v3 != result >> 63)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1E3AFDDA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_12();
  v16 = sub_1E324FBDC();
  (*(v14 + 16))(v3, v16, v12);
  (*(v7 + 16))(v11, a2, v5);
  v17 = v2;
  v18 = sub_1E41FFC94();
  v19 = sub_1E42067E4();

  if (os_log_type_enabled(v18, v19))
  {
    swift_slowAlloc();
    v41[0] = OUTLINED_FUNCTION_26_45();
    *v12 = 136315394;
    v40 = v19;
    v20 = sub_1E3AFC054();
    OUTLINED_FUNCTION_49_1(v20, v21);
    OUTLINED_FUNCTION_33_12();
    OUTLINED_FUNCTION_14_94();
    OUTLINED_FUNCTION_5_113();
    sub_1E3AFEE08(v22, v23);
    v24 = sub_1E4207944();
    v26 = v25;
    v27 = OUTLINED_FUNCTION_7_113();
    v28(v27);
    v29 = sub_1E3270FC8(v24, v26, v41);

    *(v12 + 14) = v29;
    OUTLINED_FUNCTION_24_44(&dword_1E323F000, v30, v40, "%s cellForItemAt, indexPath=%s");
    OUTLINED_FUNCTION_36_31();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v14 + 8))(v3, v12);
  }

  else
  {

    v31 = OUTLINED_FUNCTION_7_113();
    v32(v31);
    (*(v14 + 8))(v3, v12);
  }

  v33 = sub_1E41FE844();
  v34 = sub_1E3AFCC0C(v33);
  v35 = &v17[OBJC_IVAR____TtC8VideosUI15VUICarouselView_dataSource];
  OUTLINED_FUNCTION_5_0();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return [objc_allocWithZone(MEMORY[0x1E69DC7F8]) init];
  }

  v36 = *(v35 + 1);
  ObjectType = swift_getObjectType();
  v38 = (*(v36 + 16))(v17, v34, ObjectType, v36);
  swift_unknownObjectRelease();
  return v38;
}

uint64_t sub_1E3AFE1CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_12();
  sub_1E324FBDC();
  v16 = OUTLINED_FUNCTION_13_89();
  v17(v16);
  (*(v7 + 16))(v11, a2, v5);
  v18 = v2;
  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  if (os_log_type_enabled(v19, v20))
  {
    swift_slowAlloc();
    v45[0] = OUTLINED_FUNCTION_26_45();
    *a2 = 136315394;
    v43 = v20;
    v21 = sub_1E3AFC054();
    OUTLINED_FUNCTION_49_1(v21, v22);
    v44 = v12;
    OUTLINED_FUNCTION_33_12();
    OUTLINED_FUNCTION_14_94();
    OUTLINED_FUNCTION_5_113();
    sub_1E3AFEE08(v23, v24);
    v25 = sub_1E4207944();
    v27 = v26;
    v28 = OUTLINED_FUNCTION_7_113();
    v29(v28);
    v30 = sub_1E3270FC8(v25, v27, v45);

    *(a2 + 14) = v30;
    OUTLINED_FUNCTION_24_44(&dword_1E323F000, v31, v43, "%s didSelectItemAt, indexPath=%s");
    OUTLINED_FUNCTION_36_31();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v14 + 8))(v3, v44);
  }

  else
  {

    v32 = OUTLINED_FUNCTION_7_113();
    v33(v32);
    v34 = OUTLINED_FUNCTION_53();
    v36(v34, v35);
  }

  v37 = &v18[OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate];
  OUTLINED_FUNCTION_5_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v39 = *(v37 + 1);
    ObjectType = swift_getObjectType();
    v41 = sub_1E41FE844();
    v42 = sub_1E3AFCC0C(v41);
    (*(v39 + 32))(v18, v42, ObjectType, v39);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E3AFE5B0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_delegate;
  OUTLINED_FUNCTION_5_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = sub_1E41FE844();
    (*(v6 + 8))(v2, a2, v8, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E3AFE8F0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_118();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v41 - v10;
  [v1 contentOffset];
  OUTLINED_FUNCTION_18_3();
  v12 = sub_1E324FBDC();
  v44 = *(v4 + 16);
  v44(v11, v12, v2);
  v13 = v0;
  v14 = sub_1E41FFC94();
  v15 = sub_1E42067E4();

  if (os_log_type_enabled(v14, v15))
  {
    swift_slowAlloc();
    v45 = v7;
    v16 = OUTLINED_FUNCTION_26_45();
    v42 = v12;
    v46 = v16;
    *v7 = 136315394;
    v17 = sub_1E3AFC054();
    OUTLINED_FUNCTION_49_1(v17, v18);
    v43 = v2;
    OUTLINED_FUNCTION_33_12();
    OUTLINED_FUNCTION_14_94();
    OUTLINED_FUNCTION_17_4();
    v19 = sub_1E4206EE4();
    OUTLINED_FUNCTION_49_1(v19, v20);
    OUTLINED_FUNCTION_33_12();
    *(v7 + 14) = v4;
    v2 = v43;
    OUTLINED_FUNCTION_24_44(&dword_1E323F000, v21, v15, "%s scrollViewDidEndDecelerating, contentOffset=%s");
    swift_arrayDestroy();
    v12 = v42;
    OUTLINED_FUNCTION_6_0();
    v7 = v45;
    OUTLINED_FUNCTION_6_0();
  }

  v22 = *(v4 + 8);
  v22(v11, v2);
  if (*(v13 + OBJC_IVAR____TtC8VideosUI15VUICarouselView_isInfiniteScrollEnabled) == 1)
  {
    sub_1E3AFDA90();
    v24 = v23;
    v25 = sub_1E3AFCC0C(v23);
    v26 = sub_1E3AFC770(v25);
    v44(v7, v12, v2);
    v27 = v13;
    v28 = sub_1E41FFC94();
    v29 = sub_1E42067E4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_100();
      v45 = v7;
      v31 = v30;
      v32 = OUTLINED_FUNCTION_100();
      v44 = v4;
      v33 = v32;
      v46 = v32;
      *v31 = 136315650;
      v34 = sub_1E3AFC054();
      v36 = OUTLINED_FUNCTION_49_1(v34, v35);
      v43 = v22;
      v37 = v24;
      v38 = v26;
      v39 = v36;

      *(v31 + 4) = v39;
      v26 = v38;
      *(v31 + 12) = 2048;
      *(v31 + 14) = v37;
      *(v31 + 22) = 2048;
      *(v31 + 24) = v38;
      _os_log_impl(&dword_1E323F000, v28, v29, "%s scrollViewDidEndDecelerating currentIndex: %ld, newIndex = %ld", v31, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v43(v45, v2);
    }

    else
    {

      v22(v7, v2);
    }

    v40 = sub_1E3AFBD8C();
    [v40 setContentOffset:0 animated:{sub_1E3AFCCA8(v26), 0.0}];

    if (v26 != *&v27[OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex])
    {
      *&v27[OBJC_IVAR____TtC8VideosUI15VUICarouselView_currentCarouselIndex] = v26;
      sub_1E3AFD9F0();
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3AFED08(id a1)
{
  v2 = sub_1E3AFBD8C();

  if (v2 == a1)
  {

    sub_1E3AFD764();
  }
}

uint64_t sub_1E3AFEE08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3AFEE74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 57))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
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

uint64_t sub_1E3AFEEC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

id sub_1E3AFEF34()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = Strong + OBJC_IVAR____TtC8VideosUI15VUICarouselView_configuration;
  OUTLINED_FUNCTION_5_0();
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = objc_opt_self();
  v6 = [v5 fractionalWidthDimension_];
  v7 = [v5 fractionalHeightDimension_];
  v8 = objc_opt_self();
  v9 = [v8 sizeWithWidthDimension:v6 heightDimension:v7];

  v10 = [objc_opt_self() itemWithLayoutSize_];
  v11 = [v5 absoluteDimension_];
  v12 = [v5 absoluteDimension_];
  v13 = [v8 sizeWithWidthDimension:v11 heightDimension:v12];

  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E4298880;
  *(v15 + 32) = v10;
  sub_1E3280A90(0, &unk_1EE23B0A0);
  v16 = v10;
  v17 = sub_1E42062A4();

  v18 = [v14 horizontalGroupWithLayoutSize:v13 subitems:v17];

  v19 = [objc_opt_self() fixedSpacing_];
  [v18 setInterItemSpacing_];

  v20 = [objc_opt_self() sectionWithGroup_];
  [v20 setInterGroupSpacing_];
  v21.n128_u64[0] = *(v2 + 24);
  v22.n128_u64[0] = *(v2 + 32);
  nullsub_1(v21, v22);
  [v20 setContentInsets_];

  return v20;
}

void sub_1E3AFF224(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))() / 60.0;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = v2 / 60;
  if (v2 >= 60)
  {
    v5 = [objc_opt_self() sharedInstance];
    if (!v5)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = sub_1E4205ED4();
    v8 = [v6 localizedStringForKey_];

    if (v8)
    {
      sub_1E4205F14();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1E4297BE0;
      sub_1E4207944();
      *(v9 + 56) = MEMORY[0x1E69E6158];
      v10 = sub_1E3283528();
      v11 = OUTLINED_FUNCTION_0_144(v10);
      v13 = v12;

      MEMORY[0x1E69109E0](v11, v13);
    }
  }

  if (v3 - 60 * v4 < 1)
  {
    return;
  }

  v14 = [objc_opt_self() sharedInstance];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  v16 = sub_1E4205ED4();
  v17 = [v15 localizedStringForKey_];

  if (v17)
  {
    sub_1E4205F14();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1E4297BE0;
    sub_1E4207944();
    *(v18 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1E3283528();
    v20 = OUTLINED_FUNCTION_0_144(v19);
    v22 = v21;

    MEMORY[0x1E69109E0](v20, v22);
  }
}

void sub_1E3AFF530()
{
  sub_1E3280A90(0, &qword_1EE23AE20);
  v0 = sub_1E4206F24();
  v1 = sub_1E4206F24();
  v2 = sub_1E3E5F2F8(v0, v1);

  qword_1EE28BC60 = v2;
}

uint64_t sub_1E3AFF5D8()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for MonogramLayout();
    v1 = sub_1E4097BF8(0);
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3AFF644()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(6, v3 & 1, v4, v5 & 1);
    *(v2 + 152) = v1;
  }

  return v1;
}

uint64_t sub_1E3AFF6D0()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(10, v3 & 1, v4, v5 & 1);
    *(v2 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E3AFF75C()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextBadgeLayout();
    v3 = OUTLINED_FUNCTION_51_1();
    v4 = sub_1E382F55C(3, 1, v3 & 1);
    OUTLINED_FUNCTION_4_8(v4, v5, v6, v7, v8, v9, v10, v11, v4, v13);

    v1 = v14;
    *(v2 + 168) = v14;
  }

  return v1;
}

uint64_t sub_1E3AFF804(__n128 a1)
{
  a1.n128_u64[0] = 6.0;
  v1.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(a1);
  OUTLINED_FUNCTION_36_32(v1);
  OUTLINED_FUNCTION_25_52(v2, v3, v4, v5);
  v7 = v6;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_7_33();
  sub_1E3C3DE00(v7);
  OUTLINED_FUNCTION_11_7(v8, v9, v10, v11, v12, v13, v14, v15, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], v34[12], v34[13], v34[14], v34[15], v34[16], v34[17], v34[18], v34[19], v34[20], v34[21], v34[22], v34[23], v34[24], v34[25], v34[26], v34[27], v34[28], v34[29], *&v35, *(&v35 + 1), *&v36, *(&v36 + 1), v37, *&v38, *&v39, *(&v39 + 1), *&v40, *(&v40 + 1), v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  sub_1E3C3DE00(v7);
  OUTLINED_FUNCTION_4_10(v16, v17, v18, v19, v20, v21, v22, v23, v34[0], v34[1], v34[2], v34[3], v34[4], v34[5], v34[6], v34[7], v34[8], v34[9], v34[10], v34[11], v34[12], v34[13], v34[14], v34[15], v34[16], v34[17], v34[18], v34[19], v34[20], v34[21], v34[22], v34[23], v34[24], v34[25], v34[26], v34[27], v34[28], v34[29], *&v35, *(&v35 + 1), *&v36, *(&v36 + 1), v37, *&v38, *&v39, *(&v39 + 1), *&v40, *(&v40 + 1), v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v24 = sub_1E3C3DE00(v7);
  OUTLINED_FUNCTION_15_85(v24, v25, v26, v27, v28, v29, v30, v31, *&v34[0], *&v34[1], *&v34[2], *&v34[3], *&v34[4], *&v34[5], *&v34[6], *&v34[7], *&v34[8], *&v34[9], *&v34[10], *&v34[11], *&v34[12], *&v34[13], *&v34[14], *&v34[15], *&v34[16], *&v34[17], *&v34[18], *&v34[19], *&v34[20], *&v34[21], *&v34[22], *&v34[23], *&v34[24], *&v34[25], *&v34[26], *&v34[27], *&v34[28], *&v34[29], v35, v36, SLOBYTE(v37), v38, v39, v40, SLOBYTE(v41));
  memcpy(v34, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_69();
  return v32();
}

uint64_t sub_1E3AFF8D0()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextBadgeLayout();
    v3 = OUTLINED_FUNCTION_51_1();
    v4 = sub_1E382F55C(3, 1, v3 & 1);
    OUTLINED_FUNCTION_4_8(v4, v5, v6, v7, v8, v9, v10, v11, v4, v13);

    v1 = v14;
    *(v2 + 176) = v14;
  }

  return v1;
}

uint64_t sub_1E3AFF978(__n128 a1)
{
  a1.n128_u64[0] = 6.0;
  v1.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(a1);
  OUTLINED_FUNCTION_36_32(v1);
  OUTLINED_FUNCTION_25_52(v2, v3, v4, v5);
  v7 = v6;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_7_33();
  sub_1E3C3DE00(v7);
  OUTLINED_FUNCTION_11_7(v8, v9, v10, v11, v12, v13, v14, v15, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10], v42[11], v42[12], v42[13], v42[14], v42[15], v42[16], v42[17], v42[18], v42[19], v42[20], v42[21], v42[22], v42[23], v42[24], v42[25], v42[26], v42[27], v42[28], v42[29], *&v43, *(&v43 + 1), *&v44, *(&v44 + 1), v45, *&v46, *&v47, *(&v47 + 1), *&v48, *(&v48 + 1), v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63);
  sub_1E3C3DE00(v7);
  OUTLINED_FUNCTION_4_10(v16, v17, v18, v19, v20, v21, v22, v23, v42[0], v42[1], v42[2], v42[3], v42[4], v42[5], v42[6], v42[7], v42[8], v42[9], v42[10], v42[11], v42[12], v42[13], v42[14], v42[15], v42[16], v42[17], v42[18], v42[19], v42[20], v42[21], v42[22], v42[23], v42[24], v42[25], v42[26], v42[27], v42[28], v42[29], *&v43, *(&v43 + 1), *&v44, *(&v44 + 1), v45, *&v46, *&v47, *(&v47 + 1), *&v48, *(&v48 + 1), v49, v50, v51, v52, v53, v54, v55, v56, v57);
  v24 = sub_1E3C3DE00(v7);
  OUTLINED_FUNCTION_15_85(v24, v25, v26, v27, v28, v29, v30, v31, *&v42[0], *&v42[1], *&v42[2], *&v42[3], *&v42[4], *&v42[5], *&v42[6], *&v42[7], *&v42[8], *&v42[9], *&v42[10], *&v42[11], *&v42[12], *&v42[13], *&v42[14], *&v42[15], *&v42[16], *&v42[17], *&v42[18], *&v42[19], *&v42[20], *&v42[21], *&v42[22], *&v42[23], *&v42[24], *&v42[25], *&v42[26], *&v42[27], *&v42[28], *&v42[29], v43, v44, SLOBYTE(v45), v46, v47, v48, SLOBYTE(v49));
  memcpy(v42, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_17_69();
  v32();
  v33 = objc_opt_self();
  v34 = [v33 whiteColor];
  v35 = [v34 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v36 + 752))(v35);
  OUTLINED_FUNCTION_36();
  result = (*(v37 + 1848))();
  if (result)
  {
    v39 = [v33 blackColor];
    v40 = [v39 colorWithAlphaComponent_];

    OUTLINED_FUNCTION_36();
    (*(v41 + 680))(v40);
  }

  return result;
}

id sub_1E3AFFB84()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v0 + 200);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 200);
    *(v0 + 200) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1E3AFFBF4()
{
  OUTLINED_FUNCTION_15_0();
  if (*(v0 + 192) == 3)
  {
    v1 = 0;
  }

  else
  {
    sub_1E3AFFC64();
    v1 = sub_1E4205E84();
  }

  return v1 & 1;
}

unint64_t sub_1E3AFFC64()
{
  result = qword_1EE259C68;
  if (!qword_1EE259C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE259C68);
  }

  return result;
}

void sub_1E3AFFCE0()
{
  type metadata accessor for SearchDescriptionLayout();
  *(v0 + 184) = OUTLINED_FUNCTION_22_50();
  *(v0 + 192) = 3;
  *(v0 + 200) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3AFFDA4(char a1)
{
  type metadata accessor for SearchDescriptionLayout();
  *(v1 + 184) = OUTLINED_FUNCTION_22_50();
  *(v1 + 192) = 3;
  *(v1 + 200) = 0;
  v3 = sub_1E3C2F9A0();
  swift_beginAccess();
  *(v3 + 192) = a1;

  v4 = sub_1E374EA2C();
  v5 = *sub_1E3E5FD88();
  v6 = *(*v4 + 680);
  v7 = v5;
  v6(v5);

  OUTLINED_FUNCTION_36();
  v9 = *(v8 + 2056);

  v9(2, 0);

  OUTLINED_FUNCTION_36();
  v11 = *(v10 + 2080);

  v11(2, 0);

  OUTLINED_FUNCTION_36();
  v13 = *(v12 + 1984);

  v13(5);

  OUTLINED_FUNCTION_36();
  v15 = *(v14 + 1696);

  v15(17);

  v16 = objc_opt_self();
  if ([v16 isSearchEnabled])
  {
    sub_1E37BD068();
    OUTLINED_FUNCTION_30();
    (*(v17 + 1696))(21);

    v18 = *(v3 + 104);

    v19 = *sub_1E3E5FDEC();
    v20 = *(*v18 + 680);
    v21 = v19;
    v20(v19);

    OUTLINED_FUNCTION_36();
    v23 = *(v22 + 2056);

    v24 = OUTLINED_FUNCTION_15_8();
    v23(v24);

    OUTLINED_FUNCTION_36();
    v26 = *(v25 + 2080);

    v26(0, 0);

    sub_1E3952C88();
    OUTLINED_FUNCTION_35_37();
    OUTLINED_FUNCTION_2_114(v27, v28, v29, v30);
    type metadata accessor for UIEdgeInsets();
    v32 = v31;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_14_95();
    sub_1E3C3DE00(v32);
    OUTLINED_FUNCTION_13_90();
    sub_1E3C3DE00(v32);
    OUTLINED_FUNCTION_5_114();
    sub_1E3C3DE00(v32);
    OUTLINED_FUNCTION_4_118();
    OUTLINED_FUNCTION_21_57(v33, v34, v35, v36, v37, v38, v39, v40, v429, v444, v459, v476, v493, v511, v529, v545, v561, v577, v593, v607, v622, v637, v652, v668, v684, v700, v716, v732, v748, v764, v780, v794, v809, v824, v839, v855, v871, v887, v903, v919, v935, v951, v967, v982, v998, v1014, v1030, v1046, v1062, v1078, v1094, v1110, v1126, v1142, __dst);
    OUTLINED_FUNCTION_23_49();
    sub_1E3C2FCB8(v41, v42);
    OUTLINED_FUNCTION_18_56(v43, v44, v45, v46, v47, v48, v49, v50, v430, v445, v460, v477, v494, v512, v530, v546, v562, v578, v594, v608, v623, v638, v653, v669, v685, v701, v717, v733, v749, v765, v781, v795, v810, v825, v840, v856, v872, v888, v904, v920, v936, v952, v968, v983, v999, v1015, v1031, v1047, v1063, v1079, v1095, v1111, v1127, v1143, __dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_17_69();
    v51();

    OUTLINED_FUNCTION_36();
    v53 = *(v52 + 1984);

    v53(5);
  }

  v54 = [v16 isSearchEnabled];
  sub_1E374EA94();
  OUTLINED_FUNCTION_2_1();
  if (v54)
  {
    v56 = 21;
  }

  else
  {
    v56 = 19;
  }

  (*(v55 + 1696))(v56);

  v57 = sub_1E374EA94();
  v513 = sub_1E3E5FDEC();
  v58 = *v513;
  v59 = *(*v57 + 680);
  v60 = *v513;
  v59(v58);

  OUTLINED_FUNCTION_36();
  v62 = *(v61 + 2056);

  v63 = OUTLINED_FUNCTION_15_8();
  v62(v63);

  OUTLINED_FUNCTION_36();
  v65 = *(v64 + 2080);

  v66 = OUTLINED_FUNCTION_15_8();
  v65(v66);

  sub_1E3952C88();
  OUTLINED_FUNCTION_35_37();
  OUTLINED_FUNCTION_2_114(v67, v68, v69, v70);
  type metadata accessor for UIEdgeInsets();
  v72 = v71;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_14_95();
  sub_1E3C3DE00(v72);
  OUTLINED_FUNCTION_13_90();
  sub_1E3C3DE00(v72);
  OUTLINED_FUNCTION_5_114();
  sub_1E3C3DE00(v72);
  OUTLINED_FUNCTION_4_118();
  OUTLINED_FUNCTION_21_57(v73, v74, v75, v76, v77, v78, v79, v80, v429, v444, v459, v476, v493, v513, v529, v545, v561, v577, v593, v607, v622, v637, v652, v668, v684, v700, v716, v732, v748, v764, v780, v794, v809, v824, v839, v855, v871, v887, v903, v919, v935, v951, v967, v982, v998, v1014, v1030, v1046, v1062, v1078, v1094, v1110, v1126, v1142, __dst);
  OUTLINED_FUNCTION_23_49();
  sub_1E3C2FCB8(v81, v82);
  OUTLINED_FUNCTION_18_56(v83, v84, v85, v86, v87, v88, v89, v90, v431, v446, v461, v478, v495, v514, v531, v547, v563, v579, v595, v609, v624, v639, v654, v670, v686, v702, v718, v734, v750, v766, v782, v796, v811, v826, v841, v857, v873, v889, v905, v921, v937, v953, v969, v984, v1000, v1016, v1032, v1048, v1064, v1080, v1096, v1112, v1128, v1144, __dst);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v99 = OUTLINED_FUNCTION_3_118(v91, v92, v93, v94, v95, v96, v97, v98, v432, v447, v462, v479, v496, v515, v532, v548, v564, v580, v596, v610, v625, v640, v655, v671, v687, v703, v719, v735, v751, v767, v783, v797, v812, v827, v842, v858, v874, v890, v906, v922, v938, v954, v970, v985, v1001, v1017, v1033, v1049, v1065, v1081, v1097, v1113, v1129, v1145, __dst);
  v100(v99);

  OUTLINED_FUNCTION_36();
  v102 = *(v101 + 1984);

  v102(5);

  if (sub_1E389CC78())
  {
    v103 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    v481 = sub_1E3280A90(0, &qword_1EE23AE20);
    v498 = sub_1E4206F24();
    [v103 setShadowColor_];
    [v103 setShadowBlurRadius_];
    [v103 setShadowOffset_];
    v104 = *sub_1E3E6011C();
    sub_1E3C2DE50();
    v105 = *sub_1E3E60638();
    sub_1E3C2E258();
    sub_1E374EA2C();
    LOBYTE(v1182[0]) = 17;
    LOBYTE(v1179) = 17;
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v1173) = v1176;
    sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v1167) = v1170;
    v106 = sub_1E3C3DE00(&qword_1F5D549D8);
    LOBYTE(v1163) = v1164;
    v114 = OUTLINED_FUNCTION_21_57(v106, v107, v108, v109, v110, v111, v112, v113, v433, v448, v463, v481, v498, v516, v16, v549, v565, v581, v597, v611, v626, v641, v656, v672, v688, v704, v720, v736, v752, v768, v784, v798, v813, v828, v843, v859, v875, v891, v907, v923, v939, v955, v971, v986, v1002, v1018, v1034, v1050, v1066, v1082, v1098, v1114, v1130, v1146, 15);
    sub_1E3C2FCB8(v114, v115);
    LODWORD(__dst) = v1184;
    WORD2(__dst) = WORD2(v1184);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v116 + 1600))(&__dst, 48, v117 & 1, &qword_1F5D549D8);

    OUTLINED_FUNCTION_36();
    v119 = *(v118 + 2008);

    v119(1);

    if (TVAppFeature.isEnabled.getter(1))
    {

      sub_1E3952C88();
      OUTLINED_FUNCTION_2_114(v120, v121, v122, v123);
      OUTLINED_FUNCTION_8();
      (*(v124 + 160))(v1182);
    }

    sub_1E374EA94();
    OUTLINED_FUNCTION_30();
    (*(v125 + 2008))(1);

    if (*sub_1E3C2AE50() == 1)
    {
      OUTLINED_FUNCTION_8();
      v127 = *(v126 + 1696);

      v127(21);
    }

    sub_1E3C2AEE0();
    sub_1E38A86A4();
    v128 = OUTLINED_FUNCTION_32_44();
    v129(v128);

    __asm { FMOV            V1.2D, #10.0 }

    v1173 = xmmword_1E4296C50;
    v1174 = _Q1;
    LOBYTE(v1175) = 0;
    __dst = xmmword_1E4296C50;
    v1159 = _Q1;
    LOBYTE(v1160) = 0;
    v1179 = xmmword_1E4298710;
    v1180 = xmmword_1E42BA110;
    LOBYTE(v1181) = 0;

    sub_1E3C3DE00(v72);
    v1170 = v1176;
    v1171 = v1177;
    LOBYTE(v1172) = v1178;
    sub_1E3C3DE00(v72);
    OUTLINED_FUNCTION_5_114();
    sub_1E3C3DE00(v72);
    OUTLINED_FUNCTION_4_118();
    sub_1E3C3DE00(v72);
    OUTLINED_FUNCTION_30_42();
    OUTLINED_FUNCTION_21_57(v135, v136, v137, v138, v139, v140, v141, v142, v434, v449, v464, v482, v499, v517, v533, v550, v566, v582, v598, v612, v627, v642, v657, v673, v689, v705, v721, v737, v753, v769, v785, v799, v814, v829, v844, v860, v876, v892, v908, v924, v940, v956, v972, v987, v1003, v1019, v1035, v1051, v1067, v1083, v1099, v1115, v1131, v1147, __dst);
    OUTLINED_FUNCTION_23_49();
    sub_1E3C2FCB8(v143, v144);
    OUTLINED_FUNCTION_18_56(v145, v146, v147, v148, v149, v150, v151, v152, v435, v450, v465, v483, v500, v518, v534, v551, v567, v583, v599, v613, v628, v643, v658, v674, v690, v706, v722, v738, v754, v770, v786, v800, v815, v830, v845, v861, v877, v893, v909, v925, v941, v957, v973, v988, v1004, v1020, v1036, v1052, v1068, v1084, v1100, v1116, v1132, v1148, __dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v161 = OUTLINED_FUNCTION_3_118(v153, v154, v155, v156, v157, v158, v159, v160, v436, v451, v466, v484, v501, v519, v535, v552, v568, v584, v600, v614, v629, v644, v659, v675, v691, v707, v723, v739, v755, v771, v787, v801, v816, v831, v846, v862, v878, v894, v910, v926, v942, v958, v974, v989, v1005, v1021, v1037, v1053, v1069, v1085, v1101, v1117, v1133, v1149, __dst);
    v162(v161);

    v163 = *(v3 + 128);
    OUTLINED_FUNCTION_36();
    v165 = *(v164 + 608);

    v467 = v103;
    v165(v103);

    OUTLINED_FUNCTION_29_44();
    sub_1E39537A8();
    *&v1179 = v166;
    *(&v1179 + 1) = v167;
    *&v1180 = v168;
    *(&v1180 + 1) = v169;
    LOBYTE(v1181) = 0;
    (*(*v163 + 560))(&v1179);

    OUTLINED_FUNCTION_29_44();
    v170 = sub_1E3E6097C();
    v171 = *v170;
    v172 = *(*v163 + 1832);
    v173 = *v170;
    v172(v171);

    OUTLINED_FUNCTION_29_44();
    v174.n128_u64[0] = 1.0;
    *&v1176 = j__OUTLINED_FUNCTION_7_78(v174);
    *(&v1176 + 1) = v175;
    *&v1177 = v176;
    *(&v1177 + 1) = v177;
    LOBYTE(v1178) = 0;
    (*(*v163 + 1856))(&v1176);

    sub_1E3AFF5D8();
    OUTLINED_FUNCTION_2_1();
    (*(v178 + 1744))();
    OUTLINED_FUNCTION_37_33();
    v179 = OUTLINED_FUNCTION_32_44();
    v180(v179);

    OUTLINED_FUNCTION_36();
    v182 = *(v181 + 1744);

    v182(v183);
    OUTLINED_FUNCTION_37_33();
    (*(*v171 + 440))(0x3FF0000000000000, 0);

    v184 = _MergedGlobals_201;

    if (v184 != -1)
    {
      OUTLINED_FUNCTION_16_74();
    }

    v185 = qword_1EE28BC60;
    OUTLINED_FUNCTION_8();
    v187 = *(v186 + 680);
    v188 = v185;
    v187(v185);

    OUTLINED_FUNCTION_8();
    v190 = *(v189 + 208);

    v191 = OUTLINED_FUNCTION_32_44();
    v190(v191);

    OUTLINED_FUNCTION_36();
    v193 = *(v192 + 312);

    v194 = OUTLINED_FUNCTION_32_44();
    v193(v194);

    OUTLINED_FUNCTION_8();
    v196 = *(v195 + 160);

    v196(&v1173);

    OUTLINED_FUNCTION_36();
    v198 = *(v197 + 1744);

    v198(v199);
    OUTLINED_FUNCTION_37_33();
    v200 = *v170;
    v201 = *(*v185 + 1832);
    v202 = *v170;
    v201(v200);

    OUTLINED_FUNCTION_36();
    v204 = *(v203 + 1744);

    v204(v205);
    OUTLINED_FUNCTION_37_33();
    v206.n128_u64[0] = 1.0;
    *&v1170 = j__OUTLINED_FUNCTION_7_78(v206);
    *(&v1170 + 1) = v207;
    *&v1171 = v208;
    *(&v1171 + 1) = v209;
    LOBYTE(v1172) = 0;
    (*(*v185 + 1856))(&v1170);

    v210 = sub_1E38A8794();
    v1167 = xmmword_1E4296CA0;
    v1168 = xmmword_1E42A76A0;
    LOBYTE(v1169) = 0;
    (*(*v210 + 160))(&v1167);

    sub_1E3AFF644();
    __dst = v1167;
    v1159 = v1168;
    LOBYTE(v1160) = v1169;
    v1164 = xmmword_1E4296CA0;
    v1165 = xmmword_1E42BA120;
    LOBYTE(v1166) = 0;
    sub_1E3C3DE00(v72);
    OUTLINED_FUNCTION_4_118();
    sub_1E3C3DE00(v72);
    OUTLINED_FUNCTION_30_42();
    sub_1E3C3DE00(v72);
    LOBYTE(v847) = v943;
    v211 = sub_1E3C3DE00(v72);
    LOBYTE(v660) = v756;
    v219 = OUTLINED_FUNCTION_21_57(v211, v212, v213, v214, v215, v216, v217, v218, 0, 0x4024000000000000, v467, v485, v502, v520, v536, v553, v569, v585, v692, v708, v724, v740, v660, v676, v692, v708, v724, v740, v756, v772, v879, v895, v911, v927, v847, v863, v879, v895, v911, v927, v943, v959, v975, v990, v1006, v1022, v1038, v1054, v1070, v1086, v1102, v1118, v1134, v1150, __dst);
    OUTLINED_FUNCTION_24_45(v219, v220);
    OUTLINED_FUNCTION_18_56(v221, v222, v223, v224, v225, v226, v227, v228, v437, v452, v468, v486, v503, v521, v537, v554, v570, v586, v601, v615, v630, v645, v661, v677, v693, v709, v725, v741, v757, v773, v788, v802, v817, v832, v848, v864, v880, v896, v912, v928, v944, v960, v976, v991, v1007, v1023, v1039, v1055, v1071, v1087, v1103, v1119, v1135, v1151, __dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v237 = OUTLINED_FUNCTION_3_118(v229, v230, v231, v232, v233, v234, v235, v236, v438, v453, v469, v487, v504, v522, v538, v555, v571, v587, v602, v616, v631, v646, v662, v678, v694, v710, v726, v742, v758, v774, v789, v803, v818, v833, v849, v865, v881, v897, v913, v929, v945, v961, v977, v992, v1008, v1024, v1040, v1056, v1072, v1088, v1104, v1120, v1136, v1152, __dst);
    v238(v237);

    OUTLINED_FUNCTION_2_33();
    v240 = *(v239 + 2096);

    v240(v241);

    v242 = *MEMORY[0x1E69DDD80];
    v243 = objc_opt_self();
    *&__dst = [v243 configurationWithTextStyle_];
    *&v1164 = [v243 configurationWithTextStyle_];
    v244 = sub_1E3280A90(0, &qword_1EE23AFA8);
    sub_1E3C3DE00(v244);
    v1162 = v1163;
    sub_1E3C3DE00(v244);
    sub_1E3C3DE00(v244);
    v245 = sub_1E3C3DE00(v244);
    v253 = OUTLINED_FUNCTION_21_57(v245, v246, v247, v248, v249, v250, v251, v252, v439, v454, v470, v488, v505, v523, v539, v556, v572, v588, v695, v617, v632, v647, v663, v679, v695, v711, v727, v743, v759, v775, v882, v804, v819, v834, v850, v866, v882, v898, v914, v930, v946, v962, v1073, v993, v1009, v1025, v1041, v1057, v1073, v1089, v1105, v1121, v1137, v1153, __dst);
    OUTLINED_FUNCTION_24_45(v253, v254);
    v256 = *(&v1184 + 1);
    v255 = v1184;
    v257 = v1185;
    v258 = v1186;
    v259 = v1187;
    __dst = v1184;
    v1159 = v1185;
    v1160 = v1186;
    v1161 = v1187;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    (*(v260 + 1600))(&__dst, 88, v261 & 1, v244);

    OUTLINED_FUNCTION_36();
    v263 = *(v262 + 2096);

    v263(v264);
    OUTLINED_FUNCTION_122();

    v265 = objc_opt_self();
    v266 = [v265 blackColor];
    v267 = [v265 whiteColor];
    v268 = sub_1E3E5F2F8(v266, v267);

    OUTLINED_FUNCTION_2_33();
    (*(v269 + 680))(v268);

    v270 = sub_1E3AFF6D0();
    OUTLINED_FUNCTION_8();
    v272 = *(v271 + 152);

    v272(&v1184, v273);

    (*(*v270 + 160))(&v1184);

    OUTLINED_FUNCTION_36();
    v275 = *(v274 + 2096);

    v275(v276);
    OUTLINED_FUNCTION_122();

    OUTLINED_FUNCTION_36();
    v278 = *(v277 + 2096);

    v278(v279);
    OUTLINED_FUNCTION_26_5();

    v281 = (*(*v258 + 1944))(v280);

    OUTLINED_FUNCTION_2_33();
    (*(v282 + 1952))(v281);

    OUTLINED_FUNCTION_36();
    v284 = *(v283 + 2096);

    v284(v285);
    OUTLINED_FUNCTION_122();

    OUTLINED_FUNCTION_36();
    v287 = *(v286 + 2096);

    v287(v288);
    OUTLINED_FUNCTION_26_5();

    v290 = (*(*v258 + 672))(v289);

    OUTLINED_FUNCTION_2_33();
    (*(v291 + 680))(v290);

    OUTLINED_FUNCTION_2_33();
    v293 = *(v292 + 2096);

    v293(v294);
    OUTLINED_FUNCTION_2_1();
    (*(v295 + 672))();
    OUTLINED_FUNCTION_26_5();

    OUTLINED_FUNCTION_2_33();
    v297 = v258;
    v298 = MEMORY[0x1E69DDD80];
    (*(v296 + 680))(v297);

    v299 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
  }

  else
  {
    __asm { FMOV            V1.2D, #12.0 }

    *(&__dst + 1) = 0;
    v1159 = _Q1;
    LOBYTE(v1160) = 0;
    __asm { FMOV            V1.2D, #14.0 }

    v1182[0] = xmmword_1E42BA100;
    v1182[1] = _Q1;
    LOBYTE(v1183) = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_14_95();
    sub_1E3C3DE00(v72);
    OUTLINED_FUNCTION_13_90();
    sub_1E3C3DE00(v72);
    OUTLINED_FUNCTION_5_114();
    sub_1E3C3DE00(v72);
    OUTLINED_FUNCTION_4_118();
    v310 = OUTLINED_FUNCTION_21_57(v302, v303, v304, v305, v306, v307, v308, v309, v433, v448, v463, v480, v497, v516, v16, v549, v565, v581, v597, v611, v626, v641, v656, v672, v688, v704, v720, v736, v752, v768, v784, v798, v813, v828, v843, v859, v875, v891, v907, v923, v939, v955, v971, v986, v1002, v1018, v1034, v1050, v1066, v1082, v1098, v1114, v1130, v1146, 0);
    sub_1E3C2FCB8(v310, v311);
    sub_1E3C2AEE0();
    sub_1E3280A90(0, &qword_1EE23AE20);
    v312 = sub_1E4206F24();
    v313 = sub_1E4206F24();
    v314 = sub_1E3952C64();
    OUTLINED_FUNCTION_2_114(v314, v315, v316, v317);
    sub_1E3C2CC78();
    v318 = *sub_1E3E60548();
    sub_1E3C2DE50();
    v319.n128_u64[0] = 12.0;
    *&v1179 = j__OUTLINED_FUNCTION_7_78(v319);
    *(&v1179 + 1) = v320;
    *&v1180 = v321;
    *(&v1180 + 1) = v322;
    LOBYTE(v1181) = 0;
    sub_1E3C2D7EC();
    sub_1E374EA2C();
    OUTLINED_FUNCTION_2_1();
    (*(v323 + 1696))(17);

    sub_1E38A86A4();
    v324 = OUTLINED_FUNCTION_33_36();
    v325(v324);

    OUTLINED_FUNCTION_18_56(v326, v327, v328, v329, v330, v331, v332, v333, v440, v455, v472, v489, v507, v525, v541, v557, v573, v589, v603, v618, v633, v648, v664, v680, v696, v712, v728, v744, v760, v776, v790, v805, v820, v835, v851, v867, v883, v899, v915, v931, v947, v963, v978, v994, v1010, v1026, v1042, v1058, v1074, v1090, v1106, v1122, v1138, v1154, __dst);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v342 = OUTLINED_FUNCTION_3_118(v334, v335, v336, v337, v338, v339, v340, v341, v441, v456, v473, v490, v508, v526, v542, v558, v574, v590, v604, v619, v634, v649, v665, v681, v697, v713, v729, v745, v761, v777, v791, v806, v821, v836, v852, v868, v884, v900, v916, v932, v948, v964, v979, v995, v1011, v1027, v1043, v1059, v1075, v1091, v1107, v1123, v1139, v1155, __dst);
    v343(v342);

    v344 = *(v3 + 128);

    v345 = sub_1E3C2F8E8();
    v346 = v312;
    if (v345)
    {
      v347 = v345;
      v348 = [v345 userInterfaceStyle];

      if (v348 == 2)
      {
        v346 = v313;
      }

      else
      {
        v346 = v312;
      }
    }

    v349 = *(*v344 + 1832);
    v350 = v346;
    v349(v346);

    OUTLINED_FUNCTION_29_44();
    v351.n128_u64[0] = 0.5;
    *&v1176 = j__OUTLINED_FUNCTION_7_78(v351);
    *(&v1176 + 1) = v352;
    *&v1177 = v353;
    *(&v1177 + 1) = v354;
    LOBYTE(v1178) = 0;
    (*(*v344 + 1856))(&v1176);

    OUTLINED_FUNCTION_29_44();
    sub_1E39537A8();
    *&v1173 = v355;
    *(&v1173 + 1) = v356;
    *&v1174 = v357;
    *(&v1174 + 1) = v358;
    LOBYTE(v1175) = 0;
    (*(*v344 + 560))(&v1173);

    OUTLINED_FUNCTION_36();
    v360 = *(v359 + 608);

    v360(0);

    sub_1E3AFF5D8();
    OUTLINED_FUNCTION_2_1();
    (*(v361 + 1744))();

    v362 = OUTLINED_FUNCTION_33_36();
    v363(v362);

    OUTLINED_FUNCTION_36();
    v365 = *(v364 + 1744);

    v367 = v365(v366);

    (*(*v367 + 440))(0x3FF0000000000000, 0);

    OUTLINED_FUNCTION_8();
    v369 = *(v368 + 208);

    v370 = OUTLINED_FUNCTION_33_36();
    v369(v370);

    OUTLINED_FUNCTION_36();
    v372 = *(v371 + 312);

    v373 = OUTLINED_FUNCTION_33_36();
    v372(v373);

    OUTLINED_FUNCTION_18_56(v374, v375, v376, v377, v378, v379, v380, v381, v442, v457, v474, v491, v509, v527, v543, v559, v575, v591, v605, v620, v635, v650, v666, v682, v698, v714, v730, v746, v762, v778, v792, v807, v822, v837, v853, v869, v885, v901, v917, v933, v949, v965, v980, v996, v1012, v1028, v1044, v1060, v1076, v1092, v1108, v1124, v1140, v1156, __dst);

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v390 = OUTLINED_FUNCTION_3_118(v382, v383, v384, v385, v386, v387, v388, v389, v443, v458, v475, v492, v510, v528, v544, v560, v576, v592, v606, v621, v636, v651, v667, v683, v699, v715, v731, v747, v763, v779, v793, v808, v823, v838, v854, v870, v886, v902, v918, v934, v950, v966, v981, v997, v1013, v1029, v1045, v1061, v1077, v1093, v1109, v1125, v1141, v1157, __dst);
    v391(v390);

    v392 = _MergedGlobals_201;

    if (v392 != -1)
    {
      OUTLINED_FUNCTION_16_74();
    }

    v393 = qword_1EE28BC60;
    OUTLINED_FUNCTION_8();
    v395 = *(v394 + 680);
    v396 = v393;
    v395(v393);

    v397 = sub_1E38A8794();
    __dst = xmmword_1E4296CA0;
    v1159 = xmmword_1E42A76A0;
    LOBYTE(v1160) = 0;
    (*(*v397 + 160))(&__dst);

    v299 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
    v298 = MEMORY[0x1E69DDD80];
  }

  sub_1E38A86A4();
  OUTLINED_FUNCTION_30();
  (*(v398 + 1880))(1);

  v399 = sub_1E38A8794();
  v400 = *v524;
  v401 = *(*v399 + 680);
  v402 = *v524;
  v401(v400);

  v403 = *v298;
  objc_opt_self();
  OUTLINED_FUNCTION_122();

  v404 = [v401 configurationWithTextStyle_];
  OUTLINED_FUNCTION_36();
  (*(v405 + 1952))();

  sub_1E3AFF8D0();
  v406 = objc_opt_self();
  v407 = [v406 whiteColor];
  v408 = [v407 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v409 + 752))(v408);

  OUTLINED_FUNCTION_2_33();
  v411 = *(v410 + 1848);

  v413 = v411(v412);

  if (v413)
  {
    v414 = [v406 blackColor];
    v415 = [v414 colorWithAlphaComponent_];

    OUTLINED_FUNCTION_36();
    (*(v416 + 680))(v415);
  }

  if ([v540 v299[449]])
  {
    v417 = sub_1E37BD068();
    sub_1E3C37CBC(v417, 16);
  }

  sub_1E3C37CBC(v418, 23);

  sub_1E3C37CBC(v419, 15);

  sub_1E3C37CBC(v420, 39);

  v421 = sub_1E3AFF5D8();
  sub_1E3C37CBC(v421, 41);

  sub_1E3C37CBC(v422, 31);

  v423 = sub_1E3AFF644();
  sub_1E3C37CBC(v423, 59);

  v424 = sub_1E3AFF75C();
  sub_1E3C37CBC(v424, 53);

  sub_1E3C37CBC(v425, 54);

  swift_beginAccess();

  sub_1E3C37CBC(v426, 79);

  v427 = sub_1E3AFF6D0();
  sub_1E3C37CBC(v427, 67);

  return v3;
}

id sub_1E3B01F94(uint64_t a1)
{
  v2 = v1;
  result = [objc_opt_self() isSearchEnabled];
  if (!result)
  {
    return result;
  }

  if (!a1)
  {
    goto LABEL_25;
  }

  v5 = sub_1E373E010(15, a1);
  v6 = v5;
  if (v5 && *v5 != _TtC8VideosUI13TextViewModel)
  {

    v6 = 0;
  }

  v7 = sub_1E373E010(16, a1);
  v8 = v7;
  if (v7 && *v7 != _TtC8VideosUI13TextViewModel)
  {

    v8 = 0;
  }

  if (!(v6 | sub_1E373E010(222, a1)))
  {
    if (!v8)
    {
      goto LABEL_17;
    }

LABEL_15:
    info = (*v8)[16].info;

    v16 = (info)(v15);

    sub_1E39BD118(0x74756F79616CLL, 0xE600000000000000, v16);
    OUTLINED_FUNCTION_26_5();

    if (info)
    {
      sub_1E37BD068();
      OUTLINED_FUNCTION_30();
      (*(v17 + 1616))(info);
    }

    goto LABEL_17;
  }

  if (v8)
  {
    sub_1E374EA2C();
    OUTLINED_FUNCTION_30();
    v9 = OUTLINED_FUNCTION_15_8();
    v10(v9);

    OUTLINED_FUNCTION_36();
    v12 = *(v11 + 2080);

    v13 = OUTLINED_FUNCTION_15_8();
    v12(v13);

    goto LABEL_15;
  }

LABEL_17:
  if (sub_1E373E010(79, a1))
  {
    swift_beginAccess();
    if (*(v2 + 192) == 3 || (__src[0] = *(v2 + 192), v42[0] = 1, sub_1E3AFFC64(), (sub_1E4205E84() & 1) == 0))
    {
    }

    else
    {
      sub_1E38A86A4();
      __asm { FMOV            V1.2D, #10.0 }

      *&v42[16] = _Q1;
      v42[32] = 0;
      type metadata accessor for UIEdgeInsets();
      v24 = v23;
      sub_1E3C2FC98();
      v64 = v67;
      v65 = v68;
      v66 = v69;
      sub_1E3C3DE00(v24);
      OUTLINED_FUNCTION_7_33();
      sub_1E3C3DE00(v24);
      OUTLINED_FUNCTION_11_7(v25, v26, v27, v28, v29, v30, v31, v32, 10.0, 0.0, *&v42[16], *&v42[24], *&v42[32], *&v42[40], *&v42[48], *&v42[56], *&v42[64], *&v42[72], *&v42[80], *&v42[88], *&v42[96], *&v42[104], *&v42[112], *&v42[120], *&v42[128], *&v42[136], *&v42[144], *&v42[152], *&v42[160], *&v42[168], *&v42[176], *&v42[184], *&v42[192], *&v42[200], *&v42[208], *&v42[216], *&v42[224], *&v42[232], *&v43, *(&v43 + 1), *&v44, *(&v44 + 1), v45, v46, *&v47, *(&v47 + 1), *&v48, *(&v48 + 1), v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63[0]);
      sub_1E3C3DE00(v24);
      OUTLINED_FUNCTION_4_10(v33, v34, v35, v36, v37, v38, v39, v40, *v42, *&v42[8], *&v42[16], *&v42[24], *&v42[32], *&v42[40], *&v42[48], *&v42[56], *&v42[64], *&v42[72], *&v42[80], *&v42[88], *&v42[96], *&v42[104], *&v42[112], *&v42[120], *&v42[128], *&v42[136], *&v42[144], *&v42[152], *&v42[160], *&v42[168], *&v42[176], *&v42[184], *&v42[192], *&v42[200], *&v42[208], *&v42[216], *&v42[224], *&v42[232], *&v43, *(&v43 + 1), *&v44, *(&v44 + 1), v45, v46, *&v47, *(&v47 + 1), *&v48, *(&v48 + 1), v49, v50, v51, v52, v53, v54, v55, v56, v57);
      sub_1E3C3DE00(v24);
      v43 = v47;
      v44 = v48;
      LOBYTE(v45) = LOBYTE(v49);
      sub_1E3C2FCB8(v42, __src);
      memcpy(v42, __src, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_17_69();
      v41();
    }
  }

LABEL_25:
}

uint64_t sub_1E3B023EC()
{
  sub_1E3AFF644();
  OUTLINED_FUNCTION_30();
  (*(v0 + 944))(1);

  sub_1E38A8794();
  OUTLINED_FUNCTION_2_1();
  (*(v1 + 944))(1);

  sub_1E3AFF6D0();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 944))(1);
}

void sub_1E3B024E0()
{

  v1 = *(v0 + 200);
}

uint64_t sub_1E3B02560()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3B025E8()
{
  v0 = sub_1E3B02560();

  return MEMORY[0x1EEE6BDC0](v0, 208, 7);
}

uint64_t sub_1E3B02648()
{
  OUTLINED_FUNCTION_2_115();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:125.0 damping:30.0 initialVelocity:{0.0, 0.0}];
  sub_1E373C4DC();
  [v4 settlingDuration];
  OUTLINED_FUNCTION_2_4();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_2_4();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v0;
  v7 = v4;

  v8 = sub_1E37FAED4(v1, v0);
  OUTLINED_FUNCTION_1_140(v8, v9, sub_1E37D1918, v10, sub_1E3B028A8);
}

uint64_t sub_1E3B02778()
{
  OUTLINED_FUNCTION_2_115();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:55.0 damping:15.0 initialVelocity:{0.0, 0.0}];
  sub_1E373C4DC();
  [v4 settlingDuration];
  OUTLINED_FUNCTION_2_4();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_2_4();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v0;
  v7 = v4;

  v8 = sub_1E37FAED4(v1, v0);
  OUTLINED_FUNCTION_1_140(v8, v9, sub_1E379E500, v10, sub_1E387A494);
}

uint64_t sub_1E3B028AC()
{
  v0 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = *(v2 + 104);
  v7(v5 - v4, *MEMORY[0x1E697E728], v0);
  OUTLINED_FUNCTION_1_141(&qword_1EE289CD0);
  v8 = sub_1E4205E14();
  v9 = *(v2 + 8);
  v9(v6, v0);
  if (v8)
  {
    v7(v6, *MEMORY[0x1E697E6D0], v0);
    v10 = sub_1E42012C4();
    v9(v6, v0);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1E3B02A10(unsigned int *a1)
{
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *a1, v2);
  OUTLINED_FUNCTION_1_141(&qword_1EE289CD0);
  LOBYTE(a1) = sub_1E4205E14();
  (*(v4 + 8))(v8, v2);
  return a1 & 1;
}

BOOL sub_1E3B02B18()
{
  v0 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x1E697E728], v0);
  OUTLINED_FUNCTION_1_141(&qword_1EE289CD0);
  v7 = sub_1E4205E14();
  (*(v2 + 8))(v6, v0);
  return (v7 & 1) == 0;
}

id sub_1E3B02C14()
{
  v1 = v0;
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E697E718])
  {
    v10 = MEMORY[0x1E69656D0];
  }

  else if (v9 == *MEMORY[0x1E697E6F0])
  {
    v10 = MEMORY[0x1E69656C0];
  }

  else if (v9 == *MEMORY[0x1E697E6F8])
  {
    v10 = MEMORY[0x1E69656B8];
  }

  else if (v9 == *MEMORY[0x1E697E6E8])
  {
    v10 = MEMORY[0x1E69656B0];
  }

  else if (v9 == *MEMORY[0x1E697E708])
  {
    v10 = MEMORY[0x1E69656C8];
  }

  else if (v9 == *MEMORY[0x1E697E720])
  {
    v10 = MEMORY[0x1E69656D8];
  }

  else if (v9 == *MEMORY[0x1E697E728])
  {
    v10 = MEMORY[0x1E69656E0];
  }

  else if (v9 == *MEMORY[0x1E697E6C0])
  {
    v10 = MEMORY[0x1E6965690];
  }

  else if (v9 == *MEMORY[0x1E697E6C8])
  {
    v10 = MEMORY[0x1E6965688];
  }

  else if (v9 == *MEMORY[0x1E697E6D0])
  {
    v10 = MEMORY[0x1E6965698];
  }

  else if (v9 == *MEMORY[0x1E697E6D8])
  {
    v10 = MEMORY[0x1E69656A0];
  }

  else
  {
    if (v9 != *MEMORY[0x1E697E6E0])
    {
      (*(v4 + 8))(v8, v2);
      return 0;
    }

    v10 = MEMORY[0x1E69656A8];
  }

  v11 = *v10;
  v12 = *v10;
  return v11;
}

uint64_t sub_1E3B02E88@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  if ([objc_opt_self() _defaultContentSizeCategory])
  {
    sub_1E4201304();
    v5 = sub_1E42012F4();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      OUTLINED_FUNCTION_37_1();
      (*(v6 + 104))(a1);
      result = __swift_getEnumTagSinglePayload(v4, 1, v5);
      if (result != 1)
      {
        return sub_1E37ECA8C(v4);
      }
    }

    else
    {
      OUTLINED_FUNCTION_37_1();
      return (*(v12 + 32))(a1, v4, v5);
    }
  }

  else
  {
    v8 = *MEMORY[0x1E697E6E8];
    sub_1E42012F4();
    OUTLINED_FUNCTION_37_1();
    v11 = *(v10 + 104);

    return v11(a1, v8, v9);
  }

  return result;
}

uint64_t sub_1E3B0303C()
{
  v0 = sub_1E42012F4();
  __swift_allocate_value_buffer(v0, qword_1EE2AB2A8);
  __swift_project_value_buffer(v0, qword_1EE2AB2A8);
  OUTLINED_FUNCTION_37_1();
  v2 = *(v1 + 104);

  return v2();
}

uint64_t sub_1E3B030C0()
{
  if (qword_1EE2AA4A0 != -1)
  {
    OUTLINED_FUNCTION_0_145();
  }

  v0 = sub_1E42012F4();

  return __swift_project_value_buffer(v0, qword_1EE2AB2A8);
}

uint64_t sub_1E3B03114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E3831F24(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    goto LABEL_6;
  }

  sub_1E37ECA8C(v6);
  if (qword_1EE2AA4A0 != -1)
  {
    OUTLINED_FUNCTION_0_145();
  }

  v6 = __swift_project_value_buffer(v7, qword_1EE2AB2A8);
  swift_beginAccess();
  v14 = *(v9 + 16);
  v9 += 16;
  v14(a2, v6, v7);
  OUTLINED_FUNCTION_4_119(&qword_1EE289CC8);
  result = sub_1E4205E84();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_6:
    v16 = *(v9 + 32);
    v16(v13, v6, v7);
    OUTLINED_FUNCTION_4_119(&qword_1EE289CC8);
    result = sub_1E4205E84();
    if (result)
    {
      return (v16)(a2, v13, v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E3B03310(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E42012F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3B03354@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_37_1();
  v6 = *(v5 + 104);
  v7 = **(&unk_1E8737EE0 + a1);

  return v6(a2, v7, v4);
}

uint64_t sub_1E3B033CC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1E42012F4();
  result = __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  switch(a1)
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
      sub_1E37ECA8C(a2);
      OUTLINED_FUNCTION_37_1();
      (*(v6 + 104))(a2);

      result = __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3B03530()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3B0357C(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_7_114();
  }

  if (a1 == 1)
  {
    return 0x756F726765726F66;
  }

  return 0x656E696665646E75;
}

uint64_t sub_1E3B035EC(unsigned __int8 a1, char a2)
{
  v2 = 0x6374697753626174;
  v3 = 0xE900000000000068;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x756F726765726F66;
    }

    else
    {
      v5 = 0x656E696665646E75;
    }

    if (v4 == 1)
    {
      v6 = 0xEA0000000000646ELL;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    v5 = 0x6374697753626174;
    v6 = 0xE900000000000068;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x756F726765726F66;
    }

    else
    {
      v2 = 0x656E696665646E75;
    }

    if (a2 == 1)
    {
      v3 = 0xEA0000000000646ELL;
    }

    else
    {
      v3 = 0xE900000000000064;
    }
  }

  if (v5 == v2 && v6 == v3)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3B03708()
{
  sub_1E4206014();
}

uint64_t sub_1E3B037A4()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3B0384C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3B03530();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B0387C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3B0357C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3B038A8()
{
  v1 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88);
    v2 = sub_1E4205CB4();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1E3B0393C()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_hasRefreshEvents) == 1)
    {
      *(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirtyForRefreshEvents) = 1;
    }
  }

  else
  {
    sub_1E3B0397C();
  }
}

void sub_1E3B0397C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - v11;
  if (v3[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended])
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v13(v1);
    v14 = v3;
    v15 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_11_16();
      v48 = v16;
      *v2 = 136446210;
      *(v2 + 4) = sub_1E3270FC8(*&v14[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v14[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], &v48);
      OUTLINED_FUNCTION_189();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v6 + 8))(v1, v4);
    goto LABEL_23;
  }

  v47 = v10;
  OUTLINED_FUNCTION_7_114();
  v22 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason;
  if (v3[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason])
  {
    if (v3[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason] == 1)
    {
LABEL_14:

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_57_15();
  }

  v23 = OUTLINED_FUNCTION_22_51();

  if ((v23 & 1) == 0)
  {
    if (v3[v22])
    {
      if (v3[v22] != 1)
      {
        OUTLINED_FUNCTION_26_46();
      }

      v24 = OUTLINED_FUNCTION_47_30();

      if ((v24 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v25(v12);
  v26 = v3;
  v27 = sub_1E41FFC94();
  v28 = sub_1E4206814();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_6_21();
    v30 = OUTLINED_FUNCTION_100();
    v48 = v30;
    *v29 = 136446210;
    v31 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
    *(v29 + 4) = sub_1E3270FC8(v31, v32, &v48);
    _os_log_impl(&dword_1E323F000, v27, v28, "EVENT_MONITOR::[%{public}s] checkRefreshEvents is true, validating ttls.", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v6 + 8))(v12, v4);
  sub_1E3B06620();
LABEL_18:
  v33 = v3[v22];
  sub_1E3B06F44();
  if (sub_1E32AE9B0(v34))
  {
    sub_1E3B07414();
  }

  else
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v35 = v47;
    v36(v47);
    v37 = v3;
    v38 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      OUTLINED_FUNCTION_6_21();
      v39 = OUTLINED_FUNCTION_11_16();
      v48 = v39;
      *v33 = 136446210;
      v40 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
      *(v33 + 4) = sub_1E3270FC8(v40, v41, &v48);
      OUTLINED_FUNCTION_189();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v6 + 8))(v35, v4);
  }

LABEL_23:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B03E14()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  ObjectType = swift_getObjectType();
  v40 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v42 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v44 = v17 - v16;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirty] = 0;
  swift_weakInit();
  *&v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels] = 0;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isOptimizedTTLRefreshEnabled] = 1;
  *&v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap] = 0;
  v18 = &v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_documentEventIterable];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason] = 2;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_hasRefreshEvents] = 0;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirtyForRefreshEvents] = 0;
  v19 = &v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_registrationHandler];
  *v19 = 0;
  v19[1] = 0;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended] = 1;
  OUTLINED_FUNCTION_3_0();
  swift_weakAssign();
  type metadata accessor for CollectionViewModel();
  v20 = swift_dynamicCastClass() != 0;
  v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isCollectionChildrenUpdateMode] = v20;
  v21 = &v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
  *v21 = v11;
  v21[1] = v9;
  v22 = *v19;
  *v19 = v5;
  v19[1] = v3;

  sub_1E34AF594(v22);
  if (v7)
  {
    v23 = v7;
  }

  else
  {
    v23 = [objc_allocWithZone(VUIAppDocumentUpdateEventStore) init];
  }

  *&v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore] = v23;
  v47.receiver = v1;
  v47.super_class = ObjectType;
  v24 = v7;
  v25 = objc_msgSendSuper2(&v47, sel_init);
  (*(*v13 + 776))(v46, v25, &unk_1F5D5E458, &off_1F5D5CBB8);
  if (v46[3])
  {
    v26 = v42;
    if (OUTLINED_FUNCTION_21_4())
    {
      v27 = v45;
    }

    else
    {
      v27 = 1;
    }
  }

  else
  {
    sub_1E325F6F0(v46, &unk_1ECF296E0);
    v27 = 1;
    v26 = v42;
  }

  v25[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isOptimizedTTLRefreshEnabled] = v27;
  sub_1E3B04294();
  v28 = [*&v25[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore] events];
  sub_1E3280A90(0, &qword_1EE23AFD8);
  OUTLINED_FUNCTION_20_2();
  v29 = sub_1E42062B4();

  sub_1E32AE9B0(v29);
  OUTLINED_FUNCTION_76();

  if (v28)
  {
    v30 = sub_1E324FBDC();
    (*(v26 + 16))(v44, v30, v40);
    v31 = v25;
    v32 = sub_1E41FFC94();
    v33 = sub_1E4206814();

    if (os_log_type_enabled(v32, v33))
    {
      v43 = v24;
      v34 = OUTLINED_FUNCTION_6_21();
      v35 = v26;
      v36 = OUTLINED_FUNCTION_100();
      v46[0] = v36;
      *v34 = 136446210;
      v38 = *&v31[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
      v37 = *&v31[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8];

      v39 = sub_1E3270FC8(v38, v37, v46);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_1E323F000, v32, v33, "EVENT_MONITOR::[%{public}s] store already has events, starting updates.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_21_0();
      v24 = v43;
      OUTLINED_FUNCTION_6_0();

      (*(v35 + 8))(v44, v40);
    }

    else
    {

      (*(v26 + 8))(v44, v40);
    }

    sub_1E3B0397C();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B04294()
{
  type metadata accessor for TemplateViewModel();
  if (swift_dynamicCastClass())
  {

    sub_1E3B0A67C();
  }

  else
  {
    type metadata accessor for CollectionViewModel();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    sub_1E3B0AF24();
  }
}

uint64_t sub_1E3B04344()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for TemplateViewModel();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {
    }

    (*(*v2 + 776))(v8);
    if (v8[3])
    {
      if (OUTLINED_FUNCTION_21_4())
      {
        v3 = v7;
LABEL_8:
        *(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isOptimizedTTLRefreshEnabled) = v3;

        sub_1E3B0A67C();

        v8[0] = *(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels);
        MEMORY[0x1EEE9AC00](v4);
        v6 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32F50);
        sub_1E4148DE0(sub_1E3B0C410);

        sub_1E3B04504();
      }
    }

    else
    {
      sub_1E325F6F0(v8, &unk_1ECF296E0);
    }

    v3 = 1;
    goto LABEL_8;
  }

  return result;
}

void sub_1E3B04504()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v87 - v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v101 = v11;
  v12 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_documentEventIterable;
  OUTLINED_FUNCTION_5_0();
  sub_1E3743538(&v0[v12], &v117, &qword_1ECF32F60);
  if (!*(&v118 + 1))
  {
    sub_1E325F6F0(&v117, &qword_1ECF32F60);
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v76(v7);
    v77 = v0;
    v78 = sub_1E41FFC94();
    v79 = sub_1E4206814();

    if (os_log_type_enabled(v78, v79))
    {
      OUTLINED_FUNCTION_6_21();
      v80 = OUTLINED_FUNCTION_36_6();
      *&v117 = v80;
      *v1 = 136446210;
      *(v1 + 4) = sub_1E3270FC8(*&v77[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v77[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], &v117);
      OUTLINED_FUNCTION_59_13();
      _os_log_impl(v81, v82, v83, v84, v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    v86 = (*(v3 + 8))(v7, v1);
    sub_1E3B0397C(v86);
    goto LABEL_40;
  }

  v100 = v0;
  sub_1E3251BE8(&v117, v110);
  v13 = v112;
  __swift_project_boxed_opaque_existential_1(v110, v111);
  v14 = OUTLINED_FUNCTION_42_37();
  v16 = v15(v14, v13);
  if (!v16)
  {
    goto LABEL_39;
  }

  v19 = v16;
  v20 = v17;
  v98 = &v100[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
  v97 = v100[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isCollectionChildrenUpdateMode];
  v106 = (v3 + 16);
  v105 = v3 + 8;
  *&v18 = 136446722;
  v96 = v18;
  *&v18 = 136446466;
  v95 = v18;
  v103 = v1;
  while (1)
  {
    v107 = v20;
    v21 = [v20 descriptor];
    v22 = [v21 animated];

    v104 = type metadata accessor for ViewModel();
    *(&v118 + 1) = v104;
    *&v117 = v19;
    v108 = v19;

    v23 = sub_1E3B089FC(&v117);
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1(&v117);
    v26 = sub_1E324FBDC();
    v27 = *v106;
    v28 = v101;
    (*v106)(v101, v26, v1);
    v29 = v100;

    v30 = sub_1E41FFC94();
    v31 = sub_1E4206814();

    v32 = OUTLINED_FUNCTION_84_1();
    v99 = v22;
    if (v32)
    {
      v33 = OUTLINED_FUNCTION_100();
      *&v117 = OUTLINED_FUNCTION_164_1();
      *(v33 + 4) = OUTLINED_FUNCTION_43_31(&v117);
      *(v33 + 12) = 2080;
      v34 = sub_1E3270FC8(v23, v25, &v117);

      *(v33 + 14) = v34;
      *(v33 + 22) = 2080;
      v35 = sub_1E328692C(v22);
      v37 = sub_1E3270FC8(v35, v36, &v117);

      *(v33 + 24) = v37;
      _os_log_impl(&dword_1E323F000, v30, v31, "EVENT_MONITOR::[%{public}s] performNextUpdate update context has a descriptor provider: [%s] with animated: [%s]", v33, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      OUTLINED_FUNCTION_113_0();
      v39 = *v38;
      v40 = v101;
    }

    else
    {

      OUTLINED_FUNCTION_113_0();
      v39 = *v41;
      v40 = v28;
    }

    v1 = v103;
    (v39)(v40, v103);
    v27(v102, v26, v1);
    OUTLINED_FUNCTION_70_15();

    v42 = v29;
    v43 = v107;
    v44 = v107;
    v45 = sub_1E41FFC94();
    v46 = sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      v47 = OUTLINED_FUNCTION_49_0();
      swift_slowAlloc();
      v48 = OUTLINED_FUNCTION_36_6();
      *&v117 = v48;
      *(v47 + 4) = OUTLINED_FUNCTION_43_31(&v115);
      *(v47 + 12) = 2112;
      *(v47 + 14) = v44;
      *v1 = v43;
      v49 = v44;
      _os_log_impl(&dword_1E323F000, v45, v46, "EVENT_MONITOR::[%{public}s] performNextUpdate perform update for event: %@", v47, 0x16u);
      sub_1E325F6F0(v1, &unk_1ECF28E30);
      v1 = v103;
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v48);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_113_0();
    v39();
    if (v97)
    {

      v50 = v44;
      OUTLINED_FUNCTION_5_0();
      Strong = swift_weakLoadStrong();
      if (Strong && (*&v117 = Strong, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F78), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v114 + 1))
        {
          sub_1E3251BE8(&v113, &v117);
          v52 = v119;
          __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
          OUTLINED_FUNCTION_4_0();
          v53 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v54 = swift_allocObject();
          *(v54 + 16) = v53;
          *(v54 + 24) = v50;
          v22 = (v52 + 16);
          v55 = *(v52 + 16);
          v56 = v50;

          OUTLINED_FUNCTION_71_17();
          v55();
          OUTLINED_FUNCTION_70_15();

          v1 = v103;

          __swift_destroy_boxed_opaque_existential_1(&v117);
LABEL_25:

          goto LABEL_27;
        }
      }

      else
      {
        v115 = 0;
        v113 = 0u;
        v114 = 0u;
      }

      sub_1E325F6F0(&v113, &qword_1ECF32F70);
      goto LABEL_25;
    }

    v116 = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F78);
    if (swift_dynamicCast())
    {
      sub_1E3251BE8(&v117, &v113);

      v57 = v44;
      OUTLINED_FUNCTION_5_0();
      if (swift_weakLoadStrong())
      {
        OUTLINED_FUNCTION_56_20();
        type metadata accessor for TemplateViewModel();
        if (swift_dynamicCastClass())
        {
          sub_1E327F454(&v113, &v117);
          v58 = v57;
          v94 = v57;
          v91 = v58;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F78);
          v59 = swift_dynamicCast();
          v60 = v116;
          v104 = *(&v114 + 1);
          v90 = v115;
          v93 = __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
          OUTLINED_FUNCTION_4_0();
          v61 = swift_allocObject();
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_4_0();
          v62 = swift_allocObject();
          swift_weakInit();
          OUTLINED_FUNCTION_4_0();
          v63 = swift_allocObject();
          if (v59)
          {
            v64 = v60;
          }

          else
          {
            v64 = 0;
          }

          v92 = v64;
          swift_weakInit();
          OUTLINED_FUNCTION_4_0();
          v65 = swift_allocObject();
          swift_weakInit();
          v66 = swift_allocObject();
          v89 = v61;
          v66[2] = v61;
          v66[3] = v62;
          v67 = v91;
          v66[4] = v65;
          v66[5] = v67;
          v66[6] = v63;
          v22 = (v90 + 24);
          v88 = *(v90 + 24);
          v68 = v67;

          OUTLINED_FUNCTION_71_17();
          v88();
          v57 = v94;
          OUTLINED_FUNCTION_70_15();

          v1 = v103;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v113);
    }

    else
    {
      v119 = 0;
      v118 = 0u;
      v117 = 0u;
      sub_1E325F6F0(&v117, &qword_1ECF32F70);
    }

LABEL_27:
    LOWORD(v116) = v22[49];
    v109 = 0;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v117 == v113 && *(&v117 + 1) == *(&v113 + 1))
    {
      break;
    }

    v70 = sub_1E42079A4();

    if (v70)
    {
      goto LABEL_38;
    }

    v71 = v112;
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v72 = OUTLINED_FUNCTION_42_37();
    v74 = v73(v72, v71);
    v20 = v75;

    v19 = v74;
    if (!v74)
    {
      goto LABEL_39;
    }
  }

LABEL_38:

LABEL_39:
  __swift_destroy_boxed_opaque_existential_1(v110);
LABEL_40:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B050F0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  LODWORD(v4) = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended) == 1)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v14(v12);
    v15 = v0;
    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();

    if (os_log_type_enabled(v16, v17))
    {
      v46 = v2;
      v47 = v5;
      v18 = OUTLINED_FUNCTION_49_0();
      v48 = OUTLINED_FUNCTION_72_0();
      *v18 = 136446466;
      v19 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
      *(v18 + 4) = sub_1E3270FC8(v19, v20, &v48);
      *(v18 + 12) = 2080;
      LODWORD(v45) = v4;
      if (v4)
      {
        if (v4 == 1)
        {
          v21 = 0x756F726765726F66;
        }

        else
        {
          v21 = 0x656E696665646E75;
        }

        if (v4 == 1)
        {
          v22 = 0xEA0000000000646ELL;
        }

        else
        {
          v22 = 0xE900000000000064;
        }
      }

      else
      {
        v21 = OUTLINED_FUNCTION_7_114();
        v22 = 0xE900000000000068;
      }

      v4 = sub_1E3270FC8(v21, v22, &v48);

      *(v18 + 14) = v4;
      _os_log_impl(&dword_1E323F000, v16, v17, "EVENT_MONITOR::[%{public}s] started monitoring with reason: %s", v18, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      (*(v7 + 8))(v12, v47);
      v2 = v46;
      LOBYTE(v4) = v45;
    }

    else
    {

      (*(v7 + 8))(v12, v5);
    }

    *(v15 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason) = v4;
    *(v2 + v13) = 0;
    sub_1E3B0393C();
  }

  else
  {
    v23 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason;
    v24 = v4;
    v25 = sub_1E3B035EC(*(v0 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason), v4);
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    if (v25)
    {
      v26(v1);
      v27 = v0;
      v28 = sub_1E41FFC94();
      v29 = sub_1E4206814();

      if (os_log_type_enabled(v28, v29))
      {
        v47 = v5;
        v30 = OUTLINED_FUNCTION_49_0();
        v48 = OUTLINED_FUNCTION_72_0();
        *v30 = 136446466;
        *(v30 + 4) = sub_1E3270FC8(*&v27[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v27[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], &v48);
        *(v30 + 12) = 2080;
        v31 = 0x756F726765726F66;
        v32 = 0xEA0000000000646ELL;
        if (*(v2 + v23) != 1)
        {
          v31 = 0x656E696665646E75;
          v32 = 0xE900000000000064;
        }

        if (*(v2 + v23))
        {
          v33 = v31;
        }

        else
        {
          v33 = 0x6374697753626174;
        }

        if (*(v2 + v23))
        {
          v34 = v32;
        }

        else
        {
          v34 = 0xE900000000000068;
        }

        v35 = sub_1E3270FC8(v33, v34, &v48);

        *(v30 + 14) = v35;
        _os_log_impl(&dword_1E323F000, v28, v29, "EVENT_MONITOR::[%{public}s] already monitoring with lastMonitoringReason: %s", v30, 0x16u);
        OUTLINED_FUNCTION_50_24();
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_6_0();

        (*(v7 + 8))(v1, v47);
      }

      else
      {

        (*(v7 + 8))(v1, v5);
      }
    }

    else
    {
      v26(v0);
      v36 = v0;
      v37 = sub_1E41FFC94();
      v38 = sub_1E4206814();

      if (os_log_type_enabled(v37, v38))
      {
        v46 = v0;
        v47 = v5;
        v39 = OUTLINED_FUNCTION_49_0();
        v45 = OUTLINED_FUNCTION_72_0();
        v48 = v45;
        *v39 = 136446466;
        v40 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
        *(v39 + 4) = sub_1E3270FC8(v40, v41, &v48);
        *(v39 + 12) = 2080;
        if (v24)
        {
          if (v24 == 1)
          {
            v42 = 0x756F726765726F66;
          }

          else
          {
            v42 = 0x656E696665646E75;
          }

          if (v24 == 1)
          {
            v43 = 0xEA0000000000646ELL;
          }

          else
          {
            v43 = 0xE900000000000064;
          }
        }

        else
        {
          v42 = OUTLINED_FUNCTION_7_114();
          v43 = 0xE900000000000068;
        }

        v44 = sub_1E3270FC8(v42, v43, &v48);

        *(v39 + 14) = v44;
        _os_log_impl(&dword_1E323F000, v37, v38, "EVENT_MONITOR::[%{public}s] started monitoring for another reason: %s", v39, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_55();

        (*(v7 + 8))(v0, v47);
        v2 = v46;
      }

      else
      {

        (*(v7 + 8))(v0, v5);
      }

      *(v2 + v23) = v24;
      sub_1E3B0397C();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B056A4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E324FBDC();
  (*(v5 + 16))(v9, v10, v3);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E4206814();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_49_0();
    v24[0] = OUTLINED_FUNCTION_72_0();
    *v14 = 136446466;
    v15 = OUTLINED_FUNCTION_46_27(&v11[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
    OUTLINED_FUNCTION_121_0(v15);
    v16 = sub_1E328692C(v2 & 1);
    v23 = v3;
    v18 = v2;
    v19 = sub_1E3270FC8(v16, v17, v24);

    *(v14 + 14) = v19;
    v2 = v18;
    _os_log_impl(&dword_1E323F000, v12, v13, "EVENT_MONITOR::[%{public}s] stopped monitoring, dismissed: %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();

    (*(v5 + 8))(v9, v23);
  }

  else
  {

    (*(v5 + 8))(v9, v3);
  }

  v11[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended] = 1;
  sub_1E3B0393C();
  if (v2)
  {
    OUTLINED_FUNCTION_24_46();
    if (swift_weakLoadStrong() && (type metadata accessor for ViewModel(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F78), (swift_dynamicCast() & 1) != 0))
    {
      v20 = v25;
      if (v25)
      {
        v21 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v21 + 48))(v20, v21);
        __swift_destroy_boxed_opaque_existential_1(v24);
LABEL_11:
        OUTLINED_FUNCTION_13_23();
        v22 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_documentEventIterable;
        swift_beginAccess();
        sub_1E3B0D4BC(v24, &v11[v22], &qword_1ECF32F60);
        swift_endAccess();
        goto LABEL_12;
      }
    }

    else
    {
      OUTLINED_FUNCTION_13_23();
    }

    sub_1E325F6F0(v24, &qword_1ECF32F70);
    goto LABEL_11;
  }

LABEL_12:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B0598C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v76 = (v7 - v8);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v74 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v74 - v13;
  v15 = sub_1E324FBDC();
  v16 = *(v5 + 2);
  v79 = v15;
  v80 = v5 + 16;
  v78 = v16;
  (v16)(v14);
  v17 = v0;
  v18 = v2;
  v19 = sub_1E41FFC94();
  v20 = sub_1E4206814();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_49_0();
    v75 = v11;
    v22 = v21;
    v74 = OUTLINED_FUNCTION_72_0();
    v84[0] = v74;
    *v22 = 136446466;
    v23 = OUTLINED_FUNCTION_46_27(&v17[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
    OUTLINED_FUNCTION_121_0(v23);
    v24 = [v18 dictionaryRepresentation];
    v77 = v18;
    sub_1E4205C64();

    v25 = sub_1E4205C74();
    v27 = v26;

    v28 = sub_1E3270FC8(v25, v27, v84);
    v18 = v77;

    *(v22 + 14) = v28;
    _os_log_impl(&dword_1E323F000, v19, v20, "EVENT_MONITOR::[%{public}s] received document update event [%s], starting update", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v11 = v75;
    OUTLINED_FUNCTION_6_0();
  }

  v29 = *(v5 + 1);
  v29(v14, v3);
  v30 = [v18 descriptor];
  v31 = sub_1E3CB1908(v30);

  if (v17[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended] != 1)
  {
    goto LABEL_23;
  }

  if (sub_1E3CB0C24(v31))
  {
    v78(v11, v79, v3);
    v32 = v11;
    v33 = v17;
    v34 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      v35 = OUTLINED_FUNCTION_6_21();
      v77 = v18;
      v36 = v35;
      v37 = OUTLINED_FUNCTION_100();
      v75 = v5;
      v38 = v3;
      v39 = v17;
      v40 = v37;
      v84[0] = v37;
      *v36 = 136446210;
      *(v36 + 4) = OUTLINED_FUNCTION_46_27(&v33[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
      OUTLINED_FUNCTION_258();
      _os_log_impl(v41, v42, v43, v44, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      v17 = v39;
      v3 = v38;
      v5 = v75;
      OUTLINED_FUNCTION_6_0();
      v18 = v77;
      OUTLINED_FUNCTION_6_0();
    }

    v29(v32, v3);
    v33[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirtyForRefreshEvents] = 1;
  }

  v45 = v3;
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_24_46();
  if (swift_weakLoadStrong())
  {
    v46 = type metadata accessor for TemplateViewModel();
    v47 = swift_dynamicCastClass();
    if (v47)
    {
      v48 = v47;
      sub_1E325F6F0(v84, &qword_1ECF2FB80);
      v84[0] = v48;
      v85 = v46;
      v49 = &off_1F5D98370;
LABEL_15:
      v86 = v49;
      goto LABEL_16;
    }
  }

  if (swift_weakLoadStrong())
  {
    v50 = type metadata accessor for CollectionViewModel();
    v51 = swift_dynamicCastClass();
    if (!v51)
    {

      goto LABEL_16;
    }

    v52 = v51;
    sub_1E325F6F0(v84, &qword_1ECF2FB80);
    v84[0] = v52;
    v85 = v50;
    v49 = &off_1F5D96718;
    goto LABEL_15;
  }

LABEL_16:
  sub_1E3743538(v84, &v81, &qword_1ECF2FB80);
  if (!v82)
  {
    OUTLINED_FUNCTION_82();
    sub_1E325F6F0(v57, v58);
    OUTLINED_FUNCTION_82();
    goto LABEL_22;
  }

  v53 = OUTLINED_FUNCTION_64_14(&v81);
  if (!v53)
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v83);
    v55 = &qword_1ECF2FB80;
    v56 = v84;
LABEL_22:
    sub_1E325F6F0(v56, v55);
    goto LABEL_23;
  }

  v54 = v53;
  if (sub_1E374CEE0(v53))
  {

    goto LABEL_20;
  }

  v59 = v17;
  v60 = v18;
  v61 = [v18 descriptor];
  v62 = sub_1E3B060FC(v61, v54);

  if (v62)
  {
    v75 = v5;
    v63 = v76;
    v78(v76, v79, v45);
    v17 = v59;
    v64 = v59;
    v65 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      v66 = OUTLINED_FUNCTION_6_21();
      v67 = OUTLINED_FUNCTION_100();
      *&v81 = v67;
      *v66 = 136446210;
      *(v66 + 4) = sub_1E3270FC8(*&v64[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v64[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], &v81);
      OUTLINED_FUNCTION_258();
      _os_log_impl(v68, v69, v70, v71, v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      v17 = v59;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();

      v72 = v76;
    }

    else
    {

      v72 = v63;
    }

    v29(v72, v45);
    __swift_destroy_boxed_opaque_existential_1(v83);
    sub_1E325F6F0(v84, &qword_1ECF2FB80);
    v18 = v60;
    v73 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirty;
    OUTLINED_FUNCTION_3_0();
    v64[v73] = 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v83);
    sub_1E325F6F0(v84, &qword_1ECF2FB80);
    v17 = v59;
    v18 = v60;
  }

LABEL_23:
  v17[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_hasRefreshEvents] = sub_1E3CB0C24(v31);
  [*&v17[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore] addEvent_];
  sub_1E3B0397C();
  OUTLINED_FUNCTION_25_2();
}

BOOL sub_1E3B060FC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1E42073D4();

    return v4 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    sub_1E3280A90(0, &qword_1EE23AEF0);
    v6 = sub_1E4206F54();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v10 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v11 = *(*(a2 + 48) + 8 * v8);
      v12 = sub_1E4206F64();

      v6 = v8 + 1;
    }

    while ((v12 & 1) == 0);
    return v10;
  }
}

void sub_1E3B0627C()
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isSuspended];
  v11 = sub_1E324FBDC();
  v12 = *(v5 + 16);
  if (v10 == 1)
  {
    v12(v9, v11, v3);
    v13 = v0;
    v14 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      OUTLINED_FUNCTION_6_21();
      v15 = OUTLINED_FUNCTION_11_16();
      v28 = v15;
      *v2 = 136446210;
      v16 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
      *(v2 + 4) = sub_1E3270FC8(v16, v17, &v28);
      OUTLINED_FUNCTION_189();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v5 + 8))(v9, v3);
  }

  else
  {
    v12(v1, v11, v3);
    v23 = v0;
    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_6_21();
      v26 = OUTLINED_FUNCTION_11_16();
      v28 = v26;
      *v2 = 136446210;
      *(v2 + 4) = sub_1E3270FC8(*&v23[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v23[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], &v28);
      _os_log_impl(&dword_1E323F000, v24, v25, "EVENT_MONITOR::[%{public}s] app has become active, starting updates for defered events", v2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v5 + 8))(v1, v3);
    sub_1E3B050F0();
  }
}

void sub_1E3B06620()
{
  v112 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v9 = v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88);
  OUTLINED_FUNCTION_0_10();
  v98 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v102 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v97 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FB8);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v109 = (v18 - v19);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v110 = v21;
  v108 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = *(sub_1E3B038A8() + 16);

  if (v28)
  {
    v92 = v2;
    v93 = v1;
    v107 = v27;
    sub_1E41FE5C4();
    v29 = *&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap];
    v30 = *(v29 + 64);
    v114 = MEMORY[0x1E69E7CC0];
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & v30;
    v105 = v0;
    v34 = (v31 + 63) >> 6;
    v99 = v29;
    v100 = (v23 + 32);
    v104 = (v4 + 16);
    v35 = v29 + 64;
    v106 = (v23 + 8);

    v36 = 0;
    v37 = v109;
    v38 = v110;
    v101 = v35;
    v96 = v34;
    v95 = v9;
    while (v33)
    {
      v39 = v36;
LABEL_11:
      v40 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v41 = v40 | (v39 << 6);
      v42 = *(*(v99 + 48) + 8 * v41);
      sub_1E3743538(*(v99 + 56) + *(v98 + 72) * v41, v97, &qword_1ECF32F88);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32FC0);
      v44 = *(v43 + 48);
      *v37 = v42;
      sub_1E3741EA0(v97, v37 + v44, &qword_1ECF32F88);
      v45 = OUTLINED_FUNCTION_40_36();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v43);
      v34 = v96;
      v9 = v95;
      v38 = v110;
LABEL_12:
      sub_1E3741EA0(v37, v38, &qword_1ECF32FB8);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32FC0);
      if (__swift_getEnumTagSinglePayload(v38, 1, v48) == 1)
      {

        OUTLINED_FUNCTION_70_15();
        v68 = sub_1E32AE9B0(&unk_1E42BA318);
        v69 = sub_1E324FBDC();
        v70 = *v104;
        if (v68)
        {
          v70(v93, v69, v112);
          v71 = v105;
          v72 = sub_1E41FFC94();
          sub_1E4206814();

          if (OUTLINED_FUNCTION_84_1())
          {
            v73 = OUTLINED_FUNCTION_49_0();
            v113 = OUTLINED_FUNCTION_72_0();
            *v73 = 136446466;
            *(v73 + 4) = OUTLINED_FUNCTION_33_37();
            *(v73 + 12) = 2080;
            v74 = sub_1E3280A90(0, &qword_1EE23AFD8);

            v76 = MEMORY[0x1E6910C30](v75, v74);
            v78 = v77;

            v79 = sub_1E3270FC8(v76, v78, &v113);

            *(v73 + 14) = v79;
            OUTLINED_FUNCTION_258();
            _os_log_impl(v80, v81, v82, v83, v73, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_21_0();
            OUTLINED_FUNCTION_6_0();
          }

          OUTLINED_FUNCTION_69_13();
          v84(v93, v112);
          v85 = *&v71[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore];
          sub_1E3280A90(0, &qword_1EE23AFD8);
          OUTLINED_FUNCTION_76();

          sub_1E42062A4();
          OUTLINED_FUNCTION_76();

          [v85 addEvents_];
        }

        else
        {
          v70(v92, v69, v112);
          v86 = v105;
          v87 = sub_1E41FFC94();
          v88 = sub_1E4206814();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = OUTLINED_FUNCTION_6_21();
            v90 = OUTLINED_FUNCTION_100();
            v113 = v90;
            *v89 = 136446210;
            *(v89 + 4) = OUTLINED_FUNCTION_33_37();
            _os_log_impl(&dword_1E323F000, v87, v88, "EVENT_MONITOR::[%{public}s] no refresh events to be processed.", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v90);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_51_2();
          }

          OUTLINED_FUNCTION_69_13();
          v91(v92, v112);
        }

        (*v106)(v107, v108);

        return;
      }

      v49 = *v38;
      v50 = (v38 + *(v48 + 48));
      v111 = *v50;
      v51 = *(v103 + 48);
      (*v100)(v102 + v51, v50 + v51, v108);
      sub_1E41FE4F4();
      v53 = v52;
      (*v106)(v102 + v51, v108);
      v54 = sub_1E324FBDC();
      (*v104)(v9, v54, v112);
      v55 = v9;
      v56 = v105;
      v57 = sub_1E41FFC94();
      v58 = sub_1E4206814();

      if (OUTLINED_FUNCTION_67_5())
      {
        v59 = OUTLINED_FUNCTION_100();
        v60 = OUTLINED_FUNCTION_100();
        v113 = v60;
        *v59 = 136446722;
        *(v59 + 4) = OUTLINED_FUNCTION_33_37();
        *(v59 + 12) = 2048;
        *(v59 + 14) = v53;
        *(v59 + 22) = 2048;
        *(v59 + 24) = v49;
        _os_log_impl(&dword_1E323F000, v57, v58, "EVENT_MONITOR::[%{public}s] checking timeInterval: %f and ttl: %lu", v59, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v60);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        OUTLINED_FUNCTION_69_13();
        v62 = v55;
      }

      else
      {

        OUTLINED_FUNCTION_69_13();
        v62 = v9;
      }

      v61(v62, v112);
      v9 = v55;
      v35 = v101;
      v63 = v53 <= v49;
      v37 = v109;
      v38 = v110;
      if (v63)
      {
      }

      else
      {
        v94 = [objc_allocWithZone(VUIAppDocumentRefreshEvent) initWithRefreshEventDescriptor_];
        MEMORY[0x1E6910BF0]();
        if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
      }
    }

    while (1)
    {
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v39 >= v34)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32FC0);
        v64 = OUTLINED_FUNCTION_61_12();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
        v33 = 0;
        goto LABEL_12;
      }

      v33 = *(v35 + 8 * v39);
      ++v36;
      if (v33)
      {
        v36 = v39;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1E3B06F44()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v50 - v8;
  v10 = [*&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore] events];
  sub_1E3280A90(0, &qword_1EE23AFD8);
  v11 = sub_1E42062B4();

  v54 = v11;
  v53 = MEMORY[0x1E69E7CD0];
  v12 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason;
  v13 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason])
  {
    if (v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_lastMonitoringReason] == 1)
    {
      goto LABEL_14;
    }

    v50 = v0;
    v51 = v2;
    OUTLINED_FUNCTION_57_15();
  }

  else
  {
    v50 = v0;
    v51 = v2;
  }

  v14 = OUTLINED_FUNCTION_22_51();

  v13 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (v14)
  {
LABEL_15:
    v0[v12] = 2;
    goto LABEL_16;
  }

  if (!v0[v12])
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v0[v12] != 1)
  {
    OUTLINED_FUNCTION_26_46();
  }

  v15 = OUTLINED_FUNCTION_47_30();

  if (v15)
  {
    goto LABEL_15;
  }

  v16 = v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirtyForRefreshEvents];
  v17 = sub_1E324FBDC();
  v18 = *(v4 + 16);
  if (v16 == 1)
  {
    v19 = v51;
    v18(v9, v17, v51);
    v20 = v0;
    v21 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      v22 = OUTLINED_FUNCTION_6_21();
      v23 = OUTLINED_FUNCTION_100();
      v52[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = OUTLINED_FUNCTION_46_27(&v20[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
      OUTLINED_FUNCTION_258();
      _os_log_impl(v24, v25, v26, v27, v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v13 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();
    }

    (*(v4 + 8))(v9, v19);
    sub_1E374D328(v52, 0);
  }

  else
  {
    v39 = v50;
    v40 = v51;
    v18(v50, v17, v51);
    v41 = v1;
    v42 = sub_1E41FFC94();
    v43 = sub_1E4206814();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_49_0();
      v52[0] = OUTLINED_FUNCTION_72_0();
      *v44 = 136446466;
      *(v44 + 4) = OUTLINED_FUNCTION_46_27(&v41[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_1E3270FC8(0xD00000000000005FLL, 0x80000001E42715F0, v52);
      OUTLINED_FUNCTION_59_13();
      _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
      OUTLINED_FUNCTION_50_24();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_65_0();
    }

    (*(v4 + 8))(v39, v40);
    sub_1E374D328(v52, 0);
    sub_1E374D328(v52, 1);
    v13 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  }

LABEL_16:
  sub_1E3B0C830(&v54, &v53);
  v29 = v28;
  v30 = v54;
  v31 = sub_1E32AE9B0(v54);
  v32 = v31 - v29;
  if (v31 < v29)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v29 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = v31;
  if (sub_1E32AE9B0(v30) < v31)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v34 = __OFSUB__(0, v32);
  v35 = -v32;
  if (v34)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = sub_1E32AE9B0(v30);
  v34 = __OFADD__(v36, v35);
  v37 = v36 + v35;
  if (!v34)
  {
    sub_1E3879104(v37);
    sub_1E3B0D688(v29, v33, 0);
    *(v1 + v13[194]) = 0;
    v38 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirty;
    OUTLINED_FUNCTION_3_0();
    *(v1 + v38) = 0;

    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_1E3B07414()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_56_20();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = *&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels];
  if (v13)
  {
    v14 = v13;
    if ([v14 count] >= 1)
    {
      v44 = v5;
      v15 = type metadata accessor for DocumentEventIterable();
      v16 = *&v3[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
      v17 = *&v3[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8];
      v18 = v14;

      v42 = v15;
      v43 = sub_1E399B2D0(v16, v17, v2, v18);
      sub_1E324FBDC();
      OUTLINED_FUNCTION_2_26();
      v19(v12);
      v20 = v18;

      v21 = v3;
      v22 = sub_1E41FFC94();
      v23 = sub_1E4206814();

      if (OUTLINED_FUNCTION_67_5())
      {
        v24 = swift_slowAlloc();
        v41 = v6;
        v25 = v24;
        v40 = OUTLINED_FUNCTION_164_1();
        v45[0] = v40;
        *v25 = 136447234;
        *(v25 + 4) = sub_1E3270FC8(v16, v17, v45);
        *(v25 + 12) = 2048;
        *(v25 + 14) = sub_1E32AE9B0(v2);

        *(v25 + 22) = 2080;
        v26 = sub_1E3280A90(0, &qword_1EE23AFD8);
        v27 = MEMORY[0x1E6910C30](v2, v26);
        v29 = sub_1E3270FC8(v27, v28, v45);

        *(v25 + 24) = v29;
        *(v25 + 32) = 2048;
        v30 = [v20 count];

        *(v25 + 34) = v30;
        *(v25 + 42) = 2080;
        *(v25 + 44) = sub_1E3270FC8(0, 0xE000000000000000, v45);
        _os_log_impl(&dword_1E323F000, v22, v23, "EVENT_MONITOR::[%{public}s] new automatic context created for events [%ld %s] \n\nview models [%ld %s]", v25, 0x34u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_6_0();

        (*(v8 + 8))(v12, v41);
      }

      else
      {

        (*(v8 + 8))(v12, v6);
      }

      sub_1E3B07864();
      v45[3] = v42;
      v45[4] = &off_1F5D66318;
      v45[0] = v43;
      v38 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_documentEventIterable;
      swift_beginAccess();

      sub_1E3B0D4BC(v45, &v21[v38], &qword_1ECF32F60);
      swift_endAccess();
      sub_1E3B04504();

      goto LABEL_11;
    }
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v31(v0);
  v32 = v0;
  v33 = sub_1E41FFC94();
  v34 = sub_1E4206814();

  if (os_log_type_enabled(v33, v34))
  {
    OUTLINED_FUNCTION_6_21();
    v35 = OUTLINED_FUNCTION_11_16();
    v45[0] = v35;
    *v1 = 136446210;
    v36 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
    *(v1 + 4) = sub_1E3270FC8(v36, v37, v45);
    _os_log_impl(&dword_1E323F000, v33, v34, "EVENT_MONITOR::[%{public}s] Bailing coz there are no view models.", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_21_0();
  }

  (*(v8 + 8))(v0, v6);
LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B07864()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v175 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v176 = v7 - v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v155 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v174 = &v155 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v167 = &v155 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v173 = v18;
  v168 = sub_1E41FE2B4();
  OUTLINED_FUNCTION_0_10();
  v170 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v178 = v22 - v21;
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_24_46();
  Strong = swift_weakLoadStrong();
  v177 = v0;
  if (Strong)
  {
    OUTLINED_FUNCTION_56_20();
    v24 = type metadata accessor for TemplateViewModel();
    v25 = swift_dynamicCastClass();
    if (v25)
    {
      v26 = v25;
      sub_1E325F6F0(v187, &qword_1ECF2FB80);
      v187[0] = v26;
      v188 = v24;
      v27 = &off_1F5D98370;
      goto LABEL_8;
    }

    v0 = v177;
  }

  if (!swift_weakLoadStrong())
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_56_20();
  v28 = type metadata accessor for CollectionViewModel();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {

    goto LABEL_9;
  }

  v30 = v29;
  sub_1E325F6F0(v187, &qword_1ECF2FB80);
  v187[0] = v30;
  v188 = v28;
  v27 = &off_1F5D96718;
LABEL_8:
  v189 = v27;
LABEL_9:
  v0 = v177;
LABEL_10:
  if (v3)
  {
    if (v3 != 1)
    {

      goto LABEL_17;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_114();
  }

  v31 = sub_1E42079A4();

  if ((v31 & 1) == 0)
  {
    v32 = 1;
    v34 = v175;
    v33 = v176;
    goto LABEL_102;
  }

LABEL_17:
  v35 = *&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore];
  v36 = [v35 events];
  sub_1E3280A90(0, &qword_1EE23AFD8);
  v37 = sub_1E42062B4();

  v38 = sub_1E32AE9B0(v37);

  v172 = v5;
  if (!v38)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v34 = v175;
    v91(v1);
    v92 = v0;
    v93 = sub_1E41FFC94();
    v94 = sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      OUTLINED_FUNCTION_6_21();
      v95 = OUTLINED_FUNCTION_36_6();
      v186[0] = v95;
      LODWORD(selRef_dismissPresentedViewController) = 136446210;
      *(&selRef_dismissPresentedViewController + 4) = OUTLINED_FUNCTION_48_27(&v92[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
      _os_log_impl(&dword_1E323F000, v93, v94, "EVENT_MONITOR::%{public}s no event in the store to remove.", &selRef_dismissPresentedViewController, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      v5 = v172;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_65_0();
    }

    (*(v5 + 8))(v1, v34);
    v32 = 0;
    v33 = v176;
    goto LABEL_101;
  }

  v39 = [v35 events];
  v40 = sub_1E42062B4();

  v41 = sub_1E3B0C37C(v40);
  v42 = *&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels];
  v43 = &selRef_collectionViewCanBecomeFocused_;
  if (!v42)
  {
LABEL_61:
    sub_1E3743538(v187, &v183, &qword_1ECF2FB80);
    if (!*(&v184 + 1))
    {

      sub_1E325F6F0(&v183, &qword_1ECF2FB80);
LABEL_70:
      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v104 = v175;
      v105(v12);
      v106 = v177;
      v107 = sub_1E41FFC94();
      v108 = sub_1E4206814();

      if (os_log_type_enabled(v107, v108))
      {
        OUTLINED_FUNCTION_6_21();
        v109 = OUTLINED_FUNCTION_36_6();
        v186[0] = v109;
        LODWORD(selRef_collectionViewCanBecomeFocused_) = 136446210;
        *(&selRef_collectionViewCanBecomeFocused_ + 4) = OUTLINED_FUNCTION_48_27(&v106[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
        OUTLINED_FUNCTION_59_13();
        _os_log_impl(v110, v111, v112, v113, v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v109);
        v5 = v172;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();
      }

      (*(v5 + 8))(v12, v104);
      v32 = 1;
      v33 = v176;
      v0 = v177;
      v34 = v104;
      goto LABEL_102;
    }

    v171 = v41;
    v169 = v35;
    v96 = OUTLINED_FUNCTION_64_14(&v183);
    v33 = v176;
    if (!v96)
    {
      __swift_destroy_boxed_opaque_existential_1(v186);
      goto LABEL_69;
    }

    v97 = v96;
    if (sub_1E374CEE0(v96))
    {
      __swift_destroy_boxed_opaque_existential_1(v186);

LABEL_69:

      goto LABEL_70;
    }

    v115 = sub_1E32AE9B0(v171);
    v34 = v175;
    v173 = v115;
    if (v115)
    {
      if (v173 < 1)
      {
LABEL_111:
        __break(1u);
        return;
      }

      v117 = 0;
      v163 = &v177[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
      v170 = v171 & 0xC000000000000001;
      v167 = (v97 & 0xC000000000000001);
      v168 = v171 + 32;
      if (v97 >= 0)
      {
        v118 = v97 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v118 = v97;
      }

      v178 = v97 + 56;
      v165 = (v5 + 16);
      v166 = v118;
      v164 = v5 + 8;
      *&v116 = 136446210;
      v162 = v116;
      do
      {
        if (v170)
        {
          v119 = MEMORY[0x1E6911E60](v117, v171);
        }

        else
        {
          v119 = *(v168 + 8 * v117);
        }

        v120 = v119;
        v121 = [v119 v43[448]];
        v122 = [v121 type];

        if (v122)
        {
          [v169 removeEvent_];
        }

        else
        {
          v123 = [v120 v43[448]];
          v124 = v123;
          if (v167)
          {
            v125 = v123;
            v126 = sub_1E42073D4();

            if (v126)
            {
LABEL_92:
              v132 = sub_1E324FBDC();
              v133 = v174;
              (*v165)(v174, v132, v34);
              v134 = v177;
              v135 = sub_1E41FFC94();
              v136 = sub_1E4206814();

              if (OUTLINED_FUNCTION_67_5())
              {
                OUTLINED_FUNCTION_6_21();
                v137 = OUTLINED_FUNCTION_36_6();
                *&v183 = v137;
                *v134 = v162;
                *(v134 + 4) = sub_1E3270FC8(*v163, *(v163 + 1), &v183);
                _os_log_impl(&dword_1E323F000, v135, v136, "EVENT_MONITOR::%{public}s document received foreground event while dirty;not removing it", v134, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v137);
                OUTLINED_FUNCTION_21_0();
                OUTLINED_FUNCTION_65_0();

                OUTLINED_FUNCTION_62_14();
                v139 = v174;
              }

              else
              {

                OUTLINED_FUNCTION_62_14();
                v139 = v133;
              }

              v138(v139, v34);
              v33 = v176;
              v43 = &selRef_collectionViewCanBecomeFocused_;
              goto LABEL_98;
            }
          }

          else
          {
            if (*(v97 + 16))
            {
              sub_1E3280A90(0, &qword_1EE23AEF0);
              v127 = sub_1E4206F54();
              v128 = ~(-1 << *(v97 + 32));
              while (1)
              {
                v129 = v127 & v128;
                if (((*(v178 + (((v127 & v128) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v127 & v128)) & 1) == 0)
                {
                  break;
                }

                v130 = *(*(v97 + 48) + 8 * v129);
                v131 = sub_1E4206F64();

                v127 = v129 + 1;
                if (v131)
                {

                  v34 = v175;
                  v5 = v172;
                  goto LABEL_92;
                }
              }
            }

            v34 = v175;
            v5 = v172;
            v43 = &selRef_collectionViewCanBecomeFocused_;
          }

          [v169 removeEvent_];

          v33 = v176;
        }

LABEL_98:
        ++v117;
      }

      while (v117 != v173);
    }

    __swift_destroy_boxed_opaque_existential_1(v186);
LABEL_100:
    v32 = 0;
LABEL_101:
    v0 = v177;
    goto LABEL_102;
  }

  v44 = v42;
  if ([v44 count] < 1)
  {

    goto LABEL_61;
  }

  v165 = sub_1E32AE9B0(v41);
  if (v165)
  {
    *&v162 = v44;
    v169 = v35;
    v46 = 0;
    v158 = &v177[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
    v166 = v41 & 0xC000000000000001;
    v171 = v41;
    v160 = v41 + 32;
    v161 = v41 & 0xFFFFFFFFFFFFFF8;
    v159 = v170 + 8;
    v157 = "gain on next trigger.";
    v163 = (v5 + 8);
    v164 = v5 + 16;
    *&v45 = 136446210;
    v155 = v45;
    *&v45 = 136446466;
    v156 = v45;
    v34 = v175;
    v33 = v176;
    v47 = v173;
    while (1)
    {
      if (v166)
      {
        v48 = MEMORY[0x1E6911E60](v46, v171);
      }

      else
      {
        if (v46 >= *(v161 + 16))
        {
          goto LABEL_110;
        }

        v48 = *(v160 + 8 * v46);
      }

      v49 = __OFADD__(v46, 1);
      v50 = v46 + 1;
      if (v49)
      {
        break;
      }

      v170 = v50;
      v51 = v48;
      v52 = [v48 v43[448]];
      v53 = [v52 type];

      if (v53)
      {
        goto LABEL_28;
      }

      v174 = v51;
      sub_1E4206784();
      while (1)
      {
        sub_1E41FE2A4();
        v54 = v182;
        if (!v182)
        {
          break;
        }

        sub_1E329504C(&v181, v180);
        sub_1E328438C(v180, v179);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB78);
        if (!swift_dynamicCast())
        {

          __swift_destroy_boxed_opaque_existential_1(v180);
          v98 = OUTLINED_FUNCTION_60_14();
          v99(v98);
          OUTLINED_FUNCTION_82();
          sub_1E325F6F0(v100, v101);
          v183 = 0u;
          v184 = 0u;
          v185 = 0;
          OUTLINED_FUNCTION_82();
          goto LABEL_108;
        }

        v55 = OUTLINED_FUNCTION_64_14(&v183);
        if (v55)
        {
          v56 = v55;
          v57 = [v174 v43[448]];
          v58 = v57;
          if ((v56 & 0xC000000000000001) != 0)
          {
            v59 = v57;
            v60 = sub_1E42073D4();

            if (v60)
            {
LABEL_43:
              sub_1E328438C(v180, &v183);
              type metadata accessor for ViewModel();
              if (swift_dynamicCast())
              {
                v66 = *(v179[0] + 98);
              }

              else
              {
                v66 = 263;
              }

              LOWORD(v183) = v66;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327A0);
              v67 = sub_1E4205F84();
              v69 = v68;
              *&v183 = 0;
              *(&v183 + 1) = 0xE000000000000000;
              sub_1E42074B4();
              MEMORY[0x1E69109E0](*v158, v158[1]);
              MEMORY[0x1E69109E0](0x6F6D207765697620, 0xED0000203A6C6564);
              MEMORY[0x1E69109E0](v67, v69);

              MEMORY[0x1E69109E0](0xD000000000000027, v157 | 0x8000000000000000);
              v70 = v183;
              sub_1E324FBDC();
              OUTLINED_FUNCTION_62_14();
              v71(v47);

              v72 = sub_1E41FFC94();
              v73 = sub_1E4206814();

              if (OUTLINED_FUNCTION_67_5())
              {
                v74 = OUTLINED_FUNCTION_6_21();
                v75 = OUTLINED_FUNCTION_100();
                *&v183 = v75;
                *v74 = v155;
                v76 = sub_1E3270FC8(v70, *(&v70 + 1), &v183);

                *(v74 + 4) = v76;
                v43 = &selRef_collectionViewCanBecomeFocused_;
                _os_log_impl(&dword_1E323F000, v72, v73, "EVENT_MONITOR::%{public}s", v74, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v75);
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_6_0();
              }

              else
              {
              }

              (*v163)(v47, v34);
              __swift_destroy_boxed_opaque_existential_1(v186);
              __swift_destroy_boxed_opaque_existential_1(v180);
              break;
            }
          }

          else
          {
            if (*(v56 + 16))
            {
              sub_1E3280A90(0, &qword_1EE23AEF0);
              v61 = sub_1E4206F54();
              v62 = ~(-1 << *(v56 + 32));
              while (1)
              {
                v63 = v61 & v62;
                if (((*(v56 + 56 + (((v61 & v62) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v61 & v62)) & 1) == 0)
                {
                  break;
                }

                v64 = *(*(v56 + 48) + 8 * v63);
                v65 = sub_1E4206F64();

                v61 = v63 + 1;
                if (v65)
                {

                  v34 = v175;
                  v43 = &selRef_collectionViewCanBecomeFocused_;
                  v47 = v173;
                  goto LABEL_43;
                }
              }
            }

            v34 = v175;
            v43 = &selRef_collectionViewCanBecomeFocused_;
            v47 = v173;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(v186);
        __swift_destroy_boxed_opaque_existential_1(v180);
      }

      v77 = OUTLINED_FUNCTION_60_14();
      v78(v77);
      v79 = v34;
      v80 = v167;
      v81 = sub_1E328692C(v54 != 0);
      v83 = v82;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_62_14();
      v84(v80);
      v85 = v177;

      v86 = sub_1E41FFC94();
      v87 = sub_1E4206814();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = OUTLINED_FUNCTION_49_0();
        v186[0] = OUTLINED_FUNCTION_72_0();
        *v88 = v156;
        v89 = OUTLINED_FUNCTION_48_27(v158);
        OUTLINED_FUNCTION_41_33(v89);
        v90 = sub_1E3270FC8(v81, v83, v186);

        *(v88 + 14) = v90;
        _os_log_impl(&dword_1E323F000, v86, v87, "EVENT_MONITOR::%{public}s has any view model for foreground event: %{public}s", v88, 0x16u);
        swift_arrayDestroy();
        v43 = &selRef_collectionViewCanBecomeFocused_;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_51_2();
      }

      else
      {
      }

      (*v163)(v80, v79);
      v33 = v176;
      v34 = v79;
      v47 = v173;
      v51 = v174;
      if (!v54)
      {
LABEL_28:
        [v169 removeEvent_];
      }

      v46 = v170;
      v5 = v172;
      if (v170 == v165)
      {

        goto LABEL_100;
      }
    }

    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v32 = 0;
  v33 = v176;
  v0 = v177;
  v34 = v175;
LABEL_102:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_21_8();
  v140(v33);
  v141 = v0;
  v142 = sub_1E41FFC94();
  v143 = sub_1E4206814();

  if (os_log_type_enabled(v142, v143))
  {
    v144 = OUTLINED_FUNCTION_49_0();
    v186[0] = OUTLINED_FUNCTION_72_0();
    *v144 = 136446466;
    v145 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
    *(v144 + 4) = sub_1E3270FC8(v145, v146, v186);
    *(v144 + 12) = 2082;
    v147 = sub_1E328692C(v32);
    v149 = sub_1E3270FC8(v147, v148, v186);

    *(v144 + 14) = v149;
    OUTLINED_FUNCTION_189();
    _os_log_impl(v150, v151, v152, v153, v154, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();

    (*(v5 + 8))(v176, v175);
  }

  else
  {

    (*(v5 + 8))(v33, v34);
  }

  if (v32)
  {
    [*&v141[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore] removeAllEvents];
  }

  v103 = &qword_1ECF2FB80;
  v102 = v187;
LABEL_108:
  sub_1E325F6F0(v102, v103);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B089FC(uint64_t a1)
{
  sub_1E328438C(a1, v12);
  type metadata accessor for TemplateViewModel();
  if (!OUTLINED_FUNCTION_32_45())
  {
    sub_1E328438C(a1, v12);
    type metadata accessor for CollectionViewModel();
    if (OUTLINED_FUNCTION_32_45())
    {
      OUTLINED_FUNCTION_37_34();
      v4 = (*(v7 + 1112))();
      if (v8)
      {
        goto LABEL_3;
      }
    }

    else
    {
      sub_1E328438C(a1, v12);
      type metadata accessor for ViewModel();
      if ((OUTLINED_FUNCTION_32_45() & 1) == 0)
      {
        return 0;
      }

      OUTLINED_FUNCTION_37_34();
      v4 = (*(v9 + 264))();
      if (v10)
      {
        goto LABEL_3;
      }
    }

LABEL_6:
    if (*(v1 + 24))
    {
      v6 = *(v1 + 16);

      goto LABEL_8;
    }

    return 0;
  }

  OUTLINED_FUNCTION_37_34();
  v4 = (*(v3 + 1000))();
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = v4;
LABEL_8:

  return v6;
}

void sub_1E3B08B68()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F80);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v43 - v13;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    OUTLINED_FUNCTION_5_0();
    if (swift_weakLoadStrong())
    {
      OUTLINED_FUNCTION_24_46();
      if (!swift_weakLoadStrong())
      {

LABEL_25:

        goto LABEL_26;
      }

      if (v3)
      {
        OUTLINED_FUNCTION_5_0();
        if (swift_weakLoadStrong())
        {
          v17 = [v1 descriptor];
          v18 = [v17 type];

          if (!v18)
          {
            v19 = [v1 descriptor];
            objc_opt_self();
            v20 = swift_dynamicCastObjCClass();
            if (v20)
            {
              v21 = [v20 delayInSeconds];
              v22 = sub_1E3B038A8();
              v23 = sub_1E3928950(v21);
              if (v24)
              {
                v25 = v23;
                LODWORD(v44) = swift_isUniquelyReferenced_nonNull_native();
                v45[0] = v22;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F90);
                sub_1E4207644();
                v22 = v45[0];
                v44 = *(v45[0] + 56);
                v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88);
                OUTLINED_FUNCTION_2();
                sub_1E3741EA0(&v44[*(v27 + 72) * v25], v14, &qword_1ECF32F88);
                sub_1E4207664();
                v28 = v14;
                v29 = 0;
                v30 = v26;
              }

              else
              {
                v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88);
                v28 = v14;
                v29 = 1;
              }

              __swift_storeEnumTagSinglePayload(v28, v29, 1, v30);

              sub_1E325F6F0(v14, &qword_1ECF32F80);
              *&v16[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap] = v22;
            }

            else
            {
            }
          }

          OUTLINED_FUNCTION_5_0();
          if (swift_weakLoadStrong())
          {
          }

          sub_1E3B090A0();

          goto LABEL_24;
        }
      }

      v31 = [v1 descriptor];
      v32 = [v31 type];

      if (v32)
      {

LABEL_24:

        goto LABEL_25;
      }

      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v33(v10);
      v34 = v16;
      v35 = sub_1E41FFC94();
      v36 = sub_1E4206814();

      if (os_log_type_enabled(v35, v36))
      {
        v43[0] = "on next trigger.";
        v37 = OUTLINED_FUNCTION_49_0();
        v38 = OUTLINED_FUNCTION_72_0();
        v43[1] = v38;
        *v37 = 136446466;
        v39 = &v34[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
        v44 = v34;
        v45[0] = v38;
        v40 = *&v34[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
        v41 = *(v39 + 1);

        v42 = sub_1E3270FC8(v40, v41, v45);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2082;
        *(v37 + 14) = sub_1E3270FC8(0xD000000000000045, v43[0] | 0x8000000000000000, v45);
        _os_log_impl(&dword_1E323F000, v35, v36, "EVENT_MONITOR::[%{public}s] performNextUpdate %{public}s", v37, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_55();
      }

      else
      {
      }

      (*(v6 + 8))(v10, v4);
    }

    else
    {
    }
  }

LABEL_26:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B090A0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  if (v3)
  {
    OUTLINED_FUNCTION_25_2();

    sub_1E3B0A67C();
  }

  else
  {
    v16 = sub_1E32AE9B0(MEMORY[0x1E69E7CC0]);
    v76 = v1;
    if (v16)
    {
      v17 = sub_1E3A60C9C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CD0];
    }

    v18 = sub_1E3B0BB08(v7, 0);
    v79 = v5;
    v19 = type metadata accessor for ViewModel();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB78);
    if (swift_dynamicCast())
    {
      sub_1E3251BE8(v77, v80);
      v20 = sub_1E3CB0C34(v80);
      if (v20)
      {
        v21 = v20;
        if (sub_1E374CEE0(v20))
        {
          __swift_destroy_boxed_opaque_existential_1(v80);
        }

        else if (v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isOptimizedTTLRefreshEnabled] == 1)
        {
          if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
          {
            v22 = sub_1E3A60C9C(MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v22 = MEMORY[0x1E69E7CD0];
          }

          *&v77[0] = v22;
          sub_1E3B0A070(v21, v0, v77);

          sub_1E3B0BFB0(v25, v17);
          v27 = v26;
          __swift_destroy_boxed_opaque_existential_1(v80);

          v17 = v27;
        }

        else
        {

          sub_1E3B0BFB0(v21, v17);
          v24 = v23;
          __swift_destroy_boxed_opaque_existential_1(v80);

          v17 = v24;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v80);
      }
    }

    else
    {
      v78 = 0;
      memset(v77, 0, sizeof(v77));
      sub_1E325F6F0(v77, &qword_1ECF2FB80);
    }

    [v18 copy];
    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E3280A90(0, &qword_1ECF24E80);
    v28 = OUTLINED_FUNCTION_21_4();
    v29 = *&v77[0];
    if (!v28)
    {
      v29 = 0;
    }

    v30 = *&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels];
    *&v0[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels] = v29;

    v32 = sub_1E374CEE0(v31);

    if (v32)
    {
    }

    else
    {
      v80[3] = v19;
      v80[0] = v5;

      v70 = sub_1E3B089FC(v80);
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_1(v80);
      v35 = sub_1E324FBDC();
      v36 = *(v10 + 16);
      v74 = v35;
      v71 = v36;
      (v36)(v14);
      v37 = v0;

      v38 = sub_1E41FFC94();
      v39 = sub_1E4206814();

      v75 = v37;

      v40 = os_log_type_enabled(v38, v39);
      v72 = v10;
      v73 = v18;
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_100();
        v69 = OUTLINED_FUNCTION_164_1();
        v80[0] = v69;
        *v41 = 136446722;
        v42 = OUTLINED_FUNCTION_46_27(&v75[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
        OUTLINED_FUNCTION_121_0(v42);
        sub_1E3280A90(0, &qword_1EE23AEF0);
        sub_1E3A60E60();

        v43 = sub_1E4206634();
        v45 = v44;

        v46 = sub_1E3270FC8(v43, v45, v80);

        *(v41 + 14) = v46;
        *(v41 + 22) = 2082;
        v47 = sub_1E3270FC8(v70, v34, v80);

        *(v41 + 24) = v47;
        v10 = v72;
        OUTLINED_FUNCTION_189();
        _os_log_impl(v48, v49, v50, v51, v52, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
      }

      else
      {
      }

      v53 = *(v10 + 8);
      v53(v14, v8);
      v54 = v76;
      v71(v76, v74, v8);
      v55 = v75;
      v56 = sub_1E41FFC94();
      v57 = sub_1E4206814();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = OUTLINED_FUNCTION_49_0();
        v75 = v53;
        v59 = v58;
        v80[0] = OUTLINED_FUNCTION_72_0();
        *v59 = 136446466;
        *(v59 + 4) = OUTLINED_FUNCTION_46_27(&v55[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
        *(v59 + 12) = 2082;
        sub_1E3B038A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88);
        v60 = sub_1E4205C74();
        v62 = v61;

        v63 = sub_1E3270FC8(v60, v62, v80);

        *(v59 + 14) = v63;
        _os_log_impl(&dword_1E323F000, v56, v57, "EVENT_MONITOR::[%{public}s] fetched refresh descriptors: [%{public}s]", v59, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();

        (v75)(v76, v8);
      }

      else
      {

        v53(v54, v8);
      }

      v64 = v73;
      v65 = *&v55[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_registrationHandler];
      if (v65)
      {

        v66 = OUTLINED_FUNCTION_32_0();
        sub_1E34AF604(v66);
        v65(v55, v17, 1);
        v67 = OUTLINED_FUNCTION_32_0();
        sub_1E34AF594(v67);
        swift_bridgeObjectRelease_n();
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3B097B4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F80);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v49 - v13 + 16;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (v3)
    {
      OUTLINED_FUNCTION_5_0();
      if (swift_weakLoadStrong())
      {
        v17 = [v1 descriptor];
        v18 = [v17 type];

        if (!v18)
        {
          v19 = [v1 descriptor];
          objc_opt_self();
          v20 = swift_dynamicCastObjCClass();
          if (v20)
          {
            v21 = [v20 delayInSeconds];
            v22 = sub_1E3B038A8();
            v23 = sub_1E3928950(v21);
            if (v24)
            {
              v25 = v23;
              swift_isUniquelyReferenced_nonNull_native();
              v49[0] = v22;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F90);
              sub_1E4207644();
              v22 = v49[0];
              v26 = *(v49[0] + 56);
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88);
              OUTLINED_FUNCTION_2();
              sub_1E3741EA0(v26 + *(v28 + 72) * v25, v14, &qword_1ECF32F88);
              sub_1E4207664();
              v29 = OUTLINED_FUNCTION_40_36();
              v32 = v27;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88);
              v29 = OUTLINED_FUNCTION_61_12();
            }

            __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);

            sub_1E325F6F0(v14, &qword_1ECF32F80);
            *&v16[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap] = v22;
          }

          else
          {
          }
        }

        sub_1E3B04294();

        goto LABEL_17;
      }
    }

    v33 = [v1 descriptor];
    v34 = [v33 type];

    if (v34)
    {
LABEL_17:

      goto LABEL_18;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v35(v10);
    v36 = v16;
    v37 = sub_1E41FFC94();
    v38 = sub_1E4206814();

    if (os_log_type_enabled(v37, v38))
    {
      v48 = "orRefreshEvents";
      v39 = OUTLINED_FUNCTION_49_0();
      v49[0] = OUTLINED_FUNCTION_72_0();
      *v39 = 136446466;
      v40 = *&v36[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName];
      v41 = *&v36[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8];

      v42 = sub_1E3270FC8(v40, v41, v49);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_1E3270FC8(0xD000000000000050, v48 | 0x8000000000000000, v49);
      OUTLINED_FUNCTION_59_13();
      _os_log_impl(v43, v44, v45, v46, v47, 0x16u);
      OUTLINED_FUNCTION_50_24();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_65_0();
    }

    else
    {
    }

    (*(v6 + 8))(v10, v4);
  }

LABEL_18:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B09C08(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {

      if (sub_1E4207384())
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *(a1 + 16);

      if (v4)
      {
LABEL_4:
        if (*(v1 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isOptimizedTTLRefreshEnabled) == 1)
        {
          if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
          {
            v3 = sub_1E3A60C9C(MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v3 = MEMORY[0x1E69E7CD0];
          }

          v7 = v3;
          sub_1E3B0A070(v2, v1, &v7);

          return v7;
        }

        return v2;
      }
    }
  }

  if (!(MEMORY[0x1E69E7CC0] >> 62) || !sub_1E4207384())
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = MEMORY[0x1E69E7CC0];

  return sub_1E3A60C9C(v6);
}

void sub_1E3B09D40(uint64_t a1, void *a2, void *a3, void **a4)
{
  v26 = a4;
  v35 = a3;
  v27 = a2;
  v4 = sub_1E41FE2B4();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4206784();
  v7 = sub_1E3B0D644(&qword_1EE28A478, MEMORY[0x1E6968EB0]);
  v8 = &unk_1E42AF4F8;
  v25 = v4;
  while (1)
  {
    sub_1E4207174();
    if (!v34)
    {
      break;
    }

    sub_1E329504C(&v33, v32);
    sub_1E328438C(v32, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB78);
    if (swift_dynamicCast())
    {
      sub_1E3251BE8(v28, v31);
      v9 = sub_1E3CB0C34(v31);
      v10 = sub_1E3B089FC(v32);
      v12 = v10;
      v13 = v11;
      if (v9)
      {

        v14 = v8;
        v15 = v7;
        v16 = v6;
        v17 = v27;
        swift_isUniquelyReferenced_nonNull_native();
        *&v28[0] = *v17;
        sub_1E3B0D508(v9, v12, v13);
        *v17 = *&v28[0];
        v6 = v16;
        v7 = v15;
        v8 = v14;
      }

      else
      {
        sub_1E3B0D3C4(v10, v11);
      }

      v18 = sub_1E3B09C08(v9);

      v19 = v26;
      v20 = *v26;

      sub_1E3B0BFB0(v18, v20);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v31);
      *v19 = v22;

      v4 = v25;
    }

    else
    {
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      sub_1E325F6F0(v28, &qword_1ECF2FB80);
    }

    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  (*(v24 + 8))(v6, v4);
}

void sub_1E3B0A070(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88);
  OUTLINED_FUNCTION_0_10();
  v64 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v61 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F80);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v63 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v69 = v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    sub_1E3280A90(0, &qword_1EE23AEF0);
    sub_1E3A60E60();
    sub_1E4206664();
    a1 = v76;
    v16 = v77;
    v17 = v78;
    v18 = v79;
    v19 = v80;
  }

  else
  {
    v20 = -1 << *(a1 + 32);
    v16 = a1 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(a1 + 56);

    v18 = 0;
  }

  v65 = v17;
  v66 = a1;
  v68 = v4;
  v72 = a2;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v23 = v18;
    v24 = v19;
    v25 = v18;
    if (!v19)
    {
      break;
    }

LABEL_12:
    v74 = (v24 - 1) & v24;
    v26 = *(*(a1 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    if (!v26)
    {
LABEL_37:
      sub_1E34AF4DC();

      return;
    }

    while (1)
    {
      if ([v26 type] || (objc_opt_self(), OUTLINED_FUNCTION_20_2(), (v30 = swift_dynamicCastObjCClass()) == 0))
      {
        v28 = v26;
        sub_1E3B0C60C(&v81, v28);
        v29 = v81;
      }

      else
      {
        v31 = v30;
        v32 = v26;
        v33 = [v31 delayInSeconds];
        v34 = v71;
        v35 = v69;
        *v69 = v31;
        v36 = v35;
        v70 = v32;
        a2 = v72;
        sub_1E41FE5C4();
        v37 = OUTLINED_FUNCTION_40_36();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v34);
        v40 = sub_1E3B038A8();
        if (__swift_getEnumTagSinglePayload(v36, 1, v34) == 1)
        {
          sub_1E325F6F0(v36, &qword_1ECF32F80);
          v41 = sub_1E3928950(v33);
          if (v42)
          {
            v43 = v41;
            swift_isUniquelyReferenced_nonNull_native();
            v81 = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F90);
            v34 = v71;
            a2 = v72;
            sub_1E4207644();
            v40 = v81;
            v44 = v63;
            sub_1E3741EA0(v81[7] + *(v64 + 72) * v43, v63, &qword_1ECF32F88);
            sub_1E4207664();
            v45 = 0;
          }

          else
          {
            v45 = 1;
            v44 = v63;
          }

          a1 = v66;
          __swift_storeEnumTagSinglePayload(v44, v45, 1, v34);
          sub_1E325F6F0(v44, &qword_1ECF32F80);
          v52 = v70;
        }

        else
        {
          sub_1E3741EA0(v36, v67, &qword_1ECF32F88);
          swift_isUniquelyReferenced_nonNull_native();
          v81 = v40;
          v62 = v33;
          v46 = sub_1E3928950(v33);
          if (__OFADD__(*(v40 + 16), (v47 & 1) == 0))
          {
            goto LABEL_39;
          }

          v48 = v46;
          v49 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F90);
          if (sub_1E4207644())
          {
            v50 = sub_1E3928950(v62);
            v52 = v70;
            a1 = v66;
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_41;
            }

            v48 = v50;
          }

          else
          {
            v52 = v70;
            a1 = v66;
          }

          v40 = v81;
          v53 = v62;
          if (v49)
          {
            v54 = OUTLINED_FUNCTION_44_33();
            sub_1E3B0D4BC(v54, v55, &qword_1ECF32F88);
          }

          else
          {
            v81[(v48 >> 6) + 8] |= 1 << v48;
            *(*(v40 + 48) + 8 * v48) = v53;
            v56 = OUTLINED_FUNCTION_44_33();
            sub_1E3741EA0(v56, v57, &qword_1ECF32F88);
            v58 = *(v40 + 16);
            v59 = __OFADD__(v58, 1);
            v60 = v58 + 1;
            if (v59)
            {
              goto LABEL_40;
            }

            *(v40 + 16) = v60;
          }

          a2 = v72;
        }

        *&a2[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap] = v40;
      }

      v18 = v25;
      v19 = v74;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v27 = sub_1E42073C4();
      if (v27)
      {
        v75 = v27;
        sub_1E3280A90(0, &qword_1EE23AEF0);
        swift_dynamicCast();
        v26 = v81;
        v25 = v18;
        v74 = v19;
        if (v81)
        {
          continue;
        }
      }

      goto LABEL_37;
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= ((v17 + 64) >> 6))
    {
      goto LABEL_37;
    }

    v24 = *(v16 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  sub_1E4207A74();
  __break(1u);
}

void sub_1E3B0A67C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v85 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v81 = v16;
  v17 = sub_1E32AE9B0(MEMORY[0x1E69E7CC0]);
  v82 = v14;
  if (v17)
  {
    v18 = sub_1E3A60C9C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CD0];
  }

  v89 = v18;
  v19 = sub_1E3B0BB08(v5, v3 & 1);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F98);
  v88 = sub_1E4205CB4();
  v86 = sub_1E3B038A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32FA0);
  sub_1E4205D14();
  v83 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap;
  *&v1[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap] = v86;

  if ([v19 count] >= 1)
  {
    v20 = v1;
    sub_1E3B09D40(v19, &v88, v20, &v89);
    [v19 copy];
    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E3280A90(0, &qword_1ECF24E80);
    v21 = swift_dynamicCast();
    v22 = v87[0];
    if (!v21)
    {
      v22 = 0;
    }

    v23 = *&v20[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels];
    *&v20[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels] = v22;

    v18 = v89;
  }

  v25 = sub_1E374CEE0(v24);

  v84 = v19;
  if (!v25)
  {
    v26 = sub_1E324FBDC();
    v27 = *(v85 + 16);
    v28 = v81;
    v77 = v85 + 16;
    v78 = v26;
    v76 = v27;
    (v27)(v81);
    v29 = v1;
    v30 = sub_1E41FFC94();
    v31 = sub_1E4206814();

    v75 = v31;
    v32 = os_log_type_enabled(v30, v31);
    v79 = v11;
    if (v32)
    {
      v33 = OUTLINED_FUNCTION_49_0();
      v74 = OUTLINED_FUNCTION_72_0();
      v87[0] = v74;
      *v33 = 136446466;
      *(v33 + 4) = sub_1E3270FC8(*&v29[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v29[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], v87);
      *(v33 + 12) = 2080;
      OUTLINED_FUNCTION_24_46();

      v34 = v6;
      v35 = sub_1E4205C74();
      v37 = v36;
      v38 = v85;

      v39 = sub_1E3270FC8(v35, v37, v87);

      *(v33 + 14) = v39;
      v6 = v34;
      _os_log_impl(&dword_1E323F000, v30, v75, "EVENT_MONITOR::[%{public}s] will register model:descriptors map { %s }", v33, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      v19 = v84;
      OUTLINED_FUNCTION_6_0();

      v40 = *(v38 + 8);
      v41 = v81;
    }

    else
    {

      v40 = *(v85 + 8);
      v41 = v28;
    }

    v81 = v40;
    v40(v41, v6);
    v42 = v29;
    v87[0] = sub_1E3B0C198(v19, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
    sub_1E328FCF4(&qword_1EE23B510, &qword_1ECF2C420);
    v80 = sub_1E4205DF4();
    v44 = v43;

    v45 = v82;
    v76(v82, v78, v6);
    v46 = v42;

    v47 = sub_1E41FFC94();
    v48 = sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      v49 = OUTLINED_FUNCTION_100();
      v50 = OUTLINED_FUNCTION_164_1();
      v78 = v6;
      v87[0] = v50;
      *v49 = 136446722;
      *(v49 + 4) = sub_1E3270FC8(*&v46[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName], *&v46[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName + 8], v87);
      *(v49 + 12) = 2082;
      sub_1E3280A90(0, &qword_1EE23AEF0);
      sub_1E3A60E60();

      v51 = sub_1E4206634();
      v53 = v52;

      v54 = sub_1E3270FC8(v51, v53, v87);

      *(v49 + 14) = v54;
      *(v49 + 22) = 2082;
      v55 = sub_1E3270FC8(v80, v44, v87);

      *(v49 + 24) = v55;
      _os_log_impl(&dword_1E323F000, v47, v48, "EVENT_MONITOR::[%{public}s] registering descriptors for template [%{public}s] for view models: [%{public}s]", v49, 0x20u);
      swift_arrayDestroy();
      v6 = v78;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v56 = v82;
    }

    else
    {

      v56 = v45;
    }

    v81(v56, v6);
    v57 = *&v46[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_registrationHandler];
    v11 = v79;
    v19 = v84;
    if (v57)
    {

      v58 = OUTLINED_FUNCTION_32_0();
      sub_1E34AF604(v58);
      v57(v46, v18, 0);
      v59 = OUTLINED_FUNCTION_32_0();
      sub_1E34AF594(v59);
    }
  }

  if (*(*&v1[v83] + 16))
  {
    v60 = sub_1E324FBDC();
    (*(v85 + 16))(v11, v60, v6);
    v61 = v1;
    v62 = sub_1E41FFC94();
    v63 = sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      v64 = OUTLINED_FUNCTION_49_0();
      v87[0] = OUTLINED_FUNCTION_72_0();
      *v64 = 136446466;
      v65 = OUTLINED_FUNCTION_17_70(OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName);
      v67 = sub_1E3270FC8(v65, v66, v87);
      OUTLINED_FUNCTION_41_33(v67);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88);
      v68 = sub_1E4205C74();
      v69 = v11;
      v71 = v70;

      v72 = sub_1E3270FC8(v68, v71, v87);

      *(v64 + 14) = v72;
      _os_log_impl(&dword_1E323F000, v62, v63, "EVENT_MONITOR::[%{public}s] template refresh descriptors: [%{public}s]", v64, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();

      (*(v85 + 8))(v69, v6);
    }

    else
    {

      (*(v85 + 8))(v11, v6);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3B0AF24()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v84 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v88 = v11;
  v95 = sub_1E41FE2B4();
  OUTLINED_FUNCTION_0_10();
  v83 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v97 = v15 - v14;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v16 = sub_1E3A60C9C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  if ((v4 & 1) != 0 || (v17 = *&v2[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels]) == 0)
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
    v20 = v19;
  }

  else
  {
    v18 = v17;
    [v18 mutableCopy];
    sub_1E4207264();

    swift_unknownObjectRelease();
    sub_1E3280A90(0, &unk_1ECF24E70);
    v19 = swift_dynamicCast();
    v20 = *&v101[0];
  }

  v21 = (*(*v6 + 1040))(v19);
  v90 = v2;
  v99 = v20;
  v85 = v7;
  v82 = v1;
  if (v21)
  {
    v22 = v21;
    v86 = v16;
    v93 = sub_1E32AE9B0(v21);
    v23 = 0;
    v92 = v22 & 0xFFFFFFFFFFFFFF8;
    v91 = v22 + 32;
    v24 = &qword_1ECF2FB78;
    v25 = &unk_1E42AF4F8;
    v89 = v22;
    while (1)
    {
      if (v23 == v93)
      {

        v7 = v85;
        v16 = v86;
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_113_0();
      if (v26)
      {
        v28 = MEMORY[0x1E6911E60](v23, v22);
        v27 = v28;
      }

      else
      {
        if (v23 >= *(v92 + 16))
        {
          goto LABEL_59;
        }

        v27 = *(v91 + 8 * v23);
      }

      if (__OFADD__(v23++, 1))
      {
        break;
      }

      v30 = (*(*v27 + 872))(v28);
      if (v30)
      {
        v31 = v30;
        v94 = v23;
        v32 = sub_1E32AE9B0(v30);
        v33 = 0;
        v34 = v31 & 0xC000000000000001;
        v35 = v31 & 0xFFFFFFFFFFFFFF8;
        v100 = v31;
        while (1)
        {
          if (v32 == v33)
          {

            v2 = v90;
            v20 = v99;
            v22 = v89;
            v23 = v94;
            goto LABEL_33;
          }

          if (v34)
          {
            v36 = MEMORY[0x1E6911E60](v33, v31);
          }

          else
          {
            if (v33 >= *(v35 + 16))
            {
              goto LABEL_57;
            }

            v36 = *(v31 + 8 * v33 + 32);
          }

          if (__OFADD__(v33, 1))
          {
            break;
          }

          *&v101[0] = v36;
          type metadata accessor for ViewModel();

          __swift_instantiateConcreteTypeFromMangledNameV2(v24);
          if (swift_dynamicCast())
          {
            v37 = v35;
            v38 = v34;
            v39 = v25;
            v40 = v24;
            v41 = *(&v105 + 1);
            v42 = v106;
            __swift_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
            v43 = (*(v42 + 8))(v41, v42);
            if (v43)
            {
              v44 = *(v43 + 16);

              __swift_destroy_boxed_opaque_existential_1(&v104);
              if (v44)
              {
                [v99 addObject_];
              }
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(&v104);
            }

            v24 = v40;
            v25 = v39;
            v34 = v38;
            v35 = v37;
            v31 = v100;
          }

          else
          {

            v106 = 0;
            v104 = 0u;
            v105 = 0u;
            sub_1E325F6F0(&v104, &qword_1ECF2FB80);
          }

          ++v33;
        }

        __break(1u);
LABEL_57:
        __break(1u);
        break;
      }

LABEL_33:
    }

    __break(1u);
LABEL_59:
    __break(1u);
  }

  else
  {
LABEL_36:
    *&v104 = sub_1E3B038A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32FA0);
    sub_1E4205D14();
    *&v2[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController____lazy_storage___foregroundTTLExpirationMap] = v104;

    if ([v20 count] >= 1)
    {
      v45 = v2;
      sub_1E4206784();
      sub_1E3B0D644(&qword_1EE28A478, MEMORY[0x1E6968EB0]);
      while (1)
      {
        sub_1E4207174();
        if (!v109)
        {
          break;
        }

        sub_1E329504C(&v108, v107);
        sub_1E328438C(v107, &v103);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB78);
        if (OUTLINED_FUNCTION_21_4())
        {
          v46 = OUTLINED_FUNCTION_64_14(v101);
          sub_1E3B09C08(v46);
          OUTLINED_FUNCTION_76();

          sub_1E3B0BFB0(v45, v16);
          v48 = v47;
          __swift_destroy_boxed_opaque_existential_1(&v104);

          v16 = v48;
        }

        else
        {
          v102 = 0;
          memset(v101, 0, sizeof(v101));
          sub_1E325F6F0(v101, &qword_1ECF2FB80);
        }

        __swift_destroy_boxed_opaque_existential_1(v107);
      }

      (*(v83 + 8))(v97, v95);

      [v99 copy];
      sub_1E4207264();
      swift_unknownObjectRelease();
      sub_1E3280A90(0, &qword_1ECF24E80);
      v49 = OUTLINED_FUNCTION_21_4();
      v50 = *&v101[0];
      if (!v49)
      {
        v50 = 0;
      }

      v51 = *&v45[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels];
      *&v45[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels] = v50;

      v2 = v90;
    }

    v53 = sub_1E374CEE0(v52);

    if (!v53)
    {
      v87 = v16;
      v54 = sub_1E324FBDC();
      v98 = *(v84 + 16);
      v98(v88, v54, v7);
      v55 = v99;
      v56 = v2;
      v57 = v55;
      v58 = sub_1E41FFC94();
      v59 = sub_1E4206814();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_100();
        *&v104 = OUTLINED_FUNCTION_72_0();
        *v60 = 136446722;
        *(v60 + 4) = OUTLINED_FUNCTION_48_27(&v56[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
        *(v60 + 12) = 2082;
        sub_1E3280A90(0, &qword_1EE23AEF0);
        v96 = v54;
        sub_1E3A60E60();
        v61 = v56;

        v62 = sub_1E4206634();
        v64 = v63;
        v65 = v61;

        v66 = sub_1E3270FC8(v62, v64, &v104);

        *(v60 + 14) = v66;
        *(v60 + 22) = 2048;
        v67 = [v57 count];

        *(v60 + 24) = v67;
        v54 = v96;

        _os_log_impl(&dword_1E323F000, v58, v59, "EVENT_MONITOR::[%{public}s] registering descriptors for collection [%{public}s] for view models: [%ld]", v60, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_65_0();

        v68 = *(v84 + 8);
        v69 = v85;
        v68(v88, v85);
      }

      else
      {

        v65 = v56;
        v68 = *(v84 + 8);
        v68(v88, v7);
        v69 = v7;
      }

      v98(v82, v54, v69);
      v70 = v65;
      v71 = sub_1E41FFC94();
      v72 = sub_1E4206814();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = OUTLINED_FUNCTION_49_0();
        *&v104 = OUTLINED_FUNCTION_72_0();
        *v73 = 136446466;
        v74 = OUTLINED_FUNCTION_48_27(&v70[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_controllerName]);
        OUTLINED_FUNCTION_41_33(v74);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F88);
        v75 = sub_1E4205C74();
        v77 = v76;

        v78 = sub_1E3270FC8(v75, v77, &v104);

        *(v73 + 14) = v78;
        _os_log_impl(&dword_1E323F000, v71, v72, "EVENT_MONITOR::[%{public}s] collection refresh descriptors: [%{public}s]", v73, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_51_2();

        v79 = v82;
        v80 = v85;
      }

      else
      {

        v79 = v82;
        v80 = v69;
      }

      v68(v79, v80);
      v81 = *&v70[OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_registrationHandler];
      if (v81)
      {

        sub_1E34AF604(v81);
        v81(v70, v87, 0);

        sub_1E34AF594(v81);
      }
    }

    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3B0BB08(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (v4 = *(v2 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_eventEligibleViewModels)) == 0)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  }

  else
  {
    v5 = v4;
    [v5 mutableCopy];
    sub_1E4207264();

    swift_unknownObjectRelease();
    sub_1E3280A90(0, &unk_1ECF24E70);
    swift_dynamicCast();
    v6 = v29[0];
  }

  v7 = (*(*a1 + 464))([v6 addObject_]);
  if (v7)
  {
    v8 = v7;
    v27 = v6;
    v34 = MEMORY[0x1E69E7CC0];
    result = sub_1E32AE9B0(v7);
    v10 = result;
    v11 = 0;
    v12 = v8 & 0xC000000000000001;
    v13 = &qword_1ECF2FB78;
    v14 = v8 & 0xFFFFFFFFFFFFFF8;
    v28 = v8;
    while (v10 != v11)
    {
      if (v12)
      {
        result = MEMORY[0x1E6911E60](v11, v8);
        v15 = result;
      }

      else
      {
        if (v11 >= *(v14 + 16))
        {
          goto LABEL_26;
        }

        v15 = *(v8 + 8 * v11 + 32);
      }

      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v32 = v15;
      type metadata accessor for ViewModel();

      __swift_instantiateConcreteTypeFromMangledNameV2(v13);
      if (swift_dynamicCast())
      {
        v16 = v14;
        v17 = v10;
        v18 = v12;
        v19 = v13;
        sub_1E3251BE8(v29, v33);
        v20 = v33[4];
        __swift_project_boxed_opaque_existential_1(v33, v33[3]);
        v21 = OUTLINED_FUNCTION_42_37();
        v23 = v22(v21, v20);
        if (v23 && (v24 = *(v23 + 16), , v24))
        {
          __swift_destroy_boxed_opaque_existential_1(v33);
          sub_1E4207544();
          sub_1E4207584();
          sub_1E4207594();
          result = sub_1E4207554();
        }

        else
        {

          result = __swift_destroy_boxed_opaque_existential_1(v33);
        }

        v13 = v19;
        v12 = v18;
        v10 = v17;
        v14 = v16;
        v8 = v28;
      }

      else
      {

        v31 = 0;
        *v29 = 0u;
        v30 = 0u;
        result = sub_1E325F6F0(v29, &qword_1ECF2FB80);
      }

      ++v11;
    }

    v25 = v34;
    if (sub_1E32AE9B0(v34))
    {
      sub_1E3B0BE68(v25);

      v26 = sub_1E42062A4();

      v6 = v27;
      [v27 addObjectsFromArray_];
    }

    else
    {

      return v27;
    }
  }

  return v6;
}

char *sub_1E3B0BE68(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
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

  v9 = MEMORY[0x1E69E7CC0];
  result = sub_1E37EBF70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v9;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
      }

      type metadata accessor for ViewModel();
      swift_dynamicCast();
      v9 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1E37EBF70((v6 > 1), v7 + 1, 1);
        v3 = v9;
      }

      ++v5;
      *(v3 + 16) = v7 + 1;
      sub_1E329504C(&v8, (v3 + 32 * v7 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E3B0BFB0(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1E4207344();
    sub_1E3280A90(0, &qword_1EE23AEF0);
    sub_1E3A60E60();
    sub_1E4206664();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_1E34AF4DC();
      return;
    }

    while (1)
    {
      sub_1E3B0C60C(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1E42073C4())
      {
        sub_1E3280A90(0, &qword_1EE23AEF0);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

char *sub_1E3B0C198(uint64_t a1, void *a2)
{
  v15 = a2;
  v2 = sub_1E41FE2B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4206784();
  sub_1E3B0D644(&qword_1EE28A478, MEMORY[0x1E6968EB0]);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1E4207174();
    if (!v18)
    {
      break;
    }

    sub_1E329504C(&v17, v16);
    v7 = sub_1E3B089FC(v16);
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1E3740F88(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1E3740F88((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[16 * v11];
    *(v12 + 4) = v7;
    *(v12 + 5) = v9;
  }

  (*(v3 + 8))(v5, v2);

  return v6;
}

uint64_t sub_1E3B0C37C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E3B0D794((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1E3B0C410(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16) + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_documentEventIterable;
  result = OUTLINED_FUNCTION_5_0();
  if (*(v3 + 24))
  {
    sub_1E327F454(v3, v7);
    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 16))(v2, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

unint64_t sub_1E3B0C4B0()
{
  result = qword_1ECF32F68;
  if (!qword_1ECF32F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32F68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UpdateEventMonitorController.MonitoringReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3B0C60C(void *a1, void *a2)
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

      sub_1E3280A90(0, &qword_1EE23AEF0);
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
        v16 = sub_1E3B0CCA0(v7, result + 1);
        if (*(v16 + 24) <= *(v16 + 16))
        {
          sub_1E374D664();
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
    sub_1E3280A90(0, &qword_1EE23AEF0);
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
        sub_1E3B0CF00(v17, v13, isUniquelyReferenced_nonNull_native);
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

void sub_1E3B0C830(unint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = sub_1E3B0CB10(*a1, a2);
  v8 = v6;
  if (!v2)
  {
    if (v7)
    {
      sub_1E32AE9B0(v5);
    }

    else
    {
      v30 = a1;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_51:
        __break(1u);
      }

      else
      {
        while (1)
        {
          v10 = v5 >> 62 ? sub_1E4207384() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 == v10)
          {
            break;
          }

          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1E6911E60](v9, v5);
          }

          else
          {
            if ((v9 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v11 = *(v5 + 8 * v9 + 32);
          }

          v12 = v11;
          v13 = *a2;

          v14 = [v12 descriptor];
          v15 = [v14 type];

          if (*(v13 + 16))
          {
            sub_1E4207B44();
            MEMORY[0x1E69124B0](v15);
            v16 = sub_1E4207BA4();
            v17 = ~(-1 << *(v13 + 32));
            while (1)
            {
              v18 = v16 & v17;
              if (((*(v13 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
              {
                break;
              }

              v16 = v18 + 1;
              if (*(*(v13 + 48) + 8 * v18) == v15)
              {

                goto LABEL_35;
              }
            }
          }

          if (v8 != v9)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1E6911E60](v8, v5);
              v20 = MEMORY[0x1E6911E60](v9, v5);
            }

            else
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                goto LABEL_48;
              }

              v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v8 >= v21)
              {
                goto LABEL_49;
              }

              if (v9 >= v21)
              {
                goto LABEL_50;
              }

              v22 = *(v5 + 32 + 8 * v9);
              v19 = *(v5 + 32 + 8 * v8);
              v20 = v22;
            }

            v23 = v20;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_1E37EFA58(v5);
              v24 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v24) = 0;
            }

            v25 = v5 & 0xFFFFFFFFFFFFFF8;
            v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v23;

            if ((v5 & 0x8000000000000000) != 0 || v24)
            {
              v5 = sub_1E37EFA58(v5);
              v25 = v5 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_41:
                __break(1u);
                return;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v9 >= *(v25 + 16))
            {
              goto LABEL_47;
            }

            v27 = v25 + 8 * v9;
            v28 = *(v27 + 32);
            *(v27 + 32) = v19;

            *v30 = v5;
          }

          v29 = __OFADD__(v8++, 1);
          if (v29)
          {
            goto LABEL_46;
          }

LABEL_35:
          v29 = __OFADD__(v9++, 1);
          if (v29)
          {
            goto LABEL_45;
          }
        }
      }
    }
  }
}

uint64_t sub_1E3B0CB10(unint64_t a1, uint64_t *a2)
{
  result = sub_1E32AE9B0(a1);
  v4 = result;
  v5 = 0;
  while (1)
  {
    if (v5 == v4)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6911E60](v5, a1);
      goto LABEL_6;
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v6 = *(a1 + 32 + 8 * v5);
LABEL_6:
    v7 = v6;
    v8 = *a2;

    v9 = [v7 descriptor];
    v10 = [v9 type];

    if (*(v8 + 16))
    {
      sub_1E4207B44();
      MEMORY[0x1E69124B0](v10);
      v11 = sub_1E4207BA4();
      v12 = ~(-1 << *(v8 + 32));
      while (1)
      {
        v13 = v11 & v12;
        if (((*(v8 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v11 = v13 + 1;
        if (*(*(v8 + 48) + 8 * v13) == v10)
        {

          return v5;
        }
      }
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1E3B0CCA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31510);
    v2 = sub_1E4207454();
    v14 = v2;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        return v2;
      }

      sub_1E3280A90(0, &qword_1EE23AEF0);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1E374D664();
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

unint64_t sub_1E3B0CE7C(uint64_t a1, uint64_t a2)
{
  sub_1E4206F54();
  result = sub_1E4207324();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1E3B0CF00(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E374D664();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1E3B0D1B4();
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

        sub_1E3280A90(0, &qword_1EE23AEF0);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_1E4206F64();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1E3B0D064();
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

id sub_1E3B0D064()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31510);
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

uint64_t sub_1E3B0D1B4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31510);
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

uint64_t sub_1E3B0D3C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FB0);
  sub_1E4207644();

  v7 = *(*(v9 + 56) + 8 * v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32F98);
  sub_1E4207664();
  *v3 = v9;
  return v7;
}

uint64_t sub_1E3B0D4BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_22_0(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return v3;
}

uint64_t sub_1E3B0D508(uint64_t a1, uint64_t a2, uint64_t a3)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FB0);
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

uint64_t sub_1E3B0D644(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3B0D688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1E3280A90(0, &qword_1EE23AFD8);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3B0D794(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1EE23AFD8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E328FCF4(&qword_1EE23B478, &qword_1ECF32FD0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FD0);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_45()
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_48_27@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  return sub_1E3270FC8(v3, v4, (v1 - 192));
}

uint64_t sub_1E3B0D9E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_0();
  sub_1E4200674();
}

uint64_t sub_1E3B0DAA0(uint64_t a1)
{
  v2 = type metadata accessor for SportsPlayByPlayItemViewData();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E3B0E134(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsPlayByPlayItemViewData);
  return sub_1E3B0DB40();
}

uint64_t sub_1E3B0DB40()
{
  OUTLINED_FUNCTION_9_5();
  v2 = type metadata accessor for SportsPlayByPlayItemViewData();
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_75();
  sub_1E3B0E134(v0, v1, v4);

  OUTLINED_FUNCTION_67_0();
  sub_1E4200684();
  OUTLINED_FUNCTION_2_116();
  return sub_1E3B0E438();
}

uint64_t sub_1E3B0DC14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FE0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = OUTLINED_FUNCTION_88_8();
  v7(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FD8);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1E3B0DD1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3B0DD90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3B0DE08()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3B0DE94()
{
  OUTLINED_FUNCTION_11_3();
  v0 = OUTLINED_FUNCTION_13_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3B0DF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FF8);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = OUTLINED_FUNCTION_88_8();
  v7(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FF0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1E3B0E008()
{
  v2 = type metadata accessor for SportsPlayByPlayItemViewData();
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_57_16();
  type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(v4);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_6_99();
  v6 = OUTLINED_FUNCTION_67_0();
  sub_1E3B0E134(v6, v7, v8);
  OUTLINED_FUNCTION_63_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_115();
    sub_1E3B16910(v1, v0, v9);
    v10 = *v0;

    OUTLINED_FUNCTION_2_116();
    sub_1E3B0E438();
  }

  else
  {
    memcpy(__dst, v1, 0x81uLL);
    v10 = __dst[0];

    sub_1E3B0E190(__dst);
  }

  return v10;
}

uint64_t sub_1E3B0E134(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

void sub_1E3B0E1C0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for SportsPlayByPlayItemViewData();
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33000);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_42_1();
  v14 = *(v13 + 56);
  sub_1E3B0E134(v6, v0, type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType);
  sub_1E3B0E134(v4, v0 + v14, type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_99();
    v15 = OUTLINED_FUNCTION_63_0();
    sub_1E3B0E134(v15, v16, v17);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_5_115();
      sub_1E3B16910(v0 + v14, v1, v18);
      v19 = OUTLINED_FUNCTION_74();
      sub_1E4075AB0(v19, v20);
      sub_1E3B0E438();
      OUTLINED_FUNCTION_125();
      sub_1E3B0E438();
LABEL_9:
      sub_1E3B0E438();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_116();
    sub_1E3B0E438();
  }

  else
  {
    OUTLINED_FUNCTION_6_99();
    sub_1E3B0E134(v0, v2, v21);
    memcpy(v22, v2, 0x81uLL);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v23, (v0 + v14), 0x81uLL);
      sub_1E3B0E48C(v22, v23);
      sub_1E3B0E190(v22);
      sub_1E3B0E190(v23);
      goto LABEL_9;
    }

    sub_1E3B0E190(v22);
  }

  sub_1E325F69C(v0, &qword_1ECF33000);
LABEL_10:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B0E438()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1E3B0E48C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_48_0(a1) == *a2 && *(v2 + 8) == *(a2 + 8);
  if (!v4 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 16) == *(a2 + 16) && *(v2 + 24) == *(a2 + 24);
  if (!v5 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(v2 + 32) == *(a2 + 32) && v6 == v7;
    if (!v8 && (sub_1E42079A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = *(v2 + 56);
  v10 = *(a2 + 56);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *(v2 + 48) == *(a2 + 48) && v9 == v10;
    if (!v11 && (sub_1E42079A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = *(v2 + 64) == *(a2 + 64) && *(v2 + 72) == *(a2 + 72);
  if (!v12 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v2 + 88);
  v14 = *(a2 + 88);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_43;
    }

    return 0;
  }

  if (!v14)
  {
    return 0;
  }

  v15 = *(v2 + 80) == *(a2 + 80) && v13 == v14;
  if (!v15 && (sub_1E42079A4() & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  if ((*(v2 + 96) ^ *(a2 + 96)))
  {
    return 0;
  }

  v17 = *(a2 + 112);
  if (*(v2 + 112))
  {
    if (!*(a2 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 104) != *(a2 + 104))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = *(a2 + 128);
  if (*(v2 + 128))
  {
    if ((*(a2 + 128) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 120) != *(a2 + 120))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1E3B0E624()
{
  OUTLINED_FUNCTION_9_5();
  type metadata accessor for SportsPlayByPlayItemViewData();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_6_99();
  sub_1E3B0E134(v0, v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_115();
    v4 = OUTLINED_FUNCTION_63_0();
    sub_1E3B16910(v4, v5, v6);
    MEMORY[0x1E69124B0](1);
    sub_1E3B1696C(&unk_1ECF33008);
    OUTLINED_FUNCTION_66_17();
    sub_1E4205DB4();
    OUTLINED_FUNCTION_2_116();
    return sub_1E3B0E438();
  }

  else
  {
    memcpy(__dst, v0, 0x81uLL);
    MEMORY[0x1E69124B0](0);
    sub_1E3B0EDE8();
    return sub_1E3B0E190(__dst);
  }
}

uint64_t sub_1E3B0E790()
{
  sub_1E4207B44();
  sub_1E3B0E624();
  return sub_1E4207BA4();
}

uint64_t sub_1E3B0E7D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3B0E008();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3B0E800()
{
  sub_1E4207B44();
  sub_1E3B0E624();
  return sub_1E4207BA4();
}

void sub_1E3B0E840()
{
  OUTLINED_FUNCTION_31_1();
  v80 = v0;
  v70 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33010);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v79 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v78 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33018);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v73 = v13;
  OUTLINED_FUNCTION_138();
  v14 = sub_1E42051B4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  v65 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  v23 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = sub_1E4205204();
  if (v31)
  {
    v76 = v31;
    v77 = v30;
  }

  else
  {
    sub_1E41FE614();
    v32 = sub_1E41FE5E4();
    v76 = v33;
    v77 = v32;
    (*(v25 + 8))(v29, v23);
  }

  v34 = v3;
  sub_1E42051C4();
  v35 = sub_1E4205104();
  v37 = v36;
  v38 = *(v16 + 8);
  v38(v22, v14);
  v39 = v79;
  if (v37)
  {
    v75 = v35;
  }

  else
  {
    v75 = sub_1E42051F4();
    v37 = v40;
  }

  v74 = v37;
  sub_1E42051C4();
  v41 = sub_1E42051A4();
  v71 = v42;
  v72 = v41;
  v43 = OUTLINED_FUNCTION_123_0();
  (v38)(v43);
  sub_1E42051C4();
  v44 = sub_1E42050C4();
  v68 = v45;
  v69 = v44;
  v46 = OUTLINED_FUNCTION_123_0();
  (v38)(v46);
  sub_1E407631C();
  v66 = v48;
  v67 = v47;

  v49 = v65;
  sub_1E42051C4();
  v50 = v73;
  sub_1E42050D4();
  v38(v49, v14);
  v51 = sub_1E42050F4();
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
  {
    sub_1E325F69C(v50, &qword_1ECF33018);
    v52 = 0;
    v53 = 0;
  }

  else
  {
    v52 = sub_1E42050E4();
    v53 = v54;
    (*(*(v51 - 8) + 8))(v50, v51);
  }

  v55 = v78;
  sub_1E3DF858C();
  v56 = sub_1E42059B4();
  if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
  {
    sub_1E325F69C(v55, &qword_1ECF33010);
    v57 = 0;
    v58 = 1;
  }

  else
  {
    v57 = MEMORY[0x1E69102F0]();
    v58 = v59;
    (*(*(v56 - 8) + 8))(v55, v56);
  }

  v81 = v58 & 1;
  sub_1E3DF858C();
  if (__swift_getEnumTagSinglePayload(v39, 1, v56) == 1)
  {

    sub_1E325F69C(v39, &qword_1ECF33010);
    v60 = 0;
    v61 = 1;
  }

  else
  {
    v60 = sub_1E42059A4();
    v61 = v62;

    (*(*(v56 - 8) + 8))(v39, v56);
  }

  v63 = v80 & 1;
  v64 = v81;
  *v5 = v77;
  *(v5 + 8) = v76;
  *(v5 + 16) = v75;
  *(v5 + 24) = v74;
  *(v5 + 32) = v72;
  *(v5 + 40) = v71;
  *(v5 + 48) = v69;
  *(v5 + 56) = v68;
  *(v5 + 64) = v67;
  *(v5 + 72) = v66;
  *(v5 + 80) = v52;
  *(v5 + 88) = v53;
  *(v5 + 96) = v63;
  *(v5 + 104) = v57;
  *(v5 + 112) = v64;
  *(v5 + 120) = v60;
  *(v5 + 128) = v61 & 1;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3B0ED94()
{
  if (*(v0 + 112) & 1) != 0 || (*(v0 + 128))
  {
    return OUTLINED_FUNCTION_165();
  }

  type metadata accessor for BaseballVoiceOverUtility();
  v2 = OUTLINED_FUNCTION_32_0();
  return sub_1E3BE8DA8(v2, v3);
}

uint64_t sub_1E3B0EDE8()
{
  sub_1E4206014();
  sub_1E4206014();
  if (*(v0 + 40))
  {
    sub_1E4207B64();
    OUTLINED_FUNCTION_63_0();
    sub_1E4206014();
  }

  else
  {
    sub_1E4207B64();
  }

  if (*(v0 + 56))
  {
    sub_1E4207B64();
    OUTLINED_FUNCTION_63_0();
    sub_1E4206014();
  }

  else
  {
    sub_1E4207B64();
  }

  sub_1E4206014();
  if (*(v0 + 88))
  {
    sub_1E4207B64();
    OUTLINED_FUNCTION_63_0();
    sub_1E4206014();
  }

  else
  {
    sub_1E4207B64();
  }

  sub_1E4207B64();
  if (*(v0 + 112) == 1)
  {
    sub_1E4207B64();
  }

  else
  {
    v1 = *(v0 + 104);
    sub_1E4207B64();
    MEMORY[0x1E69124B0](v1);
  }

  if (*(v0 + 128) == 1)
  {
    return sub_1E4207B64();
  }

  v3 = *(v0 + 120);
  sub_1E4207B64();
  return MEMORY[0x1E69124B0](v3);
}

uint64_t sub_1E3B0EF1C()
{
  sub_1E4207B44();
  sub_1E3B0EDE8();
  return sub_1E4207BA4();
}

uint64_t sub_1E3B0EF64()
{
  sub_1E4207B44();
  sub_1E3B0EDE8();
  return sub_1E4207BA4();
}

void sub_1E3B0F020()
{
  OUTLINED_FUNCTION_31_1();
  v52 = v1;
  v65 = v4;
  v58 = v5;
  v51 = v6;
  v59 = v7;
  v9 = v8;
  type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);
  OUTLINED_FUNCTION_0_10();
  v64 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_57_16();
  v12 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  type metadata accessor for SportsPlayByPlayItemViewData();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34_1();
  v18 = v9;
  v19 = sub_1E3FDF644();
  if (!v19)
  {

    type metadata accessor for SportsPlayGroupItemViewData(0);
    swift_deallocPartialClassInstance();
    v48 = OUTLINED_FUNCTION_97_8();
LABEL_32:
    sub_1E325F69C(v48, &qword_1ECF33020);
    (*(v14 + 8))(v0, v12);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  *(v52 + 16) = v18;
  v50 = v14;
  v57 = v12;
  v55 = *(v14 + 16);
  v55(v2, v59, v12);
  sub_1E3743538(v58, v68, &qword_1ECF33020);
  v56 = v65;

  v20 = v19;

  sub_1E3B050E8();
  v49 = v20;
  v63 = v2;
  sub_1E40719DC();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_16_75();
  v21 = OUTLINED_FUNCTION_17_11();
  sub_1E3B0E134(v21, v22, v23);
  sub_1E4200634();
  OUTLINED_FUNCTION_2_116();
  sub_1E3B0E438();
  swift_endAccess();
  sub_1E3FDF8C0();
  v25 = v24;
  v26 = sub_1E32AE9B0(v24);
  if (!v26)
  {

    v28 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v0 = OBJC_IVAR____TtC8VideosUI27SportsPlayGroupItemViewData__childPlays;
    OUTLINED_FUNCTION_11_3();
    v67 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FE8);
    sub_1E4200634();
    swift_endAccess();

    *(v52 + OBJC_IVAR____TtC8VideosUI27SportsPlayGroupItemViewData_playModelIndex) = v51;
    v48 = OUTLINED_FUNCTION_97_8();
    v12 = v57;
    v14 = v50;
    goto LABEL_32;
  }

  v27 = v26;
  v67 = MEMORY[0x1E69E7CC0];
  sub_1E3B165E4(0, v26 & ~(v26 >> 63), 0);
  if (v27 < 0)
  {
    goto LABEL_39;
  }

  v54 = v3;
  v28 = v67;
  v29 = sub_1E32AE9B0(v25);
  v30 = 0;
  v61 = v25 & 0xC000000000000001;
  v53 = v25 & 0xFFFFFFFFFFFFFF8;
  v62 = v29 & ~(v29 >> 63);
  v60 = v25;
  while (v62 != v30)
  {
    v31 = v27;
    if (v61)
    {
      v32 = MEMORY[0x1E6911E60](v30, v25);
      v33 = v63;
    }

    else
    {
      v33 = v63;
      if (v30 >= *(v53 + 16))
      {
        goto LABEL_35;
      }

      v32 = *(v25 + 8 * v30 + 32);
    }

    if (sub_1E3FDF778())
    {
      v55(v33, v59, v57);
      sub_1E3743538(v58, &v66, &qword_1ECF33020);

      v34 = v56;
      v35 = v32;
      sub_1E40719DC();
      OUTLINED_FUNCTION_5_115();
      sub_1E3B16910(v54, v0, v36);
      goto LABEL_23;
    }

    sub_1E3FDF8C0();
    v38 = v37;
    if (v37 >> 62)
    {
      v39 = sub_1E4207384();
      if (v39)
      {
LABEL_14:
        v40 = __OFSUB__(v39, 1);
        v41 = v39 - 1;
        if (v40)
        {
          goto LABEL_36;
        }

        if ((v38 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1E6911E60](v41, v38);
        }

        else
        {
          if ((v41 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          if (v41 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v42 = *(v38 + 8 * v41 + 32);
        }

        v43 = v42;

        sub_1E4205234();
        v44 = v32;
        sub_1E4206F64();

        goto LABEL_22;
      }
    }

    else
    {
      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_14;
      }
    }

LABEL_22:

    v45 = v32;
    sub_1E3B0E840();
    memcpy(v0, v68, 0x81uLL);
LABEL_23:
    swift_storeEnumTagMultiPayload();

    v67 = v28;
    v47 = *(v28 + 16);
    v46 = *(v28 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_1E3B165E4(v46 > 1, v47 + 1, 1);
      v28 = v67;
    }

    *(v28 + 16) = v47 + 1;
    sub_1E3B16910(v0, v28 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v47, type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType);
    v25 = v60;
    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_34;
    }

    ++v30;
    v27 = v31;
    if (v31 == v30)
    {

      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1E3B0F794()
{

  v1 = OBJC_IVAR____TtC8VideosUI27SportsPlayGroupItemViewData__mainItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FD8);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC8VideosUI27SportsPlayGroupItemViewData__childPlays;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FF0);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_1E3B0F84C()
{
  sub_1E3B0F794();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3B0F8A4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SportsPlayGroupItemViewData(0);
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t sub_1E3B0F8E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SportsPlayGroupItemViewData(0);
  result = sub_1E42074D4();
  *a1 = result;
  return result;
}

void sub_1E3B0F928()
{
  OUTLINED_FUNCTION_93();
  v34 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33030) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33038);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33040);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_35_3();
  *v7 = sub_1E4201D44();
  *(v7 + 1) = 0;
  v7[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33048);
  sub_1E3B0FCB8();
  v10 = sub_1E4203E64();
  OUTLINED_FUNCTION_69_14();
  v33 = v0;
  v12 = (v0 + v11);
  v14 = v12[1];
  v15 = *(v12 + 16);
  v36 = *v12;
  v13 = v36;
  v37 = v14;
  v38 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  MEMORY[0x1E690E3F0](&v35);
  v17 = v35;
  v18 = &v7[*(v4 + 44)];
  *v18 = v10;
  v18[8] = v17;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  MEMORY[0x1E690E3F0](&v35, v16);
  v19 = v35;
  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146();
  }

  v20 = 28;
  if (v19)
  {
    v20 = 27;
  }

  v21 = sub_1E38F08C4(_MergedGlobals_202[v20 + 3]);
  v22 = sub_1E4202734();
  sub_1E3741EA0(v7, v2, &qword_1ECF33030);
  v23 = v2 + *(v31 + 36);
  *v23 = v21;
  *(v23 + 8) = v22;
  if (_MergedGlobals_202[0] != -1)
  {
    OUTLINED_FUNCTION_0_146();
  }

  v24 = qword_1EE28BD80;
  v25 = (v1 + *(v32 + 36));
  v26 = *(sub_1E4201534() + 20);
  v27 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v28 + 104))(v25 + v26, v27);
  *v25 = v24;
  v25[1] = v24;
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
  v29 = sub_1E3741EA0(v2, v1, &qword_1ECF33038);
  MEMORY[0x1EEE9AC00](v29);
  *(&v31 - 2) = v33;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33050);
  sub_1E3B169F0();
  sub_1E3B16C44();
  sub_1E3E35D1C(v30, v34);
  sub_1E325F69C(v1, &qword_1ECF33040);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3B0FCB8()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v118 = v4;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v110 = v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v109 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_106_10();
  sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v105 = v11;
  v106 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v104 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v99 = v14;
  v15 = OUTLINED_FUNCTION_138();
  v16 = type metadata accessor for SportsPlayGroupCellDivider(v15);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v23 = v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v103 = v25;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF331E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v107 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v100 = &v93 - v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25_3();
  v114 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332D0);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_5();
  v116 = v34;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25_3();
  v113 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332D8);
  v38 = OUTLINED_FUNCTION_17_2(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_5();
  v115 = v39;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_34_1();
  *v1 = sub_1E4203DA4();
  v1[1] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332E0);
  sub_1E3B10514(v3, v1 + *(v42 + 44));
  v43 = type metadata accessor for SportsPlayGroupCell(0);
  v44 = v3 + *(v43 + 28);
  v45 = *v44;
  v46 = *(v44 + 8);
  LODWORD(v44) = *(v44 + 16);
  v97 = v45;
  v121[0] = v45;
  v121[1] = v46;
  v112 = v44;
  LOBYTE(v121[2]) = v44;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  MEMORY[0x1E690E3F0](v120);
  if (LOBYTE(v120[0]) == 1)
  {
    v96 = v46;
    if (_MergedGlobals_202 != -1)
    {
      OUTLINED_FUNCTION_0_146();
    }

    memcpy(v121, &unk_1EE28BC80, sizeof(v121));
    sub_1E3D4DBE8();
    v48 = v47;
    *v20 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
    v49 = swift_storeEnumTagMultiPayload();
    *(v20 + *(v16 + 20)) = v48;
    v50 = *(v43 + 20);
    v93 = v3;
    v51 = (**(v3 + v50 + 8) + 160);
    v94 = *v51;
    v95 = v51;
    v52 = *((v94)(v49) + 16);

    if (v52)
    {
      v53 = 1.0;
    }

    else
    {
      v53 = 0.0;
    }

    v54 = OUTLINED_FUNCTION_123_0();
    sub_1E3B16910(v54, v55, v56);
    v57 = v99;
    *(v23 + *(v98 + 36)) = v53;
    sub_1E4201AF4();
    v58 = v105;
    v59 = v106;
    (*(v105 + 16))(v104, v57, v106);
    OUTLINED_FUNCTION_1_142();
    sub_1E3B1696C(v60);
    OUTLINED_FUNCTION_156_1();
    v61 = sub_1E4200E14();
    (*(v58 + 8))(v57, v59);
    v62 = v103;
    sub_1E3741EA0(v23, v103, &qword_1ECF331D0);
    *(v62 + *(v101 + 36)) = v61;
    v63 = sub_1E4203E64();
    OUTLINED_FUNCTION_81_9();
    LOBYTE(v61) = v119;
    v64 = v62;
    v65 = v100;
    sub_1E3741EA0(v64, v100, &qword_1ECF331D8);
    v66 = v65 + *(v102 + 36);
    *v66 = v63;
    *(v66 + 8) = v61;
    v67 = v114;
    sub_1E3741EA0(v65, v114, &qword_1ECF331E0);
    *v0 = sub_1E4201D44();
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332F0);
    sub_1E3B10E50(v93);
    v68 = sub_1E4203E64();
    v69 = v94();
    v70 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332F8) + 36));
    *v70 = v68;
    v70[1] = v69;
    v71 = sub_1E4203E64();
    OUTLINED_FUNCTION_81_9();
    v72 = v119;
    v73 = v0 + *(v108 + 36);
    *v73 = v71;
    *(v73 + 8) = v72;
    v74 = v67;
    v75 = v107;
    sub_1E3743538(v74, v107, &qword_1ECF331E0);
    v76 = v109;
    OUTLINED_FUNCTION_113_1(v0, v109);
    v77 = v110;
    sub_1E3743538(v75, v110, &qword_1ECF331E0);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33300);
    OUTLINED_FUNCTION_113_1(v76, v77 + *(v78 + 48));
    v79 = OUTLINED_FUNCTION_67_0();
    sub_1E325F69C(v79, v80);
    sub_1E325F69C(v114, &qword_1ECF331E0);
    v81 = OUTLINED_FUNCTION_21_42();
    sub_1E325F69C(v81, v82);
    sub_1E325F69C(v75, &qword_1ECF331E0);
    v83 = v113;
    sub_1E3741EA0(v77, v113, &qword_1ECF332C0);
    v84 = 0;
  }

  else
  {
    v84 = 1;
    v83 = v113;
  }

  __swift_storeEnumTagSinglePayload(v83, v84, 1, v117);
  v85 = v115;
  OUTLINED_FUNCTION_113_1(v1, v115);
  v86 = v116;
  sub_1E3743538(v83, v116, &qword_1ECF332D0);
  v87 = v118;
  OUTLINED_FUNCTION_113_1(v85, v118);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF332E8);
  sub_1E3743538(v86, v87 + *(v88 + 48), &qword_1ECF332D0);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v89, v90);
  sub_1E325F69C(v1, &qword_1ECF332D8);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v91, v92);
  sub_1E325F69C(v85, &qword_1ECF332D8);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3B10514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v61 = v5;
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_3();
  v60 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33398);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v50 = v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v55 = v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v57 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333B0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v59 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v58 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_26_2();
  v21 = type metadata accessor for SportsPlayByPlayItemViewData();
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  type metadata accessor for PlayCell(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333B8);
  OUTLINED_FUNCTION_0_10();
  v53 = v25;
  v54 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v52 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_77_0();
  v28 = *(a1 + *(type metadata accessor for SportsPlayGroupCell(0) + 20) + 8);
  (*(*v28 + 112))();
  OUTLINED_FUNCTION_37_35();
  v48 = v30;
  v49 = v29;
  v68[0] = v29;
  v68[1] = v30;
  v47 = v31;
  LOBYTE(v68[2]) = v31;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  v32 = sub_1E4203AB4();
  sub_1E41C58F8(v32);
  OUTLINED_FUNCTION_98_7();
  sub_1E41AE768();
  sub_1E3B1696C(&unk_1ECF33368);
  View.accessibilityIdentifier(key:location:)();
  sub_1E3B0E438();
  *v50 = sub_1E4201D44();
  *(v50 + 8) = 0;
  *(v50 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333C0);
  sub_1E3B10C30();
  LOBYTE(a1) = sub_1E4202754();
  v33 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != a1)
  {
    v33 = sub_1E4202774();
  }

  if (_MergedGlobals_202 != -1)
  {
    OUTLINED_FUNCTION_0_146();
  }

  memcpy(v68, &unk_1EE28BC80, sizeof(v68));
  sub_1E3D4D988();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v50, v55, &qword_1ECF33398);
  v34 = (v55 + *(v51 + 36));
  *v34 = v33;
  OUTLINED_FUNCTION_11_4(v34);
  v35 = *((*(*v28 + 160))() + 16);

  if (v35)
  {
    v65 = v49;
    v66 = v48;
    v67 = v47;
    MEMORY[0x1E690E3F0](&v64, v46);
    if (v64)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = 1.0;
    }
  }

  else
  {
    v36 = 0.0;
  }

  sub_1E3741EA0(v55, v57, &qword_1ECF333A0);
  *(v57 + *(v56 + 36)) = v36;
  sub_1E4201C94();
  sub_1E3B18474();
  sub_1E4203294();
  (*(v61 + 8))(v60, v62);
  sub_1E325F69C(v57, &qword_1ECF333A8);
  v37 = *(v53 + 16);
  v37(v52, v2, v54);
  sub_1E3743538(v58, v59, &qword_1ECF333B0);
  v37(a2, v52, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333E0);
  v38 = OUTLINED_FUNCTION_76_7();
  sub_1E3743538(v38, v39, &qword_1ECF333B0);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v40, v41);
  v42 = *(v53 + 8);
  v42(v2, v54);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F69C(v43, v44);
  return (v42)(v52, v54);
}

uint64_t sub_1E3B10C30()
{
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for Chevron(v2);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  type metadata accessor for SportsPlayGroupCell(0);
  OUTLINED_FUNCTION_20_10();
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  MEMORY[0x1E690E3F0]((&v22 + 7), v15);
  v16 = HIBYTE(v22);
  *v1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428);
  OUTLINED_FUNCTION_95_6();
  *(v1 + *(v4 + 28)) = (v16 & 1) == 0;
  v17 = OUTLINED_FUNCTION_171_0();
  sub_1E3B16910(v17, v18, v19);
  sub_1E3B0E134(v11, v7, type metadata accessor for Chevron);
  *v0 = 0;
  *(v0 + 8) = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF333E8);
  sub_1E3B0E134(v7, v0 + *(v20 + 48), type metadata accessor for Chevron);
  sub_1E3B0E438();
  OUTLINED_FUNCTION_13_8();
  return sub_1E3B0E438();
}

uint64_t sub_1E3B10DE8@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8);
  swift_storeEnumTagMultiPayload();
  result = OUTLINED_FUNCTION_92_6();
  *(a1 + v5) = a2;
  return result;
}

uint64_t sub_1E3B10E50(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for SportsPlayGroupCell(v2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v16[1] = (*(**(a1 + *(v7 + 28) + 8) + 160))(v6);
  v8 = OUTLINED_FUNCTION_58_1();
  sub_1E3B0E134(v8, v9, v10);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1E3B16910(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SportsPlayGroupCell);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33308);
  OUTLINED_FUNCTION_55_0();
  sub_1E37AE398(v13);
  sub_1E3B180EC();
  OUTLINED_FUNCTION_44_34();
  sub_1E3B1696C(v14);
  return sub_1E4203B44();
}

void sub_1E3B1105C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_5();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  OUTLINED_FUNCTION_17_2(v32);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v35 = OUTLINED_FUNCTION_20(v34);
  v36 = type metadata accessor for PlayCell(v35);
  v37 = OUTLINED_FUNCTION_17_2(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v38);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33360);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v40);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33348);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33378);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v44);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33340);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_5();
  v137 = v46;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_20(v48);
  v49 = type metadata accessor for SportsPlayByPlayItemViewData();
  v50 = OUTLINED_FUNCTION_17_2(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_5();
  v131 = v51;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33380);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v55);
  v149 = sub_1E4201B04();
  OUTLINED_FUNCTION_0_10();
  v144 = v56;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v58);
  v146 = sub_1E4201084();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v60);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33388);
  OUTLINED_FUNCTION_0_10();
  v147 = v61;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_5();
  v145 = v63;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_25_3();
  v66 = OUTLINED_FUNCTION_20(v65);
  v130 = type metadata accessor for SportsPlayGroupChildView(v66);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33328);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_44();
  v70 = OUTLINED_FUNCTION_20(v69);
  type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(v70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5();
  v72 = OUTLINED_FUNCTION_57_16();
  v73 = *(v31 + *(type metadata accessor for SportsPlayGroupCell(v72) + 20) + 8);
  (*(*v73 + 160))();
  v74 = OUTLINED_FUNCTION_67_0();
  sub_1E3935390(v74, v75);

  OUTLINED_FUNCTION_6_99();
  v76 = OUTLINED_FUNCTION_13_8();
  sub_1E3B0E134(v76, v77, v78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_115();
    sub_1E3B16910(v26, v142, v79);
    OUTLINED_FUNCTION_16_75();
    sub_1E3B0E134(v142, v131, v80);
    OUTLINED_FUNCTION_37_35();
    v154[0] = v81;
    v154[1] = v82;
    LOBYTE(v154[2]) = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
    v84 = sub_1E4203AB4();
    sub_1E41C58F8(v84);
    sub_1E41AE768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BD0;
    v86 = sub_1E4202744();
    *(inited + 32) = v86;
    *(inited + 33) = sub_1E4202764();
    v87 = sub_1E4202784();
    *(inited + 34) = v87;
    v88 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v86)
    {
      v88 = sub_1E4202774();
    }

    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_110_6();
    if (!v89)
    {
      v88 = sub_1E4202774();
    }

    sub_1E4202774();
    if (sub_1E4202774() != v87)
    {
      v88 = sub_1E4202774();
    }

    if (_MergedGlobals_202 != -1)
    {
      OUTLINED_FUNCTION_0_146();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();
    v90 = OUTLINED_FUNCTION_74();
    sub_1E3B16910(v90, v91, v92);
    v93 = (v134 + *(v133 + 36));
    *v93 = v88;
    OUTLINED_FUNCTION_15_3(v93);
    v94 = sub_1E4202734();
    v95 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v94)
    {
      v95 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3741EA0(v134, v135, &qword_1ECF33360);
    v96 = (v135 + *(v136 + 36));
    *v96 = v95;
    OUTLINED_FUNCTION_11_4(v96);
    OUTLINED_FUNCTION_55_0();
    sub_1E3B16EA4(v97);
    View.accessibilityIdentifier(key:location:)();
    OUTLINED_FUNCTION_55_0();
    sub_1E325F69C(v98, v99);
    OUTLINED_FUNCTION_111_3();
    sub_1E4201AF4();
    OUTLINED_FUNCTION_41_34();
    v101 = sub_1E3B1696C(v100);
    OUTLINED_FUNCTION_1_142();
    sub_1E3B1696C(v102);
    sub_1E4200B04();
    (*(v144 + 8))(v143, v149);
    v103 = OUTLINED_FUNCTION_85_8();
    v104(v103);
    (*(v147 + 16))(v145, v139, v148);
    v154[0] = v146;
    v154[1] = v149;
    v154[2] = v101;
    OUTLINED_FUNCTION_40_37(&a21);
    swift_getOpaqueTypeConformance2();
    v105 = sub_1E4200E14();
    v106 = OUTLINED_FUNCTION_21_42();
    v107(v106);
    v108 = OUTLINED_FUNCTION_58_1();
    v109(v108);
    *(v137 + *(v141 + 36)) = v105;
    OUTLINED_FUNCTION_12_12();
    sub_1E3741EA0(v110, v111, v112);
    sub_1E3743538(v138, v140, &qword_1ECF33340);
    swift_storeEnumTagMultiPayload();
    sub_1E3B18178();
    sub_1E3B18290();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v113, v114);
    OUTLINED_FUNCTION_2_116();
    sub_1E3B0E438();
  }

  else
  {
    memcpy(v154, v26, 0x81uLL);
    OUTLINED_FUNCTION_37_35();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
    sub_1E4203AB4();
    *v27 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428);
    swift_storeEnumTagMultiPayload();
    *(v27 + v130[5]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
    swift_storeEnumTagMultiPayload();
    memcpy(v27 + v130[6], v154, 0x81uLL);
    v115 = v27 + v130[7];
    *v115 = v151;
    *(v115 + 1) = v152;
    v115[16] = v153;
    sub_1E3B1696C(&unk_1ECF33330);
    View.accessibilityIdentifier(key:location:)();
    sub_1E3B0E438();
    OUTLINED_FUNCTION_111_3();
    sub_1E4201AF4();
    OUTLINED_FUNCTION_41_34();
    sub_1E3B1696C(v116);
    OUTLINED_FUNCTION_1_142();
    sub_1E3B1696C(v117);
    sub_1E4200B04();
    v118 = OUTLINED_FUNCTION_171_0();
    v119(v118);
    v120 = OUTLINED_FUNCTION_85_8();
    v121(v120);
    v122 = OUTLINED_FUNCTION_17_11();
    v123(v122);
    OUTLINED_FUNCTION_40_37(&a14);
    swift_getOpaqueTypeConformance2();
    v124 = sub_1E4200E14();
    (*(v147 + 8))(v139, v148);
    *(v132 + *(v150 + 36)) = v124;
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v125, v126, v127);
    swift_storeEnumTagMultiPayload();
    sub_1E3B18178();
    sub_1E3B18290();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v128, v129);
  }

  OUTLINED_FUNCTION_20_0();
}