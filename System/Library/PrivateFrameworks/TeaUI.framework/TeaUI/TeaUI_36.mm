void sub_1D8136654()
{
  v1 = [v0 view];
  if (v1)
  {
    v7 = v1;
    type metadata accessor for GutterRootView();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *&v0[qword_1EDBB0C68];
      v4 = *(v2 + OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_contentScrollView);
      *(v2 + OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_contentScrollView) = v3;
      v5 = v3;

      v6 = v4;
    }

    else
    {
      v6 = v7;
    }
  }
}

void *sub_1D8136704()
{
  v1 = *(v0 + qword_1EDBB0C68);
  v2 = v1;
  return v1;
}

void sub_1D8136734(void *a1)
{
  v2 = *(v1 + qword_1EDBB0C68);
  *(v1 + qword_1EDBB0C68) = a1;
  v3 = a1;

  sub_1D8136654();
}

id GutterViewController.init(childViewController:childScrollView:gutters:backgroundColor:)(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = *(a3 + 8);
  v4[qword_1EDBB0C30] = 1;
  v10 = qword_1EDBB0C50;
  v11 = objc_allocWithZone(type metadata accessor for GutterView());
  v12 = OUTLINED_FUNCTION_8_59();
  *&v4[v10] = [v13 v14];
  *&v4[qword_1EDBB0C60] = 0;
  *&v4[qword_1EDBB0C68] = 0;
  v15 = qword_1EDBB0C48;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for GutterViewScrollViewObserver()) init];
  *&v4[qword_1EDBB0C40] = MEMORY[0x1E69E7CC0];
  *&v4[qword_1EDBB0C58] = a1;
  *&v4[qword_1EDBB0C70] = a2;
  v16 = &v4[qword_1EDBB0C28];
  *v16 = v8;
  v16[8] = v9;
  *&v4[qword_1EDBB0C38] = a4;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for GutterViewController();
  v17 = a1;

  v18 = a4;
  v19 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  v20 = v17;
  v21 = v19;
  [v21 addChildViewController_];
  [v20 didMoveToParentViewController_];

  return v21;
}

id GutterViewController.__allocating_init(childViewController:childScrollView:gutters:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v8 = *a3;
  LOBYTE(v9) = v5;
  v6 = [objc_opt_self() systemBackgroundColor];
  return GutterViewController.__allocating_init(childViewController:childScrollView:gutters:backgroundColor:)(a1, a2, &v8, v6);
}

id GutterViewController.__allocating_init(childViewController:childScrollView:gutters:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D818EE34();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *a4;
  v10 = *(a4 + 8);
  OUTLINED_FUNCTION_0_32();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  sub_1D8136C68();
  sub_1D813913C(0, &qword_1EDBB33D8, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D8136CC0();

  sub_1D8192004();
  sub_1D813913C(0, &qword_1ECA117C0, sub_1D7E2E7F0, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  v12 = sub_1D818F864();
  v15 = v9;
  v16 = v10;
  v13 = GutterViewController.__allocating_init(childViewController:childScrollView:gutters:)(a1, v12, &v15);

  return v13;
}

uint64_t sub_1D8136C38@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t sub_1D8136C68()
{
  result = qword_1EDBBC548;
  if (!qword_1EDBBC548)
  {
    sub_1D818EE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC548);
  }

  return result;
}

unint64_t sub_1D8136CC0()
{
  result = qword_1EDBB33D0;
  if (!qword_1EDBB33D0)
  {
    sub_1D813913C(255, &qword_1EDBB33D8, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB33D0);
  }

  return result;
}

id GutterViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GutterViewController.init(coder:)()
{
  *(v0 + qword_1EDBB0C30) = 1;
  v1 = qword_1EDBB0C50;
  v2 = objc_allocWithZone(type metadata accessor for GutterView());
  v3 = OUTLINED_FUNCTION_8_59();
  *(v0 + v1) = [v4 v5];
  *(v0 + qword_1EDBB0C60) = 0;
  *(v0 + qword_1EDBB0C68) = 0;
  v6 = qword_1EDBB0C48;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for GutterViewScrollViewObserver()) init];
  *(v0 + qword_1EDBB0C40) = MEMORY[0x1E69E7CC0];
  sub_1D81923A4();
  __break(1u);
}

void sub_1D8136E9C()
{
  v1 = *&v0[qword_1EDBB0C50];
  v2 = objc_allocWithZone(type metadata accessor for GutterRootView());
  v3 = sub_1D8138BE4(v1);
  [v0 setView_];
}

void sub_1D8136F40(void *a1)
{
  v1 = a1;
  sub_1D8136E9C();
}

id sub_1D8136F88()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v12.receiver = v0;
  v12.super_class = type metadata accessor for GutterViewController();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  v3 = *&v0[qword_1EDBB0C50];
  v4 = OUTLINED_FUNCTION_15_48([v3 setBackgroundColor_], sel_setShowsVerticalScrollIndicator_);
  OUTLINED_FUNCTION_15_48(v4, sel_setShowsHorizontalScrollIndicator_);
  OUTLINED_FUNCTION_15_48([v3 _setIndicatorInsetAdjustmentBehavior_], sel_setAutomaticallyAdjustsScrollIndicatorInsets_);
  [v3 setContentInsetAdjustmentBehavior_];
  result = [v0 view];
  if (result)
  {
    v6 = result;
    [result addSubview_];

    result = [v1 view];
    if (result)
    {
      v7 = result;
      v8 = sub_1D8136590();
      [v7 addSubview_];

      [v3 _addScrollViewScrollObserver_];
      sub_1D818F844();
      sub_1D81371AC(v11);

      OUTLINED_FUNCTION_0_8();
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_0_32();
      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      *(v10 + 24) = v9;

      sub_1D808E878(sub_1D8138C50, v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D81371AC(void *a1)
{
  v2 = v1;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = sub_1D8136704();
  if (v5)
  {
    v6 = v5;
    [v5 _removeScrollViewScrollObserver_];
  }

  v7 = a1;
  sub_1D8136734(a1);
  v8 = sub_1D8136704();
  if (v8)
  {
    v9 = v8;
    [v8 _addScrollViewScrollObserver_];
  }

  [v7 setShowsVerticalScrollIndicator_];
  v10 = [v2 view];
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    OUTLINED_FUNCTION_9_0();

    v26.origin.x = OUTLINED_FUNCTION_8_0();
    CGRectGetWidth(v26);
    v12 = sub_1D8136590();
    [v12 frame];
    OUTLINED_FUNCTION_0_99();

    v27.origin.x = OUTLINED_FUNCTION_5_13();
    CGRectGetMaxX(v27);
    v13 = OUTLINED_FUNCTION_8_59();
    [v7 v14];
    type metadata accessor for GutterViewContentView();
    for (i = v7; ; i = v17)
    {
      v16 = i;
      if (swift_dynamicCastClass())
      {

        goto LABEL_12;
      }

      OUTLINED_FUNCTION_15_48(0, sel_setClipsToBounds_);
      v17 = [v16 superview];

      if (!v17)
      {
        break;
      }
    }

    v16 = 0;
LABEL_12:
    sub_1D7E49240();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D81A5090;
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_8();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_32();
    v20 = swift_allocObject();
    v21 = *(v4 + 80);
    *(v20 + 16) = v21;
    *(v20 + 24) = v19;
    v22 = sub_1D818E594();

    *(v18 + 32) = v22;
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_8();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_0_32();
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    *(v24 + 24) = v23;
    v25 = sub_1D818E594();

    *(v18 + 40) = v25;
    sub_1D813678C(v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D8137514(char *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1D8136704();
    if (!v4)
    {
LABEL_7:

      return;
    }

    v5 = v4;
    v6 = *&v3[qword_1EDBB0C50];
    if (v6 != a1)
    {
      if (v4 == a1)
      {
        v7 = v6;
        [v5 contentOffset];
        [v7 setContentOffset_];

        v3 = v7;
      }

      v3 = v5;
      goto LABEL_7;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1D8139110;
    *(v9 + 24) = v8;
    aBlock[4] = sub_1D7E74D6C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7E74D74;
    aBlock[3] = &block_descriptor_79;
    v10 = _Block_copy(aBlock);
    v11 = v5;
    v12 = v3;

    [v11 withScrollIndicatorsShownForContentOffsetChanges_];

    _Block_release(v10);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }
  }
}

id sub_1D813770C(void *a1, uint64_t a2)
{
  [*(a2 + qword_1EDBB0C50) contentOffset];

  return [a1 setContentOffset_];
}

void sub_1D8137760(void *a1)
{
  v1 = a1;
  sub_1D8136F88();
}

void sub_1D81377A8()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = type metadata accessor for GutterViewController();
  objc_msgSendSuper2(&v40, sel_viewWillLayoutSubviews);
  v2 = *&v0[qword_1EDBB0C50];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  [v3 bounds];
  OUTLINED_FUNCTION_9_0();

  v5 = OUTLINED_FUNCTION_8_0();
  [v6 v7];
  v8 = OUTLINED_FUNCTION_3_18();
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  [v8 bounds];
  OUTLINED_FUNCTION_9_0();

  v41.origin.x = OUTLINED_FUNCTION_8_0();
  Width = CGRectGetWidth(v41);
  [v2 contentSize];
  [v2 setContentSize_];
  v38 = *&v1[qword_1EDBB0C28];
  v39 = v1[qword_1EDBB0C28 + 8];
  sub_1D8138C58(v38, v39);
  v11 = OUTLINED_FUNCTION_3_18();
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  [v11 bounds];
  OUTLINED_FUNCTION_9_0();

  v13 = OUTLINED_FUNCTION_8_0();
  v14 = Gutters.contentWidth(bounds:)(v13);
  sub_1D8138C6C(v38, v39);
  v15 = sub_1D8136590();
  v16 = OUTLINED_FUNCTION_3_18();
  if (!v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v16;
  [v16 bounds];
  OUTLINED_FUNCTION_0_99();

  v42.origin.x = OUTLINED_FUNCTION_5_13();
  v18 = CGRectGetWidth(v42);
  v19 = OUTLINED_FUNCTION_3_18();
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  v21 = ceil(v14);
  v22 = floor(v18 * 0.5 - v14 * 0.5);
  [v19 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v43.origin.x = v24;
  v43.origin.y = v26;
  v43.size.width = v28;
  v43.size.height = v30;
  [v15 setFrame_];

  v31 = sub_1D8136704();
  if (!v31)
  {
    goto LABEL_9;
  }

  v32 = v31;
  v33 = OUTLINED_FUNCTION_3_18();
  if (!v33)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v34 = v33;
  [v33 bounds];
  OUTLINED_FUNCTION_9_0();

  v44.origin.x = OUTLINED_FUNCTION_8_0();
  CGRectGetWidth(v44);
  [*&v1[qword_1EDBB0C60] frame];
  CGRectGetMaxX(v45);
  v35 = OUTLINED_FUNCTION_8_59();
  [v32 v36];

LABEL_9:
  if ((sub_1D8136418() & 1) == 0)
  {
    [v2 setContentOffset_];
    v37 = sub_1D8136704();
    [v37 setContentOffset_];
  }
}

void sub_1D8137AD8(void *a1)
{
  v1 = a1;
  sub_1D81377A8();
}

id sub_1D8137B20(void *a1)
{
  v1 = a1;
  v2 = sub_1D8137B64();

  return v2;
}

id sub_1D8137B64()
{
  v1 = [*(v0 + qword_1EDBB0C58) navigationItem];

  return v1;
}

void *sub_1D8137BA4()
{
  v1 = *(v0 + qword_1EDBB0C58);
  v2 = v1;
  return v1;
}

id GutterViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1D8137C7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  GutterViewController.init(nibName:bundle:)();
}

id GutterViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GutterViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8137D00(uint64_t a1)
{

  sub_1D8138C6C(*(a1 + qword_1EDBB0C28), *(a1 + qword_1EDBB0C28 + 8));
}

void (*sub_1D8137DCC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D81364B0(v2);
  return sub_1D7F4150C;
}

void sub_1D8137E28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D813913C(0, &qword_1ECA117E0, type metadata accessor for CGSize, MEMORY[0x1E6968EA8]);
    sub_1D818E564();
    v2 = sub_1D818E554();
    if (v11)
    {
      if (v8)
      {
LABEL_11:

        return;
      }
    }

    else if ((v8 & 1) == 0 && v9 == v6 && v10 == v7)
    {
      goto LABEL_11;
    }

    MEMORY[0x1EEE9AC00](v2);
    v5 = v4;
    sub_1D808E8C8(sub_1D81391A0);
  }
}

id sub_1D8137F80(char *a1, void *a2)
{
  v3 = *&a1[qword_1EDBB0C50];
  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v16.origin.x = v7;
    v16.origin.y = v9;
    v16.size.width = v11;
    v16.size.height = v13;
    Width = CGRectGetWidth(v16);
    [a2 contentSize];
    [v3 setContentSize_];
    [a2 contentOffset];

    return [v3 setContentOffset_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D813806C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D813913C(0, &qword_1ECA117D8, type metadata accessor for UIEdgeInsets, MEMORY[0x1E6968EA8]);
    sub_1D818E564();
    v2 = sub_1D818E554();
    if (v16)
    {
      if ((v11 & 1) == 0)
      {
LABEL_16:
        MEMORY[0x1EEE9AC00](v2);
        v6 = v5;
        sub_1D808E8C8(sub_1D8139134);

        return;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_16;
      }

      v3 = v12 == v7 && v13 == v8;
      v4 = v3 && v14 == v9;
      if (!v4 || v15 != v10)
      {
        goto LABEL_16;
      }
    }
  }
}

id sub_1D81381E4(uint64_t a1, id a2)
{
  v3 = *(a1 + qword_1EDBB0C50);
  [a2 safeAreaInsets];
  [v3 setContentInset_];
  [a2 contentOffset];

  return [v3 setContentOffset_];
}

uint64_t GutterViewController<>.cardSplitViewPresentation(for:)(char *a1)
{
  v2 = *a1;
  v7 = *(v1 + qword_1EDBB0C58);
  v6 = v2;
  OUTLINED_FUNCTION_5_8();
  return v4(&v6, *(v3 + 80));
}

uint64_t GutterViewController<>.cardViewAnimationCoordinator(_:willTransitionTo:)()
{
  OUTLINED_FUNCTION_13_50();
  OUTLINED_FUNCTION_4_95();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_7_78();
  return v0();
}

{
  OUTLINED_FUNCTION_13_50();
  OUTLINED_FUNCTION_4_95();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_7_78();
  return v0();
}

uint64_t GutterViewController<>.cardViewAnimationCoordinator(_:didTransitionTo:)()
{
  OUTLINED_FUNCTION_13_50();
  OUTLINED_FUNCTION_4_95();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_7_78();
  return v0();
}

{
  OUTLINED_FUNCTION_13_50();
  OUTLINED_FUNCTION_4_95();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_7_78();
  return v0();
}

uint64_t GutterViewController<>.cardViewAnimationCoordinator(_:willTransitionTo:usingTimingParameters:)()
{
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_7_78();
  return v0();
}

uint64_t GutterViewController<>.cardViewAnimationCoordinator(_:shouldRecognizeSimultaneouslyWith:presentationState:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *a4;
  OUTLINED_FUNCTION_5_8();
  return v4() & 1;
}

id sub_1D8138BE4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_contentScrollView] = 0;
  *&v1[OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_outerView] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_1D8138C58(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    return sub_1D8190DB4();
  }

  return result;
}

uint64_t sub_1D8138C6C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_1D8138C80(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1D8138EB0()
{
  *(v0 + OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_contentScrollView) = 0;
  sub_1D81923A4();
  __break(1u);
}

void *sub_1D8138F50(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v12, sel_hitTest_withEvent_, a1, a2, a3);
  v8 = v7;
  if (v7)
  {
    if (v7 == *&v3[OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_outerView])
    {
      v9 = *&v3[OBJC_IVAR____TtC5TeaUIP33_DE89AB740D16D99A072493969E6EEC2114GutterRootView_contentScrollView];
      if (v9)
      {
        v10 = v9;

        return v9;
      }
    }
  }

  return v8;
}

void sub_1D813913C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id MotionDebugView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *MotionDebugView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI15MotionDebugView_label;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI15MotionDebugView_labelBackgroundView;
  *(v0 + v3) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  v4 = OUTLINED_FUNCTION_80();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, ObjectType);
  v8 = OBJC_IVAR____TtC5TeaUI15MotionDebugView_labelBackgroundView;
  v9 = *&v7[OBJC_IVAR____TtC5TeaUI15MotionDebugView_labelBackgroundView];
  v10 = v7;
  [v10 addSubview_];
  v11 = OBJC_IVAR____TtC5TeaUI15MotionDebugView_label;
  [v10 addSubview_];
  [*&v10[v11] setNumberOfLines_];
  v12 = *&v10[v11];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemFontOfSize_];
  [v14 setFont_];

  v16 = *&v7[v8];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 lightGrayColor];
  [v18 setBackgroundColor_];

  [*&v7[v8] setAlpha_];
  [v10 setUserInteractionEnabled_];

  return v10;
}

void sub_1D8139408()
{
  v1 = OBJC_IVAR____TtC5TeaUI15MotionDebugView_label;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v2 = OBJC_IVAR____TtC5TeaUI15MotionDebugView_labelBackgroundView;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall MotionDebugView.didMoveToWindow()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    if (qword_1EDBBB700 != -1)
    {
      OUTLINED_FUNCTION_3_17();
    }

    sub_1D80D455C();
  }

  else
  {
    if (qword_1EDBBB700 != -1)
    {
      OUTLINED_FUNCTION_3_17();
    }

    sub_1D80D4908(v0, qword_1EDBBB708);
  }
}

Swift::Void __swiftcall MotionDebugView.layoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI15MotionDebugView_label];
  [v1 sizeToFit];
  [v0 safeAreaInsets];
  v3 = v2;
  [v0 safeAreaInsets];
  v5 = v4;
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  [v1 bounds];
  [v1 setFrame_];
  v7 = *&v0[OBJC_IVAR____TtC5TeaUI15MotionDebugView_labelBackgroundView];
  [v1 frame];
  [v7 setFrame_];
}

Swift::Void __swiftcall MotionDebugView.safeAreaInsetsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_safeAreaInsetsDidChange);
  [v0 setNeedsLayout];
  [v0 layoutIfNeeded];
}

id MotionDebugView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MotionDebugView.motionManager(_:didUpdateMotionData:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *&v2[OBJC_IVAR____TtC5TeaUI15MotionDebugView_label];
  OUTLINED_FUNCTION_6_90();
  sub_1D8139B80(0x656369766544, 0xE600000000000000, *(a2 + 136), UIDeviceOrientation.description.getter);
  OUTLINED_FUNCTION_3_130();
  OUTLINED_FUNCTION_0_230();

  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 statusBarOrientation];

  sub_1D8139B80(0x6361667265746E49, 0xE900000000000065, v7, UIInterfaceOrientation.description.getter);
  OUTLINED_FUNCTION_4_96();
  OUTLINED_FUNCTION_0_230();

  OUTLINED_FUNCTION_6_90();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_0_230();

  OUTLINED_FUNCTION_5_83();
  MotionData.xTranslate(to:inverted:)();
  sub_1D8139C04();
  OUTLINED_FUNCTION_4_96();
  OUTLINED_FUNCTION_0_230();

  OUTLINED_FUNCTION_5_83();
  MotionData.yTranslate(to:inverted:)();
  sub_1D8139C04();
  OUTLINED_FUNCTION_4_96();
  OUTLINED_FUNCTION_0_230();

  OUTLINED_FUNCTION_6_90();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_0_230();

  sub_1D8139C04();
  OUTLINED_FUNCTION_3_130();
  OUTLINED_FUNCTION_0_230();

  sub_1D8139C04();
  OUTLINED_FUNCTION_3_130();
  OUTLINED_FUNCTION_0_230();

  sub_1D8139C04();
  v9 = v8;
  sub_1D8190DB4();
  MEMORY[0x1DA713260](7823737, v9);

  sub_1D7FC8234(0x7461746E6569724FLL, 0xEB000000006E6F69, v5);
  [v3 setNeedsLayout];

  return [v3 layoutIfNeeded];
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1D8139B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_1D8190DB4();
  MEMORY[0x1DA713260](8250, 0xE200000000000000);
  v6 = a4(a3);
  MEMORY[0x1DA713260](v6);

  MEMORY[0x1DA713260](10, 0xE100000000000000);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1D8139C04()
{
  sub_1D8190DB4();
  MEMORY[0x1DA713260](8250, 0xE200000000000000);
  v0 = sub_1D81915A4();
  MEMORY[0x1DA713260](v0);

  MEMORY[0x1DA713260](10, 0xE100000000000000);
}

id ApplicationContentSizeCategoryProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ApplicationContentSizeCategoryProvider.currentContentSizeCategory.getter()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  return v1;
}

id ApplicationContentSizeCategoryProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DebugSchedule.init(after:block:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC5TeaUI13DebugSchedule_label;
  *&v3[v8] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  *&v3[OBJC_IVAR____TtC5TeaUI13DebugSchedule_timer] = 0;
  *&v3[OBJC_IVAR____TtC5TeaUI13DebugSchedule_seconds] = a1;
  v9 = &v3[OBJC_IVAR____TtC5TeaUI13DebugSchedule_block];
  *v9 = a2;
  *(v9 + 1) = a3;
  v10 = objc_opt_self();

  v11 = [v10 sharedApplication];
  v12 = [v11 key_window];

  if (v12)
  {
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v39.receiver = v3;
    v39.super_class = ObjectType;
    v21 = objc_msgSendSuper2(&v39, sel_initWithFrame_, v14, v16, v18, v20);
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 clearColor];
    [v23 setBackgroundColor_];

    [v23 setUserInteractionEnabled_];
    v25 = OBJC_IVAR____TtC5TeaUI13DebugSchedule_label;
    v26 = *&v23[OBJC_IVAR____TtC5TeaUI13DebugSchedule_label];
    v27 = [v22 systemBlueColor];
    [v26 setTextColor_];

    [*&v23[v25] setTextAlignment_];
    v28 = *&v23[v25];
    v29 = objc_opt_self();
    v30 = *MEMORY[0x1E69DB950];
    v31 = v28;
    v32 = [v29 systemFontOfSize:22.0 weight:v30];
    [v31 setFont_];

    v33 = [*&v23[v25] layer];
    [v33 setBorderWidth_];

    v34 = [*&v23[v25] layer];
    v35 = [v22 systemBlueColor];
    v36 = [v35 CGColor];

    [v34 setBorderColor_];
    v37 = *&v23[v25];
    v38 = [v22 whiteColor];
    [v37 setBackgroundColor_];

    [*&v23[v25] setClipsToBounds_];
    [v23 addSubview_];
    sub_1D813A198();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D813A198()
{
  v1 = v0;
  type metadata accessor for Level();
  v12[7] = *MEMORY[0x1E69DE7E8];
  v12[6] = 1.0;
  sub_1D813A884();
  sub_1D818FE44();
  [v0 setWindowLevel_];
  [v0 setHidden_];
  [v0 makeKeyAndVisible];
  v2 = swift_allocObject();
  v3 = *&v0[OBJC_IVAR____TtC5TeaUI13DebugSchedule_label];
  *(v2 + 16) = 0;
  v4 = sub_1D81925B4();
  sub_1D7FC8234(v4, v5, v3);
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  *&v12[4] = sub_1D813A8DC;
  *&v12[5] = v7;
  *&v12[0] = MEMORY[0x1E69E9820];
  *&v12[1] = 1107296256;
  *&v12[2] = sub_1D7F845F8;
  *&v12[3] = &block_descriptor_80;
  v8 = _Block_copy(v12);

  v9 = v1;

  v10 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:1.0];
  _Block_release(v8);
  v11 = *&v9[OBJC_IVAR____TtC5TeaUI13DebugSchedule_timer];
  *&v9[OBJC_IVAR____TtC5TeaUI13DebugSchedule_timer] = v10;
}

void sub_1D813A394()
{
  v1 = OBJC_IVAR____TtC5TeaUI13DebugSchedule_label;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  *(v0 + OBJC_IVAR____TtC5TeaUI13DebugSchedule_timer) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall DebugSchedule.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI13DebugSchedule_label];
  [v1 setFrame_];
  [v0 center];
  [v1 setCenter_];
  v2 = [v1 layer];
  [v1 frame];
  [v2 setCornerRadius_];
}

id sub_1D813A564(void *a1, uint64_t a2, char *a3)
{
  result = swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a2 + 16) = v9;
  v10 = *&a3[OBJC_IVAR____TtC5TeaUI13DebugSchedule_seconds];
  v8 = __OFSUB__(v10, v9);
  v11 = v10 - v9;
  if (v8)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v12 = *&a3[OBJC_IVAR____TtC5TeaUI13DebugSchedule_label];
  v16 = v11;
  v13 = sub_1D81925B4();
  sub_1D7FC8234(v13, v14, v12);
  result = swift_beginAccess();
  if (*(a2 + 16) >= v10)
  {
    v15 = [a3 setHidden_];
    (*&a3[OBJC_IVAR____TtC5TeaUI13DebugSchedule_block])(v15);
    return [a1 invalidate];
  }

  return result;
}

id DebugSchedule.__allocating_init(windowScene:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene_];

  return v3;
}

id DebugSchedule.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DebugSchedule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D813A884()
{
  result = qword_1ECA11818;
  if (!qword_1ECA11818)
  {
    type metadata accessor for Level();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11818);
  }

  return result;
}

id SwipeActionAppearance.swipeActionBackgroundColor.getter()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

double SwipeActionAppearance.swipeActionStyle.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_1D81B2D20;
  *(a1 + 16) = 1;
  return result;
}

uint64_t KeyboardInputMoinitor.currentModifierFlags.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_0_231();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

id KeyboardInputMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D813ABC8(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t KeyboardInputMonitor.currentModifierFlags.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_0_231();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1D813ACB8(void *a1, void *a2)
{
  v4 = [a1 modifierFlags];
  v5 = v2 + *a2;
  result = swift_beginAccess();
  *v5 = v4;
  *(v5 + 8) = 0;
  return result;
}

char *sub_1D813AE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_onChange];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_label;
  *&v3[v7] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v8 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_valueLabel;
  *&v3[v8] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v9 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_stepper;
  v10 = objc_allocWithZone(type metadata accessor for SettingsStepper());
  *&v3[v9] = OUTLINED_FUNCTION_4(v10, sel_initWithFrame_);
  if (a3)
  {
    v11 = sub_1D8190EE4();
  }

  else
  {
    v11 = 0;
  }

  v65.receiver = v3;
  v65.super_class = type metadata accessor for StepperTableViewCell();
  v12 = objc_msgSendSuper2(&v65, sel_initWithStyle_reuseIdentifier_, a1, v11);

  v13 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_stepper;
  v14 = *&v12[OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_stepper];
  v15 = v12;
  [v14 addTarget:v15 action:sel_valueChanged forControlEvents:4096];
  [*&v12[v13] setContinuous_];
  v16 = [v15 contentView];
  v17 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_label;
  [v16 addSubview_];

  v18 = [v15 &selRef_verticalOffset];
  [v18 addSubview_];

  v19 = [v15 &selRef_verticalOffset];
  v64 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_valueLabel;
  [v19 addSubview_];

  [*&v15[v17] setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [*&v15[v17] centerYAnchor];
  v21 = [v15 &selRef_verticalOffset];
  v22 = [v21 layoutMarginsGuide];

  v23 = [v22 &selRef_setAttributes_];
  v24 = OUTLINED_FUNCTION_1_166();
  v26 = [v24 v25];

  OUTLINED_FUNCTION_2_151(v27, sel_setActive_);
  v28 = [*&v15[v17] leadingAnchor];
  v29 = [v15 contentView];
  v30 = [v29 layoutMarginsGuide];

  v31 = [v30 leadingAnchor];
  v32 = OUTLINED_FUNCTION_1_166();
  v34 = [v32 v33];

  OUTLINED_FUNCTION_2_151(v35, sel_setActive_);
  [*&v12[v13] setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = [*&v12[v13] trailingAnchor];
  v37 = [v15 contentView];
  v38 = [v37 layoutMarginsGuide];

  v39 = [v38 trailingAnchor];
  v40 = OUTLINED_FUNCTION_1_166();
  v42 = [v40 v41];

  OUTLINED_FUNCTION_2_151(v43, sel_setActive_);
  v44 = [*&v12[v13] centerYAnchor];
  v45 = [v15 contentView];
  v46 = [v45 layoutMarginsGuide];

  v47 = [v46 centerYAnchor];
  v48 = OUTLINED_FUNCTION_1_166();
  v50 = [v48 v49];

  OUTLINED_FUNCTION_2_151(v51, &selRef_initWithPatternImage_);
  [*&v15[v64] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v15[v64] setPreferredMaxLayoutWidth_];
  v52 = [*&v15[v64] trailingAnchor];
  v53 = [*&v12[v13] layoutMarginsGuide];
  v54 = [v53 leadingAnchor];

  v55 = OUTLINED_FUNCTION_1_166();
  v57 = [v55 v56];

  [v57 &selRef:1 initWithPatternImage:?];
  v58 = [*&v15[v64] centerYAnchor];
  v59 = [v15 contentView];

  v60 = [v59 layoutMarginsGuide];
  v61 = [v60 centerYAnchor];

  v62 = [v58 constraintEqualToAnchor_];
  [v62 &selRef:1 initWithPatternImage:?];

  return v15;
}

void sub_1D813B48C()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_onChange);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_label;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v3 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_valueLabel;
  *(v0 + v3) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v4 = OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_stepper;
  v5 = objc_allocWithZone(type metadata accessor for SettingsStepper());
  *(v0 + v4) = OUTLINED_FUNCTION_4(v5, sel_initWithFrame_);
  sub_1D81923A4();
  __break(1u);
}

void sub_1D813B578()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_valueLabel);
  sub_1D7E1A4D0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D819FAB0;
  v3 = *(v0 + OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_stepper);
  [v3 value];
  v4 = MEMORY[0x1E69E6438];
  *(v2 + 56) = MEMORY[0x1E69E63B0];
  *(v2 + 64) = v4;
  *(v2 + 32) = v5;
  v6 = sub_1D8190F54();
  sub_1D7FC8234(v6, v7, v1);
  v8 = *(v0 + OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_onChange);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC5TeaUI20StepperTableViewCell_onChange + 8);

    v10 = [v3 value];
    *&v11 = v11;
    v8(v10, *&v11);

    sub_1D7E418F4(v8, v9);
  }
}

id sub_1D813B6D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StepperTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BlueprintModifierTrait.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t BlueprintModifierType.description.getter()
{
  swift_getDynamicType();

  return sub_1D8192914();
}

uint64_t BlueprintModifier.__allocating_init<A>(modifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BlueprintModifier.init<A>(modifier:)(a1, a2, a3);
  return v6;
}

uint64_t RadialGradientDescriptor.cfColors.getter()
{
  v1 = *(v0 + 128);
  v2 = sub_1D7E36AB8(v1);
  if (!v2)
  {
LABEL_8:
    type metadata accessor for CGColor();
    v9 = sub_1D8191304();

    return v9;
  }

  v3 = v2;
  result = sub_1D81922A4();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA714420](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 CGColor];

      sub_1D8192274();
      sub_1D81922B4();
      sub_1D81922C4();
      sub_1D8192284();
    }

    while (v3 != v5);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void CircleRadius.value(bounds:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (*(v4 + 32))
  {
    CGRectGetWidth(*&a1);
    v9.origin.x = a1;
    v9.origin.y = a2;
    v9.size.width = a3;
    v9.size.height = a4;
    CGRectGetHeight(v9);
  }
}

uint64_t static RadialGradientDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return OUTLINED_FUNCTION_0_0();
  }

  else
  {
    return sub_1D8192634();
  }
}

__n128 Circle.radius.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

void Circle.init(center:radius:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
}

void Circle.init(center:start:end:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = 1;
}

uint64_t static Circle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if (!*(a2 + 48) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = *(a2 + 48);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t static CircleRadius.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0 && v2 == v3)
    {
      return OUTLINED_FUNCTION_0_0();
    }

    return 0;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    return 0;
  }

  if (v2 != v3 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 24) == *(a2 + 24) && *(a1 + 16) == *(a2 + 16);
}

uint64_t RadialGradientDescriptor.identifier.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

void RadialGradientDescriptor.fromCircle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  OUTLINED_FUNCTION_1_167(a1, *(v1 + 48));
}

void RadialGradientDescriptor.toCircle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 72);
  *(a1 + 16) = v2;
  OUTLINED_FUNCTION_1_167(a1, *(v1 + 104));
}

void *RadialGradientDescriptor.init(circle:innerColor:outerColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 48);
  v16[0] = *a1;
  v16[1] = v7;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v12[0] = v16[0];
  v12[1] = v7;
  v9 = *(a1 + 32);
  v13 = *(a1 + 16);
  v14 = v9;
  v15 = v8;
  OUTLINED_FUNCTION_0_233(&qword_1EDBB2BF0, MEMORY[0x1E69E7C98]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D81A5090;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  RadialGradientDescriptor.init(fromCircle:toCircle:colors:locations:)(v16, v12, v10, &unk_1F52E4B88, __src);
  return memcpy(a4, __src, 0x90uLL);
}

void RadialGradientDescriptor.init(fromCircle:toCircle:colors:locations:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v59 = a1[3];
  v60 = a1[2];
  v57 = a1[5];
  v58 = a1[4];
  v10 = *a2;
  v11 = a2[1];
  v55 = a2[3];
  v56 = a2[2];
  v53 = a2[5];
  v54 = a2[4];
  v63 = *(a1 + 48);
  v62 = *(a2 + 48);
  v12 = MEMORY[0x1E69E7CC0];
  v61 = MEMORY[0x1E69E7CC0];
  v13 = sub_1D7E36AB8(a3);
  v51 = a5;
  v52 = a4;
  if (v13)
  {
    v14 = v13;
    sub_1D8190DB4();
    sub_1D8190DB4();
    OUTLINED_FUNCTION_5_84();
    if (v14 < 0)
    {
      __break(1u);
      return;
    }

    v15 = 0;
    v16 = v12;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1DA714420](v15, a3);
      }

      else
      {
        v17 = *(a3 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = UIColor.identifier.getter();
      v21 = v20;

      v22 = *(v16 + 16);
      if (v22 >= *(v16 + 24) >> 1)
      {
        OUTLINED_FUNCTION_3_131();
      }

      ++v15;
      *(v16 + 16) = v22 + 1;
      v23 = v16 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v21;
    }

    while (v14 != v15);

    v24 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D8190DB4();
    v16 = MEMORY[0x1E69E7CC0];
    v24 = v12;
  }

  sub_1D7E675D4(v16);
  if (a4)
  {
    v25 = a4;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v25 + 16);
  if (v26)
  {
    OUTLINED_FUNCTION_5_84();
    v27 = 32;
    v28 = v24;
    do
    {
      v29 = sub_1D81915A4();
      v31 = v30;
      v32 = *(v28 + 16);
      if (v32 >= *(v28 + 24) >> 1)
      {
        OUTLINED_FUNCTION_3_131();
      }

      *(v28 + 16) = v32 + 1;
      v33 = v28 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v31;
      v27 += 8;
      --v26;
    }

    while (v26);
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  sub_1D7E675D4(v28);
  v34 = sub_1D8190F84();
  v36 = v35;
  v37 = v61;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D7E2D320();
    v37 = v48;
  }

  v38 = *(v37 + 16);
  if (v38 >= *(v37 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_97();
    v37 = v49;
  }

  *(v37 + 16) = v38 + 1;
  v39 = v37 + 16 * v38;
  *(v39 + 32) = v34;
  *(v39 + 40) = v36;
  v40 = sub_1D8190F84();
  v42 = v41;
  v43 = *(v37 + 16);
  if (v43 >= *(v37 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_97();
    v37 = v50;
  }

  *(v37 + 16) = v43 + 1;
  v44 = v37 + 16 * v43;
  *(v44 + 32) = v40;
  *(v44 + 40) = v42;
  sub_1D7E720F0(0, &qword_1EDBB3330, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D7E1B6BC();
  v45 = sub_1D8190E94();
  v47 = v46;

  *v51 = v45;
  *(v51 + 8) = v47;
  *(v51 + 16) = v8;
  *(v51 + 24) = v9;
  *(v51 + 32) = v60;
  *(v51 + 40) = v59;
  *(v51 + 48) = v58;
  *(v51 + 56) = v57;
  *(v51 + 64) = v63;
  *(v51 + 72) = v10;
  *(v51 + 80) = v11;
  *(v51 + 88) = v56;
  *(v51 + 96) = v55;
  *(v51 + 104) = v54;
  *(v51 + 112) = v53;
  *(v51 + 120) = v62;
  *(v51 + 128) = a3;
  *(v51 + 136) = v52;
}

void *RadialGradientDescriptor.init(fromCircle:toCircle:fromColor:toColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  v10 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v10;
  v16[2] = *(a1 + 32);
  v17 = v8;
  v11 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v11;
  v14[2] = *(a2 + 32);
  v15 = v9;
  OUTLINED_FUNCTION_0_233(&qword_1EDBB2BF0, MEMORY[0x1E69E7C98]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D81A5090;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  RadialGradientDescriptor.init(fromCircle:toCircle:colors:locations:)(v16, v14, v12, &unk_1F52E4BB8, __src);
  return memcpy(a5, __src, 0x90uLL);
}

uint64_t sub_1D813C294(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D813C2D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D813C348(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1D813C388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Void __swiftcall KeyboardSelectionStyle.select(_:isHighlighted:hasBeenTraversed:view:selectedBackgroundView:)(Swift::Bool _, Swift::Bool isHighlighted, Swift::Bool hasBeenTraversed, UIView *view, UIView *selectedBackgroundView)
{
  v8 = hasBeenTraversed;
  if (hasBeenTraversed && (sub_1D818EEE4(), (sub_1D818EED4() & 1) != 0))
  {
    v8 = 1;
    v11 = 4;
    v12 = 3;
    v13 = v5;
  }

  else
  {
    v13 = v5 + 5;
    v11 = 9;
    v12 = 8;
  }

  v14 = v5[v12];
  v15 = v5[v11];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v15 + 16))(_, isHighlighted, v8, view, selectedBackgroundView, v14, v15);
}

Swift::Void __swiftcall KeyboardSelectionStyle.didSetHighlighted(_:view:selectedBackgroundView:)(Swift::Bool _, UIView *view, UIView *selectedBackgroundView)
{
  sub_1D818EEE4();
  v3 = sub_1D818EED4();
  v4 = 64;
  if (v3)
  {
    v4 = 24;
  }

  OUTLINED_FUNCTION_1_168(v4);
  OUTLINED_FUNCTION_0_234();
  v5();
}

Swift::Bool __swiftcall KeyboardSelectionStyle.shouldRenderSelection(isSelected:isHighlighted:)(Swift::Bool isSelected, Swift::Bool isHighlighted)
{
  v3 = isHighlighted;
  v4 = isSelected;
  sub_1D818EEE4();
  v5 = sub_1D818EED4();
  v6 = 64;
  if (v5)
  {
    v6 = 24;
  }

  v7 = 72;
  if (v5)
  {
    v7 = 32;
  }

  v8 = 40;
  if (v5)
  {
    v8 = 0;
  }

  v9 = *(v2 + v6);
  v10 = *(v2 + v7);
  __swift_project_boxed_opaque_existential_1((v2 + v8), v9);
  return (*(v10 + 40))(v4, v3, v9, v10) & 1;
}

uint64_t sub_1D813C610(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D813C650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D813C6B4(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v5, sel_backgroundColor);
  sub_1D813C77C(v4);
}

id sub_1D813C730()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_backgroundColor);

  return v1;
}

void sub_1D813C77C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _setPocketColor_forEdge_];
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _setPocketColor_forEdge_];
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 _setPocketColor_forEdge_];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 _setPocketColor_forEdge_];
  }
}

void sub_1D813C918(void *a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setBackgroundColor_, a1);
  sub_1D813C77C(a1);
}

id sub_1D813C96C(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a2, a3, a4, a5);

  return v12;
}

void sub_1D813CA2C()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_1D81923A4();
  __break(1u);
}

id sub_1D813CAC8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong convertPoint:v4 fromCoordinateSpace:{a2, a3}];
    v11 = [v10 hitTest:a1 withEvent:?];
    if (!v11)
    {
      v14.receiver = v4;
      v14.super_class = ObjectType;
      v11 = objc_msgSendSuper2(&v14, sel_hitTest_withEvent_, a1, a2, a3);
    }

    v12 = v11;
  }

  else
  {
    v15.receiver = v3;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, sel_hitTest_withEvent_, a1, a2, a3);
  }

  return v12;
}

uint64_t dispatch thunk of CardViewAnimationCoordinatorDelegate.cardViewAnimationCoordinator(_:willTransitionTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))();
}

{
  return (*(a5 + 24))();
}

uint64_t dispatch thunk of CardViewAnimationCoordinatorDelegate.cardViewAnimationCoordinator(_:didTransitionTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 16))();
}

{
  return (*(a5 + 40))();
}

void sub_1D813CDD4()
{
  strcpy(&qword_1ECA11860, "Tea Frameworks");
  algn_1ECA11868[7] = -18;
  qword_1ECA11870 = 0x39373433333031;
  unk_1ECA11878 = 0xE700000000000000;
  qword_1ECA11880 = 7105601;
  unk_1ECA11888 = 0xE300000000000000;
}

uint64_t static RadarComponent.teaFrameworks.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECA0C3E0 != -1)
  {
    swift_once();
  }

  v2 = *algn_1ECA11868;
  v3 = qword_1ECA11870;
  v4 = unk_1ECA11878;
  v5 = qword_1ECA11880;
  v6 = unk_1ECA11888;
  *a1 = qword_1ECA11860;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  sub_1D8190DB4();
  sub_1D8190DB4();

  return sub_1D8190DB4();
}

uint64_t sub_1D813CEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v24 = OUTLINED_FUNCTION_4_98();
  OUTLINED_FUNCTION_7_79();
  v15 = swift_allocObject();
  LOBYTE(v23) = a12 & 1;
  v16 = OUTLINED_FUNCTION_2_152();
  sub_1D813D994(v16, v17, v18, v19, a5, a6, a7, a8, v21, v22, a11, v23, a13, a14, v24.n128_i64[0], v24.n128_i64[1], v25, a6, a7, a8, v29, v30, v31, v32, v33);
  return v15;
}

uint64_t sub_1D813CF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  *(&v29 + 1) = a8;
  *&v29 = a7;
  v25 = OUTLINED_FUNCTION_4_98();
  OUTLINED_FUNCTION_7_79();
  v15 = swift_allocObject();
  LOBYTE(v23) = a13 & 1;
  v16 = OUTLINED_FUNCTION_2_152();
  sub_1D813E138(v16, v17, v18, v19, a5, a6, v29, *(&v29 + 1), v21, v22, a11, a12, v23, a14, a15, v24, v25.n128_i64[0], v25.n128_i64[1], v26, a5, a6, v29, v30, v31, v32, v33);
  return v15;
}

uint64_t sub_1D813D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v25 = OUTLINED_FUNCTION_4_98();
  OUTLINED_FUNCTION_7_79();
  v15 = swift_allocObject();
  LOBYTE(v23) = a12 & 1;
  v16 = OUTLINED_FUNCTION_2_152();
  sub_1D813D0BC(v16, v17, v18, v19, a5, a6, a7, a8, v21, v22, a11, v23, a13, v24, v25.n128_i64[0], v25.n128_i64[1], a7, a8, v28, v29, v30, v31, v32, v33);
  return v15;
}

void sub_1D813D0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, unsigned __int8 a23, uint64_t a24)
{
  OUTLINED_FUNCTION_120();
  v79 = v25;
  v80 = v26;
  v77 = v27;
  v78 = v28;
  v85 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v81 = a24;
  LODWORD(v83) = a23;
  v36 = *(*v30 + 88);
  v76 = a21;
  OUTLINED_FUNCTION_107();
  v82 = v36;
  v37 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v68 - v43;
  v84 = &v68 - v43;
  *(v24 + 16) = v35;
  *(v24 + 24) = v33;
  OUTLINED_FUNCTION_107();
  *(v24 + 56) = type metadata accessor for Command();
  *(v24 + 64) = &protocol witness table for Command<A>;
  v45 = v31;
  *(v24 + 32) = v31;
  *(v24 + 72) = 0;
  *(v24 + 80) = v76;
  *(v24 + 96) = a22;
  OUTLINED_FUNCTION_30_26(v83);
  v46 = *(v39 + 16);
  v73 = v39 + 16;
  v74 = v31;
  v83 = v46;
  v47 = v37;
  (v46)(v44, v85, v37);
  v48 = *(v39 + 80);
  v75 = v41;
  *&v76 = (v48 + 32) & ~v48;
  v49 = swift_allocObject();
  v50 = v82;
  *(v49 + 16) = v82;
  *(v49 + 24) = v45;
  v72 = *(v39 + 32);
  v70 = v39 + 32;
  (v72)(v49 + ((v48 + 32) & ~v48), v84, v47);
  *(v24 + 112) = sub_1D813F900;
  *(v24 + 120) = v49;
  *(v24 + 128) = OUTLINED_FUNCTION_0_4;
  *(v24 + 136) = 0;
  v51 = OUTLINED_FUNCTION_14_0();
  v69 = v47;
  v83(v51);
  v52 = (v48 + 24) & ~v48;
  v53 = (v41 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = v53;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  v56 = v84;
  v57 = v72;
  (v72)(v55 + v52, v84, v47);
  v58 = v74;
  *(v55 + v53) = v74;
  v59 = (v55 + v54);
  v60 = v78;
  *v59 = v77;
  v59[1] = v60;
  *(v24 + 144) = sub_1D813F90C;
  *(v24 + 152) = v55;
  v61 = v56;
  v62 = v69;
  (v83)(v56, v85, v69);
  v63 = swift_allocObject();
  v64 = v82;
  *(v63 + 16) = v82;
  (v57)(v63 + v52, v61, v62);
  *(v63 + v71) = v58;
  v65 = (v63 + v54);
  v66 = v80;
  *v65 = v79;
  v65[1] = v66;
  *(v24 + 160) = sub_1D813F90C;
  *(v24 + 168) = v63;
  *(v24 + 176) = sub_1D813F904;
  *(v24 + 184) = 0;
  (v57)(v84, v85, v62);
  v67 = swift_allocObject();
  *(v67 + 16) = v64;
  *(v67 + 24) = v58;
  OUTLINED_FUNCTION_34_19();
  v57();
  *(v24 + 192) = sub_1D813F918;
  *(v24 + 200) = v67;
  *(v24 + 208) = v81;
  swift_retain_n();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D813D450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  v24 = OUTLINED_FUNCTION_4_98();
  OUTLINED_FUNCTION_7_79();
  v15 = swift_allocObject();
  LOBYTE(v23) = a13 & 1;
  v16 = OUTLINED_FUNCTION_2_152();
  sub_1D813D4EC(v16, v17, v18, v19, a5, a6, a7, a8, v21, v22, a11, a12, v23, a14, v24.n128_i64[0], v24.n128_i64[1], v25, a6, a7, a8, v29, v30, v31, v32, v33);
  return v15;
}

void sub_1D813D4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, __int128 a22, void (*a23)(char *, char *, uint64_t), unsigned __int8 a24, uint64_t a25)
{
  OUTLINED_FUNCTION_120();
  v90 = v26;
  v91 = v27;
  v88 = v28;
  v89 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v92 = a25;
  LODWORD(v103) = a24;
  v100 = a23;
  v101 = v36;
  v95 = a22;
  v37 = *v30;
  v38 = *(*v30 + 136);
  v98 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v40 = v39;
  v102 = *(v41 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v83 - v43;
  v45 = *a21;
  *(v25 + 16) = v35;
  *(v25 + 24) = v33;
  v46 = v31;
  v99 = *(v37 + 144);
  v97 = *(v37 + 152);
  v104 = v38;
  *(v25 + 56) = type metadata accessor for StateCommand();
  *(v25 + 64) = &protocol witness table for Command<A>;
  *(v25 + 32) = v31;
  v96 = v31;
  *(v25 + 72) = v45;
  *(v25 + 80) = v95;
  v47 = v101;
  *(v25 + 96) = v100;
  OUTLINED_FUNCTION_30_26(v103);
  v94 = *(v40 + 16);
  *&v95 = v40 + 16;
  v48 = v98;
  v94(v44, v47, v98);
  v49 = v40;
  v103 = *(v40 + 80);
  v50 = (v103 + 48) & ~v103;
  v51 = swift_allocObject();
  v52 = v99;
  *(v51 + 2) = v38;
  *(v51 + 3) = v52;
  v53 = v97;
  *(v51 + 4) = v97;
  *(v51 + 5) = v46;
  v54 = *(v49 + 32);
  v93 = v49 + 32;
  v100 = v54;
  v54(&v51[v50], v44, v48);
  *(v25 + 112) = sub_1D813F8FC;
  *(v25 + 120) = v51;
  v55 = v44;
  v56 = v44;
  v57 = v94;
  v94(v56, v47, v48);
  v58 = v102;
  v87 = v50;
  v59 = swift_allocObject();
  v59[2] = v104;
  v59[3] = v52;
  v60 = v96;
  v59[4] = v53;
  v59[5] = v60;
  v61 = v59 + v50;
  v62 = v55;
  v100(v61, v55, v48);
  *(v25 + 128) = sub_1D813F910;
  *(v25 + 136) = v59;
  v63 = v101;
  v57(v55, v101, v48);
  v64 = v103;
  v65 = (v58 + ((v64 + 40) & ~v64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v64 + 40) & ~v64;
  v86 = v65;
  v84 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v67 = v99;
  *(v66 + 2) = v104;
  *(v66 + 3) = v67;
  *(v66 + 4) = v53;
  v68 = v98;
  v100(&v66[(v64 + 40) & ~v64], v55, v98);
  v69 = v96;
  *&v66[v65] = v96;
  v70 = v69;
  v71 = v84;
  v72 = &v66[v84];
  v73 = v89;
  *v72 = v88;
  *(v72 + 1) = v73;
  *(v25 + 144) = sub_1D813F908;
  *(v25 + 152) = v66;
  v94(v62, v63, v68);
  v74 = swift_allocObject();
  *(v74 + 2) = v104;
  *(v74 + 3) = v67;
  *(v74 + 4) = v53;

  v75 = v68;
  v76 = v100;
  v100(&v74[v85], v62, v68);
  *&v74[v86] = v70;
  v77 = v70;
  v78 = &v74[v71];
  v79 = v91;
  *v78 = v90;
  *(v78 + 1) = v79;
  *(v25 + 160) = sub_1D813F908;
  *(v25 + 168) = v74;
  *(v25 + 176) = sub_1D813F904;
  *(v25 + 184) = 0;
  v76(v62, v101, v75);
  v80 = v87;
  v81 = swift_allocObject();
  v82 = v99;
  *(v81 + 2) = v104;
  *(v81 + 3) = v82;
  *(v81 + 4) = v97;
  *(v81 + 5) = v77;
  v76(&v81[v80], v62, v75);
  *(v25 + 192) = sub_1D813F914;
  *(v25 + 200) = v81;
  *(v25 + 208) = v92;
  swift_retain_n();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

void sub_1D813D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, unsigned __int8 a23, unsigned __int8 *a24, uint64_t a25)
{
  OUTLINED_FUNCTION_120();
  v79 = v26;
  v80 = v27;
  v76 = v28;
  v77 = v29;
  v31 = v30;
  v88 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LODWORD(v85) = a23;
  v84 = a22;
  v83 = a21;
  v38 = *(*v32 + 88);
  v81 = a25;
  v74 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v40 = v39;
  v87 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v73 - v43;
  v78 = *a24;
  *(v25 + 16) = v37;
  *(v25 + 24) = v35;
  v82 = v38;
  *(v25 + 56) = type metadata accessor for Command();
  *(v25 + 64) = &protocol witness table for Command<A>;
  *(v25 + 32) = v33;
  *(v25 + 72) = 0;
  *(v25 + 80) = v83;
  *(v25 + 96) = v84;
  OUTLINED_FUNCTION_30_26(v85);
  v85 = *(v40 + 16);
  v86 = v33;
  v45 = v31;
  v46 = v74;
  v85(v44, v45, v74);
  v47 = *(v40 + 80);
  v75 = (v47 + 32) & ~v47;
  v48 = swift_allocObject();
  *(v48 + 16) = v38;
  *(v48 + 24) = v33;
  *&v83 = *(v40 + 32);
  v84 = v40 + 32;
  v49 = v44;
  v50 = v46;
  (v83)(v48 + ((v47 + 32) & ~v47), v44, v46);
  *(v25 + 112) = sub_1D813F690;
  *(v25 + 120) = v48;
  *(v25 + 128) = OUTLINED_FUNCTION_0_4;
  *(v25 + 136) = 0;
  v51 = OUTLINED_FUNCTION_22_26();
  (v85)(v51);
  v52 = (v47 + 24) & ~v47;
  v53 = (v87 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v57 = v82;
  v56 = v83;
  *(v55 + 16) = v82;
  v56(v55 + v52, v49, v50);
  *(v55 + v53) = v86;
  v58 = (v55 + v54);
  v59 = v77;
  *v58 = v76;
  v58[1] = v59;
  *(v25 + 144) = sub_1D813F6F4;
  *(v25 + 152) = v55;
  v60 = v50;
  v85(v49, v88, v50);
  v61 = swift_allocObject();
  *(v61 + 16) = v57;
  v62 = v61 + v52;
  v63 = v83;
  (v83)(v62, v49, v60);
  v64 = v86;
  *(v61 + v53) = v86;
  v65 = (v61 + v54);
  v66 = v80;
  *v65 = v79;
  v65[1] = v66;
  *(v25 + 160) = sub_1D813F90C;
  *(v25 + 168) = v61;
  v67 = swift_allocObject();
  *(v67 + 16) = v78;
  *(v25 + 176) = sub_1D8068588;
  *(v25 + 184) = v67;
  v68 = OUTLINED_FUNCTION_22_26();
  v69 = v60;
  v63(v68);
  v70 = v63;
  v71 = v75;
  v72 = swift_allocObject();
  *(v72 + 16) = v82;
  *(v72 + 24) = v64;
  v70(v72 + v71, v49, v69);
  *(v25 + 192) = sub_1D813F880;
  *(v25 + 200) = v72;
  *(v25 + 208) = v81;
  swift_retain_n();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

void sub_1D813DD58()
{
  OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_25_18();
  v1 = OUTLINED_FUNCTION_16_47();
  v2(v1);
  if (v0)
  {
  }
}

void sub_1D813DDE0()
{
  OUTLINED_FUNCTION_120();
  v21[1] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(*v3 + 88);
  v10 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v21 - v18;
  (*(v12 + 16))(v15, v6, v10, v17);
  if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 72))(v4, v9, ObjectType, v8);
    if (__swift_getEnumTagSinglePayload(v15, 1, v9) != 1)
    {
      (*(v12 + 8))(v15, v10);
    }
  }

  else
  {
    (*(*(v9 - 8) + 32))(v19, v15, v9);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v9);
  }

  v2(v19);
  (*(v12 + 8))(v19, v10);
  OUTLINED_FUNCTION_100();
}

void sub_1D813DFF4()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_19_34(v0, v1, v2, v3);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_39();
  type metadata accessor for CommandExecutionSource();
  swift_allocObject();
  v9[3] = &type metadata for Tracker;
  v9[4] = &off_1F53092B8;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_32_19();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_36_16();
  OUTLINED_FUNCTION_28_24();
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_13_51();
  OUTLINED_FUNCTION_32_19();
  swift_unknownObjectWeakAssign();
  sub_1D818E784();
  sub_1D818E764();
  v5 = OUTLINED_FUNCTION_27_28();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  OUTLINED_FUNCTION_6_91();
  v7 = OUTLINED_FUNCTION_20_43();
  v8(v7);

  OUTLINED_FUNCTION_100();
}

void sub_1D813E138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, __int128 a22, void (*a23)(char *, char *, uint64_t), unsigned __int8 a24, __int128 *a25, uint64_t a26)
{
  OUTLINED_FUNCTION_120();
  v97 = v27;
  v98 = v28;
  v94 = v29;
  v93 = v30;
  v113 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LODWORD(v111) = a24;
  v110 = a23;
  v109 = a22;
  v99 = a26;
  v38 = *v32;
  v39 = *(*v32 + 136);
  OUTLINED_FUNCTION_107();
  v107 = v39;
  v91 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v41 = v40;
  v112 = *(v42 + 64);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v89 - v44;
  v90 = &v89 - v44;
  v46 = *a21;
  v96 = *(a25 + 16);
  *(v26 + 16) = v37;
  *(v26 + 24) = v35;
  v47 = v33;
  v48 = *(v38 + 144);
  v105 = *(v38 + 152);
  OUTLINED_FUNCTION_107();
  v103 = v48;
  *(v26 + 56) = type metadata accessor for StateCommand();
  *(v26 + 64) = &protocol witness table for Command<A>;
  *(v26 + 32) = v33;
  v108 = v33;
  *(v26 + 72) = v46;
  *(v26 + 80) = v109;
  *(v26 + 96) = v110;
  OUTLINED_FUNCTION_30_26(v111);
  v49 = *(v41 + 16);
  v111 = v41 + 16;
  v104 = v49;
  v95 = *a25;
  v50 = v91;
  (v49)(v45, v113, v91);
  v51 = v41;
  v106 = *(v41 + 80);
  v101 = (v106 + 40) & ~v106;
  v102 = v112 + v101;
  v52 = (v106 + 48) & ~v106;
  v53 = swift_allocObject();
  v54 = v107;
  v53[2] = v107;
  v53[3] = v48;
  v55 = v105;
  v53[4] = v105;
  v53[5] = v47;
  v110 = *(v51 + 32);
  *&v109 = v51 + 32;
  v56 = v53 + v52;
  v57 = v52;
  v58 = v90;
  v110(v56, v90, v50);
  *(v26 + 112) = sub_1D813F3E8;
  *(v26 + 120) = v53;
  OUTLINED_FUNCTION_34_19();
  v59 = v50;
  v60 = v104;
  v104();
  v92 = v57;
  v61 = swift_allocObject();
  v62 = v103;
  *(v61 + 2) = v54;
  *(v61 + 3) = v62;
  v63 = v108;
  *(v61 + 4) = v55;
  *(v61 + 5) = v63;
  v64 = v110;
  v110(&v61[v57], v58, v59);
  *(v26 + 128) = sub_1D813F44C;
  *(v26 + 136) = v61;
  v65 = OUTLINED_FUNCTION_22_26();
  (v60)(v65);
  v100 = (v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  *(v66 + 2) = v107;
  *(v66 + 3) = v62;
  v67 = v105;
  *(v66 + 4) = v105;
  v68 = v101;
  v69 = v59;
  v64(&v66[v101], v58, v59);
  v70 = v108;
  v71 = v100;
  *&v66[v100] = v108;
  v72 = &v66[v102];
  v73 = v94;
  *v72 = v93;
  *(v72 + 1) = v73;
  *(v26 + 144) = sub_1D813F4B4;
  *(v26 + 152) = v66;
  v74 = OUTLINED_FUNCTION_22_26();
  (v104)(v74);
  v75 = swift_allocObject();
  v76 = v107;
  v77 = v103;
  *(v75 + 2) = v107;
  *(v75 + 3) = v77;
  *(v75 + 4) = v67;

  v110(&v75[v68], v58, v69);
  *&v75[v71] = v70;
  v78 = &v75[v102];
  v79 = v98;
  *v78 = v97;
  *(v78 + 1) = v79;
  *(v26 + 160) = sub_1D813F908;
  *(v26 + 168) = v75;
  v80 = OUTLINED_FUNCTION_22_26();
  (v104)(v80);
  v81 = swift_allocObject();
  v81[2] = v76;
  v81[3] = v77;
  v82 = v105;
  v81[4] = v105;

  OUTLINED_FUNCTION_34_19();
  v83 = v110;
  (v110)();
  *(v81 + v100) = v70;
  v84 = v81 + v102;
  *v84 = v95;
  v84[16] = v96;
  *(v26 + 176) = sub_1D813F580;
  *(v26 + 184) = v81;
  v85 = v83;
  (v83)(v58, v113, v69);
  v86 = swift_allocObject();
  v87 = v103;
  v86[2] = v76;
  v86[3] = v87;
  v88 = v108;
  v86[4] = v82;
  v86[5] = v88;
  OUTLINED_FUNCTION_34_19();
  v85();
  *(v26 + 192) = sub_1D813F624;
  *(v26 + 200) = v86;
  *(v26 + 208) = v99;
  swift_retain_n();
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_100();
}

void sub_1D813E6B8()
{
  OUTLINED_FUNCTION_18_39();
  OUTLINED_FUNCTION_25_18();
  v1 = OUTLINED_FUNCTION_16_47();
  v2(v1);
  if (v0)
  {
  }
}

void sub_1D813E740()
{
  OUTLINED_FUNCTION_120();
  v21 = v0;
  v2 = v1;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 144);
  v7 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *(v6 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  ObjectType = swift_getObjectType();
  v18 = *(v5 + 136);
  v19 = *(v5 + 152);
  (*(v4 + 80))(v2, v21, v18, v6, v19, ObjectType, v4);
  OUTLINED_FUNCTION_7_4(v12);
  if (v20)
  {
    (*(v9 + 8))(v12, v7);
  }

  else
  {
    (*(v13 + 32))(v16, v12, v6);
    (*(v19 + 8))(&v22, v6, v19);
    (*(v13 + 8))(v16, v6);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D813E974()
{
  OUTLINED_FUNCTION_120();
  v33 = v1;
  v34 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v2;
  v7 = *v2;
  v29 = v8;
  v30 = v7;
  v31 = *(v6 + 144);
  v32 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *(v6 + 136);
  v15 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v29 - v23;
  (*(v17 + 16))(v20, v29, v15, v22);
  OUTLINED_FUNCTION_7_4(v20);
  if (v25)
  {
    ObjectType = swift_getObjectType();
    (*(v5 + 72))(v3, v14, ObjectType, v5);
    OUTLINED_FUNCTION_7_4(v20);
    if (!v25)
    {
      (*(v17 + 8))(v20, v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_85();
    (*(v27 + 32))(v24, v20, v14);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v14);
  }

  v28 = swift_getObjectType();
  (*(v5 + 80))(v3, v24, v14, v31, *(v30 + 152), v28, v5);
  v34(v13, v24);
  (*(v10 + 8))(v13, v32);
  (*(v17 + 8))(v24, v15);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D813EC5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, _BYTE *a7@<X8>)
{
  v35 = a6;
  v32 = a4;
  v33 = a5;
  v36 = a7;
  v9 = *a3;
  v10 = *a3;
  v29 = a1;
  v30 = v10;
  v11 = *(v9 + 144);
  v34 = sub_1D8191E84();
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v28 - v12;
  v14 = *(v9 + 136);
  v15 = sub_1D8191E84();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - v21;
  (*(v16 + 16))(v18, a2, v15, v20);
  if (__swift_getEnumTagSinglePayload(v18, 1, v14) == 1)
  {
    ObjectType = swift_getObjectType();
    v24 = v29;
    (*(v29 + 72))(a3, v14, ObjectType, v29);
    if (__swift_getEnumTagSinglePayload(v18, 1, v14) != 1)
    {
      (*(v16 + 8))(v18, v15);
    }
  }

  else
  {
    (*(*(v14 - 8) + 32))(v22, v18, v14);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v14);
    v24 = v29;
  }

  v25 = swift_getObjectType();
  (*(v24 + 80))(a3, v22, v14, v11, *(v30 + 152), v25, v24);
  v37 = v32;
  v38 = v33;
  v39 = v35;
  v26 = type metadata accessor for StateCommandOptions();
  sub_1D8068248(v13, v26, v36);
  (*(v31 + 8))(v13, v34);
  return (*(v16 + 8))(v22, v15);
}

void sub_1D813EFBC()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_19_34(v0, v1, v2, v3);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_39();
  type metadata accessor for CommandExecutionSource();
  swift_allocObject();
  v9[3] = &type metadata for Tracker;
  v9[4] = &off_1F53092B8;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_32_19();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_36_16();
  OUTLINED_FUNCTION_28_24();
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_13_51();
  OUTLINED_FUNCTION_32_19();
  swift_unknownObjectWeakAssign();
  sub_1D818E784();
  sub_1D818E764();
  v5 = OUTLINED_FUNCTION_27_28();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  OUTLINED_FUNCTION_6_91();
  v7 = OUTLINED_FUNCTION_20_43();
  v8(v7);

  OUTLINED_FUNCTION_100();
}

uint64_t MenuGroupItem.CommandMenuItem.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  v1 = *(v0 + 208);
  *(v0 + 208) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 208);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t MenuGroupItem.CommandMenuItem.__deallocating_deinit()
{
  MenuGroupItem.CommandMenuItem.deinit();
  OUTLINED_FUNCTION_7_79();

  return swift_deallocClassInstance();
}

uint64_t sub_1D813F1EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 74))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 73);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D813F228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 58) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D813F278(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 73) = a2;
  return result;
}

void sub_1D813F2F0()
{
  v0 = OUTLINED_FUNCTION_4_56();
  OUTLINED_FUNCTION_15_15(v0);
  OUTLINED_FUNCTION_1_169();
  OUTLINED_FUNCTION_14_0();
  sub_1D813E974();
}

void sub_1D813F36C()
{
  v0 = OUTLINED_FUNCTION_4_56();
  OUTLINED_FUNCTION_15_15(v0);
  OUTLINED_FUNCTION_1_169();
  OUTLINED_FUNCTION_14_0();
  sub_1D813DDE0();
}

void sub_1D813F3EC()
{
  v0 = OUTLINED_FUNCTION_29_23();
  OUTLINED_FUNCTION_50(v0);
  OUTLINED_FUNCTION_35_19();
  sub_1D813E6B8();
}

void sub_1D813F450()
{
  v0 = OUTLINED_FUNCTION_4_56();
  OUTLINED_FUNCTION_50(v0);
  OUTLINED_FUNCTION_14_0();
  sub_1D813E740();
}

uint64_t objectdestroy_8Tm_2()
{
  v0 = OUTLINED_FUNCTION_11_55();
  OUTLINED_FUNCTION_15_15(v0);
  if (!OUTLINED_FUNCTION_10_59())
  {
    OUTLINED_FUNCTION_5_85();
    v1 = OUTLINED_FUNCTION_26_25();
    v2(v1);
  }

  OUTLINED_FUNCTION_9_52();

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t sub_1D813F580()
{
  v0 = sub_1D8191E84();
  OUTLINED_FUNCTION_15_15(v0);
  OUTLINED_FUNCTION_1_169();
  OUTLINED_FUNCTION_14_0();

  return sub_1D813EC5C(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D813F628()
{
  v0 = OUTLINED_FUNCTION_4_56();
  OUTLINED_FUNCTION_50(v0);
  OUTLINED_FUNCTION_14_0();
  sub_1D813EFBC();
  return v1 & 1;
}

void sub_1D813F694()
{
  v0 = OUTLINED_FUNCTION_29_23();
  OUTLINED_FUNCTION_50(v0);
  OUTLINED_FUNCTION_35_19();
  sub_1D813DD58();
}

uint64_t objectdestroy_20Tm_0()
{
  v0 = OUTLINED_FUNCTION_11_55();
  OUTLINED_FUNCTION_15_15(v0);
  if (!OUTLINED_FUNCTION_10_59())
  {
    OUTLINED_FUNCTION_5_85();
    v1 = OUTLINED_FUNCTION_26_25();
    v2(v1);
  }

  OUTLINED_FUNCTION_9_52();

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm_1()
{
  v0 = OUTLINED_FUNCTION_11_55();
  OUTLINED_FUNCTION_15_15(v0);

  if (!OUTLINED_FUNCTION_10_59())
  {
    OUTLINED_FUNCTION_5_85();
    v1 = OUTLINED_FUNCTION_26_25();
    v2(v1);
  }

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t sub_1D813F884()
{
  v0 = OUTLINED_FUNCTION_4_56();
  OUTLINED_FUNCTION_50(v0);
  OUTLINED_FUNCTION_14_0();
  sub_1D813DFF4();
  return v1 & 1;
}

uint64_t sub_1D813F91C()
{
  OUTLINED_FUNCTION_0_235();
  memcpy(v1, v2, 0x59uLL);
  return sub_1D813F95C(v0) & 1;
}

uint64_t sub_1D813F95C(uint64_t a1)
{
  sub_1D7E0E768(a1, v7);
  sub_1D7FDADC0();
  if (swift_dynamicCast())
  {
    memcpy(v5, __src, 0x59uLL);
    if (*(v1 + 40) == *(&v5[2] + 1) && *(v1 + 48) == *&v5[3])
    {
      sub_1D7E70E44(v5, &qword_1EDBAFB50);
      v3 = 1;
    }

    else
    {
      v3 = sub_1D8192634();
      sub_1D7E70E44(v5, &qword_1EDBAFB50);
    }
  }

  else
  {
    memset(__src, 0, 89);
    memset(v5, 0, 89);
    sub_1D7E70E44(v5, &qword_1EDBAFB50);
    v3 = 0;
  }

  return v3 & 1;
}

BOOL sub_1D813FA60(uint64_t a1)
{
  memcpy(__dst, v1, 0xD9uLL);
  sub_1D7E0E768(a1, v7);
  sub_1D7FDADC0();
  if (swift_dynamicCast())
  {
    nullsub_1(__src);
    memcpy(v8, __src, 0xD9uLL);
    v3 = static GradientSectionDecorationItem.== infix(_:_:)(__dst, v8);
    memcpy(v5, v8, 0xD9uLL);
    sub_1D7FDAE7C(v5);
  }

  else
  {
    sub_1D8140424(v5);
    memcpy(__src, v5, 0xD9uLL);
    memcpy(v8, v5, 0xD9uLL);
    sub_1D7E70E44(v8, &unk_1EDBAFA58);
    return 0;
  }

  return v3;
}

uint64_t sub_1D813FB58(uint64_t a1)
{
  sub_1D7E0E768(a1, v4);
  sub_1D7FDADC0();
  if (swift_dynamicCast())
  {
    sub_1D7E7AC84();
    v1 = sub_1D8191CC4();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL sub_1D813FBE8(uint64_t a1)
{
  memcpy(__dst, v1, 0xC9uLL);
  sub_1D7E0E768(a1, v7);
  sub_1D7FDADC0();
  if (swift_dynamicCast())
  {
    nullsub_1(__src);
    memcpy(v8, __src, 0xC9uLL);
    v3 = static RadialGradientSectionDecorationItem.== infix(_:_:)(__dst, v8);
    memcpy(v5, v8, 0xC9uLL);
    sub_1D804CF34(v5);
  }

  else
  {
    sub_1D814041C(v5);
    memcpy(__src, v5, 0xC9uLL);
    memcpy(v8, v5, 0xC9uLL);
    sub_1D7E70E44(v8, &qword_1ECA11898);
    return 0;
  }

  return v3;
}

uint64_t BlueprintLayoutSectionDecorationItemType<>.isEqualTo(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8191E84();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-v6 - 8];
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D7E0E768(a1, v15);
  sub_1D7FDADC0();
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v7, 0, 1, a2);
    (*(v8 + 32))(v11, v7, a2);
    v12 = sub_1D8190ED4();
    (*(v8 + 8))(v11, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, a2);
    (*(v5 + 8))(v7, v4);
    v12 = 0;
  }

  return v12 & 1;
}

void sub_1D813FEE0(void *a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = 0.0;
  t1.ty = 0.0;
  [a1 setTransform_];
  if (BlueprintViewportScrollData.isOverscrolled.getter())
  {
    OUTLINED_FUNCTION_2_13();
    if (CGRectGetHeight(v52) > 0.0)
    {
      [a2 frame];
      if (v8 == 0.0)
      {
        OUTLINED_FUNCTION_2_13();
        Height = CGRectGetHeight(v53);
        v10 = *(a3 + 16);
        [v10 contentOffset];
        v12 = Height + fabs(v11);
        OUTLINED_FUNCTION_2_13();
        v13 = v12 / CGRectGetHeight(v54);
        [v10 contentOffset];
        v15 = v14;
        OUTLINED_FUNCTION_2_13();
        v16 = v13 * CGRectGetHeight(v55);
        OUTLINED_FUNCTION_2_13();
        v17 = v15 + (v16 - CGRectGetHeight(v56)) * 0.5;
        OUTLINED_FUNCTION_2_13();
        Width = CGRectGetWidth(v57);
        OUTLINED_FUNCTION_2_13();
        v19 = CGRectGetWidth(v58);
        if (v7)
        {
          v20 = (v13 * Width - v19) * 0.5;
          CGAffineTransformMakeScale(&t1, v13, v13);
          tx = t1.tx;
          ty = t1.ty;
          if (v7 == 1)
          {
            v23 = -v20;
            v45 = *&t1.c;
            v47 = *&t1.a;
          }

          else
          {
            v45 = *&t1.c;
            v47 = *&t1.a;
            v23 = v20;
          }

          Translation = CGAffineTransformMakeTranslation(&t1, v23, v17);
          v34 = OUTLINED_FUNCTION_2_153(Translation, v38, v39, v40, v41, v42, v43, v44, v45, *(&v45 + 1), v47, *(&v47 + 1), *&v49.a, *&v49.b, *&v49.c, *&v49.d, *&v49.tx, *&v49.ty, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&t1.a);
          t1.tx = tx;
          t1.ty = ty;
        }

        else
        {
          CGAffineTransformMakeScale(&t1, v13, v13);
          v24 = t1.tx;
          v25 = t1.ty;
          v46 = *&t1.c;
          v48 = *&t1.a;
          v26 = CGAffineTransformMakeTranslation(&t1, 0.0, v17);
          v34 = OUTLINED_FUNCTION_2_153(v26, v27, v28, v29, v30, v31, v32, v33, v46, *(&v46 + 1), v48, *(&v48 + 1), *&v49.a, *&v49.b, *&v49.c, *&v49.d, *&v49.tx, *&v49.ty, *&t2.a, *&t2.b, *&t2.c, *&t2.d, *&t2.tx, *&t2.ty, *&t1.a);
          t1.tx = v24;
          t1.ty = v25;
        }

        *&t2.a = v34;
        *&t2.c = v35;
        *&t2.tx = v36;
        CGAffineTransformConcat(&v49, &t1, &t2);
        t1 = v49;
        [a1 setTransform_];
      }
    }
  }
}

BOOL sub_1D81400E8()
{
  OUTLINED_FUNCTION_0_235();
  memcpy(v1, v2, 0xD9uLL);
  return sub_1D813FA60(v0);
}

BOOL sub_1D8140170()
{
  OUTLINED_FUNCTION_0_235();
  memcpy(v1, v2, 0xC9uLL);
  return sub_1D813FBE8(v0);
}

uint64_t DecorationOverscrollPinPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D8140298()
{
  result = qword_1ECA11890;
  if (!qword_1ECA11890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11890);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DecorationOverscrollPinPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D814042C()
{
  v0 = sub_1D818EBF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D818EC04();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6EA0], v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v9[3] = 1093664768;
  sub_1D8142C5C(0, &qword_1ECA11AA8, MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  result = sub_1D818EC64();
  qword_1ECA118A0 = result;
  return result;
}

uint64_t sub_1D8140600()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
  if (v2)
  {
    v4[0] = *(v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
    memcpy(&v4[1], (v1 + 8), 0x48uLL);
    v5 = v2;
    memcpy(v6, (v1 + 8), sizeof(v6));
    sub_1D8142854(&v5, __dst);
    sub_1D81406A0(v4);
    memcpy(__dst, v4, sizeof(__dst));
    return sub_1D81428B0(__dst);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D81406A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  [*(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textView) setAttributedText_];
  v5 = sub_1D8140A5C(&OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___nextTokenBarButtonItem, 0x69722E776F727261, 0xEB00000000746867, &selRef_nextToken);
  v6 = v5;
  if (v4)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    v8 = (v7 & 0x8000000000000000) == 0 && v7 < *(v3 + 16);
  }

  else
  {
    v8 = *(v2 + 16) != 0;
  }

  [v5 setEnabled_];

  v9 = sub_1D8140A5C(&OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___previousTokenBarButtonItem, 0x656C2E776F727261, 0xEA00000000007466, &selRef_previousToken);
  v10 = v9;
  if ((v4 & 1) == 0)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v11 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_16:
    __break(1u);
    return;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v12 = v11 < *(v3 + 16);
LABEL_12:
  [v9 setEnabled_];

  v15 = sub_1D81409C4();
  v13 = sub_1D8157008();
  sub_1D814512C(v13, v14, v15);
}

uint64_t sub_1D8140844(const void *a1)
{
  memcpy(v4, (v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser), sizeof(v4));
  memcpy((v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser), a1, 0x50uLL);
  sub_1D81427D4(v4);
  return sub_1D8140600();
}

float sub_1D81408A8()
{

  sub_1D818EB24();

  return v1;
}

uint64_t sub_1D81408F4()
{

  sub_1D818EB34();
}

id _s5TeaUI22JSONTextViewControllerC014inputAccessoryD0So6UIViewCSgvg_0()
{
  v1 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___searchToolbar;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___searchToolbar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___searchToolbar);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for JSONTextToolbar()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D81409C4()
{
  v1 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___resultsBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___resultsBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___resultsBarButtonItem);
  }

  else
  {
    v4 = v0;
    memset(v10, 0, sizeof(v10));
    v5 = objc_allocWithZone(MEMORY[0x1E69DC708]);
    v6 = sub_1D80AF378(0, 0, 0, v10, 0);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D8140A5C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = *&v4[*a1];
  if (v6)
  {
    v7 = *&v4[*a1];
  }

  else
  {
    v9 = v4;
    ObjectType = swift_getObjectType();
    sub_1D7E0A1A8(0, &qword_1EDBB2F60);
    v11 = sub_1D7E47238();
    v18[3] = ObjectType;
    v18[0] = v9;
    v12 = *a4;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v13 = v9;
    v14 = sub_1D806CD18(v11, 0, v18, v12);
    v15 = *&v9[v5];
    *&v9[v5] = v14;
    v7 = v14;

    v6 = 0;
  }

  v16 = v6;
  return v7;
}

id sub_1D8140B4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___doneBarButtonItem;
  v4 = *&v0[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___doneBarButtonItem];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___doneBarButtonItem];
LABEL_5:
    v12 = v4;
    return v5;
  }

  v6 = ObjectType;
  sub_1D7E0A1A8(0, &qword_1EDBB2F60);
  result = sub_1D7E47238();
  if (result)
  {
    v8 = result;
    v13[3] = v6;
    v13[0] = v1;
    objc_allocWithZone(MEMORY[0x1E69DC708]);
    v9 = v1;
    v10 = sub_1D806CD18(v8, 2, v13, sel_done);
    v11 = *&v1[v3];
    *&v1[v3] = v10;
    v5 = v10;

    v4 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1D8140C48()
{
  v1 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___textResizeBarButtonItem;
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___textResizeBarButtonItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___textResizeBarButtonItem];
  }

  else
  {
    v4 = v0;
    sub_1D7E0A1A8(0, &qword_1EDBB2F60);
    v5 = sub_1D7E47238();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    objc_allocWithZone(type metadata accessor for ContextMenuBarButtonItem());
    v7 = v4;
    v8 = ContextMenuBarButtonItem.init(image:menuProvider:)(v5, sub_1D8142BF4, v6);
    v9 = *&v4[v1];
    *&v4[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

UIMenu sub_1D8140D48()
{
  sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
  sub_1D7E09CC4(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D81A5090;
  sub_1D7E0A1A8(0, &qword_1EDBB2F18);
  sub_1D7E0A1A8(0, &qword_1EDBB2F60);
  sub_1D7E47238();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 32) = sub_1D8191CF4();
  sub_1D7E47238();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 40) = sub_1D8191CF4();
  return UIMenu.init(children:)(v0);
}

uint64_t sub_1D8140F84()
{
  sub_1D81408A8();
  result = sub_1D81408F4();
  v2 = (v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
  v3 = *v2;
  if (*v2)
  {
    __src[0] = *v2;
    memcpy(&__src[1], v2 + 1, 0x48uLL);
    v6 = v3;
    memcpy(v7, v2 + 1, sizeof(v7));
    sub_1D8142854(&v6, __dst);
    sub_1D81408A8();
    sub_1D8156D0C(v4);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1D81428B0(__dst);
    return sub_1D8140844(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D8141060(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t sub_1D81410BC()
{
  sub_1D81408A8();
  result = sub_1D81408F4();
  v2 = (v0 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
  v3 = *v2;
  if (*v2)
  {
    __src[0] = *v2;
    memcpy(&__src[1], v2 + 1, 0x48uLL);
    v6 = v3;
    memcpy(v7, v2 + 1, sizeof(v7));
    sub_1D8142854(&v6, __dst);
    sub_1D81408A8();
    sub_1D8156D0C(v4);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1D81428B0(__dst);
    return sub_1D8140844(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *JSONTextViewController.init(jsonText:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textView;
  v9 = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD168]), sel_initWithFrame_);
  *&v2[v8] = v9;
  v10 = &v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  v11 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController__textSize;
  if (qword_1ECA0C3E8 != -1)
  {
    OUTLINED_FUNCTION_1_170();
    v9 = swift_once();
  }

  OUTLINED_FUNCTION_0_236(v9, &qword_1ECA118C0);
  swift_allocObject();

  *&v2[v11] = sub_1D818EB44();
  *&v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___searchToolbar] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___resultsBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___nextTokenBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___previousTokenBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___doneBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___textResizeBarButtonItem] = 0;
  v22.receiver = v2;
  v22.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  v13 = sub_1D81408A8();
  v14 = objc_allocWithZone(MEMORY[0x1E696AD40]);

  v15 = [v14 initWithAttributedString_];
  v16 = *MEMORY[0x1E69DB648];
  sub_1D7E0A1A8(0, &qword_1EDBB2FE0);
  v17 = static UIFont.systemFont(ofSize:weight:width:traits:)(0, 1, 1024, v13, *MEMORY[0x1E69DB978]);
  v18 = v15;
  [v18 addAttribute:v16 value:v17 range:{0, objc_msgSend(v18, sel_length)}];

  v19 = &v12[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser];
  memcpy(__dst, &v12[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser], sizeof(__dst));
  *v19 = v18;
  *(v19 + 1) = v18;
  *(v19 + 2) = v6;
  *(v19 + 3) = v7;
  *(v19 + 4) = MEMORY[0x1E69E7CC0];
  *(v19 + 5) = 0;
  v19[48] = 0;
  *(v19 + 7) = 0;
  *(v19 + 8) = 0xE000000000000000;
  *(v19 + 9) = v18;
  v20 = v18;
  sub_1D81427D4(__dst);

  return v12;
}

void sub_1D8141468()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textView;
  v3 = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DD168]), sel_initWithFrame_);
  *(v1 + v2) = v3;
  v4 = (v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v5 = OBJC_IVAR____TtC5TeaUI22JSONTextViewController__textSize;
  if (qword_1ECA0C3E8 != -1)
  {
    OUTLINED_FUNCTION_1_170();
    v3 = swift_once();
  }

  OUTLINED_FUNCTION_0_236(v3, &qword_1ECA118C0);
  swift_allocObject();

  *(v1 + v5) = sub_1D818EB44();
  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___searchToolbar) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___resultsBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___nextTokenBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___previousTokenBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___doneBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___textResizeBarButtonItem) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall JSONTextViewController.viewDidLoad()()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = *&v1[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v25[0] = *&v1[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser];
  OUTLINED_FUNCTION_2_154(v25);
  *&v24[0] = v5;
  OUTLINED_FUNCTION_2_154(v24);
  sub_1D8142854(v25, __dst);
  sub_1D81406A0(v24);
  memcpy(__dst, v24, sizeof(__dst));
  sub_1D81428B0(__dst);
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
  [v6 setObscuresBackgroundDuringPresentation_];
  [v6 setDelegate_];
  [v6 setSearchResultsUpdater_];
  v7 = [v6 searchBar];
  v8 = [v7 searchTextField];

  [v8 setAutocapitalizationType_];
  v9 = [v6 searchBar];
  v10 = [v9 searchTextField];

  v11 = _s5TeaUI22JSONTextViewControllerC014inputAccessoryD0So6UIViewCSgvg_0();
  [v10 setInputAccessoryView_];

  v12 = [v6 searchBar];
  v13 = [v12 searchTextField];

  [v13 setDelegate_];
  v14 = [v1 navigationItem];
  [v14 setSearchController_];

  v15 = [v1 navigationItem];
  [v15 setHidesSearchBarWhenScrolling_];

  v16 = [v1 navigationItem];
  [v16 setPreferredSearchBarPlacement_];

  v17 = *&v1[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textView];
  [v17 setAlwaysBounceVertical_];
  [v17 setDelegate_];
  [v17 setKeyboardDismissMode_];
  [v17 setTextContainerInset_];
  [v17 setEditable_];
  [v17 setSelectable_];
  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    [v18 addSubview_];

    v20 = *(*&v1[OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___searchToolbar] + OBJC_IVAR____TtC5TeaUI15JSONTextToolbar_toolbar);
    sub_1D7E09CC4(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D81A7860;
    v22 = v20;
    *(v21 + 32) = sub_1D81409C4();
    memset(v24, 0, 32);
    v23 = objc_allocWithZone(MEMORY[0x1E69DC708]);
    *(v21 + 40) = sub_1D7FC8078(5, v24, 0);
    *(v21 + 48) = sub_1D8140A5C(&OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___previousTokenBarButtonItem, 0x656C2E776F727261, 0xEA00000000007466, &selRef_previousToken);
    *(v21 + 56) = sub_1D8140A5C(&OBJC_IVAR____TtC5TeaUI22JSONTextViewController____lazy_storage___nextTokenBarButtonItem, 0x69722E776F727261, 0xEB00000000746867, &selRef_nextToken);
    sub_1D8142904(v21, v22);

    return;
  }

LABEL_7:
  __break(1u);
}

Swift::Void __swiftcall JSONTextViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  sub_1D8141B4C();
}

void sub_1D8141B4C()
{
  v1 = [v0 presentingViewController];
  if (v1 && (v1, (v2 = [v0 navigationController]) != 0) && (v3 = v2, v4 = objc_msgSend(v2, sel_viewControllers), v3, sub_1D7E0A1A8(0, &qword_1EDBB31B0), v5 = sub_1D8191314(), v4, v6 = sub_1D7E36AB8(v5), , v6 == 1))
  {
    v7 = [v0 navigationItem];
    sub_1D7E09CC4(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D81A50A0;
    *(v8 + 32) = sub_1D8140B4C();
    sub_1D7F2F7EC(v8, v7);

    v11 = [v0 navigationItem];
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D81A50A0;
    *(v9 + 32) = sub_1D8140C48();
    sub_1D7F2F7F8(v9, v11);
  }

  else
  {
    v11 = [v0 navigationItem];
    sub_1D7E09CC4(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D81A50A0;
    *(v10 + 32) = sub_1D8140C48();
    sub_1D7F2F7EC(v10, v11);
  }
}

Swift::Void __swiftcall JSONTextViewController.viewWillLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillLayoutSubviews);
  sub_1D8141B4C();
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1D8141FA0(void (*result)(void *__return_ptr, uint64_t)))(void *__return_ptr, uint64_t)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
  if (v2)
  {
    v3 = result;
    v11[0] = *(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser);
    OUTLINED_FUNCTION_2_154(v11);
    __src[0] = v2;
    OUTLINED_FUNCTION_2_154(__src);
    v4 = sub_1D8142854(v11, v14);
    v3(v14, v4);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1D81428B0(__dst);
    result = memcpy(__src, v14, sizeof(__src));
    if (__src[0])
    {
      v6 = __src[10];
      v5 = __src[11];
      memcpy(v9, &v14[1], sizeof(v9));
      v8 = __src[0];
      memcpy(v10, v14, sizeof(v10));
      sub_1D81429D8(v10, &v7);
      sub_1D8140844(&v8);
      [*(v1 + OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textView) scrollRangeToVisible_];
      return sub_1D8142AA8(__src);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id JSONTextViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id JSONTextViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall JSONTextViewController.willPresentSearchController(_:)(UISearchController *a1)
{
  v5 = _s5TeaUI22JSONTextViewControllerC014inputAccessoryD0So6UIViewCSgvg_0();
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 tintColor];

    [v5 setTintColor_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall JSONTextViewController.updateSearchResults(for:)(UISearchController *a1)
{
  v2 = v1;
  v4 = sub_1D818E3F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1D7F83EA4([(UISearchController *)a1 searchBar]);
  v11 = v9;
  if (v10)
  {
    __dst[0] = v9;
    __dst[1] = v10;
    sub_1D818E3E4();
    sub_1D7E50D2C();
    v11 = sub_1D8191EC4();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v13 = 0;
  }

  memcpy(__dst, &v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser], sizeof(__dst));
  if (!__dst[0])
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = *&__dst[1];
  v14 = __dst[3];
  memcpy(v26, &v2[OBJC_IVAR____TtC5TeaUI22JSONTextViewController_textParser], sizeof(v26));
  sub_1D8142854(v26, &v24);
  v15 = [v2 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [v15 tintColor];

  if (!v17)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v18 = [v17 colorWithAlphaComponent_];

  if (v13)
  {
    v24 = v23;
    v25 = v14;
    v19 = v23.i64[0];

    sub_1D81570F4(v24.i8, v11, v13, v18, v27);
    sub_1D81427D4(__dst);
  }

  else
  {
    *&v20 = vdupq_laneq_s64(v23, 1).u64[0];
    *(&v20 + 1) = v14;
    v27[0] = vdupq_lane_s64(v23.i64[0], 0);
    v27[1] = v20;
    v33 = v23.i64[0];
    v28 = MEMORY[0x1E69E7CC0];
    v29 = 0;
    v30 = 0;
    v21 = v23.i64[0];

    v22 = v21;

    sub_1D81427D4(__dst);
    v31 = 0;
    v32 = 0xE000000000000000;
  }

  sub_1D8140844(v27);
}

uint64_t sub_1D81427D4(uint64_t a1)
{
  sub_1D7E09CC4(0, &unk_1ECA11900, &type metadata for JSONTextParser, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8142904(uint64_t a1, void *a2)
{
  sub_1D7E0A1A8(0, &qword_1EDBB31D0);
  v3 = sub_1D8191304();

  [a2 setItems_];
}

uint64_t sub_1D81429D8(uint64_t a1, uint64_t a2)
{
  sub_1D8142A3C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D8142A3C()
{
  if (!qword_1ECA11A90)
  {
    type metadata accessor for _NSRange();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA11A90);
    }
  }
}

uint64_t sub_1D8142AA8(uint64_t a1)
{
  sub_1D8142B04();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8142B04()
{
  if (!qword_1ECA11A98)
  {
    sub_1D8142A3C();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11A98);
    }
  }
}

void *sub_1D8142B5C(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (result)
  {

    sub_1D8142BE8();
  }

  return result;
}

void sub_1D8142C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6448], MEMORY[0x1E69D6F10]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D8142CC8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_1D8142D50(v2, v1);
}

uint64_t sub_1D8142D04()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D8142D50(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D8142DBC(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F18A1C;
}

uint64_t sub_1D8142E48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8143568(&v3);
  *a1 = v3;
  return result;
}

void sub_1D8142EBC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style;
  swift_beginAccess();
  if (v2 != *(v1 + v3))
  {
    sub_1D8142F18();
  }
}

void sub_1D8142F18()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style;
  swift_beginAccess();
  v3 = v1[v2];
  v4 = [v1 navigationItem];
  v5 = v4;
  if (v3)
  {
    if (v3 == 1)
    {
      [v4 setTitleView_];

      sub_1D7E49240();
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D81A50A0;
      *(v6 + 32) = sub_1D814387C();
      v7 = sub_1D7E38C7C([v1 navigationItem]);
      if (!v7)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      sub_1D7E45B68(v7);
      v8 = [v1 navigationItem];
      sub_1D80B7B00();
      sub_1D8145598();
      v9 = sub_1D8191144();

      sub_1D7F2F7F8(v9, v8);

      v10 = sub_1D81436F0();
      if (v10)
      {
        v12 = v10;
        v13 = v11;
        v14 = [v1 navigationItem];
        ObjectType = swift_getObjectType();
        v16 = *(v13 + 8);
        v17 = v16(ObjectType, v13);
        sub_1D7FC8B88(v17, v18, v14);

        v19 = [v1 navigationItem];
        (*(v13 + 16))(ObjectType, v13);
        if (v20)
        {
          v21 = sub_1D8190EE4();
        }

        else
        {
          v21 = 0;
        }

        [v19 setSubtitle_];

        v51 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem;
        v52 = *&v1[OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem];
        v53 = v16(ObjectType, v13);
        sub_1D814512C(v53, v54, v52);

        v55 = *&v1[v51];
        v56 = *(v13 + 24);
        v57 = v55;
        v58 = v56(ObjectType, v13);
        [v57 setImage_];
      }
    }

    else
    {
      [v4 setTitleView_];

      v31 = sub_1D7E38C7C([v1 navigationItem]);
      v32 = MEMORY[0x1E69E7CC0];
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = MEMORY[0x1E69E7CC0];
      }

      v34 = [v1 navigationItem];
      v60 = v32;
      v35 = sub_1D7E36AB8(v33);
      for (i = 0; v35 != i; ++i)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x1DA714420](i, v33);
        }

        else
        {
          if (i >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v37 = *(v33 + 8 * i + 32);
        }

        v38 = v37;
        if (__OFADD__(i, 1))
        {
          goto LABEL_46;
        }

        v39 = sub_1D814387C();

        if (v38 == v39)
        {
        }

        else
        {
          sub_1D8192274();
          sub_1D81922B4();
          sub_1D81922C4();
          sub_1D8192284();
        }
      }

      sub_1D7F2F7F8(v60, v34);

      v40 = sub_1D81436F0();
      if (v40)
      {
        v42 = v40;
        v43 = v41;
        v44 = [v1 navigationItem];
        v45 = swift_getObjectType();
        v46 = (*(v43 + 8))(v45, v43);
        sub_1D7FC8B88(v46, v47, v44);

        v48 = [v1 navigationItem];
        (*(v43 + 16))(v45, v43);
        if (v49)
        {
          v50 = sub_1D8190EE4();
        }

        else
        {
          v50 = 0;
        }

        [v48 setSubtitle_];
      }
    }
  }

  else
  {
    [v4 setTitleView_];

    v22 = sub_1D7E38C7C([v1 navigationItem]);
    v23 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    v25 = [v1 navigationItem];
    v59 = v23;
    v26 = sub_1D7E36AB8(v24);
    for (j = 0; ; ++j)
    {
      if (v26 == j)
      {

        sub_1D7F2F7F8(v59, v25);

        return;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1DA714420](j, v24);
      }

      else
      {
        if (j >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v28 = *(v24 + 8 * j + 32);
      }

      v29 = v28;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v30 = sub_1D814387C();

      if (v29 == v30)
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

uint64_t sub_1D8143568@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_7();
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void sub_1D81435B4(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style;
  OUTLINED_FUNCTION_28();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5[0] = v4;
  sub_1D8142EBC(v5);
}

void (*sub_1D8143610(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  *(v3 + 32) = *(v1 + v4);
  return sub_1D814368C;
}

void sub_1D814368C(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  sub_1D81435B4(v3);

  free(v2);
}

unint64_t sub_1D81436F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl);
  v2 = [v1 selectedSegmentIndex];
  v3 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v4 = 0;
  if (v2 >= *(*(v0 + v3) + 16))
  {
    return v4;
  }

  result = [v1 selectedSegmentIndex];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + v3);
    if (result < *(v6 + 16))
    {
      v4 = *(v6 + 16 * result + 32);
      v7 = v4;
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D81437E4()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return sub_1D8190DB4();
}

uint64_t sub_1D8143828(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  OUTLINED_FUNCTION_28();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1D814387C()
{
  v1 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem);
  }

  else
  {
    v4 = v0;
    OUTLINED_FUNCTION_0_8();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = objc_allocWithZone(type metadata accessor for ContextMenuBarButtonItem());
    v7 = ContextMenuBarButtonItem.init(image:menuProvider:)(0, sub_1D8145588, v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

Class sub_1D8143930()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1D81439B8();
  }

  else
  {
    sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
    return UIMenu.init(children:)(MEMORY[0x1E69E7CC0]).super.super.isa;
  }

  return v2;
}

Class sub_1D81439B8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v3 + 16);
  v5._rawValue = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D8190DB4();
    sub_1D81922A4();
    v18 = *(v3 + 16);
    result = sub_1D7E0A1A8(0, &qword_1EDBB2F18);
    v7 = 0;
    v17 = v3;
    v16 = *(v1 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl);
    v8 = (v3 + 40);
    while (v18 != v7)
    {
      if (v7 >= *(v3 + 16))
      {
        goto LABEL_9;
      }

      v9 = *v8;
      v10 = *(v8 - 1);
      [v16 selectedSegmentIndex];
      ObjectType = swift_getObjectType();
      (*(v9 + 8))(ObjectType, v9);
      (*(v9 + 24))(ObjectType, v9);
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = v4;
      v14 = swift_allocObject();
      *(v14 + 24) = v9;
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      *(v15 + 24) = v14;
      sub_1D8191CF4();

      sub_1D8192274();
      sub_1D81922B4();
      v4 = v13;
      v3 = v17;
      sub_1D81922C4();
      result = sub_1D8192284();
      ++v7;
      v8 += 2;
      if (v13 == v7)
      {

        v5._rawValue = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1D7E0A1A8(0, &unk_1EDBB2FD0);
    return UIMenu.init(children:)(v5).super.super.isa;
  }

  return result;
}

id SegmentedViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

char *SegmentedViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{

  *(v3 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style) = 0;
  v5 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl;
  *(v3 + v5) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCF38]), sel_initWithFrame_);
  *(v3 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem) = 0;
  v14 = type metadata accessor for SegmentedViewController();
  OUTLINED_FUNCTION_7();
  v8 = objc_msgSendSuper2(v6, v7, v3, v14);
  v9 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl;
  v10 = *&v8[OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl];
  v11 = v8;
  [v10 addTarget:v11 action:sel_doSegmentChange forControlEvents:4096];
  v12 = [v11 navigationItem];
  [v12 setTitleView_];

  return v11;
}

id SegmentedViewController.__allocating_init(segmentViewControllers:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  OUTLINED_FUNCTION_7();
  v6 = [v4 v5];
  v7 = v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = v6;
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      v12 = *(v10 - 1);
      sub_1D8144058(v12, v11);

      v10 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {
  }

  return v7;
}

id SegmentedViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SegmentedViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style) = 0;
  v1 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCF38]), sel_initWithFrame_);
  *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem) = 0;
  sub_1D81923A4();
  __break(1u);
}

id sub_1D8144058(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 24))(ObjectType, a2);
  v8 = *&v2[OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl];
  if (v7)
  {
    v9 = v7;
    v10 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    [v8 insertSegmentWithImage:v9 atIndex:*(*&v3[v10] + 16) animated:0];
  }

  else
  {
    v11 = (*(a2 + 8))(ObjectType, a2);
    v13 = v12;
    v14 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    sub_1D8145190(v11, v13, *(*&v3[v14] + 16), 0, v8);
  }

  v15 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  swift_beginAccess();
  sub_1D7EE4504();
  v16 = *(*&v3[v15] + 16);
  sub_1D7EE472C();
  v17 = *&v3[v15];
  *(v17 + 16) = v16 + 1;
  v18 = v17 + 16 * v16;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *&v3[v15] = v17;
  swift_endAccess();
  v19 = a1;
  [v3 addChildViewController_];
  [v19 didMoveToParentViewController_];
  result = [v8 isSelected];
  if ((result & 1) == 0)
  {
    [v8 setSelectedSegmentIndex_];
    return [v8 sendActionsForControlEvents_];
  }

  return result;
}

id sub_1D8144238(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_7();
  result = swift_beginAccess();
  v5 = 0;
  v6 = *(v1 + v3);
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  while (v7 != v5)
  {
    if (*v8 == a1)
    {
      v9 = *(v1 + OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl);
      [v9 setSelectedSegmentIndex_];
      return [v9 sendActionsForControlEvents_];
    }

    ++v5;
    v8 += 2;
  }

  return result;
}

void sub_1D81442DC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl];
  v3 = [v2 selectedSegmentIndex];
  v4 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (v3 < *(*&v1[v4] + 16))
  {
    v5 = [v2 selectedSegmentIndex];
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *&v1[v4];
      if (v5 < *(v6 + 16))
      {
        v7 = v6 + 16 * v5;
        v8 = *(v7 + 32);
        v9 = *(v7 + 40);
        ObjectType = swift_getObjectType();
        v70 = v8;
        v11 = v9[4];
        v12 = v8;
        if (v11(ObjectType, v9))
        {
          sub_1D7E0A1A8(0, &qword_1EDBB31D0);
          v13 = sub_1D8191304();
        }

        else
        {
          v13 = 0;
        }

        v14 = objc_opt_self();
        [v1 setToolbarItems:v13 animated:{objc_msgSend(v14, sel_areAnimationsEnabled)}];

        v15 = sub_1D814520C(v1);
        if (v15 && (v11 = sub_1D7E36AB8(v15), , v11))
        {
          v16 = [v1 navigationController];
          if (!v16)
          {
            goto LABEL_14;
          }

          v17 = v16;
          [v16 setToolbarHidden:0 animated:0];
        }

        else
        {
          v18 = [v1 navigationController];
          if (!v18)
          {
            goto LABEL_14;
          }

          v17 = v18;
          [v18 setToolbarHidden:1 animated:0];
        }

LABEL_14:
        v19 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_style;
        OUTLINED_FUNCTION_7();
        swift_beginAccess();
        if (v1[v19])
        {
          if (v1[v19] == 1)
          {
            v20 = sub_1D814387C();
            v21 = v9[1];
            v22 = OUTLINED_FUNCTION_0_237();
            v23 = v21(v22);
            sub_1D814512C(v23, v24, v20);

            v68 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem;
            v25 = v9[3];
            v26 = *&v1[OBJC_IVAR____TtC5TeaUI23SegmentedViewController____lazy_storage___barButtonItem];
            v27 = OUTLINED_FUNCTION_0_237();
            v28 = v25(v27);
            [v26 setImage_];

            v29 = OUTLINED_FUNCTION_8_60();
            v30 = OUTLINED_FUNCTION_0_237();
            v31 = v21(v30);
            sub_1D7FC8B88(v31, v32, v29);

            v33 = OUTLINED_FUNCTION_8_60();
            v34 = OUTLINED_FUNCTION_0_237();
            v35(v34);
            if (v36)
            {
              v37 = sub_1D8190EE4();
            }

            else
            {
              v37 = 0;
            }

            [v33 setSubtitle_];

            v51 = OUTLINED_FUNCTION_8_60();
            sub_1D7E49240();
            v52 = swift_allocObject();
            v53 = *&v1[v69];
            *(v52 + 16) = xmmword_1D81A50A0;
            *(v52 + 32) = v53;
            v54 = v9[5];
            v55 = v53;
            v56 = OUTLINED_FUNCTION_0_237();
            v57 = v54(v56);
            if (!v57)
            {
              v57 = MEMORY[0x1E69E7CC0];
            }

            sub_1D7E45B68(v57);
            sub_1D814527C(v52, 0, v51);

            v58 = OUTLINED_FUNCTION_8_60();
            v59 = OUTLINED_FUNCTION_0_237();
            if (v60(v59))
            {
              sub_1D7E0A1A8(0, &qword_1EDBB31D0);
              v61 = sub_1D8191304();
            }

            else
            {
              v61 = 0;
            }

            [v58 setRightBarButtonItems:v61 animated:0];
            goto LABEL_38;
          }

          v41 = OUTLINED_FUNCTION_3_132();
          OUTLINED_FUNCTION_2_155();
          v42 = OUTLINED_FUNCTION_0_237();
          v44 = v43(v42);
          sub_1D7FC8B88(v44, v45, v11);

          v46 = OUTLINED_FUNCTION_3_132();
          OUTLINED_FUNCTION_2_155();
          v47 = OUTLINED_FUNCTION_0_237();
          v48(v47);
          if (v49)
          {
            v50 = sub_1D8190EE4();
          }

          else
          {
            v50 = 0;
          }

          [v11 setSubtitle_];

          v63 = OUTLINED_FUNCTION_3_132();
          OUTLINED_FUNCTION_2_155();
          v64 = OUTLINED_FUNCTION_0_237();
          if (!v65(v64))
          {
            v62 = 0;
            goto LABEL_34;
          }
        }

        else
        {
          v38 = OUTLINED_FUNCTION_3_132();
          OUTLINED_FUNCTION_2_155();
          v39 = OUTLINED_FUNCTION_0_237();
          if (!v40(v39))
          {
            v62 = 0;
LABEL_34:
            [v11 setLeftBarButtonItems:v62 animated:{objc_msgSend(v14, sel_areAnimationsEnabled)}];

            v58 = OUTLINED_FUNCTION_3_132();
            v66 = OUTLINED_FUNCTION_0_237();
            if (v67(v66))
            {
              sub_1D7E0A1A8(0, &qword_1EDBB31D0);
              v61 = sub_1D8191304();
            }

            else
            {
              v61 = 0;
            }

            [v58 setRightBarButtonItems:v61 animated:{objc_msgSend(v14, sel_areAnimationsEnabled)}];
LABEL_38:

            return;
          }
        }

        sub_1D7E0A1A8(0, &qword_1EDBB31D0);
        v62 = sub_1D8191304();

        goto LABEL_34;
      }
    }

    __break(1u);
  }
}

void sub_1D8144994(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  v3 = sub_1D814520C(v1);
  if (v3)
  {
    v4 = sub_1D7E36AB8(v3);

    if (v4)
    {
      v5 = [v1 navigationController];
      if (v5)
      {
        v6 = v5;
        [v5 setToolbarHidden:0 animated:0];
      }
    }
  }
}

id SegmentedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D8144B30()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentedControl];
  v3 = [v2 selectedSegmentIndex];
  v4 = OBJC_IVAR____TtC5TeaUI23SegmentedViewController_segmentViewControllers;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (v3 >= *(*&v1[v4] + 16))
  {
    return;
  }

  v5 = [v2 selectedSegmentIndex];
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v6 = *&v1[v4];
  if (v5 >= *(v6 + 16))
  {
    goto LABEL_41;
  }

  v7 = v6 + 16 * v5;
  v8 = *(v7 + 40);
  v9 = *(v7 + 32);
  v10 = [v9 view];
  if (!v10)
  {
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
    return;
  }

  v11 = v10;
  v12 = [v10 superview];

  v13 = OUTLINED_FUNCTION_7_80();
  v14 = v13;
  if (v12)
  {
    if (v13)
    {

      if (v12 == v14)
      {
        goto LABEL_37;
      }

      goto LABEL_13;
    }

    v14 = v12;
  }

  else if (!v13)
  {
    goto LABEL_37;
  }

LABEL_13:
  v53 = v8;
  v54 = v9;
  v15 = *&v1[v4];
  v16 = *(v15 + 16);
  v17 = &v1[OBJC_IVAR____TtC5TeaUI23SegmentedViewController_delegate];
  sub_1D8190DB4();
  v55 = v17;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v18 = 0;
  v19 = (v15 + 40);
  while (v16 != v18)
  {
    if (v18 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    v20 = *v19;
    v21 = *(v19 - 1);
    v22 = [v21 view];
    if (!v22)
    {
      goto LABEL_43;
    }

    v23 = v22;
    v24 = [v22 superview];

    v25 = OUTLINED_FUNCTION_7_80();
    v26 = v25;
    if (v24)
    {
      if (v25)
      {

        if (v24 != v26)
        {
          goto LABEL_28;
        }

LABEL_22:
        if (swift_unknownObjectWeakLoadStrong())
        {
          v27 = *(v55 + 1);
          ObjectType = swift_getObjectType();
          (*(v27 + 8))(v1, v21, v20, ObjectType, v27);
          swift_unknownObjectRelease();
        }

        v29 = [v21 view];
        if (!v29)
        {
          goto LABEL_44;
        }

        v26 = v29;
        [v29 removeFromSuperview];
        goto LABEL_27;
      }

      v26 = v24;
    }

    else if (!v25)
    {
      goto LABEL_22;
    }

LABEL_27:

LABEL_28:
    v19 += 2;
    ++v18;
  }

  v30 = OUTLINED_FUNCTION_7_80();
  if (!v30)
  {
    goto LABEL_46;
  }

  v31 = v30;
  v9 = v54;
  v32 = [v54 view];
  if (!v32)
  {
    goto LABEL_47;
  }

  v33 = v32;
  [v31 addSubview_];

  v34 = [v54 view];
  if (!v34)
  {
    goto LABEL_48;
  }

  v35 = v34;
  v36 = OUTLINED_FUNCTION_7_80();
  if (!v36)
  {
    goto LABEL_49;
  }

  v37 = v36;
  [v36 bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  [v35 setFrame_];
  v46 = objc_opt_self();
  OUTLINED_FUNCTION_0_8();
  v47 = swift_allocObject();
  *(v47 + 16) = v1;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1D8145564;
  *(v48 + 24) = v47;
  aBlock[4] = sub_1D7E74D6C;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E74D74;
  aBlock[3] = &block_descriptor_81;
  v49 = _Block_copy(aBlock);
  v50 = v1;

  [v46 performWithoutAnimation_];
  _Block_release(v49);
  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v51 = *(v55 + 1);
    v52 = swift_getObjectType();
    (*(v51 + 16))(v50, v54, v53, v52, v51);

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_37:
}

void sub_1D81450A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_1D8144238(v2);

      v1 = v3;
    }
  }
}

void sub_1D814512C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1D8190EE4();

  [a3 setTitle_];
}

void sub_1D8145190(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_1D8190EE4();

  [a5 insertSegmentWithTitle:v8 atIndex:a3 animated:a4 & 1];
}

uint64_t sub_1D814520C(void *a1)
{
  v1 = [a1 toolbarItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D7E0A1A8(0, &qword_1EDBB31D0);
  v3 = sub_1D8191314();

  return v3;
}

void sub_1D814527C(uint64_t a1, char a2, void *a3)
{
  sub_1D7E0A1A8(0, &qword_1EDBB31D0);
  v5 = sub_1D8191304();

  [a3 setLeftBarButtonItems:v5 animated:a2 & 1];
}

unint64_t sub_1D8145598()
{
  result = qword_1ECA11AD8;
  if (!qword_1ECA11AD8)
  {
    sub_1D80B7B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11AD8);
  }

  return result;
}

_BYTE *_s5SceneVwst(_BYTE *result, int a2, int a3)
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

uint64_t PillViewLayoutOptions.layoutOptions.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x235uLL);
  memcpy(a1, v1, 0x235uLL);
  return sub_1D7E222B8(__dst, v4);
}

void *PillViewLayoutOptions.init(layoutOptions:interitemPadding:verticalPadding:)@<X0>(void *__src@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  result = memcpy(a2, __src, 0x235uLL);
  a2[71] = a3;
  a2[72] = a4;
  return result;
}

uint64_t ImageDownloader.downloadImageAndStoreFilePath(inAssetHandle:usingDispatchGroup:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 40))(a2, v3, v4);
}

uint64_t CommandContextProvider.context<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 88);
  v5 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24[-v9];
  sub_1D7E7B91C(v2 + 16, v24);
  sub_1D7E2CEC0();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_2_156();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    (*(*(v4 - 8) + 32))(a2, v10, v4);
  }

  else
  {
    OUTLINED_FUNCTION_2_156();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    (*(v7 + 8))(v10, v5);
  }

  OUTLINED_FUNCTION_2_156();
  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t CommandContextProvider.contextWithState<A, B>(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = *a1;
  v5 = v49;
  v6 = *(v49 + 144);
  v7 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v47 = v8;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  v52 = v42 - v10;
  OUTLINED_FUNCTION_2();
  v48 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v46 = v42 - v13;
  v14 = *(v5 + 136);
  v51 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v42 - v21;
  OUTLINED_FUNCTION_2();
  v50 = v23;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v42 - v25;
  sub_1D7E7B91C(v2 + 16, v53);
  sub_1D7E2CEC0();
  if (swift_dynamicCast())
  {
    v43 = v7;
    v45 = a2;
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v14);
    v27 = v50;
    v42[0] = *(v50 + 32);
    v42[1] = v50 + 32;
    (v42[0])(v26, v22, v14);
    v28 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v27 + 16))(v19, v26, v14);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v14);
    v29 = *(v28 + 80);
    v30 = v52;
    v31 = v28;
    v32 = v6;
    v29(a1, v19, v14, v6, *(v49 + 152), ObjectType, v31);
    (*(v16 + 8))(v19, v51);
    if (__swift_getEnumTagSinglePayload(v30, 1, v6) != 1)
    {
      v37 = *(v48 + 32);
      v38 = v46;
      v37(v46, v52, v6);
      v39 = *(OUTLINED_FUNCTION_1_171() + 48);
      v40 = v45;
      (v42[0])(v45, v26, v14);
      v37((v40 + v39), v38, v32);
      OUTLINED_FUNCTION_2_156();
      return __swift_storeEnumTagSinglePayload(v34, v35, v36, TupleTypeMetadata2);
    }

    (*(v50 + 8))(v26, v14);
    (*(v47 + 8))(v52, v43);
    TupleTypeMetadata2 = OUTLINED_FUNCTION_1_171();
    v34 = v45;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v14);
    (*(v16 + 8))(v22, v51);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v34 = a2;
  }

  v35 = 1;
  v36 = 1;
  return __swift_storeEnumTagSinglePayload(v34, v35, v36, TupleTypeMetadata2);
}

uint64_t sub_1D8146030(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_6_92();
  a2(a1);
  OUTLINED_FUNCTION_5_86();

  return sub_1D8192824();
}

uint64_t sub_1D81460C8(char a1)
{
  OUTLINED_FUNCTION_6_92();
  sub_1D7F174CC(v3, a1 & 1);
  return sub_1D8192824();
}

uint64_t sub_1D814618C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_6_92();
  a2(v5, a1);
  return sub_1D8192824();
}

uint64_t sub_1D81461F0()
{
  OUTLINED_FUNCTION_6_92();
  sub_1D8190FF4();
  return sub_1D8192824();
}

uint64_t sub_1D8146244(uint64_t a1)
{
  OUTLINED_FUNCTION_6_92();
  MEMORY[0x1DA714A00](a1);
  return sub_1D8192824();
}

uint64_t sub_1D8146284()
{
  OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D81462F4()
{
  OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D814638C()
{
  OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D8146414()
{
  OUTLINED_FUNCTION_2_157();
  sub_1D8190FF4();

  return sub_1D8192824();
}

uint64_t sub_1D8146488()
{
  OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D8146504()
{
  OUTLINED_FUNCTION_2_157();
  sub_1D8190FF4();

  return sub_1D8192824();
}

uint64_t sub_1D814656C()
{
  OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D81465F4()
{
  OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D8146658()
{
  OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D81466E4()
{
  OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D8146784()
{
  OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D8146848()
{
  sub_1D81927E4();
  sub_1D8190FF4();
  return sub_1D8192824();
}

uint64_t sub_1D8146894()
{
  OUTLINED_FUNCTION_2_157();
  sub_1D7F174CC(v2, v0 & 1);
  return sub_1D8192824();
}

uint64_t sub_1D8146900()
{
  OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D814697C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1D81927E4();
  a3(v6, a2);
  return sub_1D8192824();
}

uint64_t sub_1D81469C8()
{
  OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D8146A34()
{
  OUTLINED_FUNCTION_2_157();
  if (!v0)
  {
    OUTLINED_FUNCTION_0_23();
  }

  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D8146AB0()
{
  OUTLINED_FUNCTION_2_157();
  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D8146B20()
{
  OUTLINED_FUNCTION_2_157();
  if (!v0)
  {
    OUTLINED_FUNCTION_0_23();
  }

  OUTLINED_FUNCTION_3_133();

  return sub_1D8192824();
}

uint64_t sub_1D8146BA0(char a1)
{
  result = 0x7365676170;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_0_238();
      break;
    case 2:
      result = OUTLINED_FUNCTION_1_172();
      break;
    case 3:
      result = 0x73656C646E7562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8146BF8(void *__src, char a2)
{
  v3 = v2;
  memcpy(__dst, __src, 0x41uLL);
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    sub_1D8147260(__dst, v10);
    sub_1D7EE444C();
    v7 = *(*(v3 + 24) + 16);
    sub_1D7EE4678();
    v8 = *(v3 + 24);
    *(v8 + 16) = v7 + 1;
    memcpy((v8 + 72 * v7 + 32), __dst, 0x41uLL);
    *(v3 + 24) = v8;
    return swift_endAccess();
  }

  swift_beginAccess();
  v9[0] = *(v3 + 24);
  memcpy(v10, __dst, 0x41uLL);
  sub_1D81472BC();
  sub_1D814730C();
  sub_1D8190DB4();
  v5 = sub_1D8191744();

  result = swift_beginAccess();
  if (*(*(v3 + 24) + 16) < v5)
  {
    __break(1u);
  }

  else if ((v5 & 0x8000000000000000) == 0)
  {
    memcpy(v10, __dst, 0x41uLL);
    sub_1D8147260(__dst, v9);
    sub_1D81325D0(v5, v5, v10);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8146DF8()
{
  v0 = sub_1D81924B4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D8146EB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8146DF8();
  *a1 = result;
  return result;
}

uint64_t sub_1D8146EE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8146BA0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8146F1C()
{

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for DebugSection.Section(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D8147034()
{
  result = qword_1ECA11AE0;
  if (!qword_1ECA11AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11AE0);
  }

  return result;
}

uint64_t sub_1D8147088()
{
  result = 0x7365676170;
  switch(*(v0 + 16))
  {
    case 1:
      result = OUTLINED_FUNCTION_0_238();
      break;
    case 2:
      result = OUTLINED_FUNCTION_1_172();
      break;
    case 3:
      result = 0x73656C646E7562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8147100(uint64_t a1, uint64_t a2)
{
  v2 = 0x7365676170;
  v3 = *(a1 + 16);
  v4 = 0xE500000000000000;
  v5 = 0x7365676170;
  switch(v3)
  {
    case 1:
      v4 = 0xE700000000000000;
      v6 = 0x6E6F69746361;
      goto LABEL_5;
    case 2:
      v4 = 0xE600000000000000;
      v5 = 0x736C6562616CLL;
      break;
    case 3:
      v4 = 0xE700000000000000;
      v6 = 0x656C646E7562;
LABEL_5:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(*(a2 + 16))
  {
    case 1:
      v7 = 0xE700000000000000;
      v8 = 0x6E6F69746361;
      goto LABEL_10;
    case 2:
      v7 = 0xE600000000000000;
      v2 = 0x736C6562616CLL;
      break;
    case 3:
      v7 = 0xE700000000000000;
      v8 = 0x656C646E7562;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v4 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D8192634();
  }

  return v10 & 1;
}

void sub_1D81472BC()
{
  if (!qword_1ECA11AE8)
  {
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11AE8);
    }
  }
}

unint64_t sub_1D814730C()
{
  result = qword_1ECA11AF0;
  if (!qword_1ECA11AF0)
  {
    sub_1D81472BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11AF0);
  }

  return result;
}

uint64_t BlueprintLayout<>.isResizing.getter(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[5];
  v7 = type metadata accessor for BlueprintLayoutItem();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v34 - v8;
  *&v10 = a1[4];
  *&v11 = a1[2];
  *(&v11 + 1) = v5;
  *(&v10 + 1) = v6;
  v41[0] = v11;
  v41[1] = v10;
  v12 = type metadata accessor for BlueprintLayoutSection();
  swift_getWitnessTable();
  v13 = sub_1D8192344();
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v34 - v15;
  v17 = *(v12 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v40 = v34 - v20;
  (*(*(a1 - 1) + 16))(v41, v2, a1, v19);
  v21 = BlueprintLayout.startIndex.getter(a1);
  v42 = v21;
  if (v21 == BlueprintLayout.endIndex.getter(a1))
  {
    v22 = 0;
  }

  else
  {
    v23 = v21;
    v24 = a1;
    v34[1] = v39 + 8;
    v35 = (v17 + 16);
    v37 = a1;
    v34[0] = v17 + 8;
    do
    {
      v39 = v23;
      BlueprintLayout.subscript.getter(v23, v24);
      v39 = BlueprintLayout.index(after:)(v39);
      (*v35)(v16, v40, v12);
      v36 = *(v38 + 36);
      v25 = BlueprintLayoutSection.startIndex.getter(v12);
      (*v34[0])(v40, v12);
      while (v25 != BlueprintLayoutSection.endIndex.getter(v12))
      {
        BlueprintLayoutSection.subscript.getter(v25, v12);
        v25 = BlueprintLayoutSection.index(after:)(v25);
        v26 = (*(a2 + 8))(v5, a2);
        (*(*(v5 - 8) + 8))(v9, v5);
        if (v26)
        {
          v42 = v39;
          v30 = OUTLINED_FUNCTION_0_239();
          v31(v30);
          v22 = 1;
          goto LABEL_10;
        }
      }

      v27 = OUTLINED_FUNCTION_0_239();
      v28(v27, v38);
      v29 = BlueprintLayout.endIndex.getter(v37);
      v24 = v37;
      v23 = v39;
    }

    while (v39 != v29);
    v22 = 0;
    v42 = v39;
  }

LABEL_10:
  swift_getWitnessTable();
  v32 = sub_1D8192344();
  (*(*(v32 - 8) + 8))(v41, v32);
  return v22;
}

id HostingModalCardViewController.init(_:useMaterialBackground:)(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v10 = &v16 - v9;
  sub_1D8190624();
  (*(v8 + 16))(v10, a1, v7);
  v11 = sub_1D8190614();
  result = [v11 view];
  if (result)
  {
    v13 = result;
    v14 = [objc_opt_self() clearColor];
    [v13 setBackgroundColor_];

    v16.receiver = v3;
    v16.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v16, sel_initWithRootViewController_useMaterialBackground_, v11, a2 & 1);

    (*(v8 + 8))(a1, v7);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HostingModalCardViewController.__allocating_init(_:useMaterialBackground:showsCloseButton:)(uint64_t a1, char a2, char a3)
{
  v7 = *(v3 + 10);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = HostingModalCardViewController.__allocating_init(_:useMaterialBackground:)(v11, a2);
  v14.receiver = v12;
  v14.super_class = v3;
  objc_msgSendSuper2(&v14, sel_setShowsCloseButton_, a3 & 1);
  (*(v8 + 8))(a1, v7);
  return v12;
}

id HostingModalCardViewController.__allocating_init(rootViewController:useMaterialBackground:)(void *a1, char a2)
{
  v4 = [objc_allocWithZone(v2) initWithRootViewController:a1 useMaterialBackground:a2 & 1];

  return v4;
}

id HostingModalCardViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

TeaUI::MenuToolbarItemConfiguration __swiftcall MenuToolbarItemConfiguration.init(menu:title:)(UIMenu menu, Swift::String_optional title)
{
  v4 = v2;
  if (title.value._object)
  {
    object = title.value._object;
    countAndFlagsBits = title.value._countAndFlagsBits;
  }

  else
  {
    v7 = menu.super.super.isa;
    v8 = [(objc_class *)v7 title];
    countAndFlagsBits = sub_1D8190F14();
    object = v9;
  }

  v4->super.super.isa = menu.super.super.isa;
  v4[1].super.super.isa = countAndFlagsBits;
  v4[2].super.super.isa = object;
  result.title = title.value;
  result.menu = menu;
  return result;
}

uint64_t MenuToolbarItem.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t MenuToolbarItem.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t MenuToolbarItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8147D88(uint64_t a1)
{
  result = sub_1D8147E34(&qword_1EDBB16F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8147DF0(uint64_t a1)
{
  result = sub_1D8147E34(qword_1EDBB16F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8147E34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MenuToolbarItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id SegmentedControlButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SegmentedControlButton.init(coder:)()
{
  v1 = OBJC_IVAR____TtC5TeaUI22SegmentedControlButton_onTap;
  sub_1D7E40308();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  sub_1D81923A4();
  __break(1u);
}

id SegmentedControlButton.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *SegmentedControlButton.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI22SegmentedControlButton_onTap;
  sub_1D7E40308();
  *(v0 + v2) = [objc_allocWithZone(v3) init];
  v4 = OUTLINED_FUNCTION_80();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, ObjectType);
  [v7 addTarget:*&v7[OBJC_IVAR____TtC5TeaUI22SegmentedControlButton_onTap] action:sel_handleAction forControlEvents:64];
  return v7;
}

id SegmentedControlButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ActivityIndicatorLoadingView.startAnimating()()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_activityIndicatorView);
  if (([v1 isAnimating] & 1) == 0)
  {

    [v1 startAnimating];
  }
}

uint64_t ActivityIndicatorLoadingView.keyboardInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_keyboardInfo;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  return swift_unknownObjectRetain();
}

uint64_t sub_1D81482D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_keyboardInfo;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v4;
  return swift_unknownObjectRetain();
}

id sub_1D8148334(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v2;
  v7 = v1;
  swift_unknownObjectRetain();
  return ActivityIndicatorLoadingView.keyboardInfo.setter(v5);
}

id ActivityIndicatorLoadingView.keyboardInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = &v1[OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_keyboardInfo];
  swift_beginAccess();
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 4) = v3;
  *(v5 + 5) = v4;
  swift_unknownObjectRelease();
  return [v1 setNeedsLayout];
}

id (*ActivityIndicatorLoadingView.keyboardInfo.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D80DAC4C;
}

objc_super *ActivityIndicatorLoadingView.init(style:color:backgroundColor:activityText:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = (v5 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_keyboardInfo);
  *v11 = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  *(v5 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_overrideColor) = 0;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  [v12 setHidesWhenStopped_];
  [v12 setAutoresizingMask_];
  v13 = a2;
  [v12 setColor_];
  *(v5 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_activityIndicatorView) = v12;
  v14 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v15 = v12;
  v16 = OUTLINED_FUNCTION_0_63();
  v18 = [v14 v17];
  v19 = [objc_opt_self() systemFontOfSize_];
  [v18 setFont_];

  if (a5)
  {
    v20 = sub_1D8190EE4();
  }

  else
  {
    v20 = 0;
  }

  [v18 setText_];

  [v18 setTextColor_];
  [v18 setTextAlignment_];
  [v18 setAutoresizingMask_];
  *(v5 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_label) = v18;
  v26 = v5;
  v21 = v18;
  v22 = OUTLINED_FUNCTION_0_63();
  v24 = [(objc_super *)v23 initWithFrame:v22, v26, ObjectType];
  [(objc_super *)v24 addSubview:v15];
  [(objc_super *)v24 addSubview:v21];
  [(objc_super *)v24 setBackgroundColor:a3];

  return v24;
}

void sub_1D81486C4()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_keyboardInfo);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *(v0 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_overrideColor) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall ActivityIndicatorLoadingView.layoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v15);
  [v0 bounds];
  Height = CGRectGetHeight(v16);
  v3 = &v0[OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_keyboardInfo];
  swift_beginAccess();
  if (*(v3 + 5))
  {
    v4 = v3[4];
  }

  else
  {
    v4 = 0.0;
  }

  v5 = Width * 0.5;
  v6 = (Height - v4) * 0.5;
  [*&v0[OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_activityIndicatorView] setCenter_];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D8148C60;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1D7E74D6C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E74D74;
  aBlock[3] = &block_descriptor_82;
  v10 = _Block_copy(aBlock);
  v11 = v0;

  [v7 performWithoutAnimation_];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_1D8148974(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_label);
  [v6 sizeToFit];
  [*(a1 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_activityIndicatorView) bounds];

  return [v6 setCenter_];
}

Swift::Void __swiftcall ActivityIndicatorLoadingView.stopAnimating()()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI28ActivityIndicatorLoadingView_activityIndicatorView);
  if ([v1 isAnimating])
  {

    [v1 stopAnimating];
  }
}

id ActivityIndicatorLoadingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ActivityIndicatorLoadingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id (*sub_1D8148BFC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D80DAC4C;
}

void OpenNewWindowCommandHandler.handle(commandCenter:command:with:source:)()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_39();

  sub_1D8148D80();
}

void sub_1D8148D28()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_39();

  sub_1D8148D80();
}

void sub_1D8148D80()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCE80]) init];
  v1 = [objc_opt_self() sharedApplication];
  v4[4] = sub_1D7F32150;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1D806D054;
  v4[3] = &block_descriptor_83;
  v2 = _Block_copy(v4);
  v3 = v0;
  [v1 requestSceneSessionActivation:0 userActivity:0 options:v3 errorHandler:v2];
  _Block_release(v2);
}

id AssetHandleType.image.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v15);
  if (v16)
  {
    sub_1D7E05450(&v15, v17);
    OUTLINED_FUNCTION_27_0(v17);
    v2 = OUTLINED_FUNCTION_3_1();
    if (v3(v2))
    {
      OUTLINED_FUNCTION_27_0(v17);
      v4 = OUTLINED_FUNCTION_3_1();
      v5(v4);
      if (v6)
      {
        sub_1D7E471D0();
        OUTLINED_FUNCTION_109();
        v7 = sub_1D8148FE0();
LABEL_10:
        v11 = v7;
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        return v11;
      }
    }

    OUTLINED_FUNCTION_27_0(v17);
    v8 = OUTLINED_FUNCTION_3_1();
    v9(v8);
    if (v10 >> 60 != 15)
    {
      sub_1D7E471D0();
      v12 = OUTLINED_FUNCTION_109();
      v7 = sub_1D8149054(v12, v13);
      goto LABEL_10;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    sub_1D7F5867C(&v15);
  }

  return 0;
}

id sub_1D8148FE0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D8190EE4();

  v2 = [v0 initWithContentsOfFile_];

  return v2;
}

id sub_1D8149054(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1D818E674();
  v6 = [v4 initWithData_];

  sub_1D7EF4CE0(a1, a2);
  return v6;
}

uint64_t AssetHandleType.filePath.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5);
  if (v5[3])
  {
    OUTLINED_FUNCTION_27_0(v5);
    v2 = OUTLINED_FUNCTION_3_1();
    v3(v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_1D7F5867C(v5);
  }

  return OUTLINED_FUNCTION_109();
}

uint64_t ImageAssetHandle.__allocating_init(image:uniqueKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ImageAssetHandle.init(image:uniqueKey:)(a1, a2, a3);
  return v6;
}

void *ImageAssetHandle.init(image:uniqueKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0;
  swift_beginAccess();
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *ImageAssetHandle.fallbackImage.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void ImageAssetHandle.fallbackImage.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ImageAssetHandle.uniqueKey.getter()
{
  swift_beginAccess();
  sub_1D8190DB4();
  return OUTLINED_FUNCTION_109();
}

uint64_t ImageAssetHandle.uniqueKey.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

double ImageAssetHandle.assetDataProvider.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ImageAssetHandle.__deallocating_deinit()
{
  ImageAssetHandle.deinit();

  return swift_deallocClassInstance();
}

uint64_t NotificationResponseError.hashValue.getter()
{
  sub_1D81927E4();
  MEMORY[0x1DA714A00](0);
  return sub_1D8192824();
}

uint64_t UserNotificationHandlerType.handle(didReceiveRemoteNotification:)()
{
  v0 = sub_1D818F7B4();
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6970], v1);
  sub_1D814A6E8(0, &qword_1EDBB1FA0, MEMORY[0x1E69D6980]);
  swift_allocObject();
  return sub_1D818FB44();
}

uint64_t UserNotificationHandlerType.handle(willPresent:)()
{
  sub_1D814A6E8(0, &qword_1EDBB1F88, type metadata accessor for UNNotificationPresentationOptions);
  swift_allocObject();
  return sub_1D818FB44();
}

uint64_t UserNotificationHandlerType.handle(received:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_56_0();
  v1 = type metadata accessor for UserNotificationResponseResult();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - v2;
  sub_1D818FBB4();
  __swift_storeEnumTagSinglePayload(v3, 2, 2, AssociatedTypeWitness);
  return sub_1D818FB34();
}

uint64_t UserNotificationHandlerManager.__allocating_init()()
{
  v0 = swift_allocObject();
  UserNotificationHandlerManager.init()();
  return v0;
}

uint64_t sub_1D8149968(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_1D81499E4(a3);
  if (result)
  {
    (*(a1 + 16))(a3);
    MEMORY[0x1DA713500]();
    sub_1D7E2893C(*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10));
    return sub_1D8191404();
  }

  return result;
}

uint64_t sub_1D81499E4(uint64_t a1)
{
  sub_1D7E1DA50(v1, v14);
  if (!v15)
  {
    v6 = v14[0];
    sub_1D8192124();
    sub_1D7EDF46C();
    sub_1D7F060D8(v11);
    if (v10)
    {
      sub_1D814AF54();
      if (swift_dynamicCast())
      {
        sub_1D8192124();
        sub_1D7EDF46C();

        sub_1D7F060D8(v11);
        if (swift_dynamicCast())
        {
          if (v6 != 0x79726F6765746163 || *(&v6 + 1) != 0xE800000000000000)
          {
            v5 = sub_1D8192634();

            return v5 & 1;
          }

LABEL_17:
          v5 = 1;
          return v5 & 1;
        }
      }
    }

    else
    {

      sub_1D7E7BAAC(v9);
    }

    v5 = 0;
    return v5 & 1;
  }

  if (v15 != 1)
  {
    goto LABEL_17;
  }

  sub_1D7E05450(v14, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v5 = (*(v4 + 8))(a1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v5 & 1;
}

uint64_t sub_1D8149BF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D818F7B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = *MEMORY[0x1E69D6978];
  v11 = *(v5 + 104);
  (v11)(v8, *MEMORY[0x1E69D6978], v4, v6);
  v16 = v8;
  v12 = sub_1D7F8F4BC(sub_1D814AFB8, v15, v9);
  (*(v5 + 8))(v8, v4);
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = *MEMORY[0x1E69D6970];
  }

  return v11(a2, v13, v4);
}

uint64_t sub_1D8149DB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_6_93();
  type metadata accessor for AnyHandler();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_3_134();
  OUTLINED_FUNCTION_52();
  sub_1D8191484();
  OUTLINED_FUNCTION_18();
  swift_getWitnessTable();
  sub_1D8191224();

  v5 = sub_1D818FA14();
  a4(0);
  sub_1D818F904();

  v6 = sub_1D818FA14();
  v7 = sub_1D818FAC4();

  return v7;
}

uint64_t sub_1D8149F30(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = sub_1D8149FAC(a3);
  if (result)
  {
    (*(a1 + 32))(a3);
    MEMORY[0x1DA713500]();
    sub_1D7E2893C(*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10));
    return sub_1D8191404();
  }

  return result;
}

uint64_t sub_1D8149FAC(void *a1)
{
  v1 = [a1 request];
  v2 = [v1 content];

  v3 = [v2 userInfo];
  v4 = sub_1D8190D54();

  LOBYTE(v3) = sub_1D81499E4(v4);

  return v3 & 1;
}

uint64_t sub_1D814A068@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = (*result + 32);
    v4 = 27;
    do
    {
      v5 = *v3++;
      v4 &= v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = 27;
  }

  *a2 = v4;
  return result;
}

uint64_t UserNotificationHandlerManager.handle(received:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_12_0();
  v3 = *(v2 + 88);
  type metadata accessor for UserNotificationResponseResult();
  OUTLINED_FUNCTION_56_0();
  sub_1D818FBB4();
  sub_1D8190D34();
  OUTLINED_FUNCTION_6_93();
  type metadata accessor for AnyHandler();
  sub_1D8190DB4();
  OUTLINED_FUNCTION_3_134();
  OUTLINED_FUNCTION_52();
  sub_1D8191484();
  OUTLINED_FUNCTION_18();
  swift_getWitnessTable();
  sub_1D8191224();

  sub_1D8191484();
  swift_getWitnessTable();
  if (sub_1D8191874())
  {
    sub_1D8191484();
    OUTLINED_FUNCTION_52();
    sub_1D818FBB4();
    OUTLINED_FUNCTION_56_0();
    sub_1D81925C4();
    swift_allocObject();
    v4 = sub_1D8191394();
    __swift_storeEnumTagSinglePayload(v5, 2, 2, v1);
    sub_1D7F7ABF0(v4);
    v6 = sub_1D818FB34();
  }

  else
  {
    v7 = sub_1D818FA14();
    sub_1D818F904();

    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = v3;
    OUTLINED_FUNCTION_56_0();
    sub_1D8191484();
    v9 = sub_1D810A4D8();
    v6 = sub_1D818FAB4();
  }

  return v6;
}

uint64_t sub_1D814A378(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_1D814A438(a3);
  if (result)
  {
    (*(a1 + 48))(a3);
    type metadata accessor for UserNotificationResponseResult();
    sub_1D818FBB4();
    sub_1D8191484();
    return sub_1D8191434();
  }

  return result;
}

uint64_t sub_1D814A438(void *a1)
{
  v1 = [a1 notification];
  v2 = [v1 request];

  v3 = [v2 content];
  v4 = [v3 userInfo];

  v5 = sub_1D8190D54();
  v6 = sub_1D81499E4(v5);

  return v6 & 1;
}

uint64_t sub_1D814A514()
{
  type metadata accessor for UserNotificationResponseResult();
  sub_1D8191484();
  sub_1D818FBB4();
  sub_1D8190DB4();
  return sub_1D818FB34();
}

uint64_t UserNotificationHandlerManager.__deallocating_deinit()
{
  UserNotificationHandlerManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t UserNotificationHandlerType.handle(didReceive:)()
{
  sub_1D814AF04(0, &qword_1EDBBC3E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D818FB44();
}

uint64_t sub_1D814A6AC()
{
  sub_1D8125238();

  return swift_deallocClassInstance();
}

void sub_1D814A6E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D818FBB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D814A7C4()
{
  result = qword_1ECA11B20[0];
  if (!qword_1ECA11B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA11B20);
  }

  return result;
}

uint64_t sub_1D814A818(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D814A854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationResponseError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D814A9AC()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1D814AA08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
        if (EnumTagSinglePayload >= 3)
        {
          return EnumTagSinglePayload - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return v6 + (v7 | v15) + 1;
}

void sub_1D814ABD4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 2;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 2;

          __swift_storeEnumTagSinglePayload(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}

void sub_1D814AF04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D814AF54()
{
  if (!qword_1EDBAE648)
  {
    v0 = sub_1D8190E14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBAE648);
    }
  }
}

uint64_t PersonalizedAdsPromptButtonStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

unint64_t sub_1D814B08C()
{
  result = qword_1ECA11BA8;
  if (!qword_1ECA11BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA11BA8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalizedAdsPromptButtonStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PillViewImageRenderer.__allocating_init(imageCache:imageRequestFactory:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1D7E05450(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t PillViewImageRenderer.init(imageCache:imageRequestFactory:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1D7E05450(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

void PillViewImageRenderer.render(image:with:in:layoutAttributes:)(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = type metadata accessor for PillViewIconURL();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PillViewImage();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D803D9B4(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D803DAC4(v12, v9);
      memcpy(v15, a4, sizeof(v15));
      sub_1D814B478(v9, a3, v15);
      sub_1D814BA30(v9, type metadata accessor for PillViewIconURL);
    }

    else
    {
      memcpy(v16, v12, sizeof(v16));
      memcpy(v15, a4, sizeof(v15));
      sub_1D814B650(v16, a3, v15);
      sub_1D803DA18(v16);
    }
  }

  else
  {
    v14 = v12[2];
    sub_1D7E471D0();
    sub_1D8190DB4();
    v17.value.super.isa = sub_1D7E47238();
    sub_1D7E73860(v17);
  }
}

void sub_1D814B478(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1D818E644();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = *(v3 + 64);
  ObjectType = swift_getObjectType();
  v14 = [a2 traitCollection];
  [v14 displayScale];
  v16 = v15;

  PillViewIconURL.url(at:)(v16);
  (*(v12 + 16))(&v17, v9, ObjectType, v12, v10, v11);
  (*(v7 + 8))(v9, v6);
  if (v18)
  {
    sub_1D7E05450(&v17, v19);
    sub_1D814B784(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    sub_1D814BA30(&v17, sub_1D814BA90);
    v20.value.super.isa = 0;
    sub_1D7E73860(v20);
  }
}

void sub_1D814B650(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(v4 + 64);
  ObjectType = swift_getObjectType();
  v11 = [a2 traitCollection];
  [v11 displayScale];
  v13 = v12;

  (*(v9 + 8))(&v14, a1, ObjectType, v9, v13, v7, v8);
  if (v15)
  {
    sub_1D7E05450(&v14, v16);
    sub_1D814B784(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    sub_1D814BA30(&v14, sub_1D814BA90);
    v17.value.super.isa = 0;
    sub_1D7E73860(v17);
  }
}

void sub_1D814B784(void *a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5.value.super.isa = (*(v4 + 24))(a1, v3, v4);
  if (v5.value.super.isa)
  {
    isa = v5.value.super.isa;
    v8 = v5.value.super.isa;
    v10.value.super.isa = isa;
    sub_1D7E73860(v10);
  }

  else
  {
    sub_1D7E73860(v5);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    ImageView.loadImage(from:with:interestToken:completion:)(v1 + 2, a1, 0, sub_1D814BAE8, v7);
  }
}

void sub_1D814B8B0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5TeaUI8PillView_iconImageView);

    ImageView.crossFadeImage(_:animated:completion:)(a1, 1, 0, 0);
  }
}

uint64_t PillViewImageRenderer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PillViewImageRenderer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D814BA30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D814BA90()
{
  if (!qword_1ECA11BB0)
  {
    sub_1D80440B0();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA11BB0);
    }
  }
}

void sub_1D814BB0C(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *(a1 + 24) = &type metadata for SizeLayoutAttributes;
  *a1 = a2;
  *(a1 + 8) = a3;
}

void *sub_1D814BB20@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for SectionFooterViewLayoutAttributes;
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = (v3 + 16);

  return memcpy(v4, v1, 0x68uLL);
}

double *sub_1D814BB80@<X0>(double **a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  a1[3] = &type metadata for FrameLayoutAttributes;
  result = swift_allocObject();
  *a1 = result;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

double sub_1D814BC00(CGFloat a1, CGFloat a2)
{
  v3.size.height = a2;
  v3.size.width = a1;
  v3.origin.x = 0.0;
  v3.origin.y = 0.0;
  return CGRectGetHeight(v3);
}

double static FrameLayoutAttributes.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1D814BE3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D814BE94()
{
  result = OUTLINED_FUNCTION_1_173();
  if (result)
  {
    OUTLINED_FUNCTION_3_135();
    OUTLINED_FUNCTION_2_159();
    v1 = OUTLINED_FUNCTION_0_240();
    v2(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D814BF0C()
{
  result = OUTLINED_FUNCTION_1_173();
  if (result)
  {
    OUTLINED_FUNCTION_3_135();
    OUTLINED_FUNCTION_2_159();
    v1 = OUTLINED_FUNCTION_0_240();
    v2(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D814BF84(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_3_135();
    OUTLINED_FUNCTION_2_159();
    (*(v5 + 40))(a1, a2 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D814C014()
{
  result = OUTLINED_FUNCTION_1_173();
  if (result)
  {
    OUTLINED_FUNCTION_3_135();
    OUTLINED_FUNCTION_2_159();
    v1 = OUTLINED_FUNCTION_0_240();
    v2(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D814C08C()
{
  result = OUTLINED_FUNCTION_1_173();
  if (result)
  {
    OUTLINED_FUNCTION_3_135();
    OUTLINED_FUNCTION_2_159();
    v1 = OUTLINED_FUNCTION_0_240();
    v2(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D814C104(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 64))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D814C18C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 72))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D814C214()
{
  sub_1D7E166A0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t AutomationType.automationIdentifier(encoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v6 = sub_1D8190F74();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AutomationIdentifier();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v24 - v13);
  if (qword_1EDBBAED8 != -1)
  {
    swift_once();
  }

  if (byte_1EDBC6078 != 1)
  {
    return 0;
  }

  (*(v7 + 16))(v10, v3, a2);
  sub_1D7FE9434(v10, a2, a3, v14);
  swift_getWitnessTable();
  v15 = v25;
  v16 = v28;
  v17 = sub_1D818E3A4();
  if (v16)
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v20 = v17;
    v21 = v18;
    (*(v12 + 8))(v14, v11);
    v26 = v20;
    v27 = v21;
    sub_1D8190F64();
    sub_1D804A7E8();
    v22 = sub_1D8190F44();
    if (v23)
    {
      v15 = v22;
      sub_1D7EF4CE0(v20, v21);
    }

    else
    {
      sub_1D7EF4CE0(v20, v21);
      return 0;
    }
  }

  return v15;
}

id sub_1D814C57C()
{
  v1 = OBJC_IVAR____TtC5TeaUI25TabBarContainerController____lazy_storage___intrinsicTabBar;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController____lazy_storage___intrinsicTabBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController____lazy_storage___intrinsicTabBar);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCFF0]) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D814C600(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI25TabBarContainerController____lazy_storage___intrinsicTabBar] = 0;
  *&v1[OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D814C664()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController____lazy_storage___intrinsicTabBar) = 0;
  sub_1D81923A4();
  __break(1u);
}

id sub_1D814C6E4()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    result = [v1 view];
    if (result)
    {
      v4 = result;
      [v3 addSubview_];

      return [v1 didMoveToParentViewController_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D814C808()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_1D814C938()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI25TabBarContainerController_rootViewController);
  v2 = v1;
  return v1;
}

__n128 DebugItem.init(title:model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 48);
  *a4 = a1;
  *(a4 + 8) = a2;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  result = *(a3 + 32);
  *(a4 + 48) = result;
  *(a4 + 64) = v4;
  return result;
}

uint64_t DebugItem.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 64);
  *(a1 + 48) = v8;
  return sub_1D804E800(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t DebugItem.label.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

uint64_t DebugItem.cellStyle.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  switch(*(v1 + 64))
  {
    case 1:
    case 3:
      goto LABEL_4;
    case 6:
      if (!*(v1 + 24))
      {
        goto LABEL_2;
      }

LABEL_4:
      v4 = sub_1D8190DB4();
      break;
    case 7:
      v5 = (v2 & 1) == 0;
      if (v2)
      {
        v2 = 5457241;
      }

      else
      {
        v2 = 20302;
      }

      if (v5)
      {
        v4 = 0xE200000000000000;
      }

      else
      {
        v4 = 0xE300000000000000;
      }

      break;
    case 9:
      v7 = *(v1 + 48);
      v6 = *(v1 + 56);
      v12 = *(v1 + 32);
      v13 = *(v1 + 40);
      sub_1D8190DB4();
      MEMORY[0x1DA713260](10272, 0xE200000000000000);
      MEMORY[0x1DA713260](v7, v6);
      MEMORY[0x1DA713260](41, 0xE100000000000000);
      v2 = v12;
      v4 = v13;
      break;
    default:
LABEL_2:

      v4 = 0xE100000000000000;
      v2 = 45;
      break;
  }

  *a1 = v2;
  a1[1] = v4;
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = nullsub_1;
  a1[4] = 0;
  v8 = *MEMORY[0x1E69D6E08];
  v9 = sub_1D818EB64();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}

uint64_t sub_1D814CC24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1D814CC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D814CD30@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1D81905F4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1D81546E4();
  return sub_1D814CD78(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_1D814CD78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v219 = a2;
  sub_1D8154C10(0, &unk_1ECA11D28);
  v196 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v195 = &v168 - v4;
  sub_1D8154AD0();
  v201 = v5;
  v198 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v197 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8154A1C(0, &unk_1ECA11D50);
  v202 = v7;
  MEMORY[0x1EEE9AC00](v7);
  *(&v203 + 1) = &v168 - v8;
  sub_1D8150C5C(0, &unk_1ECA11D58);
  v199 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v208 = &v168 - v10;
  sub_1D8154A88(0);
  *&v203 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v200 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D81549FC(0);
  v218 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v204 = &v168 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E6981148];
  v16 = MEMORY[0x1E697F948];
  sub_1D81548A8(0, &qword_1ECA11D60, sub_1D8154910, MEMORY[0x1E6981148], MEMORY[0x1E697F948]);
  v178 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v179 = (&v168 - v18);
  sub_1D81548A8(0, &qword_1ECA11D68, sub_1D815494C, v15, v16);
  v170 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v171 = (&v168 - v20);
  v192 = type metadata accessor for JSONView(0);
  MEMORY[0x1EEE9AC00](v192);
  v191 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D815494C();
  v205 = v22;
  v194 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v193 = &v168 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8154910(0);
  v177 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v172 = &v168 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E189E8(0, &qword_1ECA0CFE0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v173 = &v168 - v27;
  v176 = sub_1D8190F74();
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v174 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D815486C(0);
  v183 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v180 = &v168 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8154E38(0, &unk_1ECA11D70);
  v181 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v182 = (&v168 - v32);
  sub_1D815484C(0);
  v188 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v184 = &v168 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8150C5C(0, &unk_1ECA11D78);
  v209 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v211 = &v168 - v36;
  sub_1D8154E98(0, &unk_1ECA11D80);
  v186 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v187 = (&v168 - v38);
  sub_1D815482C(0);
  v210 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v189 = &v168 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1D818F824();
  v220 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v190 = &v168 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v168 = &v168 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v169 = &v168 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v206 = &v168 - v47;
  sub_1D81547E4(0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v217 = &v168 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v216 = &v168 - v51;
  v52 = a1;
  v53 = a1[1];
  *&v226 = *a1;
  *(&v226 + 1) = v53;
  v54 = sub_1D7E50D2C();
  sub_1D8190DB4();
  v185 = v54;
  v55 = sub_1D8190814();
  v57 = v56;
  v59 = v58;
  sub_1D8190794();
  v60 = sub_1D81907F4();
  v62 = v61;
  v64 = v63;

  v65 = MEMORY[0x1E69E7D48];
  sub_1D8155450(v55, v57, v59 & 1, MEMORY[0x1E69E7D48]);
  v66 = v52;
  v67 = v220;

  *&v226 = sub_1D8190904();
  v68 = sub_1D81907E4();
  v213 = v69;
  v214 = v68;
  v212 = v70;
  v215 = v71;
  v72 = v65;
  v73 = v207;
  sub_1D8155450(v60, v62, v64 & 1, v72);
  v74 = v206;

  v75 = *(type metadata accessor for JSONView.RowView(0) + 20);
  v76 = *(v67 + 16);
  v76(v74, v66 + v75, v73);
  v77 = *(v67 + 88);
  v78 = v77(v74, v73);
  v79 = *MEMORY[0x1E69D6A48];
  if (v78 == *MEMORY[0x1E69D6A48])
  {
    v80 = (*(v67 + 96))(v74, v73);
    MEMORY[0x1EEE9AC00](v80);
    v81 = sub_1D8190DB4();
    sub_1D814F6D0(v81, v66, v195);
    sub_1D8154B8C();
    sub_1D8154C70();
    sub_1D8154D0C();
    v82 = v197;
    sub_1D81903B4();

    v83 = v198;
    v84 = v201;
    (*(v198 + 16))(v208, v82, v201);
    swift_storeEnumTagMultiPayload();
    sub_1D8150E10(&qword_1ECA11D90, sub_1D815494C);
    sub_1D8150E10(&qword_1ECA11D98, sub_1D8154AD0);
    sub_1D8190634();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    v85 = MEMORY[0x1E69E73E0];
    sub_1D8154DE4(0, &qword_1ECA11D48, MEMORY[0x1E69E73E0], MEMORY[0x1E697F960]);
    sub_1D8154F08();
    sub_1D8154FE4(&qword_1ECA11DA0, &qword_1ECA11D48, v85);
    sub_1D8190634();
    sub_1D8155330();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815508C();
    sub_1D8155290();
    sub_1D8190634();
    sub_1D8155330();
    (*(v83 + 8))(v82, v84);

LABEL_12:
    sub_1D8155038();
    v112 = v219;
    v114 = v213;
    v113 = v214;
    *v219 = v214;
    v112[1] = v114;
    v115 = v212 & 1;
    *(v112 + 16) = v212 & 1;
    v112[3] = v215;
    sub_1D815477C();
    sub_1D8155038();
    sub_1D8133EC0(v113, v114, v115);
    sub_1D8190DB4();
    sub_1D8155330();
    sub_1D8155330();
    sub_1D8155450(v113, v114, v115, MEMORY[0x1E69E7D48]);
  }

  v86 = v74;
  v87 = v208;
  if (v78 == *MEMORY[0x1E69D6A30])
  {
    v88 = v86;
    v89 = (*(v67 + 96))(v86, v73);
    v220 = *v88;
    v90 = MEMORY[0x1EEE9AC00](v89);
    v91 = v66 + v75;
    v92 = v190;
    (v76)(v190, v91, v90);
    sub_1D8190DB4();
    JSONView.init(value:)(v92, v191);
    sub_1D8150E10(&qword_1ECA11D00, type metadata accessor for JSONView);
    v93 = v193;
    sub_1D81903B4();

    v94 = v194;
    v95 = v205;
    (*(v194 + 16))(v87, v93, v205);
    swift_storeEnumTagMultiPayload();
    sub_1D8150E10(&qword_1ECA11D90, sub_1D815494C);
    sub_1D8150E10(&qword_1ECA11D98, sub_1D8154AD0);
    sub_1D8190634();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    v96 = MEMORY[0x1E69E73E0];
    sub_1D8154DE4(0, &qword_1ECA11D48, MEMORY[0x1E69E73E0], MEMORY[0x1E697F960]);
    sub_1D8154F08();
    sub_1D8154FE4(&qword_1ECA11DA0, &qword_1ECA11D48, v96);
    sub_1D8190634();
    sub_1D8155330();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815508C();
    sub_1D8155290();
    sub_1D8190634();
    sub_1D8155330();
    (*(v94 + 8))(v93, v95);
    goto LABEL_11;
  }

  if (v78 == *MEMORY[0x1E69D6A50])
  {
    LODWORD(v204) = *MEMORY[0x1E69D6A30];
    v97 = v86;
    (*(v67 + 96))(v86, v73);
    v99 = *(*v97 + 2);
    v98 = *(*v97 + 3);
    v208 = *v97;
    sub_1D8190DB4();
    v100 = v174;
    sub_1D8190F64();
    v206 = sub_1D8190F24();
    v102 = v101;
    (*(v175 + 8))(v100, v176);
    if (v102 >> 60 == 15)
    {
      *&v226 = v99;
      *(&v226 + 1) = v98;
      v106 = sub_1D8190814();
      v107 = v179;
      *v179 = v106;
      v107[1] = v108;
      *(v107 + 16) = v109 & 1;
      v107[3] = v110;
      swift_storeEnumTagMultiPayload();
      sub_1D81551E0();
      sub_1D8190634();
    }

    else
    {
      *(&v203 + 1) = v98;
      *&v203 = v99;
      sub_1D818E344();
      swift_allocObject();
      sub_1D818E334();
      sub_1D8150E10(&qword_1ECA0D008, MEMORY[0x1E69D6A58]);
      v103 = v102;
      v104 = v173;
      v105 = v73;
      sub_1D818E314();
      v202 = v103;

      __swift_storeEnumTagSinglePayload(v104, 0, 1, v73);
      v140 = v220;
      v141 = v169;
      (*(v220 + 32))(v169, v104, v105);
      v142 = v168;
      v76(v168, v141, v105);
      v143 = v77(v142, v105);
      if (v143 == v79 || v143 == v204)
      {

        v165 = *(v140 + 8);
        v165(v142, v105);
        v145 = v190;
        v76(v190, v141, v105);
        JSONView.init(value:)(v145, v191);
        sub_1D8150E10(&qword_1ECA11D00, type metadata accessor for JSONView);
        v146 = v193;
        sub_1D81903B4();
        v147 = v194;
        v148 = v205;
        (*(v194 + 16))(v171, v146, v205);
        swift_storeEnumTagMultiPayload();
        sub_1D8150E10(&qword_1ECA11D90, sub_1D815494C);
        sub_1D8190634();
        v149 = v148;
        v166 = v141;
        (*(v147 + 8))(v146, v149);
      }

      else
      {
        v226 = v203;
        v160 = sub_1D8190814();
        v161 = v171;
        *v171 = v160;
        v161[1] = v162;
        *(v161 + 16) = v163 & 1;
        v161[3] = v164;
        swift_storeEnumTagMultiPayload();
        sub_1D8150E10(&qword_1ECA11D90, sub_1D815494C);
        sub_1D8190634();
        v165 = *(v140 + 8);
        v165(v142, v105);
        v166 = v141;
      }

      sub_1D8155038();
      swift_storeEnumTagMultiPayload();
      sub_1D81551E0();
      sub_1D8190634();
      sub_1D7EF4ED0(v206, v202);
      sub_1D8155330();
      v165(v166, v105);
    }

    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D81559FC(&qword_1ECA11DB8, sub_1D815486C, sub_1D81551E0);
    v111 = MEMORY[0x1E6981148];
    sub_1D8190634();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D8154DE4(0, &qword_1ECA11CD8, v111, MEMORY[0x1E697F960]);
    sub_1D8154FE4(&qword_1ECA11D38, &qword_1ECA11CD8, v111);
    sub_1D815512C();
    sub_1D8190634();
    sub_1D8155330();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815508C();
    sub_1D8155290();
    sub_1D8190634();
    sub_1D8155330();
    sub_1D8155330();
    goto LABEL_11;
  }

  if (v78 == *MEMORY[0x1E69D6A40])
  {
    v117 = v86;
    (*(v67 + 96))(v86, v73);
    v220 = *v117;
    v118 = *(v220 + 24);
    *&v226 = *(v220 + 16);
    *(&v226 + 1) = v118;
    sub_1D8190DB4();
    v119 = sub_1D8190814();
    v121 = v120;
    v122 = v182;
    *v182 = v119;
    v122[1] = v120;
    v124 = v123 & 1;
    *(v122 + 16) = v123 & 1;
    v122[3] = v125;
    v208 = v125;
    swift_storeEnumTagMultiPayload();
    sub_1D8133EC0(v119, v121, v124);
    sub_1D81559FC(&qword_1ECA11DB8, sub_1D815486C, sub_1D81551E0);
    sub_1D8190DB4();
    v126 = MEMORY[0x1E6981148];
    sub_1D8190634();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D8154DE4(0, &qword_1ECA11CD8, v126, MEMORY[0x1E697F960]);
    sub_1D8154FE4(&qword_1ECA11D38, &qword_1ECA11CD8, v126);
    sub_1D815512C();
    sub_1D8190634();
    sub_1D8155330();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815508C();
    sub_1D8155290();
    sub_1D8190634();
    sub_1D8155450(v119, v121, v124, MEMORY[0x1E69E7D48]);

    sub_1D8155330();
LABEL_11:

    goto LABEL_12;
  }

  if (v78 == *MEMORY[0x1E69D6A28])
  {
    *&v226 = 1702195828;
    *(&v226 + 1) = 0xE400000000000000;
    v127 = sub_1D8190814();
    v129 = v127;
    v130 = v128;
    v221 = v127;
    v222 = v128;
    v132 = v131 & 1;
    v223 = v131 & 1;
    v224 = v133;
    v225 = 0;
LABEL_19:
    sub_1D8133EC0(v127, v128, v132);
    sub_1D8190DB4();
    v136 = MEMORY[0x1E6981148];
    sub_1D8190634();
    v137 = v228;
    v138 = v227;
    v139 = v187;
    *v187 = v226;
    v139[1] = v138;
    *(v139 + 32) = v137;
    swift_storeEnumTagMultiPayload();
    sub_1D8154DE4(0, &qword_1ECA11CD8, v136, MEMORY[0x1E697F960]);
    sub_1D8154FE4(&qword_1ECA11D38, &qword_1ECA11CD8, v136);
    sub_1D815512C();
    sub_1D8190634();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815508C();
    sub_1D8155290();
    sub_1D8190634();
    sub_1D8155450(v129, v130, v132, MEMORY[0x1E69E7D48]);

LABEL_28:
    sub_1D8155330();
    goto LABEL_12;
  }

  if (v78 == *MEMORY[0x1E69D6A38])
  {
    *&v226 = 0x65736C6166;
    *(&v226 + 1) = 0xE500000000000000;
    v127 = sub_1D8190814();
    v129 = v127;
    v130 = v128;
    v132 = v134 & 1;
    v221 = v127;
    v222 = v128;
    v223 = v134 & 1;
    v224 = v135;
    v225 = 1;
    goto LABEL_19;
  }

  if (v78 == *MEMORY[0x1E69D6A20])
  {
    sub_1D81905D4();
    v150 = sub_1D8190804();
    v152 = v151;
    v221 = v150;
    v222 = v151;
    v154 = v153 & 1;
    v223 = v153 & 1;
    v224 = v155;
    v225 = 0;
    sub_1D8133EC0(v150, v151, v153 & 1);
    sub_1D8190DB4();
    v156 = MEMORY[0x1E69E73E0];
    sub_1D8190634();
    v157 = v228;
    v158 = v227;
    v159 = *(&v203 + 1);
    **(&v203 + 1) = v226;
    *(v159 + 16) = v158;
    *(v159 + 32) = v157;
    swift_storeEnumTagMultiPayload();
    sub_1D8154DE4(0, &qword_1ECA11D48, v156, MEMORY[0x1E697F960]);
    sub_1D8154F08();
    sub_1D8154FE4(&qword_1ECA11DA0, &qword_1ECA11D48, v156);
    sub_1D8190634();
    sub_1D8155038();
    swift_storeEnumTagMultiPayload();
    sub_1D815508C();
    sub_1D8155290();
    sub_1D8190634();
    sub_1D8155450(v150, v152, v154, MEMORY[0x1E69E7D48]);

    goto LABEL_28;
  }

  *&v226 = 0;
  *(&v226 + 1) = 0xE000000000000000;
  sub_1D81921A4();

  *&v226 = 0xD00000000000001ELL;
  *(&v226 + 1) = 0x80000001D81D8E20;
  v167 = sub_1D818F7E4();
  MEMORY[0x1DA713260](v167);

  result = sub_1D81923A4();
  __break(1u);
  return result;
}

void JSONView.init(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D818FC34();
  OUTLINED_FUNCTION_9();
  v40 = v6;
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_17_40();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  OUTLINED_FUNCTION_9_53();
  sub_1D7E189E8(0, v10);
  v12 = OUTLINED_FUNCTION_50(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_48();
  v13 = sub_1D818F824();
  OUTLINED_FUNCTION_9();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_28_0();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  v23 = type metadata accessor for JSONView(0);
  v24 = a2 + *(v23 + 20);
  LOBYTE(v42) = 0;
  sub_1D8190984();
  v25 = *(&v44 + 1);
  *v24 = v44;
  *(v24 + 8) = v25;
  v26 = a2 + *(v23 + 24);
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_1D8190984();
  v27 = v45;
  *v26 = v44;
  *(v26 + 16) = v27;
  (*(v15 + 16))(v22, a1, v13);
  if ((*(v15 + 88))(v22, v13) == *MEMORY[0x1E69D6A48])
  {
    (*(v15 + 96))(v22, v13);
    v28 = *(*v22 + 16);
    sub_1D8190DB4();

    if (*(v28 + 16) == 1)
    {
      sub_1D7EDF6D0();

      if (__swift_getEnumTagSinglePayload(v2, 1, v13) == 1)
      {
        OUTLINED_FUNCTION_9_53();
        sub_1D81563E0();
      }

      else
      {
        v38 = a1;
        v36 = *(v15 + 32);
        v36(v19, v2, v13);
        sub_1D818F814();
        v29 = v39;
        v30 = v40;
        v31 = v41;
        (*(v40 + 104))(v39, *MEMORY[0x1E69D6B88], v41);
        v37 = sub_1D7EE3FE0();
        v32 = *(v30 + 8);
        v32(v29, v31);
        v32(v9, v31);
        v33 = *(v15 + 8);
        if (v37)
        {
          v33(v38, v13);
          v34 = OUTLINED_FUNCTION_109();
          (v36)(v34);
          goto LABEL_8;
        }

        v33(v19, v13);
        a1 = v38;
      }
    }

    else
    {
    }
  }

  else
  {
    (*(v15 + 8))(v22, v13);
  }

  (*(v15 + 32))(a2, a1, v13);
LABEL_8:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D814F534@<X0>(uint64_t a1@<X8>)
{
  sub_1D81905D4();
  result = sub_1D8190804();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1D814F5B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D81905C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D81905B4();
  sub_1D81905A4();
  sub_1D8190584();
  sub_1D81905A4();
  sub_1D81905E4();
  result = sub_1D8190804();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1D814F6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v39 = a3;
  sub_1D8154C10(0, &unk_1ECA11DD0);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = type metadata accessor for JSONView(0);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D818FC34();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31[-v11];
  sub_1D7E189E8(0, &qword_1ECA0CFE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31[-v14];
  v16 = sub_1D818F824();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v35 = &v31[-v21];
  if (*(a1 + 16) != 1)
  {
    goto LABEL_15;
  }

  v22 = sub_1D7F1E7FC(a1);
  if (!v23)
  {
    goto LABEL_15;
  }

  if (v22 == 0x736D61726170 && v23 == 0xE600000000000000)
  {
  }

  else
  {
    v32 = sub_1D8192634();

    if ((v32 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  sub_1D7F1E864(a1, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1D81563E0();
  }

  else
  {
    (*(v17 + 32))(v35, v15, v16);
    sub_1D818F814();
    v25 = v33;
    v26 = v34;
    (*(v33 + 104))(v9, *MEMORY[0x1E69D6B88], v34);
    v32 = sub_1D7EE3FE0();
    v27 = *(v25 + 8);
    v27(v9, v26);
    v27(v12, v26);
    if (v32)
    {
      v28 = v35;
      (*(v17 + 16))(v19, v35, v16);
      JSONView.init(value:)(v19, v6);
      sub_1D8155038();
      swift_storeEnumTagMultiPayload();
      sub_1D8150E10(&qword_1ECA11D00, type metadata accessor for JSONView);
      sub_1D8190634();
      sub_1D8155330();
      return (*(v17 + 8))(v28, v16);
    }

    (*(v17 + 8))(v35, v16);
  }

LABEL_15:
  v30 = type metadata accessor for JSONView.RowView(0);
  (*(v17 + 16))(v19, v36 + *(v30 + 20), v16);
  JSONView.init(value:)(v19, v6);
  sub_1D8155038();
  swift_storeEnumTagMultiPayload();
  sub_1D8150E10(&qword_1ECA11D00, type metadata accessor for JSONView);
  sub_1D8190634();
  return sub_1D8155330();
}

__n128 sub_1D814FCCC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D81905C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1D7E189E8(0, &qword_1ECA0CFE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v43 - v6;
  v8 = sub_1D818F824();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v43 - v13;
  if (*(a1 + 16) != 1)
  {
    goto LABEL_12;
  }

  v15 = sub_1D7F1E7FC(a1);
  if (!v16)
  {
    goto LABEL_12;
  }

  if (v15 == 0x736D61726170 && v16 == 0xE600000000000000)
  {
  }

  else
  {
    v18 = sub_1D8192634();

    if ((v18 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  sub_1D7F1E864(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1D81563E0();
LABEL_12:
    sub_1D81905B4();
    sub_1D81905A4();
    *&v49 = *(a1 + 16);
    sub_1D8190584();
    sub_1D81905A4();
    sub_1D81905E4();
    v44 = sub_1D8190804();
    v45 = v19;
    v46 = v20 & 1;
    v47 = v21;
    v48 = 256;
    v22 = MEMORY[0x1E6981148];
    sub_1D8154DE4(0, &qword_1ECA11CD8, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    sub_1D8154FE4(&qword_1ECA11D38, &qword_1ECA11CD8, v22);
    sub_1D8190634();
    goto LABEL_13;
  }

  (*(v9 + 32))(v14, v7, v8);
  (*(v9 + 16))(v11, v14, v8);
  v26 = (*(v9 + 88))(v11, v8);
  v27 = *MEMORY[0x1E69D6A48];
  v43[0] = v9;
  if (v26 == v27)
  {
    (*(v9 + 96))(v11, v8);
    v28 = *(*v11 + 16);
    sub_1D8190DB4();
    sub_1D81905B4();
    sub_1D81905A4();
    v29 = *(v28 + 16);

    *&v49 = v29;
    sub_1D8190584();
    sub_1D81905A4();
    sub_1D81905E4();
    v44 = sub_1D8190804();
    v45 = v30;
    v46 = v31 & 1;
    v47 = v32;
    LOBYTE(v48) = 0;
    sub_1D8190634();
    v34 = *(&v49 + 1);
    v33 = v49;
    v36 = v50.n128_u64[1];
    v35 = v50.n128_u64[0];
    v37 = v51;
    sub_1D8155394(v49, *(&v49 + 1), v50.n128_i8[0]);
  }

  else
  {
    sub_1D81905B4();
    sub_1D81905A4();
    *&v49 = *(a1 + 16);
    sub_1D8190584();
    sub_1D81905A4();
    sub_1D81905E4();
    v44 = sub_1D8190804();
    v45 = v38;
    v46 = v39 & 1;
    v47 = v40;
    LOBYTE(v48) = 1;
    sub_1D8190634();
    v34 = *(&v49 + 1);
    v33 = v49;
    v36 = v50.n128_u64[1];
    v35 = v50.n128_u64[0];
    v41 = v9;
    v37 = v51;
    sub_1D8155394(v49, *(&v49 + 1), v50.n128_i8[0]);
    (*(v41 + 8))(v11, v8);
  }

  v44 = v33;
  v45 = v34;
  v46 = v35;
  v47 = v36;
  v48 = v37;
  sub_1D8155394(v33, v34, v35);
  v42 = MEMORY[0x1E6981148];
  sub_1D8154DE4(0, &qword_1ECA11CD8, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  sub_1D8154FE4(&qword_1ECA11D38, &qword_1ECA11CD8, v42);
  sub_1D8190634();
  sub_1D81553D0(v33, v34, v35);
  sub_1D81553D0(v33, v34, v35);
  (*(v43[0] + 8))(v14, v8);
LABEL_13:
  result = v50;
  v24 = v51;
  v25 = v52;
  *a2 = v49;
  *(a2 + 16) = result;
  *(a2 + 32) = v24;
  *(a2 + 33) = v25;
  return result;
}

uint64_t JSONView.init(encodableValue:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D818F824();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D818E3C4();
  swift_allocObject();
  sub_1D818E3B4();
  v9 = sub_1D818E3A4();
  v11 = v10;

  if (!v2)
  {
    sub_1D818E344();
    swift_allocObject();
    sub_1D818E334();
    OUTLINED_FUNCTION_7_81();
    sub_1D8150E10(v12, v13);
    sub_1D818E314();

    JSONView.init(value:)(v8, a2);
    sub_1D7EF4CE0(v9, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}